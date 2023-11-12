#!/usr/bin/env python3

#     _________
#    / ======= \
#   / __________\
#  | ___________ |
#  | | -       | |
#  | |         | |
#  | |_________| |_____________________________________
#  \=____________/   Rodrigo <Sud0Pirat3> Brasil       )
#  / """"""""""" \                                    /
# / ::::::::::::: \                               =D-'
#(_________________)

# Date created: 16/10/2023
# Last Revision: 16/10/2023
# Purpose: Automaticly lock the user screen

# Might need to run with administrator previleges to work properly

# Import necessary function from user32.dll
Add-Type @"
    using System;
    using System.Runtime.InteropServices;
    public class User32 {
        [DllImport("user32.dll", SetLastError = true)]
        public static extern bool LockWorkStation();
    }
"@

# Call the LockWorkStation function to lock the screen
[User32]::LockWorkStation()