import math
import time
import requests
import csv
import concurrent.futures
from datetime import date

from xml.dom.minidom import parseString

verbose: bool = False
full: bool = False
dmr_fails: int = 0
dap_fails: int = 0

s = requests.session()


def metric_ping(url):
    ext = '.dmr'
    dmr = 0
    dap = 0

    try:
        #  print(".", end="", flush=True) if not quiet else False

        rstart = time.time()
        r = requests.get(url + ext)
        rduration = time.time() - rstart
        print("\tDmr Result: " + str(r.status_code) + " in " + parse_time(rduration)
              + " [ " + str(round(rduration, 2)) + " ]") if verbose else ''

        if r.status_code == 200:
            dmr_xml = r.text
            variables = parse_variables(dmr_xml)
            var = variables[0]
            y = 0
            if full:
                while y < 5:
                    postfix = build_subset_postfix(var, y)
                    dap_url = url + postfix
                    print("\tDap Postfix: *" + postfix) if verbose else ''
                    # making the dap request with the first variable to cut down on response time

                    rstart = time.time()
                    rd = requests.get(dap_url)
                    if rd.status_code != 200:
                        dap += 1
                    rduration = time.time() - rstart
                    print("\t\tDap Result: " + str(r.status_code) + " in " + parse_time(rduration)
                          + " [ " + str(round(rduration, 2)) + " ]") if verbose else ''
                    y += 1
            else:
                postfix = build_subset_postfix(var, 5)
                dap_url = url + postfix
                print("\tDap Postfix: *" + postfix) if verbose else ''
                # making the dap request with the first variable to cut down on response time

                rstart = time.time()
                rd = requests.get(dap_url)
                if rd.status_code != 200:
                    dap += 1
                rduration = time.time() - rstart
                print("\t\tDap Result: " + str(r.status_code) + " in " + parse_time(rduration)
                      + " [ " + str(round(rduration, 2)) + " ]") if verbose else ''
        else:
            dmr += 1

    # Ignore exception, the url_tester will return 'fail'
    except requests.exceptions.InvalidSchema:
        pass
    except requests.exceptions.ConnectionError:
        err = "/////////////////////////////////////////////////////\n"
        err += "ConnectionError : metric_test.py::metric_ping(url) - " + url + ext + "\n"
        print(err) if verbose else ''

    global dmr_fails
    dmr_fails += dmr
    global dap_fails
    dap_fails += dap


def parse_time(tim):
    hours = 0
    minutes = tim / 60
    seconds = tim % 60

    if minutes > 60:
        hours = minutes / 60
        minutes = minutes % 60

    msg = ""
    if hours > 1:
        msg += f'{str(math.floor(hours))} hours, '
    if minutes > 1:
        msg += f'{str(math.floor(minutes))} mins, '
    msg += f'{str(round(seconds, 2))} secs'
    return msg


def parse_variables(dmr_xml):
    """
    breaks all dmr vars into a list of variables
    :param dmr_xml:
    :return:
    """
    dmr_doc = parseString(dmr_xml)
    # get elements by types ( Byte, Int8[16,32,64], UInt8[16,32,64], Float32[64], String ) to find nodes
    variables = dmr_doc.getElementsByTagName("Byte")

    variables += dmr_doc.getElementsByTagName("Int8")
    variables += dmr_doc.getElementsByTagName("Int16")
    variables += dmr_doc.getElementsByTagName("Int32")
    variables += dmr_doc.getElementsByTagName("Int64")

    variables += dmr_doc.getElementsByTagName("UInt8")
    variables += dmr_doc.getElementsByTagName("UInt16")
    variables += dmr_doc.getElementsByTagName("UInt32")
    variables += dmr_doc.getElementsByTagName("UInt64")

    variables += dmr_doc.getElementsByTagName("Float32")
    variables += dmr_doc.getElementsByTagName("Float64")

    variables += dmr_doc.getElementsByTagName("String")

    return variables


def build_subset_postfix(var, ran):
    var_path = build_leaf_path(var)
    postfix = '.dap?dap4.ce=/' + var_path
    dims = var.getElementsByTagName("Dim")
    # So, ‘[’ is %5B and ‘]’ is %5D in this scheme. If you take
    r1 = ran * 2
    x = len(dims)
    y = 1
    for d in dims:
        if y == x:
            postfix += f'%5B0:{r1}%5D'
        else:
            postfix += "%5B0%5D"
            y += 1

    return postfix


def build_leaf_path(var):
    """
    builds the path from a leaf back to the root
    :param var:
    :return:
    """
    path = var.getAttribute("name")
    # print(path)
    if var.parentNode.nodeName != "Dataset":
        if var.parentNode.nodeName == "Group":
            path = build_leaf_path(var.parentNode) + '/' + path
        elif var.parentNode.nodeName == "Structure":
            path = build_leaf_path(var.parentNode) + '.' + path
        elif var.parentNode.nodeName == "Sequence":
            path = build_leaf_path(var.parentNode) + '.' + path
        # print(path)
    return path


