#!/bin/bash


       Description_fun(){

       echo "List of Operation you can perform"
       echo "1]Add User"
       echo "2]Delete User"
       echo "3]Switch User Account"
       echo "4]Add Group"
       echo "5]Delete Group"
       echo "6]Add Member in the Group"
       echo "7]Make a Group Admin"
       echo -n "Enter your Choice 1, 2, 3, 4, 5, 6, 7:-"
       read choice

       if [ "$choice" -eq 1 ]; then
       addusr_fun

       elif [ "$choice" -eq 2 ]; then
       delusr_fun

       elif [ "$choice" -eq 3 ]; then
       switch_fun

       elif [ "$choice" -eq 4 ]; then
       addgrp_fun

       elif [ "$choice" -eq 5 ]; then
       delgrp_fun

       elif [ "$choice" -eq 6 ]; then
       admembr_fun

       elif [ "$choice" -eq 7 ]; then
       grpadmin_fun

       else
               echo "Invalid Choice Please enter valid choice from 1 2 & 3"

       fi

}
 #Adding User to Group

       addusr_fun(){
       echo "Enter the name of the user you want to add:"
       read name
       sudo useradd -m "$name"
       echo "Enter the password you want to set for user you entered:"
       read password
       sudo passwd "$password"
}

        #Deleting the User

        delusr_fun(){
        echo "Enter the name of the user you want to delete:-"
        read dltusr
        sudo userdel "$dltusr"
        echo "User Deleted Successfully..!!!!"

}

        #Switching the User

        switch_fun(){

        echo "Enter the user name you want to switch to:"
        read name1

        sudo su "$name1"

}

        #Adding the Group

        addgrp_fun(){

                echo "Add the Group Account:"
                read namegrp
                sudo groupadd "$namegrp"
                echo "Group added Successfully..!!!"
}


        #Delete the group

        delgrp_fun(){
                echo "Enter the name of the group that you want to delete:"
                read namedel
                sudo groupdel "$namedel"
                echo "Deleted Group Successfully..!!!!"

}

        #Add member to group

        admembr_fun(){

                echo "Enter the name of the member you want to add:"
                read membr
                echo "Enter the group name in which you want to add member:"
                read grpnm
                sudo  gpasswd -a "$membr" "$grpnm"

}


        #Adding the admin to group
       grpadmin_fun(){

                echo "Enter the name of the user you want to make group admin:"
                read adminname
                echo "Enter the group Name of which you want to make admin:-"
                read groupname

                sudo gpasswd -A "$adminname" "$groupname"

                echo "Admin Assigned Successfully"

}


  Description_fun

                echo "Script Executed Successfully Congratulations........"
