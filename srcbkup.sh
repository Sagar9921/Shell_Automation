#!/bin/bash



        src_dir="/home/ubuntu/project"

        tgt_dir="/home/ubuntu/backups"


        backup_filename="bkup_$(date +%y-%m-%d).tar.gz"

        echo "$backup_filename"

        echo "Backup Started..!!!"

        echo "Backing up to $backup_filename"
        #tar -czvf bkup_24-02-21.tar.gz *

        tar -czvf "${tgt_dir}/${backup_filename}" "$src_dir"
        echo "backup Completed..!!!!"
                        
