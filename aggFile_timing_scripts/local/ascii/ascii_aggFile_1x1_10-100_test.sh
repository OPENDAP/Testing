#!/bin/sh
#

for i in {1..10}; 
    do { 
        time -p curl -g -k -n -c ursCookies -b ursCookies -L --data-urlencode "ce=analysed_sst[0:1:9][5000][5000],lat[5000],lon[5000],time[0:1:9]" --url http://localhost:8080/opendap_server/data/agg/ghrsst_mur_agg_local_100time.dmrpp.ascii; 
    } 2>> results.txt;  
    echo ""; echo "========== 10.$i ==========";
done; 
echo "" >> ascii_1x1_10-100_results.txt;
echo "1x1 - time 10 ..." >> ascii_1x1_10-100_results.txt;
grep real results.txt | cat >> ascii_1x1_10-100_results.txt; 
rm results.txt;

echo =========================================================================================;

for i in {1..10}; 
    do { 
        time -p curl -g -k -n -c ursCookies -b ursCookies -L --data-urlencode "ce=analysed_sst[0:1:19][5000][5000],lat[5000],lon[5000],time[0:1:19]" --url http://localhost:8080/opendap_server/data/agg/ghrsst_mur_agg_local_100time.dmrpp.ascii; 
    } 2>> results.txt;  
    echo ""; echo "========== 20.$i ==========";
done; 
echo "" >> ascii_1x1_10-100_results.txt;
echo "1x1 - time 20 ..." >> ascii_1x1_10-100_results.txt;
grep real results.txt | cat >> ascii_1x1_10-100_results.txt; 
rm results.txt;

echo =========================================================================================;

for i in {1..10}; 
    do { 
        time -p curl -g -k -n -c ursCookies -b ursCookies -L --data-urlencode "ce=analysed_sst[0:1:29][5000][5000],lat[5000],lon[5000],time[0:1:29]" --url http://localhost:8080/opendap_server/data/agg/ghrsst_mur_agg_local_100time.dmrpp.ascii; 
    } 2>> results.txt; 
    echo ""; echo "========== 30.$i ==========";
done; 
echo "" >> ascii_1x1_10-100_results.txt;
echo "1x1 - time 30 ..." >> ascii_1x1_10-100_results.txt;
grep real results.txt | cat >> ascii_1x1_10-100_results.txt; 
rm results.txt;

echo =========================================================================================;

for i in {1..10}; 
    do { 
        time -p curl -g -k -n -c ursCookies -b ursCookies -L --data-urlencode "ce=analysed_sst[0:1:39][5000][5000],lat[5000],lon[5000],time[0:1:39]" --url http://localhost:8080/opendap_server/data/agg/ghrsst_mur_agg_local_100time.dmrpp.ascii; 
    } 2>> results.txt; 
    echo ""; echo "========== 40.$i ==========";
done; 
echo "" >> ascii_1x1_10-100_results.txt;
echo "1x1 - time 40 ..." >> ascii_1x1_10-100_results.txt;
grep real results.txt | cat >> ascii_1x1_10-100_results.txt; 
rm results.txt;

echo =========================================================================================;

for i in {1..10}; 
    do { 
        time -p curl -g -k -n -c ursCookies -b ursCookies -L --data-urlencode "ce=analysed_sst[0:1:49][5000][5000],lat[5000],lon[5000],time[0:1:49]" --url http://localhost:8080/opendap_server/data/agg/ghrsst_mur_agg_local_100time.dmrpp.ascii; 
    } 2>> results.txt; 
    echo ""; echo "========== 50.$i ==========";
done; 
echo "" >> ascii_1x1_10-100_results.txt;
echo "1x1 - time 50 ..." >> ascii_1x1_10-100_results.txt;
grep real results.txt | cat >> ascii_1x1_10-100_results.txt; 
rm results.txt;

echo =========================================================================================;

for i in {1..10}; 
    do { 
        time -p curl -g -k -n -c ursCookies -b ursCookies -L --data-urlencode "ce=analysed_sst[0:1:59][5000][5000],lat[5000],lon[5000],time[0:1:59]" --url http://localhost:8080/opendap_server/data/agg/ghrsst_mur_agg_local_100time.dmrpp.ascii; 
    } 2>> results.txt; 
    echo ""; echo "========== 60.$i ==========";
done; 
echo "" >> ascii_1x1_10-100_results.txt;
echo "1x1 - time 60 ..." >> ascii_1x1_10-100_results.txt;
grep real results.txt | cat >> ascii_1x1_10-100_results.txt; 
rm results.txt;

echo =========================================================================================;

for i in {1..10}; 
    do { 
        time -p curl -g -k -n -c ursCookies -b ursCookies -L --data-urlencode "ce=analysed_sst[0:1:69][5000][5000],lat[5000],lon[5000],time[0:1:69]" --url http://localhost:8080/opendap_server/data/agg/ghrsst_mur_agg_local_100time.dmrpp.ascii; 
    } 2>> results.txt; 
    echo ""; echo "========== 70.$i ==========";
done; 
echo "" >> ascii_1x1_10-100_results.txt;
echo "1x1 - time 70 ..." >> ascii_1x1_10-100_results.txt;
grep real results.txt | cat >> ascii_1x1_10-100_results.txt; 
rm results.txt;

echo =========================================================================================;

for i in {1..10}; 
    do { 
        time -p curl -g -k -n -c ursCookies -b ursCookies -L --data-urlencode "ce=analysed_sst[0:1:79][5000][5000],lat[5000],lon[5000],time[0:1:79]" --url http://localhost:8080/opendap_server/data/agg/ghrsst_mur_agg_local_100time.dmrpp.ascii; 
    } 2>> results.txt; 
    echo ""; echo "========== 80.$i ==========";
done; 
echo "" >> ascii_1x1_10-100_results.txt;
echo "1x1 - time 80 ..." >> ascii_1x1_10-100_results.txt;
grep real results.txt | cat >> ascii_1x1_10-100_results.txt; 
rm results.txt;

echo =========================================================================================;

for i in {1..10}; 
    do { 
        time -p curl -g -k -n -c ursCookies -b ursCookies -L --data-urlencode "ce=analysed_sst[0:1:89][5000][5000],lat[5000],lon[5000],time[0:1:89]" --url http://localhost:8080/opendap_server/data/agg/ghrsst_mur_agg_local_100time.dmrpp.ascii; 
    } 2>> results.txt;  
    echo ""; echo "========== 90.$i ==========";
done; 
echo "" >> ascii_1x1_10-100_results.txt;
echo "1x1 - time 90 ..." >> ascii_1x1_10-100_results.txt;
grep real results.txt | cat >> ascii_1x1_10-100_results.txt; 
rm results.txt;

echo =========================================================================================;

for i in {1..10}; 
    do { 
        time -p curl -g -k -n -c ursCookies -b ursCookies -L --data-urlencode "ce=analysed_sst[0:1:99][5000][5000],lat[5000],lon[5000],time[0:1:99]" --url http://localhost:8080/opendap_server/data/agg/ghrsst_mur_agg_local_100time.dmrpp.ascii; 
    } 2>> results.txt;  
    echo ""; echo "========== 100.$i ==========";
done; 
echo "" >> ascii_1x1_10-100_results.txt;
echo "1x1 - time 100 ..." >> ascii_1x1_10-100_results.txt;
grep real results.txt | cat >> ascii_1x1_10-100_results.txt; 
rm results.txt;

echo =========================================================================================;
