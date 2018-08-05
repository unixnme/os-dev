nasm boot_sect.asm -f bin -o boot_sect.bin
nasm hello.asm -f bin -o hello.bin

od -t x1 -A n boot_sect.bin
echo
od -t x1 -A n hello.bin
