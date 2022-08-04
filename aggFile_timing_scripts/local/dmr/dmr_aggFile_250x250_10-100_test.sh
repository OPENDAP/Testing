#!/bin/sh
#

for i in {1..10}; 
    do { 
        time -p curl -n -c ursCookies -b ursCookies -L --data-urlencode "dap4.ce=/analysed_sst[0:1:9][5000:5249][5000:5249];/lat[5000:5249];/lon[5000:5249];/time[0:1:9]" "http://localhost:8080/opendap_server/data/agg/ghrsst_mur_agg_local_100time.dmrpp.dmr"; 
    } 2>> results.txt;  
    echo ""; echo "========== 10.$i ==========";
done; 
echo "" >> dmr_250x250_10-100_results.txt;
echo "250x250 - time 10 ..." >> dmr_250x250_10-100_results.txt;
grep real results.txt | cat >> dmr_250x250_10-100_results.txt; 
rm results.txt;

echo =========================================================================================;

for i in {1..10}; 
    do { 
        time -p curl -n -c ursCookies -b ursCookies -L --data-urlencode "dap4.ce=/analysed_sst[0:1:19][5000:5249][5000:5249];/lat[5000:5249];/lon[5000:5249];/time[0:1:19]" "http://localhost:8080/opendap_server/data/agg/ghrsst_mur_agg_local_100time.dmrpp.dmr"; 
    } 2>> results.txt;  
    echo ""; echo "========== 20.$i ==========";
done; 
echo "" >> dmr_250x250_10-100_results.txt;
echo "250x250 - time 20 ..." >> dmr_250x250_10-100_results.txt;
grep real results.txt | cat >> dmr_250x250_10-100_results.txt; 
rm results.txt;

echo =========================================================================================;

for i in {1..10}; 
    do { 
        time -p curl -n -c ursCookies -b ursCookies -L --data-urlencode "dap4.ce=/analysed_sst[0:1:29][5000:5249][5000:5249];/lat[5000:5249];/lon[5000:5249];/time[0:1:29]" "http://localhost:8080/opendap_server/data/agg/ghrsst_mur_agg_local_100time.dmrpp.dmr"; 
    } 2>> results.txt; 
    echo ""; echo "========== 30.$i ==========";
done; 
echo "" >> dmr_250x250_10-100_results.txt;
echo "250x250 - time 30 ..." >> dmr_250x250_10-100_results.txt;
grep real results.txt | cat >> dmr_250x250_10-100_results.txt; 
rm results.txt;

echo =========================================================================================;

for i in {1..10}; 
    do { 
        time -p curl -n -c ursCookies -b ursCookies -L --data-urlencode "dap4.ce=/analysed_sst[0:1:39][5000:5249][5000:5249];/lat[5000:5249];/lon[5000:5249];/time[0:1:39]" "http://localhost:8080/opendap_server/data/agg/ghrsst_mur_agg_local_100time.dmrpp.dmr"; 
    } 2>> results.txt; 
    echo ""; echo "========== 40.$i ==========";
done; 
echo "" >> dmr_250x250_10-100_results.txt;
echo "250x250 - time 40 ..." >> dmr_250x250_10-100_results.txt;
grep real results.txt | cat >> dmr_250x250_10-100_results.txt; 
rm results.txt;

echo =========================================================================================;

for i in {1..10}; 
    do { 
        time -p curl -n -c ursCookies -b ursCookies -L --data-urlencode "dap4.ce=/analysed_sst[0:1:49][5000:5249][5000:5249];/lat[5000:5249];/lon[5000:5249];/time[0:1:49]" "http://localhost:8080/opendap_server/data/agg/ghrsst_mur_agg_local_100time.dmrpp.dmr"; 
    } 2>> results.txt; 
    echo ""; echo "========== 50.$i ==========";
done; 
echo "" >> dmr_250x250_10-100_results.txt;
echo "250x250 - time 50 ..." >> dmr_250x250_10-100_results.txt;
grep real results.txt | cat >> dmr_250x250_10-100_results.txt; 
rm results.txt;

