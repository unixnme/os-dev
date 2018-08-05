input=$1
output=${1:0:-4}.bin

nasm $input -f bin -o $output && qemu-system-x86_64 $output

