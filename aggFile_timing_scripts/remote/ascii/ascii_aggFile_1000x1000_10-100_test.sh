#!/bin/bash
#

SERVER_ENDPOINT="http://ngap-west.opendap.org:8080/opendap/"
DATASET_PATH="agg/ghrsst_mur_agg_100time.dmrpp"
DATASET_URL="${SERVER_ENDPOINT}${DATASET_PATH}"
REQUEST_TYPE="ascii"

FULL_URL="${DATASET_URL}.${REQUEST_TYPE}"
echo "FULL_URL: ${FULL_URL}"

REGION_SIZE="5000:5999" # region size for curl cmd
OUTPUT_SIZE="1000x1000" # human readable size

10T_CE="analysed_sst[0:1:9][${REGION_SIZE}][${REGION_SIZE}],lat[${REGION_SIZE}],lon[${REGION_SIZE}],time[0:1:9]"
20T_CE="analysed_sst[0:1:19][${REGION_SIZE}][${REGION_SIZE}],lat[${REGION_SIZE}],lon[${REGION_SIZE}],time[0:1:19]"
30T_CE="analysed_sst[0:1:29][${REGION_SIZE}][${REGION_SIZE}],lat[${REGION_SIZE}],lon[${REGION_SIZE}],time[0:1:29]"
40T_CE="analysed_sst[0:1:39][${REGION_SIZE}][${REGION_SIZE}],lat[${REGION_SIZE}],lon[${REGION_SIZE}],time[0:1:39]"
50T_CE="analysed_sst[0:1:49][${REGION_SIZE}][${REGION_SIZE}],lat[${REGION_SIZE}],lon[${REGION_SIZE}],time[0:1:49]"
60T_CE="analysed_sst[0:1:59][${REGION_SIZE}][${REGION_SIZE}],lat[${REGION_SIZE}],lon[${REGION_SIZE}],time[0:1:59]"
70T_CE="analysed_sst[0:1:69][${REGION_SIZE}][${REGION_SIZE}],lat[${REGION_SIZE}],lon[${REGION_SIZE}],time[0:1:69]"
80T_CE="analysed_sst[0:1:79][${REGION_SIZE}][${REGION_SIZE}],lat[${REGION_SIZE}],lon[${REGION_SIZE}],time[0:1:79]"
90T_CE="analysed_sst[0:1:89][${REGION_SIZE}][${REGION_SIZE}],lat[${REGION_SIZE}],lon[${REGION_SIZE}],time[0:1:89]"
100T_CE="analysed_sst[0:1:99][${REGION_SIZE}][${REGION_SIZE}],lat[${REGION_SIZE}],lon[${REGION_SIZE}],time[0:1:99]"

CE_LIST="${10T_CE} ${20T_CE} ${30T_CE} ${40T_CE} ${50T_CE} ${60T_CE} ${70T_CE} ${80T_CE} ${90T_CE} ${100T_CE}"

COOKIES_FILE="/home/centos/ursCookies"
CURL_CMD="curl -n -c ${COOKIES_FILE} -b ${COOKIES_FILE} -L"
RESULTS_FILE="${REQUEST_TYPE}_${OUTPUT_SIZE}_10-100_results.txt"

TIME=10

for ce in ${CE_LIST}
    do {
        echo =========================================================================================;
        echo ${FULL_URL}?${ce};
        CE=$(echo "${ce}" | sed -e "s/\[/%5B/g" -e "s/\]/%5D/g")
        REQUEST_URL="${FULL_URL}?${CE}"

        for i in {1..10};
            do {
                echo ""; echo "========== ${TIME}.${i} ==========";
                rm ${COOKIES_FILE};
                time -p ${CURL_CMD} "${REQUEST_URL}";
            } 2>> results.txt;
            echo ""; echo "==================================";
        done;
        echo "" | tee -a ${RESULTS_FILE};
        echo "${OUTPUT_SIZE} - time ${TIME} ..." | tee -a ${RESULTS_FILE};
        grep real results.txt | tee -a ${RESULTS_FILE};
        rm results.txt;
    }
    ((TIME=TIME+10))
    done;
echo =========================================================================================;