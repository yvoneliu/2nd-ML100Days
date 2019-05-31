#!/bin/bash
argv1=$1
if [ argv1=="" ]; then
   echo "git commit need a message, please input..."
   read git_msg
   git_msg_len=${#git_msg}
   if [ $git_msg_len -le 1 ]; then
       echo "git commit message cannot be empty...["$git_msg"]"
       exit -1
   fi
fi
argv1=$git_msg
echo "$argv1"
#cp -r ~cray/Desktop/Cray/2017\ -\ System/phone_fb/* .
git add .
git commit -a -m "$argv1"
git push
