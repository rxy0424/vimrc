#!/usr/bin/python
import os,sys

vimrc_location =  sys.path[0]
user_home = os.environ.get('HOME')

for file_name in os.listdir(vimrc_location):
  if file_name[0] == '.' and os.path.isfile(vimrc_location + '/' + file_name):
    cmd_to_run = 'ln -sf ' + vimrc_location + '/' + file_name + " " + user_home + '/' + file_name
    print (cmd_to_run)
    os.system(cmd_to_run)
