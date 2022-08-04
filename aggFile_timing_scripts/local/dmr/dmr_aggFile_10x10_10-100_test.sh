#!/bin/sh
#

for i in {1..10}; 
    do { 
        time -p curl -n -c ursCookies -b ursCookies -L --data-urlencode "dap4.ce=/analysed_sst[0:1:9][5000:5009][5000:5009];/lat[5000:5009];/lon[5000:5009];/time[0:1:9]" "http://localhost:8080/opendap_server/data/agg/ghrsst_mur_agg_local_100time.dmrpp.dmr"; 
    } 2>> time2_dmrpp.txt;  
    echo ""; echo "========== 10.$i ==========";
done; 
echo "" >> dmr_10x10_10-100_results.txt;
echo "10x10 - time 20 ..." >> dmr_10x10_10-100_results.txt;
grep real time2_dmrpp.txt | cat >> dmr_10x10_10-100_results.txt; 
rm time2_dmrpp.txt;

echo =========================================================================================;

for i in {1..10}; 
    do { 
        time -p curl -n -c ursCookies -b ursCookies -L --data-urlencode "dap4.ce=/analysed_sst[0:1:19][5000:5009][5000:5009];/lat[5000:5009];/lon[5000:5009];/time[0:1:19]" "http://localhost:8080/opendap_server/data/agg/ghrsst_mur_agg_local_100time.dmrpp.dmr"; 
    } 2>> time2_dmrpp.txt;  
    echo ""; echo "========== 20.$i ==========";
done; 
echo "" >> dmr_10x10_10-100_results.txt;
echo "10x10 - time 20 ..." >> dmr_10x10_10-100_results.txt;
grep real time2_dmrpp.txt | cat >> dmr_10x10_10-100_results.txt; 
rm time2_dmrpp.txt;

echo =========================================================================================;

for i in {1..10}; 
    do { 
        time -p curl -n -c ursCookies -b ursCookies -L --data-urlencode "dap4.ce=/analysed_sst[0:1:29][5000:5009][5000:5009];/lat[5000:5009];/lon[5000:5009];/time[0:1:29]" "http://localhost:8080/opendap_server/data/agg/ghrsst_mur_agg_local_100time.dmrpp.dmr"; 
    } 2>> time3_dmrpp.txt; 
    echo ""; echo "========== 30.$i ==========";
done; 
echo "" >> dmr_10x10_10-100_results.txt;
echo "10x10 - time 30 ..." >> dmr_10x10_10-100_results.txt;
grep real time3_dmrpp.txt | cat >> dmr_10x10_10-100_results.txt; 
rm time3_dmrpp.txt;

echo =========================================================================================;

for i in {1..10}; 
    do { 
        time -p curl -n -c ursCookies -b ursCookies -L --data-urlencode "dap4.ce=/analysed_sst[0:1:39][5000:5009][5000:5009];/lat[5000:5009];/lon[5000:5009];/time[0:1:39]" "http://localhost:8080/opendap_server/data/agg/ghrsst_mur_agg_local_100time.dmrpp.dmr"; 
    } 2>> time4_dmrpp.txt; 
    echo ""; echo "========== 40.$i ==========";
done; 
echo "" >> dmr_10x10_10-100_results.txt;
echo "10x10 - time 40 ..." >> dmr_10x10_10-100_results.txt;
grep real time4_dmrpp.txt | cat >> dmr_10x10_10-100_results.txt; 
rm time4_dmrpp.txt;

echo =========================================================================================;

for i in {1..10}; 
    do { 
        time -p curl -n -c ursCookies -b ursCookies -L --data-urlencode "dap4.ce=/analysed_sst[0:1:49][5000:5009][5000:5009];/lat[5000:5009];/lon[5000:5009];/time[0:1:49]" "http://localhost:8080/opendap_server/data/agg/ghrsst_mur_agg_local_100time.dmrpp.dmr"; 
    } 2>> time5_dmrpp.txt; 
    echo ""; echo "========== 50.$i ==========";
done; 
echo "" >> dmr_10x10_10-100_results.txt;
echo "10x10 - time 50 ..." >> dmr_10x10_10-100_results.txt;
grep real time5_dmrpp.txt | cat >> dmr_10x10_10-100_results.txt; 
rm time5_dmrpp.txt;

