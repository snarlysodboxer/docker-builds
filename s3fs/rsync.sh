#!/bin/bash

## Example usage:
  # /rsync -aWhP --delete-after --size-only --inplace /from/ /to/

/usr/bin/s3fs $BUCKET /to
if [[ $? = 0 ]] ; then
  rsync $@
fi
exit_code=$?
umount -v /to
exit $exit_code
