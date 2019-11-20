#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...

#export PATH="/opt/anaconda2/bin:$PATH"

# LOOK GTK PARA APPS JAVA
#export  _JAVA_OPTIONS='-Dawt.useSystemAAFontSettings=on -Dswing.aatext=true  -Dsun.java2d.xrender=true -Dawt.useSystemAAFontSettings=gasp -Dswing.crossplatformlaf=com.sun.java.swing.plaf.gtk.GTKLookAndFeel'

export GTK_OVERLAY_SCROLLING=0
export TERMINAL=termite
export VISUAL=vim
export EDITOR=vim
# Flutter
export PATH="$PATH:/home/ryuuk_shinigami/development/flutter/bin"

# Hadoop
export HADOOP_HOME=/home/ryuuk_shinigami/Desktop/hadoop
export JAVA_HOME=/usr/lib/jvm/java-8-openjdk
export PATH=$PATH:$HADOOP_HOME/bin

# Hive Path
export HIVE_HOME=/usr/lib/hive
export PATH=$PATH:$HIVE_HOME/bin
export HADOOP_USER_CLASSPATH_FIRST=true

# Pig 
export PIG_HOME=/home/ryuuk_shinigami/Desktop/pig
export PATH=$PATH:$PIG_HOME/bin

# Cassandra 
export CASSANDRA_HOME=/home/ryuuk_shinigami/Desktop/cassandra/
export PATH=$PATH:$CASSANDRA_HOME/bin

# My custom command scripts
source ~/.custom_commands.sh
