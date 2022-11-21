#!/bin/bash
. ./color.sh

function print() {
    printf "${c_white}Total number of folders (including all nested ones) ${c_red}= $TOTAL_NUM_FOLDER${c_default}\n"
    printf "${c_white}TOP 5 folders of maximum size arranged in descending order (path and size):${c_default}\n" 
    printf "$TOP_5_FOLDERS${c_default}\n"
    printf "${c_white}Total number of files ${c_red}= $TOTAL_NUM_FILE${c_default}\n"
    printf "${c_white}Number of:\n"
    printf "${c_white}Configuration files (with the .conf extension) ${c_red}= $CONFIG_FILE${c_default}\n"
    printf "${c_white}Text files ${c_red}= $TEXT${c_default}\n"  
    printf "${c_white}Executable files ${c_red}= $EXECUTABLE${c_default}\n"
    printf "${c_white}Log files (with the extension .log) ${c_red}= $LOG${c_default}\n"
    printf "${c_white}Archive files ${c_red}= $ARCHIVE\n"  
    printf "${c_white}Symbolic links ${c_red}= $SYMBOLIC\n"  
    printf "${c_white}TOP 10 files of maximum size arranged in descending order (path, size and type):${c_default}\n"
    printf "$TOP_10_FILES${c_default}\n"
    printf "${c_white}TOP 10 executable files of the maximum size arranged in descending order (path, size and MD5 hash of file):${c_default}\n"
    for (( i = 0; i < 10; i++ ))
    do  
        if [[ -z "${array_count[i]}" ]]
        then
            break
        fi
            printf "${array_count[$i]} - ${array_name[$i]}, ${array_mem[$i]}, ${array_sum[$i]}${c_default}\n"
    done

    printf "${c_white}Script execution time (in seconds) ${c_red}= $secw${c_default}\n"
}