echo =========================================================================================;

for i in {1..10}; 
    do { 
        time -p curl -n -c ursCookies -b ursCookies -L --data-urlencode "dap4.ce=/analysed_sst[0:1:59][5000:5249][5000:5249];/lat[5000:5249];/lon[5000:5249];/time[0:1:59]" "http://localhost:8080/opendap_server/data/agg/ghrsst_mur_agg_local_100time.dmrpp.dmr"; 
    } 2>> results.txt; 
    echo ""; echo "========== 60.$i ==========";
done; 
echo "" >> dmr_250x250_10-100_results.txt;
echo "250x250 - time 60 ..." >> dmr_250x250_10-100_results.txt;
grep real results.txt | cat >> dmr_250x250_10-100_results.txt; 
rm results.txt;

echo =========================================================================================;

for i in {1..10}; 
    do { 
        time -p curl -n -c ursCookies -b ursCookies -L --data-urlencode "dap4.ce=/analysed_sst[0:1:69][5000:5249][5000:5249];/lat[5000:5249];/lon[5000:5249];/time[0:1:69]" "http://localhost:8080/opendap_server/data/agg/ghrsst_mur_agg_local_100time.dmrpp.dmr"; 
    } 2>> results.txt; 
    echo ""; echo "========== 70.$i ==========";
done; 
echo "" >> dmr_250x250_10-100_results.txt;
echo "250x250 - time 70 ..." >> dmr_250x250_10-100_results.txt;
grep real results.txt | cat >> dmr_250x250_10-100_results.txt; 
rm results.txt;

echo =========================================================================================;

for i in {1..10}; 
    do { 
        time -p curl -n -c ursCookies -b ursCookies -L --data-urlencode "dap4.ce=/analysed_sst[0:1:79][5000:5249][5000:5249];/lat[5000:5249];/lon[5000:5249];/time[0:1:79]" "http://localhost:8080/opendap_server/data/agg/ghrsst_mur_agg_local_100time.dmrpp.dmr"; 
    } 2>> results.txt; 
    echo ""; echo "========== 80.$i ==========";
done; 
echo "" >> dmr_250x250_10-100_results.txt;
echo "250x250 - time 80 ..." >> dmr_250x250_10-100_results.txt;
grep real results.txt | cat >> dmr_250x250_10-100_results.txt; 
rm results.txt;

echo =========================================================================================;

for i in {1..10}; 
    do { 
        time -p curl -n -c ursCookies -b ursCookies -L --data-urlencode "dap4.ce=/analysed_sst[0:1:89][5000:5249][5000:5249];/lat[5000:5249];/lon[5000:5249];/time[0:1:89]" "http://localhost:8080/opendap_server/data/agg/ghrsst_mur_agg_local_100time.dmrpp.dmr"; 
    } 2>> results.txt;  
    echo ""; echo "========== 90.$i ==========";
done; 
echo "" >> dmr_250x250_10-100_results.txt;
echo "250x250 - time 90 ..." >> dmr_250x250_10-100_results.txt;
grep real results.txt | cat >> dmr_250x250_10-100_results.txt; 
rm results.txt;

echo =========================================================================================;

for i in {1..10}; 
    do { 
        time -p curl -n -c ursCookies -b ursCookies -L --data-urlencode "dap4.ce=/analysed_sst[0:1:99][5000:5249][5000:5249];/lat[5000:5249];/lon[5000:5249];/time[0:1:99]" "http://localhost:8080/opendap_server/data/agg/ghrsst_mur_agg_local_100time.dmrpp.dmr"; 
    } 2>> results.txt;  
    echo ""; echo "========== 100.$i ==========";
done; 
echo "" >> dmr_250x250_10-100_results.txt;
echo "250x250 - time 100 ..." >> dmr_250x250_10-100_results.txt;
grep real results.txt | cat >> dmr_250x250_10-100_results.txt; 
rm results.txt;

echo =========================================================================================;
