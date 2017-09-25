#!/bin/bash

# Insert you task generation below
echo "To be or not to be in case of $RANDOM" > /home/box/condition
echo "$RANDOM" > /home/box/correct_answer
# /Insert you task generation below

# Do not edit!
key="KEY"
cd /home/box/
echo ${key} | gpg --no-tty --passphrase-fd 0 -c /home/box/correct_answer
chown box:box /home/box/correct_answer.gpg
rm /home/box/correct_answer
# /Do not edit!
