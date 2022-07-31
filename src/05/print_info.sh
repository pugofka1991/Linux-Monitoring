#!/bin/bash

folders_5=($f_5)
folders_size_5=($f_size_5)

files_text_10=($f_10)
files_size_10=($f_size_10)

exec_files_10=($e_files_10)
exec_files_size_10=($e_files_size_10)

echo "Total number of folders (including all nested ones) = $f_total"
echo "TOP 5 folders of maximum size arranged in descending order (path and size):"
for (( i = 0; i < 5; i++ ))
do
	if [[ -n ${folders_5[$i]} ]]
	then
		printf "%d - " "$((i + 1))"
		printf "${folders_5[$i]}, "
		printf "${folders_size_5[$i]}\n"
	fi
done

echo "Total number of files = $total_files"
echo "Number of:"
echo "Configuration files (with the .conf extension) = $config_files"
echo "Text files = $total_text_files"
echo "Executable files = $total_exec_files"
echo "Log files (with the extension .log) = $total_logs_files"
echo "Archive files = $total_arch_files"
echo "Symbolic links = $total_symb_links"

echo "TOP 10 files of maximum size arranged in descending order (path, size and type):"
for (( j = 0; j < 10; j++ ))
do
	if [[ -n ${files_text_10[$j]} ]]
	then
		printf "%d - " "$((j + 1))"
		printf "${files_text_10[$j]}, "
		printf "${files_size_10[$j]}, "
		extension="${files_text_10[$j]##*.}"
		printf "${extension}"
		printf "\n"
	fi
done

echo "TOP 10 executable files of the maximum size arranged in descending order (path, size and MD5 hash of file)"
for (( k = 0; k < 10; k++ ))
do
	if [[ -n ${exec_files_10[$k]} ]]
	then
		printf "%d - " "$((k + 1))"
		printf "${exec_files_10[$k]}, "
		printf "${exec_files_size_10[$k]}, "
		export hash_c="$(md5sum ${exec_files_10[$k]} | awk '{print $1}')"
		printf "${hash_c}"
		printf "\n"
	fi
done

END=$(date +%s%N)
EXEC=$((($END - $START)/1000000))
echo "Script execution time (in seconds) $EXEC"