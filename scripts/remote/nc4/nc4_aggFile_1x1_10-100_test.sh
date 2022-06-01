#!/bin/sh
#

SERVER_ENDPOINT="http://ngap-west.opendap.org:8080/opendap/"
DATASET_PATH="agg/ghrsst_mur_agg_100time.dmrpp.nc4"
FULL_URL="${SERVER_ENDPOINT}${DATASET_PATH}"

COOKIES_FILE="~/ursCookies"
CURL_CMD="curl -n -c ${COOKIES_FILE} -b ${COOKIES_FILE} -L"
RESULTS_FILE="nc4_1x1_10-100_results.txt"

for i in {1..10}; 
    do { 
        rm ${COOKIES_FILE};
        time -p ${CURL_CMD} --data-urlencode "ce=analysed_sst[0:1:9][5000][5000],lat[5000],lon[5000],time[0:1:9]" --url ${FULL_URL}; 
    } 2>> results.txt;  
    echo ""; echo "========== 10.$i ==========";
done; 
echo "" >> ${RESULTS_FILE};
echo "1x1 - time 10 ..." >> ${RESULTS_FILE};
grep real results.txt | cat >> ${RESULTS_FILE}; 
rm results.txt;

echo =========================================================================================;

for i in {1..10}; 
    do { 
        rm ${COOKIES_FILE};
        time -p ${CURL_CMD} --data-urlencode "ce=analysed_sst[0:1:19][5000][5000],lat[5000],lon[5000],time[0:1:19]" --url ${FULL_URL}; 
    } 2>> results.txt;  
    echo ""; echo "========== 20.$i ==========";
done; 
echo "" >> ${RESULTS_FILE};
echo "1x1 - time 20 ..." >> ${RESULTS_FILE};
grep real results.txt | cat >> ${RESULTS_FILE}; 
rm results.txt;

echo =========================================================================================;

for i in {1..10}; 
    do { 
        rm ${COOKIES_FILE};
        time -p ${CURL_CMD} --data-urlencode "ce=analysed_sst[0:1:29][5000][5000],lat[5000],lon[5000],time[0:1:29]" --url ${FULL_URL}; 
    } 2>> results.txt; 
    echo ""; echo "========== 30.$i ==========";
done; 
echo "" >> ${RESULTS_FILE};
echo "1x1 - time 30 ..." >> ${RESULTS_FILE};
grep real results.txt | cat >> ${RESULTS_FILE}; 
rm results.txt;

echo =========================================================================================;

for i in {1..10}; 
    do { 
        rm ${COOKIES_FILE};
        time -p ${CURL_CMD} --data-urlencode "ce=analysed_sst[0:1:39][5000][5000],lat[5000],lon[5000],time[0:1:39]" --url ${FULL_URL}; 
    } 2>> results.txt; 
    echo ""; echo "========== 40.$i ==========";
done; 
echo "" >> ${RESULTS_FILE};
echo "1x1 - time 40 ..." >> ${RESULTS_FILE};
grep real results.txt | cat >> ${RESULTS_FILE}; 
rm results.txt;

echo =========================================================================================;

for i in {1..10}; 
    do { 
        rm ${COOKIES_FILE};
        time -p ${CURL_CMD} --data-urlencode "ce=analysed_sst[0:1:49][5000][5000],lat[5000],lon[5000],time[0:1:49]" --url ${FULL_URL}; 
    } 2>> results.txt; 
    echo ""; echo "========== 50.$i ==========";
done; 
echo "" >> ${RESULTS_FILE};
echo "1x1 - time 50 ..." >> ${RESULTS_FILE};
grep real results.txt | cat >> ${RESULTS_FILE}; 
rm results.txt;

echo =========================================================================================;

for i in {1..10}; 
    do { 
        rm ${COOKIES_FILE};
        time -p ${CURL_CMD} --data-urlencode "ce=analysed_sst[0:1:59][5000][5000],lat[5000],lon[5000],time[0:1:59]" --url ${FULL_URL}; 
    } 2>> results.txt; 
    echo ""; echo "========== 60.$i ==========";
done; 
echo "" >> ${RESULTS_FILE};
echo "1x1 - time 60 ..." >> ${RESULTS_FILE};
grep real results.txt | cat >> ${RESULTS_FILE}; 
rm results.txt;

echo =========================================================================================;

for i in {1..10}; 
    do { 
        rm ${COOKIES_FILE};
        time -p ${CURL_CMD} --data-urlencode "ce=analysed_sst[0:1:69][5000][5000],lat[5000],lon[5000],time[0:1:69]" --url ${FULL_URL}; 
    } 2>> results.txt; 
    echo ""; echo "========== 70.$i ==========";
done; 
echo "" >> ${RESULTS_FILE};
echo "1x1 - time 70 ..." >> ${RESULTS_FILE};
grep real results.txt | cat >> ${RESULTS_FILE}; 
rm results.txt;

echo =========================================================================================;

for i in {1..10}; 
    do { 
        rm ${COOKIES_FILE};
        time -p ${CURL_CMD} --data-urlencode "ce=analysed_sst[0:1:79][5000][5000],lat[5000],lon[5000],time[0:1:79]" --url ${FULL_URL}; 
    } 2>> results.txt; 
    echo ""; echo "========== 80.$i ==========";
done; 
echo "" >> ${RESULTS_FILE};
echo "1x1 - time 80 ..." >> ${RESULTS_FILE};
grep real results.txt | cat >> ${RESULTS_FILE}; 
rm results.txt;

echo =========================================================================================;

for i in {1..10}; 
    do { 
        rm ${COOKIES_FILE};
        time -p ${CURL_CMD} --data-urlencode "ce=analysed_sst[0:1:89][5000][5000],lat[5000],lon[5000],time[0:1:89]" --url ${FULL_URL}; 
    } 2>> results.txt;  
    echo ""; echo "========== 90.$i ==========";
done; 
echo "" >> ${RESULTS_FILE};
echo "1x1 - time 90 ..." >> ${RESULTS_FILE};
grep real results.txt | cat >> ${RESULTS_FILE}; 
rm results.txt;

echo =========================================================================================;

for i in {1..10}; 
    do { 
        rm ${COOKIES_FILE};
        time -p ${CURL_CMD} --data-urlencode "ce=analysed_sst[0:1:99][5000][5000],lat[5000],lon[5000],time[0:1:99]" --url ${FULL_URL}; 
    } 2>> results.txt;  
    echo ""; echo "========== 100.$i ==========";
done; 
echo "" >> ${RESULTS_FILE};
echo "1x1 - time 100 ..." >> ${RESULTS_FILE};
grep real results.txt | cat >> ${RESULTS_FILE}; 
rm results.txt;

echo =========================================================================================;
