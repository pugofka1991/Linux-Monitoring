#!/bin/bash

export f_total="$(ls -l $1 | grep -c ^d)"
export f_5="$(du -h $1 | sort -hr | head -5 | awk '{print $2}')"
export f_size_5="$(du -h $1 | sort -hr | head -5 | awk '{print $1}')"
export total_files="$(ls -laR $1 | grep "^-" | wc | awk '{print $1}')"
export config_files="$(find $1 -type f -name "*.conf" | wc -l)"
export total_text_files="$(find $1 -type f -name "*.txt" | wc -l)"
export total_exec_files="$(find $1 -type f -name -executable | wc -l)"
export total_logs_files="$(find $1 -type f -name "*.log" | wc -l)"
export total_arch_files="$(find $1 -type f -name "*.zip" -o -name "*.7z" -o -name "*.rar" -o -name "*.tar" | wc -l)"
export total_symb_links="$(find $1 -type l | wc -l)"
export f_10="$(find $1 -type f -exec du -h {} + | sort -hr | head -10 | awk '{print $2}')"
export f_size_10="$(find $1 -type f -exec du -h {} + | sort -hr | head -10 | awk '{print $1}')"
export e_files_10="$(find $1 -type f -executable -exec du -h {} + | sort -hr | head -10 | awk '{print $2}')"
export e_files_size_10="$(find $1 -type f -executable -exec du -h {} + | sort -hr | head -10 | awk '{print $1}')"

chmod +x print_info.sh
./print_info.sh