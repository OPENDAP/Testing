#!/bin/bash
#

SERVER_ENDPOINT="http://ngap-west.opendap.org:8080/opendap/"
DATASET_PATH="agg/ghrsst_mur_agg_100time.dmrpp"
DATASET_URL="${SERVER_ENDPOINT}${DATASET_PATH}"
DAP_REQUEST="nc4"

FULL_URL="${DATASET_URL}.${DAP_REQUEST}"
echo "FULL_URL: ${FULL_URL}"

REGION_SIZE="5000:5049"

DODS_10T_CE="analysed_sst[0:1:9][${REGION_SIZE}][${REGION_SIZE}],lat[${REGION_SIZE}],lon[${REGION_SIZE}],time[0:1:9]"
DODS_20T_CE="analysed_sst[0:1:19][${REGION_SIZE}][${REGION_SIZE}],lat[${REGION_SIZE}],lon[${REGION_SIZE}],time[0:1:19]"
DODS_30T_CE="analysed_sst[0:1:29][${REGION_SIZE}][${REGION_SIZE}],lat[${REGION_SIZE}],lon[${REGION_SIZE}],time[0:1:29]"
DODS_40T_CE="analysed_sst[0:1:39][${REGION_SIZE}][${REGION_SIZE}],lat[${REGION_SIZE}],lon[${REGION_SIZE}],time[0:1:39]"
DODS_50T_CE="analysed_sst[0:1:49][${REGION_SIZE}][${REGION_SIZE}],lat[${REGION_SIZE}],lon[${REGION_SIZE}],time[0:1:49]"
DODS_60T_CE="analysed_sst[0:1:59][${REGION_SIZE}][${REGION_SIZE}],lat[${REGION_SIZE}],lon[${REGION_SIZE}],time[0:1:59]"
DODS_70T_CE="analysed_sst[0:1:69][${REGION_SIZE}][${REGION_SIZE}],lat[${REGION_SIZE}],lon[${REGION_SIZE}],time[0:1:69]"
DODS_80T_CE="analysed_sst[0:1:79][${REGION_SIZE}][${REGION_SIZE}],lat[${REGION_SIZE}],lon[${REGION_SIZE}],time[0:1:79]"
DODS_90T_CE="analysed_sst[0:1:89][${REGION_SIZE}][${REGION_SIZE}],lat[${REGION_SIZE}],lon[${REGION_SIZE}],time[0:1:89]"
DODS_100T_CE="analysed_sst[0:1:99][${REGION_SIZE}][${REGION_SIZE}],lat[${REGION_SIZE}],lon[${REGION_SIZE}],time[0:1:99]"

DODS_CE_LIST="${DODS_10T_CE} ${DODS_20T_CE} ${DODS_30T_CE} ${DODS_40T_CE} ${DODS_50T_CE} ${DODS_60T_CE} ${DODS_70T_CE} ${DODS_80T_CE} ${DODS_90T_CE} ${DODS_100T_CE}"

COOKIES_FILE="~/ursCookies"
CURL_CMD="curl -n -c ${COOKIES_FILE} -b ${COOKIES_FILE} -L"
RESULTS_FILE="nc4_50x50_10-100_results.txt"

TIME=10

for ce in ${DODS_CE_LIST}
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
        echo "" >> ${RESULTS_FILE};
        echo "50x50 - time ${TIME} ..." >> ${RESULTS_FILE};
        grep real results.txt | cat >> ${RESULTS_FILE};
        rm results.txt;
    }
    ((TIME=TIME+10))
    done;
echo =========================================================================================;