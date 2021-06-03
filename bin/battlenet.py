#!/usr/bin/env python3
# CLI Control Center V0.4
import csv
import sys
import os
import datetime


def main():
    os.system("clear")
    menu()


# the menu
def menu():
    now = datetime.datetime.now()
    print(now.strftime("[%H:%M]"), 3 * "-", "Battle.net", 10 * "-")
    choice = input("""
1: Enable 32-Bit              ***********************************
2: Vulkan support             *Remember to install the          *
3: Wine Key                   *Latest graphic card drivers first*
4: Add Wine repo              ***********************************   
5: Install Wine
6: Additional dependencies
7: install lutris
8: Search Battle.net in lutris and install it!!

Please enter your choice (q to quit): """)

    if choice == "1":
        enable32()
    elif choice == "2":
        vulkan()
    elif choice == "3":
        winek()
    elif choice == "4":
        addr()
    elif choice == "5":
        installw()
    elif choice == "6":
        ad()
    elif choice == "7":
        il()
    elif choice == "8":
        ()
    elif choice == "Q" or choice == "q":
        os.system("clear")
        sys.exit
    else:
        os.system("clear")
        print(29 * "-")
        print("|You must only select option|")
        print("|Please try again           |")
        print(29 * "-")
        menu()


# Finction to Enable 32-Bit
def enable32():
    os.system("sudo dpkg --add-architecture i386")
    os.system("echo *Done!*")
    os.system("sleep 3")
    os.system("clear")
    menu()

# Finction to vulkan support
def vulkan():
    os.system("sudo apt install libvulkan1 libvulkan1:i386")
    os.system("echo *Done!*")
    os.system("sleep 3")
    os.system("clear")
    menu()
    
# Finction to Wine Key
def winek():
    os.system("wget -nc https://dl.winehq.org/wine-builds/winehq.key")
    os.system("sudo apt-key add winehq.key")
    os.system("echo *Done!*")
    os.system("sleep 3")
    os.system("clear")
    menu()
# Finction to add repo
def addr():
    os.system("sudo add-apt-repository 'deb https://dl.winehq.org/wine-builds/ubuntu/ focal main'")
    os.system("sudo apt-get update")
    os.system("echo *Done!*")
    os.system("sleep 3")
    os.system("clear")
    menu()

# Finction to Install Wine
def installw():
    os.system("sudo apt-get install --install-recommends winehq-staging")
    os.system("echo *Done!*")
    os.system("sleep 3")
    os.system("clear")
    menu()

# Finction to Additional dependencies
def ad():
    os.system("sudo apt-get install libgnutls30:i386 libldap-2.4-2:i386 libgpg-error0:i386 libsqlite3-0:i386")
    os.system("echo *Done!*")
    os.system("sleep 3")
    os.system("clear")
    menu()

# Finction to Install lutris
def il():
    os.system("sudo add-apt-repository ppa:lutris-team/lutris")
    os.system("sudo apt-get update")
    os.system("sudo apt-get install lutris")
    os.system("echo *Done!*")
    os.system("sleep 3")
    os.system("clear")
    menu()
        
# the program is initiated, so to speak, here
main()
