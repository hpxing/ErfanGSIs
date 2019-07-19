#/bin/bash

systempath=$1
thispath=`cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd`



# Append file_context
cat $thispath/file_contexts >> $1/etc/selinux/plat_file_contexts
