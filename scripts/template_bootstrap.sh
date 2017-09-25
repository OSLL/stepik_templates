# Machine setting up
echo "
<RSA_PRIVATE_KEY>
" > .ssh/id_rsa 

echo "<RSA_PUBLIC_KEY>"
> .ssh/id_rsa.pub

chmod 600 .ssh/id_rsa                                    
chmod 644 .ssh/id_rsa.pub 

ssh-keyscan github.com >> .ssh/known_hosts

cd /home/box/
git clone <TASKS_REPO> repo
cd ./repo
# /Machine setting up

# Insert your task setup here
./scripts/setup_one_time_autorun_scripts.sh ./tasks/task1/generate_conditions.sh "<RANDOM_ENCR_KEY_FOR_CORRECT_ANSWER>"
# /Insert your task setup here

# Keys and repo cleanup
rm -rf /root/.ssh/id_rsa* 
rm -rf /home/box/repo
# /Keys and repo cleanup
