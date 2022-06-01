#!/bin/sh
#

SERVER_ENDPOINT="http://ngap-west.opendap.org:8080/opendap/"
DATASET_PATH="agg/ghrsst_mur_agg_100time.dmrpp.ascii"
FULL_URL="${SERVER_ENDPOINT}${DATASET_PATH}"

COOKIES_FILE="~/ursCookies"
CURL_CMD="curl -n -c ${COOKIES_FILE} -b ${COOKIES_FILE} -L"
RESULTS_FILE="ascii_100X100_10-100_results.txt"

for i in {1..10}; 
    do {
        rm ${COOKIES_FILE};
        time -p ${CURL_CMD} --data-urlencode "ce=analysed_sst[0:1:9][5000:5099][5000:5099],lat[5000:5099],lon[5000:5099],time[0:1:9]" --url ${FULL_URL};
    } 2>> results.txt;  
    echo ""; echo "========== 10.$i ==========";
done; 
echo "" >> ${RESULT_FILE};
echo "100x100 - time 10 ..." >> ${RESULT_FILE};
grep real results.txt | cat >> ${RESULT_FILE};
rm results.txt;

echo =========================================================================================;

for i in {1..10}; 
    do {
        rm ${COOKIES_FILE};
        time -p ${CURL_CMD} --data-urlencode "ce=analysed_sst[0:1:19][5000:5099][5000:5099],lat[5000:5099],lon[5000:5099],time[0:1:19]" --url ${FULL_URL};
    } 2>> results.txt;  
    echo ""; echo "========== 20.$i ==========";
done; 
echo "" >> ${RESULT_FILE};
echo "100x100 - time 20 ..." >> ${RESULT_FILE};
grep real results.txt | cat >> ${RESULT_FILE};
rm results.txt;

echo =========================================================================================;

for i in {1..10}; 
    do {
        rm ${COOKIES_FILE};
        time -p ${CURL_CMD} --data-urlencode "ce=analysed_sst[0:1:29][5000:5099][5000:5099],lat[5000:5099],lon[5000:5099],time[0:1:29]" --url ${FULL_URL};
    } 2>> results.txt; 
    echo ""; echo "========== 30.$i ==========";
done; 
echo "" >> ${RESULT_FILE};
echo "100x100 - time 30 ..." >> ${RESULT_FILE};
grep real results.txt | cat >> ${RESULT_FILE};
rm results.txt;

echo =========================================================================================;

for i in {1..10}; 
    do {
        rm ${COOKIES_FILE};
        time -p ${CURL_CMD} --data-urlencode "ce=analysed_sst[0:1:39][5000:5099][5000:5099],lat[5000:5099],lon[5000:5099],time[0:1:39]" --url ${FULL_URL};
    } 2>> results.txt; 
    echo ""; echo "========== 40.$i ==========";
done; 
echo "" >> ${RESULT_FILE};
echo "100x100 - time 40 ..." >> ${RESULT_FILE};
grep real results.txt | cat >> ${RESULT_FILE};
rm results.txt;

echo =========================================================================================;

for i in {1..10}; 
    do {
        rm ${COOKIES_FILE};
        time -p ${CURL_CMD} --data-urlencode "ce=analysed_sst[0:1:49][5000:5099][5000:5099],lat[5000:5099],lon[5000:5099],time[0:1:49]" --url ${FULL_URL};
    } 2>> results.txt; 
    echo ""; echo "========== 50.$i ==========";
done; 
echo "" >> ${RESULT_FILE};
echo "100x100 - time 50 ..." >> ${RESULT_FILE};
grep real results.txt | cat >> ${RESULT_FILE};
rm results.txt;

echo =========================================================================================;

for i in {1..10}; 
    do {
        rm ${COOKIES_FILE};
        time -p ${CURL_CMD} --data-urlencode "ce=analysed_sst[0:1:59][5000:5099][5000:5099],lat[5000:5099],lon[5000:5099],time[0:1:59]" --url ${FULL_URL};
    } 2>> results.txt; 
    echo ""; echo "========== 60.$i ==========";
done; 
echo "" >> ${RESULT_FILE};
echo "100x100 - time 60 ..." >> ${RESULT_FILE};
grep real results.txt | cat >> ${RESULT_FILE};
rm results.txt;

echo =========================================================================================;

for i in {1..10}; 
    do {
        rm ${COOKIES_FILE};
        time -p ${CURL_CMD} --data-urlencode "ce=analysed_sst[0:1:69][5000:5099][5000:5099],lat[5000:5099],lon[5000:5099],time[0:1:69]" --url ${FULL_URL};
    } 2>> results.txt; 
    echo ""; echo "========== 70.$i ==========";
done; 
echo "" >> ${RESULT_FILE};
echo "100x100 - time 70 ..." >> ${RESULT_FILE};
grep real results.txt | cat >> ${RESULT_FILE};
rm results.txt;

echo =========================================================================================;

for i in {1..10}; 
    do {
        rm ${COOKIES_FILE};
        time -p ${CURL_CMD} --data-urlencode "ce=analysed_sst[0:1:79][5000:5099][5000:5099],lat[5000:5099],lon[5000:5099],time[0:1:79]" --url ${FULL_URL};
    } 2>> results.txt; 
    echo ""; echo "========== 80.$i ==========";
done; 
echo "" >> ${RESULT_FILE};
echo "100x100 - time 80 ..." >> ${RESULT_FILE};
grep real results.txt | cat >> ${RESULT_FILE};
rm results.txt;

echo =========================================================================================;

for i in {1..10}; 
    do {
        rm ${COOKIES_FILE};
        time -p ${CURL_CMD} --data-urlencode "ce=analysed_sst[0:1:89][5000:5099][5000:5099],lat[5000:5099],lon[5000:5099],time[0:1:89]" --url ${FULL_URL};
    } 2>> results.txt;  
    echo ""; echo "========== 90.$i ==========";
done; 
echo "" >> ${RESULT_FILE};
echo "100x100 - time 90 ..." >> ${RESULT_FILE};
grep real results.txt | cat >> ${RESULT_FILE};
rm results.txt;

echo =========================================================================================;

for i in {1..10}; 
    do {
        rm ${COOKIES_FILE};
        time -p ${CURL_CMD} --data-urlencode "ce=analysed_sst[0:1:99][5000:5099][5000:5099],lat[5000:5099],lon[5000:5099],time[0:1:99]" --url ${FULL_URL};
    } 2>> results.txt;  
    echo ""; echo "========== 100.$i ==========";
done; 
echo "" >> ${RESULT_FILE};
echo "100x100 - time 100 ..." >> ${RESULT_FILE};
grep real results.txt | cat >> ${RESULT_FILE};
rm results.txt;

echo =========================================================================================;
