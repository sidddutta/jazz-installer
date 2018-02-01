#!/bin/bash

jazz_bucket_dev=$1
jazz_bucket_stg=$2
jazz_bucket_prod=$3
jazz_bucket_cloudfrontlogs=$4
jazz_bucket_web=$5
jenkinsjsonpropsfile=$6

sed -i "s/DEV_BUCKET\".*.$/DEV_BUCKET\": \"$jazz_bucket_dev\",/g" $jenkinsjsonpropsfile
sed -i "s/STG_BUCKET\".*.$/STG_BUCKET\": \"$jazz_bucket_stg\",/g" $jenkinsjsonpropsfile
sed -i "s/PROD_BUCKET\".*.$/PROD_BUCKET\": \"$jazz_bucket_prod\",/g" $jenkinsjsonpropsfile
sed -i "s/CFLOGS_BUCKET\".*.$/CFLOGS_BUCKET\": \"$jazz_bucket_cloudfrontlogs\"/g" $jenkinsjsonpropsfile
sed -i "s/S3_BUCKET_WEB\".*.$/S3_BUCKET_WEB\": \"$jazz_bucket_web\",/g" $jenkinsjsonpropsfile
