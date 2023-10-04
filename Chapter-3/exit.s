#PURPOSE:   Simple program that exits and returns a status code back to
#           the Linux kernel
#
#
#INPUT:     None
#
#
#OUTPUT:    Returns a status code. This can be viewed by typing
#           
#           echo $?
#
#           after running the program
#
#
#VARIABLES:
#           %eax holds the system call number
#           (this is always the case)
#
#           %ebx holds the return status
#

.section    .data

.section    .text

.globl main

main:
    movl    $1, %eax
    movl    $0, %ebx
    int     $0x80
