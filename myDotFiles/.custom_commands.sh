#!bin/bash
# This is MR Ryuuk_Shinigami's Custom Scripts config file
#
#
#
#
#
# Finally after editing execute
#
# $source .zshrc
#
# to update the commands

function rewifi() {
    echo '-----------------------------------------'
    echo 'Wifi Restart Initiated'
    echo
    sudo ifconfig wlo1 down
    echo 'Going to a Short Nap ... '
    sleep 1
    echo
    echo 'Waking up ... '
    echo
    sudo ifconfig wlo1 up
    echo 'Wifi Restarted'
    echo '-----------------------------------------'
}

function readb() {
    echo '---------------------------'
    echo
    adb kill-server
    echo 'Restarting adb ...'
    sleep 1
    echo
    adb devices
    echo '---------------------------'
}

function pac() {

    if [ "$1" = "s" ]
    then
       pacman -Ss $2 $3 $4 $5
    elif [ "$1" = "u" ]
    then
        sudo pacman -Syuu --noconfirm --needed
    else
        sudo pacman -S $1 $2 $3 $4 $5 --noconfirm --needed
    fi
}

function vic() {
    echo ---------Opening i3 config----------
    cd
    vim .config/i3/config
}

function vis() {
    echo ---------Opening Custom Scripts-------------
    cd
    vim .custom_commands.sh
}

function goto() {
    echo --- Accessing Samsung NVMe SSD 970 Evo Plus ---
    echo --- Going into Ryuuk_Shinigami in SSD ---
    cd /run/media/ryuuk_shinigami/7004D07904D0442E/Users/raaje/$1
    echo -e "\n"
    ls
}

function birthday() {
    echo --- Running Set Birthday to Calendar Python Script ---
    cd
    cd ~/Projects/pythonAutomation
    python setBirthdayToCalendar.py
}

function kaboomhadoop() {
    echo --- Starting hadoop Custom Script ---
#    ./start-all.sh ; urxvt -e hadoop namenode ; ./hadoop-daemon.sh start datanode ; ./yarn-daemon.sh start nodemanager; urxvt -e hadoop secondarynamenode ; jps
    echo --- Executing start all ---
    $HADOOP_HOME/sbin/start-all.sh
    sleep 3
    echo --- Starting NameNode ---
    urxvt -e hadoop namenode &
    sleep 3
    echo --- Starting DataNode ---
    $HADOOP_HOME/sbin/hadoop-daemon.sh start datanode
    sleep 3
    echo --- Starting NodeManager ---
    $HADOOP_HOME/sbin/yarn-daemon.sh start nodemanager
    sleep 3
    echo --- Starting SecondaryNamenode ---
    urxvt -e hadoop secondarynamenode &
    echo
    echo
    echo --- JPS ---
    echo
    echo
    sleep 3
    jps
}


function generateDotFiles() {
    echo --- Executing migration of dot files script ---
    echo --- Copying Scripts ---
    sudo cp ~/.bashrc ~/Arch/myDotFiles/.bashrc
    sudo cp ~/.custom_commands.sh  ~/Arch/myDotFiles/.custom_commands.sh
    sudo cp ~/enableGpu.sh  ~/Arch/myDotFiles/enableGpu.sh
    sudo cp ~/.gtkrc-2.0  ~/Arch/myDotFiles/.gtkrc-2.0
    sudo cp ~/.i3status  ~/Arch/myDotFiles/.i3status
    sudo cp ~/.i3blocks.conf  ~/Arch/myDotFiles/.i3blocks.conf
    sudo cp ~/newstartx.sh  ~/Arch/myDotFiles/newstartx.sh
    sudo cp ~/.startupscript.sh  ~/Arch/myDotFiles/.startupscript.sh
    sudo cp ~/.switchWindows.sh  ~/Arch/myDotFiles/.switchWindows.sh
    sudo cp ~/.vimrc  ~/Arch/myDotFiles/.vimrc
    sudo cp ~/.xinitrc  ~/Arch/myDotFiles/.xinitrc
    sudo cp ~/.Xresources  ~/Arch/myDotFiles/.Xresources
    sudo cp ~/.Xresources-hidpi  ~/Arch/myDotFiles/.Xresources-hidpi
    sudo cp ~/.zpreztorc  ~/Arch/myDotFiles/.zpreztorc
    sudo cp ~/.zprofile  ~/Arch/myDotFiles/.zprofile
    sudo cp ~/.zshenv  ~/Arch/myDotFiles/.zshenv
    sudo cp ~/.zshrc  ~/Arch/myDotFiles/.zshrc
    sudo cp ~/.config/gtk-3.0/settings.ini  ~/Arch/myDotFiles/.config/gtk-3.0/settings.ini
    sudo cp ~/.config/gtk-4.0/settings.ini  ~/Arch/myDotFiles/.config/gtk-4.0/settings.ini
    sudo cp ~/.config/i3/config ~/Arch/myDotFiles/.config/i3/config
    sudo cp ~/.config/i3status/config ~/Arch/myDotFiles/.config/i3status/config
    sudo cp ~/.config/i3status/net-speed.sh ~/Arch/myDotFiles/.config/i3status/net-speed.sh
    sudo cp ~/.config/libinput-gestures.conf ~/Arch/myDotFiles/.config/libinput-gestures.conf
    sudo cp ~/.config/compton.conf ~/Arch/myDotFiles/.config/compton.conf

    echo --- Haaah !! I am too tired of copying !! Now its upto you to push to remote ---

}






