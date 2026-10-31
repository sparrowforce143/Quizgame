#!/bin/bash

# Score tracker
score=0
total=30

echo "=================================================="
echo "    Welcome to the Cyber Security & Linux Quiz!   "
echo "=================================================="
echo ""

# Function to check text answer
check_ans() {
    local q_num=$1
    local question=$2
    local correct_ans=$3
    
    echo "$q_num. $question"
    read user_ans
    if [ "${user_ans,,}" == "${correct_ans,,}" ]; then
        echo "Correct!"
        score=$((score+1))
    else
        echo "Wrong. The correct answer is: $correct_ans"
    fi
    echo ""
}

# 30 Questions & Answers
check_ans "1" "Which command is used to list files and directories in Linux?" "ls"
check_ans "2" "What is the default port number for HTTP traffic?" "80"
check_ans "3" "Which command is used to check network connectivity to a host?" "ping"
check_ans "4" "Which tool is commonly used for packet analysis and sniffing?" "wireshark"
check_ans "5" "What does IP stand for in networking?" "Internet Protocol"
check_ans "6" "Which command displays the current working directory path?" "pwd"
check_ans "7" "What is the default port number for HTTPS traffic?" "443"
check_ans "8" "Which command is used to change file permissions in Linux?" "chmod"
check_ans "9" "What is the default port number for SSH?" "22"
check_ans "10" "Which tool is popular for network scanning and port discovery?" "nmap"
check_ans "11" "Which command is used to view the content of a file in Linux?" "cat"
check_ans "12" "What does FTP stand for?" "File Transfer Protocol"
check_ans "13" "What is the default port number for DNS?" "53"
check_ans "14" "Which Linux command is used to show network interfaces and IP addresses?" "ifconfig"
check_ans "15" "Which command is used to remove a file in Linux?" "rm"
check_ans "16" "Which tool is a famous framework used for penetration testing?" "metasploit"
check_ans "17" "What does VPN stand for?" "Virtual Private Network"
check_ans "18" "Which command displays active processes in Linux in real-time?" "top"
check_ans "19" "What is the default port for MySQL database?" "3306"
check_ans "20" "Which command is used to create a new directory in Linux?" "mkdir"
check_ans "21" "Which Linux command is used to change the owner of a file?" "chown"
check_ans "22" "What does URL stand for?" "Uniform Resource Locator"
check_ans "23" "Which port is used by FTP for data transfer/control?" "21"
check_ans "24" "Which command is used to switch to the superuser/root account?" "su"
check_ans "25" "What does MAC stand for in MAC address?" "Media Access Control"
check_ans "26" "Which command searches for pattern text inside a file in Linux?" "grep"
check_ans "27" "What is the loopback IP address for localhost?" "127.0.0.1"
check_ans "28" "Which command is used to clear the terminal screen?" "clear"
check_ans "29" "What type of attack involves overwhelming a target with traffic?" "ddos"
check_ans "30" "Which file stores user account password hashes in Linux?" "/etc/shadow"

# Final Result
echo "=================================================="
echo " Quiz Finished! Your Total Score: $score / $total"
echo "=================================================="