def metrics_headers():
    """
    global function for setting request headers
    :return:
    """
    headers = requests.utils.default_headers()
    headers.update({'User-Agent': 'metricTester/1.0.0', })
    return headers


def write_results(file, msg):
    file_path = file + ".txt"
    # Append-adds at last
    file1 = open(file_path, "a")  # append mode
    file1.write(f"{msg} \n")
    file1.close()


def write_csv(file, dat, count, work, delay, ful, read, dur, ave, dmr, dap, url):
    msg = " [2x tests]"
    file_path = file + ".csv"
    if ful:
        msg = "  [6x tests]"
    with open(file_path, 'a', newline='') as csvfile:
        writer = csv.writer(csvfile, delimiter=',')
        writer.writerow([dat, count, work, delay, str(ful) + msg, read, dur, ave, dmr, dap, url])


def print_progress(amount, total):
    """
    outputs the progress bar to the terminal
    :param amount:
    :param total:
    :return:
    """
    percent = amount * 100 / total
    msg = "\t" + str(round(percent, 2)) + "% [ " + str(amount) + " / " + str(total) + " ] "
    print(msg, end="\r", flush=True)


def main():
    print("Testing Started.")
    import argparse
    parser = argparse.ArgumentParser(description="Query CMR and get information about Providers with Collections "
                                                 "accessible using OPeNDAP.")

    parser.add_argument("-v", "--verbose", help="increase output verbosity", action="store_true", default=False)
    parser.add_argument('-c', '--concurrency', help="run the tests concurrently", default=True, action='store_false')
    parser.add_argument('-f', '--full', help="run all dap test", default=False, action='store_true')
    parser.add_argument("-x", "--count", help="number of tests to run",
                        default=10, type=int)
    parser.add_argument("-d", "--delay", help="second delay between tests",
                        default=10, type=int)
    parser.add_argument("-w", "--workers", help="if concurrent (the default), set the number of workers (default: 5)",
                        default=2, type=int)
    parser.add_argument("-o", "--output", help="Name of file to write to.", default="test_results")
    group = parser.add_mutually_exclusive_group(required=True)
    group.add_argument("-u", "--url", help="Url to test.")

    args = parser.parse_args()

    global verbose
    verbose = args.verbose

    duration = 0

    global full
    full = args.full

    done = 1

    try:
        s.headers = metrics_headers()
        url = args.url
        print("Url: " + url) if verbose else ''
        count = args.count
        print("\t# of tests: " + str(count)) if verbose else ''
        delay = args.delay
        x = 0
        start = time.time()
        if args.concurrency and count != 1:
            print(f"\tRunning {args.count} tests in parallel with {args.workers} workers.")
            with concurrent.futures.ThreadPoolExecutor(max_workers=args.workers) as executor:
                try:
                    # future_to_gid is a dictionary where the key is a future that will return
                    # the results of running tests on a granule and the value is the granule's concept ID
                    future_to_gid = {executor.submit(metric_ping, url): X
                                     for X in range(1, count+1)}

                    for future in concurrent.futures.as_completed(future_to_gid):
                        num = future_to_gid[future]
                        try:
                            # print(".", end="", flush=True)
                            print_progress(done, args.count)
                            done += 1

                        except Exception as exc:
                            print('\n%r generated an exception: %s\n' % (num, exc))
                            continue

                except concurrent.futures.TimeoutError as exc:
                    print("T", end="", flush=True)

        else:
            print(f"\tRunning {args.count} tests in serial.")
            while x < count:
                if verbose:
                    print(f'Test: {x}')
                else:
                    print(".", end="", flush=True)
                metric_ping(url)
                if delay != 0:
                    time.sleep(delay)
                x += 1
        duration = time.time() - start
        print(f'\nDuration: {duration}')

    except Exception as e:
        print(e)

    today = date.today()
    global dmr_fails
    global dap_fails
    t = parse_time(duration)
    raw = str(round(duration, 2))
    num = 6 if args.full else 2
    ave = round(duration / (args.count * num), 2)
    msg = (f"{today} : {args.url}\n\t\t# Tests - {args.count}, # Workers - {args.workers}, Delay - {args.delay}, "
           f"All Dap Tests - {args.full} "
           f"\n\t\tTime - {t} [{raw}s] [Average Time: {ave}s], DMR FAILS - {dmr_fails}, DAP FAILS - {dap_fails}")
    write_results(args.output, msg)
    write_csv(args.output, today, args.count, args.workers, args.delay, args.full, t, raw, ave, dmr_fails, dap_fails, args.url)

    print("Testing finished.")


if __name__ == "__main__":
    main()
