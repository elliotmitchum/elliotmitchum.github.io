---
layout: "post"
title: "Introduction to Assembly"
lede: "Notes on my initial experience with assembly."
date: 2018-04-17
---
I have chosen the [nasm](https://www.nasm.us/) assembler on [Ubuntu 18.04](http://releases.ubuntu.com/18.04/).
 Useful for operating systems

## Organisation

Assembly is a linear approach to programming. It consists of single statement
lines, which are grouped into sections.

A statement can consist of a mnemonic (instruction name) and operands
(instruction parameters).

There are three types of statements:

- Instructions: What to do
- Directives; Instruction data
- Macros: Text substitution

There are three types of groups:

- `data` - Declaring and initialising data
- `bss` - Declaring variables
- `text` - Code

A simple example illustates the organisation:

```nasm
section .bss ; Variable declaration section.
	 ; 
	 num resb 5 ; Reserve 5 bytes.
```

## Example

- Uses linux system calls to perform tasks
- Moves data to registers appropriate registers
- Invokes a system call to perform task via interrupts

```nasm
section .data ; Data segment.
	 userMsg db "Please enter a number: " ; Ask for number input.
	 lenUserMsg equ $-userMsg ; Question length.
	 dispMsg db "You have entered: " ; Display answer.
	 lenDispMsg equ $-dispMsg ; Answer message length.

section .bss ; Uninitialised data.
	 num resb 5 ; Reserve 5 bytes.

section .text ; Code segment.
	 global _start	; Add start to object code for ld.

_start: ; Begin.
	 
	 ; Display question.
	 mov eax, 4	; Set 'sys_write' call.
	 mov ebx, 1	; Set file descriptor to stdout.
	 mov ecx, userMsg	; Set message.
	 mov edx, lenUserMsg	; Set write length.
	 int 80h	; Invoke syscall.
	 
	 ; Read and store user input.
	 mov eax, 3	; Set 'sys_read' call.
	 mov ebx, 2	; Set file descriptor to stdin.
	 mov ecx, num ; Assign input to num var.
	 mov edx, 5 ; Set read length to 5 bytes.
	 int 80h ; Invoke syscall.

	 ; Display message.
	 mov eax, 4 ; Set 'sys_write' call.
	 mov ebx, 1 ; Set file descriptor to stdout.
	 mov ecx, dispMsg ; Set message.
	 mov edx, lenDispMsg	; Set write length.
	 int 80h ; Invoke syscall.

	 ; Display input.
	 mov eax, 4 ; Set 'sys_write' call.
	 mov ebx, 1 ; Set file descriptor to stdout.
	 mov ecx, num ; Set message.
	 mov edx, 5 ; Set write length to 5 bytes.
	 int 80h

	 ; Exit.
	 mov eax, 1 ; Set 'sys_exit' call.
	 mov ebx, 0 ; Set status to 0 (success).
	 int 80h ; Invoke syscall.
```
