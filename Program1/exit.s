#PURPOSE: Simple program that exits and returns a
#         status code back to the Linux Kernel
#

#INPUT:   None
#

#OUTPUT:  returns a status code. This can be viewed 
#         by typing 
#
#         echo $?
#         after running the program
#

#VARIABLES:
#         %eax holds the system call number
#         %ebx hold the return status

.section .data

.section .text
.global _start
_start:
movl $1, %eax     # this is the linux kernel command
                 # number (system call) for exiting
                 # a program

movl $13, %ebx     # this is the status number we will 
                 # return to the operating system.
                 # Changes this around and it will
                 # return different things to 
                 # echo $?

                 # this wakes up the kernel to run
int $0x80        # the exit command.