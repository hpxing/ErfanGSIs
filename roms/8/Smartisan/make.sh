#/bin/bash

systempath=$1
thispath=`cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd`

# Custom files
#cp -fpr $thispath/lib64/* $1/lib64/
#cp -fpr $thispath/erfan $1/
cp -fpr $thispath/etc/* $1/etc/
cp -fpr $thispath/bin/* $1/bin/
cp -fpr $thispath/overlay/* $1/product/overlay/
cp -fpr $thispath/framework/* $1/framework/


# Append file_context
cat $thispath/file_contexts >> $1/etc/selinux/plat_file_contexts

