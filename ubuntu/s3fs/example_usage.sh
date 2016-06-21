docker run \
  --tty --interactive --rm \
  --volume $(pwd)/myDir:/from:rw \
  -e BUCKET=test-bucket \
  -e AWSACCESSKEYID=my_id \
  -e AWSSECRETACCESSKEY=my_key \
  --privileged --entrypoint /rsync.sh \
  snarlysodboxer/s3fs:latest -aWhP --delete-after --size-only --inplace /from/ /to/
