#!/bin/bash

# change the default shell to zsh 
# chsh -s $(which zsh)

add_to_xmodmap() {
    cat  >> ~/.Xmodmap << EOF
!rxy_ctrl_config
clear lock
clear control
add control = Caps_Lock Control_L Control_R
keycode 66 = Control_L Caps_Lock NoSymbol NoSymbol
EOF
}

add_to_xinitrc()
{
    cat  >> ~/.xinitrc << EOF
#rxy_ctrl_config
xmodmap ~/.Xmodmap
EOF

}

find_magic_commit(){
    if [[ -f $1 && ( `grep -c "!rxy_ctrl_config" $1` -eq 1 ||`grep -c "#rxy_ctrl_config" $1` -eq 1 ) ]];
    then
        return 1
    else
        return 0
    fi
}

find_magic_commit ~/.Xmodmap
if [[ $? -eq 1 ]]
then
    echo "magic_commit has been found in ~/.Xmodmap, no need to change the file"
else
    echo "no magic_commit has been found in ~/.Xmodmap, changeing the file"
    add_to_xmodmap
fi

find_magic_commit ~/.xinitrc
if [[ $? -eq 1 ]]
then
    echo "magic_commit has been found in ~/.xinitrc, no need to change the file"
else
    echo "no magic_commit has been found in ~/.xinitrc, changeing the file"
    add_to_xinitrc
fi
