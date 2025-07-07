#!/bin/zsh


source "$(dirname "${0}")/../shutils/pathvars.sh"

init_pathvars 
echo_pathvars

og_files_dir="${shdirpath}/og/"
suffix_len="${#og_files_dir}"
out_files_dir="${srcpath}"

nor_rgb="\"{ 0   64  128 }\""
# nor_rgb="\"{ 0   32  64  }\""
low_rgb="\"{ 0   32  64  }\""
# low_rgb="\"{ 0   64  128 }\""

pat_cmd1="\\\$reflecttint"
sed_cmd1="sed 's/${pat_cmd1}.*/${pat_cmd1} ${nor_rgb}/' {} "
sed_cmd1_low="sed 's/${pat_cmd1}.*/${pat_cmd1} ${low_rgb}/' {} "

pat_cmd2="\\\$fogcolor"
sed_cmd2="sed 's/${pat_cmd2}.*/${pat_cmd2} ${nor_rgb}/' "
sed_cmd2_low="sed 's/${pat_cmd2}.*/${pat_cmd2} ${low_rgb}/' "

#pat_cmd3="\"360\\?\\\$fogcolor"
pat_cmd3="\\\$color"
sed_cmd3="sed 's/${pat_cmd3}.*/${pat_cmd3} ${nor_rgb}/' "
sed_cmd3_low="sed 's/${pat_cmd3}.*/${pat_cmd3} ${low_rgb}/' "

pat_cmd4="\\\$refracttint"
sed_cmd4="sed 's/${pat_cmd4}.*/${pat_cmd4} ${nor_rgb}/' "
sed_cmd4_low="sed 's/${pat_cmd4}.*/${pat_cmd4} ${low_rgb}/' "

pat_cmd5="\\\$envmaptint"
sed_cmd5="sed 's/${pat_cmd5}.*/${pat_cmd5} ${nor_rgb}/' "
sed_cmd5_low="sed 's/${pat_cmd5}.*/${pat_cmd5} ${low_rgb}/' "


echo "${sed_cmd1}"



# find "${og_files_dir}" -type f -exec sh -c "b={}; echo b=\${b}; sb=\${b:${suffix_len}}; echo sb=\${sb}; " ";"
# find "${og_files_dir}" -type f -exec sh -c "b={}; sb=\${b:${suffix_len}}; if [[ \$sb == *beneath* ]]; then out=\$(${sed_cmd1_low} | ${sed_cmd2_low} | ${sed_cmd3_low}); else out=\$(${sed_cmd1} | ${sed_cmd2} | ${sed_cmd3}); echo \${out}; fi;" ";"
find "${og_files_dir}" -type f -exec sh -c "b={}; sb=\${b:${suffix_len}}; if [[ \$sb == *beneath* ]]; then ${sed_cmd1_low} | ${sed_cmd2_low} | ${sed_cmd3_low} | ${sed_cmd4_low} > \"${out_files_dir}/\$sb\"; else ${sed_cmd1} | ${sed_cmd2} | ${sed_cmd3} | ${sed_cmd4} > \"${out_files_dir}/\$sb\"; fi; dos2unix \"${out_files_dir}/\$sb\"" ";"



#files_nosplit=$(find "${shdirpath}/og" -type f -exec "b=\"" {} "\"" \; "echo \${b}" ";")
#files=(${(s[\n])files_nosplit})
#n=0
#for i in ${files}; do
#  echo "#${n}=${i}"
#  n=$((n+1))
#done


vpkeditcli -v 1 -s -o "${pakpath}" "${srcpath}"

