################### Task No-1 ############################
########### The following steps will be done #############
######## Step 1: Go to source/landing directory###########
## Step 2: We will create list of files in directory######
## Step 3: We will iterate through list, and pull detail##
## Step 4: We will get Filename, Date of Processing and count of data ,recorded in a dated file ##
## Step 5: We will move the file to processing directory##
## Step 6: We will clear the intermediate files created ##

cd /home/mohit/learning/data_det
ls >/home/mohit/learning/interim/file_list.dat
for file in `cat /home/mohit/learning/interim/file_list.dat`;do
line_cnt=$(cat $file| wc -l)
det_file=$(ls -ltr $file| awk '{print $9}')
echo "`date +%m-%d-%Y` \t$det_file \t$line_cnt">>/home/mohit/learning/interim/file_`date +%m-%d-%Y`.dat;
mv $file /home/mohit/learning/proc_dir
done;
rm /home/mohit/learning/interim/file_list.dat

############### Author- Mohit Bahal ######################
