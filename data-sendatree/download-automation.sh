#!/usr/bin/env bash

<<COMMENT1
ensure the working directory is the same as this script. 
this way, when using relative paths, they will be created based on the directory where this script is
COMMENT1

cd "$(dirname "$0")";

index_last_file=$(ls -1 data-completed | grep 'day_' | wc -l)
index_next_file=$((index_last_file+1))
filename=day_$index_next_file

wget 46.101.230.157/jds_june_2019/$filename -P data-completed/

#getting the new qty of files
qty_current_file=$(ls -1 data-completed | grep 'day_' | wc -l)

#checking if the file was downloaded before to create empty files in the folders1,2,3
if (( $index_next_file==qty_current_file ))
then

    grep 'registration' data-completed/$filename > data-registration/$filename
    grep 'sent_a_free_tree' data-completed/$filename > data-free-tree/$filename
    grep 'sent_a_super_tree' data-completed/$filename > data-super-tree/$filename

    #put the data into sql tables
    psql -U gtrindadi -d postgres -c "COPY registrations FROM '/home/gtrindadi/jds_june_2019/data-sendatree/data-registration/$filename' DELIMITER ' ';
    COPY free_tree FROM '/home/gtrindadi/jds_june_2019/data-sendatree/data-free-tree/$filename' DELIMITER ' ';
    COPY super_tree FROM '/home/gtrindadi/jds_june_2019/data-sendatree/data-super-tree/$filename' DELIMITER ' ';"

else

    echo 'There is no new file!' $(date '+%F %T') >> logfile-error.csv

fi

#catch metrics
#psql -U gtrindadi -d postgres -f ~/jds_june_2019/metrics/super_tree_to_registrations_rate.sql > ~/jds_june_2019/metrics/super_tree_to_registrations_rate_output
#psql -U gtrindadi -d postgres -f ~/jds_june_2019/metrics/daily_active_users.sql > ~/jds_june_2019/metrics/daily_active_users_output
#psql -U gtrindadi -d postgres -f ~/jds_june_2019/metrics/daily_revenue.sql > ~/jds_june_2019/metrics/daily_revenue_output

#sending e-mail
#mutt -s"REGISTRATIONS/SUPER TREE USERS WHO SENT MORE THAN ONE metric" gabizinha_hzs@hotmail.com < /home/gtrindadi/jds_june_2019/metrics/super_tree_to_registrations_rate_output
#mutt -s"DAILY ACTIVE USERS metric" gabizinha_hzs@hotmail.com < /home/gtrindadi/jds_june_2019/metrics/daily_active_users_output
#mutt -s"DAILY REVENUE metric" gabizinha_hzs@hotmail.com < /home/gtrindadi/jds_june_2019/metrics/daily_revenue_output
#mutt -s"SEND A TREE REPORT" gabizinha_hzs@hotmail.com < ~/jds_june_2019/metrics/email_metrics_to_ben

#puting metric datas into kpi tables
psql -U gtrindadi -d postgres -f ~/jds_june_2019/metrics/daily_active_users.sql
psql -U gtrindadi -d postgres -f ~/jds_june_2019/metrics/daily_revenue.sql