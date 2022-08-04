#!/bin/sh
#

for i in {1..10}; 
    do { 
        time -p curl -n -c ursCookies -b ursCookies -L --data-urlencode "dap4.ce=/analysed_sst[0:1:9][5000:5099][5000:5099];/lat[5000:5099];/lon[5000:5099];/time[0:1:9]" "http://localhost:8080/opendap_server/data/agg/ghrsst_mur_agg_local_100time.dmrpp.dap"; 
    } 2>> result.txt;  
    echo ""; echo "========== 10.$i ==========";
done; 
echo "" >> dap_100x100_10-100_results.txt;
echo "100x100 - time 10 ..." >> dap_100x100_10-100_results.txt;
grep real result.txt | cat >> dap_100x100_10-100_results.txt; 
rm result.txt;

echo =========================================================================================;

for i in {1..10}; 
    do { 
        time -p curl -n -c ursCookies -b ursCookies -L --data-urlencode "dap4.ce=/analysed_sst[0:1:19][5000:5099][5000:5099];/lat[5000:5099];/lon[5000:5099];/time[0:1:19]" "http://localhost:8080/opendap_server/data/agg/ghrsst_mur_agg_local_100time.dmrpp.dap"; 
    } 2>> result.txt;  
    echo ""; echo "========== 20.$i ==========";
done; 
echo "" >> dap_100x100_10-100_results.txt;
echo "100x100 - time 20 ..." >> dap_100x100_10-100_results.txt;
grep real result.txt | cat >> dap_100x100_10-100_results.txt; 
rm result.txt;

echo =========================================================================================;

for i in {1..10}; 
    do { 
        time -p curl -n -c ursCookies -b ursCookies -L --data-urlencode "dap4.ce=/analysed_sst[0:1:29][5000:5099][5000:5099];/lat[5000:5099];/lon[5000:5099];/time[0:1:29]" "http://localhost:8080/opendap_server/data/agg/ghrsst_mur_agg_local_100time.dmrpp.dap"; 
    } 2>> result.txt; 
    echo ""; echo "========== 30.$i ==========";
done; 
echo "" >> dap_100x100_10-100_results.txt;
echo "100x100 - time 30 ..." >> dap_100x100_10-100_results.txt;
grep real result.txt | cat >> dap_100x100_10-100_results.txt; 
rm result.txt;

echo =========================================================================================;

for i in {1..10}; 
    do { 
        time -p curl -n -c ursCookies -b ursCookies -L --data-urlencode "dap4.ce=/analysed_sst[0:1:39][5000:5099][5000:5099];/lat[5000:5099];/lon[5000:5099];/time[0:1:39]" "http://localhost:8080/opendap_server/data/agg/ghrsst_mur_agg_local_100time.dmrpp.dap"; 
    } 2>> result.txt; 
    echo ""; echo "========== 40.$i ==========";
done; 
echo "" >> dap_100x100_10-100_results.txt;
echo "100x100 - time 40 ..." >> dap_100x100_10-100_results.txt;
grep real result.txt | cat >> dap_100x100_10-100_results.txt; 
rm result.txt;

echo =========================================================================================;

for i in {1..10}; 
    do { 
        time -p curl -n -c ursCookies -b ursCookies -L --data-urlencode "dap4.ce=/analysed_sst[0:1:49][5000:5099][5000:5099];/lat[5000:5099];/lon[5000:5099];/time[0:1:49]" "http://localhost:8080/opendap_server/data/agg/ghrsst_mur_agg_local_100time.dmrpp.dap"; 
    } 2>> result.txt; 
    echo ""; echo "========== 50.$i ==========";
done; 
echo "" >> dap_100x100_10-100_results.txt;
echo "100x100 - time 50 ..." >> dap_100x100_10-100_results.txt;
grep real result.txt | cat >> dap_100x100_10-100_results.txt; 
rm result.txt;

echo =========================================================================================;

for i in {1..10}; 
    do { 
        time -p curl -n -c ursCookies -b ursCookies -L --data-urlencode "dap4.ce=/analysed_sst[0:1:59][5000:5099][5000:5099];/lat[5000:5099];/lon[5000:5099];/time[0:1:59]" "http://localhost:8080/opendap_server/data/agg/ghrsst_mur_agg_local_100time.dmrpp.dap"; 
    } 2>> result.txt; 
    echo ""; echo "========== 60.$i ==========";
done; 
echo "" >> dap_100x100_10-100_results.txt;
echo "100x100 - time 60 ..." >> dap_100x100_10-100_results.txt;
grep real result.txt | cat >> dap_100x100_10-100_results.txt; 
rm result.txt;

echo =========================================================================================;

for i in {1..10}; 
    do { 
        time -p curl -n -c ursCookies -b ursCookies -L --data-urlencode "dap4.ce=/analysed_sst[0:1:69][5000:5099][5000:5099];/lat[5000:5099];/lon[5000:5099];/time[0:1:69]" "http://localhost:8080/opendap_server/data/agg/ghrsst_mur_agg_local_100time.dmrpp.dap"; 
    } 2>> result.txt; 
    echo ""; echo "========== 70.$i ==========";
done; 
echo "" >> dap_100x100_10-100_results.txt;
echo "100x100 - time 70 ..." >> dap_100x100_10-100_results.txt;
grep real result.txt | cat >> dap_100x100_10-100_results.txt; 
rm result.txt;

echo =========================================================================================;

for i in {1..10}; 
    do { 
        time -p curl -n -c ursCookies -b ursCookies -L --data-urlencode "dap4.ce=/analysed_sst[0:1:79][5000:5099][5000:5099];/lat[5000:5099];/lon[5000:5099];/time[0:1:79]" "http://localhost:8080/opendap_server/data/agg/ghrsst_mur_agg_local_100time.dmrpp.dap"; 
    } 2>> result.txt; 
    echo ""; echo "========== 80.$i ==========";
done; 
echo "" >> dap_100x100_10-100_results.txt;
echo "100x100 - time 80 ..." >> dap_100x100_10-100_results.txt;
grep real result.txt | cat >> dap_100x100_10-100_results.txt; 
rm result.txt;

echo =========================================================================================;

for i in {1..10}; 
    do { 
        time -p curl -n -c ursCookies -b ursCookies -L --data-urlencode "dap4.ce=/analysed_sst[0:1:89][5000:5099][5000:5099];/lat[5000:5099];/lon[5000:5099];/time[0:1:89]" "http://localhost:8080/opendap_server/data/agg/ghrsst_mur_agg_local_100time.dmrpp.dap"; 
    } 2>> result.txt;  
    echo ""; echo "========== 90.$i ==========";
done; 
echo "" >> dap_100x100_10-100_results.txt;
echo "100x100 - time 90 ..." >> dap_100x100_10-100_results.txt;
grep real result.txt | cat >> dap_100x100_10-100_results.txt; 
rm result.txt;

echo =========================================================================================;

for i in {1..10}; 
    do { 
        time -p curl -n -c ursCookies -b ursCookies -L --data-urlencode "dap4.ce=/analysed_sst[0:1:99][5000:5099][5000:5099];/lat[5000:5099];/lon[5000:5099];/time[0:1:99]" "http://localhost:8080/opendap_server/data/agg/ghrsst_mur_agg_local_100time.dmrpp.dap"; 
    } 2>> result.txt;  
    echo ""; echo "========== 100.$i ==========";
done; 
echo "" >> dap_100x100_10-100_results.txt;
echo "100x100 - time 100 ..." >> dap_100x100_10-100_results.txt;
grep real result.txt | cat >> dap_100x100_10-100_results.txt; 
rm result.txt;

echo =========================================================================================;
