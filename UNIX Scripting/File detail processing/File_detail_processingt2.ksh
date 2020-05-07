#################### Task No-2 ##############################################################
########### The following steps will be done ################################################
######## Step 1: Go to source/landing directory##############################################
## Step 2: We will create list of files in directory#########################################
## Step 3: We will iterate through list, and check for empty files###########################
## Step 4: The empty files are moved to bad directory #######################################
## Step 5: The non-empty files are moved dated folder in processinf folder ##################

cd /home/mohit/learning/data_det
ls >/home/mohit/learning/interim/filetmp_`date +%m%d%Y`.dat
mkdir /home/mohit/learning/proc_dir/`date +%m%d%Y`
for file in `cat /home/mohit/learning/interim/filetmp_*.dat`;do
        line_cnt=`expr $(cat $file| wc -l)`
        if [ $line_cnt -eq 0 ]
        then
                mv $file /home/mohit/learning/bad_data
        else
                det_file=$(ls -ltr $file| awk '{print $9}')
                echo "`date +%m-%d-%Y` \t$det_file \t$line_cnt">>/home/mohit/learning/interim/file_`date +%m-%d-%Y`.dat;
                mv $file /home/mohit/learning/proc_dir/`date +%m%d%Y`
        fi
done;

############# Author: Mohit Bahal ############################################################