echo =========================================================================================;

for i in {1..10}; 
    do { 
        time -p curl -n -c ursCookies -b ursCookies -L --data-urlencode "dap4.ce=/analysed_sst[0:1:59][5000:5009][5000:5009];/lat[5000:5009];/lon[5000:5009];/time[0:1:59]" "http://localhost:8080/opendap_server/data/agg/ghrsst_mur_agg_local_100time.dmrpp.dmr"; 
    } 2>> time6_dmrpp.txt; 
    echo ""; echo "========== 60.$i ==========";
done; 
echo "" >> dmr_10x10_10-100_results.txt;
echo "10x10 - time 60 ..." >> dmr_10x10_10-100_results.txt;
grep real time6_dmrpp.txt | cat >> dmr_10x10_10-100_results.txt; 
rm time6_dmrpp.txt;

echo =========================================================================================;

for i in {1..10}; 
    do { 
        time -p curl -n -c ursCookies -b ursCookies -L --data-urlencode "dap4.ce=/analysed_sst[0:1:69][5000:5009][5000:5009];/lat[5000:5009];/lon[5000:5009];/time[0:1:69]" "http://localhost:8080/opendap_server/data/agg/ghrsst_mur_agg_local_100time.dmrpp.dmr"; 
    } 2>> time7_dmrpp.txt; 
    echo ""; echo "========== 70.$i ==========";
done; 
echo "" >> dmr_10x10_10-100_results.txt;
echo "10x10 - time 70 ..." >> dmr_10x10_10-100_results.txt;
grep real time7_dmrpp.txt | cat >> dmr_10x10_10-100_results.txt; 
rm time7_dmrpp.txt;

echo =========================================================================================;

for i in {1..10}; 
    do { 
        time -p curl -n -c ursCookies -b ursCookies -L --data-urlencode "dap4.ce=/analysed_sst[0:1:79][5000:5009][5000:5009];/lat[5000:5009];/lon[5000:5009];/time[0:1:79]" "http://localhost:8080/opendap_server/data/agg/ghrsst_mur_agg_local_100time.dmrpp.dmr"; 
    } 2>> time8_dmrpp.txt; 
    echo ""; echo "========== 80.$i ==========";
done; 
echo "" >> dmr_10x10_10-100_results.txt;
echo "10x10 - time 80 ..." >> dmr_10x10_10-100_results.txt;
grep real time8_dmrpp.txt | cat >> dmr_10x10_10-100_results.txt; 
rm time8_dmrpp.txt;

echo =========================================================================================;

for i in {1..10}; 
    do { 
        time -p curl -n -c ursCookies -b ursCookies -L --data-urlencode "dap4.ce=/analysed_sst[0:1:89][5000:5009][5000:5009];/lat[5000:5009];/lon[5000:5009];/time[0:1:89]" "http://localhost:8080/opendap_server/data/agg/ghrsst_mur_agg_local_100time.dmrpp.dmr"; 
    } 2>> time9_dmrpp.txt;  
    echo ""; echo "========== 90.$i ==========";
done; 
echo "" >> dmr_10x10_10-100_results.txt;
echo "10x10 - time 90 ..." >> dmr_10x10_10-100_results.txt;
grep real time9_dmrpp.txt | cat >> dmr_10x10_10-100_results.txt; 
rm time9_dmrpp.txt;

echo =========================================================================================;

for i in {1..10}; 
    do { 
        time -p curl -n -c ursCookies -b ursCookies -L --data-urlencode "dap4.ce=/analysed_sst[0:1:99][5000:5009][5000:5009];/lat[5000:5009];/lon[5000:5009];/time[0:1:99]" "http://localhost:8080/opendap_server/data/agg/ghrsst_mur_agg_local_100time.dmrpp.dmr"; 
    } 2>> time10_dmrpp.txt;  
    echo ""; echo "========== 100.$i ==========";
done; 
echo "" >> dmr_10x10_10-100_results.txt;
echo "10x10 - time 100 ..." >> dmr_10x10_10-100_results.txt;
grep real time10_dmrpp.txt | cat >> dmr_10x10_10-100_results.txt; 
rm time10_dmrpp.txt;

echo =========================================================================================;
