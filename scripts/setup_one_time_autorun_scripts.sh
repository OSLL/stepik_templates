#!/bin/bash


script=${1}
key=${2}
run_string="sudo /etc/init.d/one_timer.sh >/dev/null 2>&1"
sed -i s/KEY/${key}/g ${script}
echo "sed -i \"s|${run_string}||g\" /home/box/.bashrc" >> ${script}
echo 'rm $0' >> ${script}
mv ${script} /etc/init.d/one_timer.sh

chmod 777 /etc/init.d/one_timer.sh 

echo ${run_string} >> /home/box/.bashrc
