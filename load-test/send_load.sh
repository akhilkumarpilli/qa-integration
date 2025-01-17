#/bin/sh

## This script generates and broadcasts 1000 transfers to and fro between two accounts.

set -e

# get absolute parent directory path of current file
CURPATH=`dirname $(realpath "$0")`
cd $CURPATH

# check environment variables are set
. ../deps/env-check.sh

# we can pass optional arguments when running this script
# available arguments are -s/--sender, -r/--receiver, -n/--num_txs, -h/--help
# example: ./send_load.sh -s cosmos1f2838advrjl3c8h4kjfvfmhkh0gs0wf6cyzwu8 -r osmo1cytlejwrejz8wajslgqwczlzazxaxhf4hccly5 -n 10
python3 ./python-qa-tools/load-test/send_load.py $1 $2 $3 $4 $5 $6
