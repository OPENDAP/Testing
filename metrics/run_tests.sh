#!/bin/sh
#Add the python executable to the path
export PATH=/home/slloyd/git/hyrax/olfs:$PATH

#Add python3 path to the path, needed for pydmr.o.o
#export PATH=/home/rocky/anaconda3/bin/:$PATH

#Run the tests
python3 metrics_test.py -u https://opendap.sit.earthdata.nasa.gov/collections/C2075141559-POCLOUD/granules/ascat_20121029_010001_metopb_00588_eps_o_250_2101_ovw.l2 -d 0 -x 10
python3 metrics_test.py -u https://opendap.sit.earthdata.nasa.gov/collections/C2075141559-POCLOUD/granules/ascat_20121029_010001_metopb_00588_eps_o_250_2101_ovw.l2 -d 0 -x 10 -w 4
python3 metrics_test.py -u https://opendap.sit.earthdata.nasa.gov/collections/C2075141559-POCLOUD/granules/ascat_20121029_010001_metopb_00588_eps_o_250_2101_ovw.l2 -d 0 -x 10 -w 8
python3 metrics_test.py -u https://opendap.sit.earthdata.nasa.gov/collections/C2075141559-POCLOUD/granules/ascat_20121029_010001_metopb_00588_eps_o_250_2101_ovw.l2 -d 0 -x 10 -w 10

python3 metrics_test.py -u https://opendap.sit.earthdata.nasa.gov/collections/C2075141559-POCLOUD/granules/ascat_20121029_010001_metopb_00588_eps_o_250_2101_ovw.l2 -d 0 -x 10 -f
python3 metrics_test.py -u https://opendap.sit.earthdata.nasa.gov/collections/C2075141559-POCLOUD/granules/ascat_20121029_010001_metopb_00588_eps_o_250_2101_ovw.l2 -d 0 -x 10 -w 4 -f
python3 metrics_test.py -u https://opendap.sit.earthdata.nasa.gov/collections/C2075141559-POCLOUD/granules/ascat_20121029_010001_metopb_00588_eps_o_250_2101_ovw.l2 -d 0 -x 10 -w 8 -f
python3 metrics_test.py -u https://opendap.sit.earthdata.nasa.gov/collections/C2075141559-POCLOUD/granules/ascat_20121029_010001_metopb_00588_eps_o_250_2101_ovw.l2 -d 0 -x 10 -w 10 -f

python3 metrics_test.py -u https://opendap.sit.earthdata.nasa.gov/collections/C2075141559-POCLOUD/granules/ascat_20121029_010001_metopb_00588_eps_o_250_2101_ovw.l2 -d 0 -x 100
python3 metrics_test.py -u https://opendap.sit.earthdata.nasa.gov/collections/C2075141559-POCLOUD/granules/ascat_20121029_010001_metopb_00588_eps_o_250_2101_ovw.l2 -d 0 -x 100 -w 4
python3 metrics_test.py -u https://opendap.sit.earthdata.nasa.gov/collections/C2075141559-POCLOUD/granules/ascat_20121029_010001_metopb_00588_eps_o_250_2101_ovw.l2 -d 0 -x 100 -w 8
python3 metrics_test.py -u https://opendap.sit.earthdata.nasa.gov/collections/C2075141559-POCLOUD/granules/ascat_20121029_010001_metopb_00588_eps_o_250_2101_ovw.l2 -d 0 -x 100 -w 10

python3 metrics_test.py -u https://opendap.sit.earthdata.nasa.gov/collections/C2075141559-POCLOUD/granules/ascat_20121029_010001_metopb_00588_eps_o_250_2101_ovw.l2 -d 0 -x 100 -f
python3 metrics_test.py -u https://opendap.sit.earthdata.nasa.gov/collections/C2075141559-POCLOUD/granules/ascat_20121029_010001_metopb_00588_eps_o_250_2101_ovw.l2 -d 0 -x 100 -w 4 -f
python3 metrics_test.py -u https://opendap.sit.earthdata.nasa.gov/collections/C2075141559-POCLOUD/granules/ascat_20121029_010001_metopb_00588_eps_o_250_2101_ovw.l2 -d 0 -x 100 -w 8 -f
python3 metrics_test.py -u https://opendap.sit.earthdata.nasa.gov/collections/C2075141559-POCLOUD/granules/ascat_20121029_010001_metopb_00588_eps_o_250_2101_ovw.l2 -d 0 -x 100 -w 10 -f

python3 metrics_test.py -u https://opendap.sit.earthdata.nasa.gov/collections/C2075141559-POCLOUD/granules/ascat_20121029_010001_metopb_00588_eps_o_250_2101_ovw.l2 -d 0 -x 1000
python3 metrics_test.py -u https://opendap.sit.earthdata.nasa.gov/collections/C2075141559-POCLOUD/granules/ascat_20121029_010001_metopb_00588_eps_o_250_2101_ovw.l2 -d 0 -x 1000 -w 4
python3 metrics_test.py -u https://opendap.sit.earthdata.nasa.gov/collections/C2075141559-POCLOUD/granules/ascat_20121029_010001_metopb_00588_eps_o_250_2101_ovw.l2 -d 0 -x 1000 -w 8
python3 metrics_test.py -u https://opendap.sit.earthdata.nasa.gov/collections/C2075141559-POCLOUD/granules/ascat_20121029_010001_metopb_00588_eps_o_250_2101_ovw.l2 -d 0 -x 1000 -w 10

python3 metrics_test.py -u https://opendap.sit.earthdata.nasa.gov/collections/C2075141559-POCLOUD/granules/ascat_20121029_010001_metopb_00588_eps_o_250_2101_ovw.l2 -d 0 -x 1000 -f
python3 metrics_test.py -u https://opendap.sit.earthdata.nasa.gov/collections/C2075141559-POCLOUD/granules/ascat_20121029_010001_metopb_00588_eps_o_250_2101_ovw.l2 -d 0 -x 1000 -w 4 -f
python3 metrics_test.py -u https://opendap.sit.earthdata.nasa.gov/collections/C2075141559-POCLOUD/granules/ascat_20121029_010001_metopb_00588_eps_o_250_2101_ovw.l2 -d 0 -x 1000 -w 8 -f
python3 metrics_test.py -u https://opendap.sit.earthdata.nasa.gov/collections/C2075141559-POCLOUD/granules/ascat_20121029_010001_metopb_00588_eps_o_250_2101_ovw.l2 -d 0 -x 1000 -w 10 -f
