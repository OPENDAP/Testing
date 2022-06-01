#!/bin/sh
#

SERVER_ENDPOINT="http://ngap-west.opendap.org:8080/opendap/"
DATASET_PATH="agg/ghrsst_mur_agg_100time.dmrpp.dmr"
FULL_URL="${SERVER_ENDPOINT}${DATASET_PATH}"

COOKIES_FILE="~/ursCookies"
CURL_CMD="curl -n -c ${COOKIES_FILE} -b ${COOKIES_FILE} -L"
RESULTS_FILE="dmr_50x50_10-100_results.txt"

for i in {1..10}; 
    do {
        rm ${COOKIES_FILE};
        time -p ${CURL_CMD} --data-urlencode "dap4.ce=/analysed_sst[0:1:9][5000:5049][5000:5049];/lat[5000:5049];/lon[5000:5049];/time[0:1:9]" "${FULL_URL}"; 
    } 2>> results.txt;  
    echo ""; echo "========== 10.$i ==========";
done; 
echo "" >> ${RESULTS_FILE};
echo "50x50 - time 10 ..." >> ${RESULTS_FILE};
grep real results.txt | cat >> ${RESULTS_FILE}; 
rm results.txt;

echo =========================================================================================;

for i in {1..10}; 
    do {
        rm ${COOKIES_FILE};
        time -p ${CURL_CMD} --data-urlencode "dap4.ce=/analysed_sst[0:1:19][5000:5049][5000:5049];/lat[5000:5049];/lon[5000:5049];/time[0:1:19]" "${FULL_URL}"; 
    } 2>> results.txt;  
    echo ""; echo "========== 20.$i ==========";
done; 
echo "" >> ${RESULTS_FILE};
echo "50x50 - time 20 ..." >> ${RESULTS_FILE};
grep real results.txt | cat >> ${RESULTS_FILE}; 
rm results.txt;

echo =========================================================================================;

for i in {1..10}; 
    do {
        rm ${COOKIES_FILE};
        time -p ${CURL_CMD} --data-urlencode "dap4.ce=/analysed_sst[0:1:29][5000:5049][5000:5049];/lat[5000:5049];/lon[5000:5049];/time[0:1:29]" "${FULL_URL}"; 
    } 2>> results.txt; 
    echo ""; echo "========== 30.$i ==========";
done; 
echo "" >> ${RESULTS_FILE};
echo "50x50 - time 30 ..." >> ${RESULTS_FILE};
grep real results.txt | cat >> ${RESULTS_FILE}; 
rm results.txt;

echo =========================================================================================;

for i in {1..10}; 
    do {
        rm ${COOKIES_FILE};
        time -p ${CURL_CMD} --data-urlencode "dap4.ce=/analysed_sst[0:1:39][5000:5049][5000:5049];/lat[5000:5049];/lon[5000:5049];/time[0:1:39]" "${FULL_URL}"; 
    } 2>> results.txt; 
    echo ""; echo "========== 40.$i ==========";
done; 
echo "" >> ${RESULTS_FILE};
echo "50x50 - time 40 ..." >> ${RESULTS_FILE};
grep real results.txt | cat >> ${RESULTS_FILE}; 
rm results.txt;

echo =========================================================================================;

for i in {1..10}; 
    do {
        rm ${COOKIES_FILE};
        time -p ${CURL_CMD} --data-urlencode "dap4.ce=/analysed_sst[0:1:49][5000:5049][5000:5049];/lat[5000:5049];/lon[5000:5049];/time[0:1:49]" "${FULL_URL}"; 
    } 2>> results.txt; 
    echo ""; echo "========== 50.$i ==========";
done; 
echo "" >> ${RESULTS_FILE};
echo "50x50 - time 50 ..." >> ${RESULTS_FILE};
grep real results.txt | cat >> ${RESULTS_FILE}; 
rm results.txt;

echo =========================================================================================;

for i in {1..10}; 
    do {
        rm ${COOKIES_FILE};
        time -p ${CURL_CMD} --data-urlencode "dap4.ce=/analysed_sst[0:1:59][5000:5049][5000:5049];/lat[5000:5049];/lon[5000:5049];/time[0:1:59]" "${FULL_URL}"; 
    } 2>> results.txt; 
    echo ""; echo "========== 60.$i ==========";
done; 
echo "" >> ${RESULTS_FILE};
echo "50x50 - time 60 ..." >> ${RESULTS_FILE};
grep real results.txt | cat >> ${RESULTS_FILE}; 
rm results.txt;

echo =========================================================================================;

for i in {1..10}; 
    do {
        rm ${COOKIES_FILE};
        time -p ${CURL_CMD} --data-urlencode "dap4.ce=/analysed_sst[0:1:69][5000:5049][5000:5049];/lat[5000:5049];/lon[5000:5049];/time[0:1:69]" "${FULL_URL}"; 
    } 2>> results.txt; 
    echo ""; echo "========== 70.$i ==========";
done; 
echo "" >> ${RESULTS_FILE};
echo "50x50 - time 70 ..." >> ${RESULTS_FILE};
grep real results.txt | cat >> ${RESULTS_FILE}; 
rm results.txt;

echo =========================================================================================;

for i in {1..10}; 
    do {
        rm ${COOKIES_FILE};
        time -p ${CURL_CMD} --data-urlencode "dap4.ce=/analysed_sst[0:1:79][5000:5049][5000:5049];/lat[5000:5049];/lon[5000:5049];/time[0:1:79]" "${FULL_URL}"; 
    } 2>> results.txt; 
    echo ""; echo "========== 80.$i ==========";
done; 
echo "" >> ${RESULTS_FILE};
echo "50x50 - time 80 ..." >> ${RESULTS_FILE};
grep real results.txt | cat >> ${RESULTS_FILE}; 
rm results.txt;

echo =========================================================================================;

for i in {1..10}; 
    do {
        rm ${COOKIES_FILE};
        time -p ${CURL_CMD} --data-urlencode "dap4.ce=/analysed_sst[0:1:89][5000:5049][5000:5049];/lat[5000:5049];/lon[5000:5049];/time[0:1:89]" "${FULL_URL}"; 
    } 2>> results.txt;  
    echo ""; echo "========== 90.$i ==========";
done; 
echo "" >> ${RESULTS_FILE};
echo "50x50 - time 90 ..." >> ${RESULTS_FILE};
grep real results.txt | cat >> ${RESULTS_FILE}; 
rm results.txt;

echo =========================================================================================;

for i in {1..10}; 
    do {
        rm ${COOKIES_FILE};
        time -p ${CURL_CMD} --data-urlencode "dap4.ce=/analysed_sst[0:1:99][5000:5049][5000:5049];/lat[5000:5049];/lon[5000:5049];/time[0:1:99]" "${FULL_URL}"; 
    } 2>> results.txt;  
    echo ""; echo "========== 100.$i ==========";
done; 
echo "" >> ${RESULTS_FILE};
echo "50x50 - time 100 ..." >> ${RESULTS_FILE};
grep real results.txt | cat >> ${RESULTS_FILE}; 
rm results.txt;

echo =========================================================================================;
