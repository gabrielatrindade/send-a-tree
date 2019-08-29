#!/usr/bin/env bash

directory_way=/home/gtrindadi/jds_june_2019/data-sendatree/data-completed/
qty_files=$(ls -1 $directory_way | grep day | sort -V | tail -1 | cut -f2 -d'_')

start=1
end=$qty_files
number_of_users=0
number_of_free_tree_sent=0
number_of_paid_tree_sent=0

while [ $start -le $end ]
do
    filename=day_$start

    registration_qty_current_file=$(cat data-completed/$filename | grep 'registration' | wc -l)
    number_of_users=$((registration_qty_current_file+number_of_users))

    free_tree_qty_current_file=$(cat data-completed/$filename | grep 'sent_a_free_tree' | wc -l)
    number_of_free_tree_sent=$((free_tree_qty_current_file+number_of_free_tree_sent))
    
    paid_tree_qty_current_file=$(cat data-completed/$filename | grep 'sent_a_super_tree' | wc -l)
    number_of_paid_tree_sent=$((paid_tree_qty_current_file+number_of_paid_tree_sent))

    start=$((start+1))
done

last_file_name=day_$qty_files
number_of_registrations_yesterday=$(cat data-completed/$last_file_name | grep 'registration' | wc -l)
number_of_free_tree_sent_yesterday=$(cat data-completed/$last_file_name | grep 'sent_a_free_tree' | wc -l)
number_of_paid_tree_sent_yesterday=$(cat data-completed/$last_file_name | grep 'sent_a_super_tree' | wc -l)


echo "-- In general --"
echo "There are "$number_of_users" users."
echo "It were sent "$number_of_free_tree_sent" free tree." 
echo "It were sent "$number_of_paid_tree_sent" paid tree."

echo "-- Yesterday --"
echo $number_of_registrations_yesterday "were registered."
echo $number_of_free_tree_sent_yesterday "free tree were sent."
echo $number_of_paid_tree_sent_yesterday "paid tree were sent."