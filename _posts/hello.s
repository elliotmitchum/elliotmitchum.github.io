section .data											; Data segment.
	 userMsg db 'Please enter a number: '		; Ask for number input.
	 lenUserMsg equ $-userMsg						; Question length.
	 dispMsg db 'You have entered: '				; Display answer.
	 lenDispMsg equ $-dispMsg						; Answer message length.

section .bss											; Uninitialised data.
	 num resb 5											; Reserve 5 bytes.

section .text											; Code segment.
	 global _start										; Add start to object code for ld.

_start:													; Begin.

														   ; Display question.
	 mov eax, 4											; Set 'sys_write' call.
	 mov ebx, 1											; Set file descriptor to stdout.
	 mov ecx, userMsg									; Set message.
	 mov edx, lenUserMsg								; Set write length.
	 int 80h												; Invoke syscall.

														   ; Read and store user input.
	 mov eax, 3											; Set 'sys_read' call.
	 mov ebx, 2											; Set file descriptor to stdin.
	 mov ecx, num										; Assign input to num var.
	 mov edx, 5											; Set read length to 5 bytes.
	 int 80h												; Invoke syscall.

														   ; Display message.
	 mov eax, 4											; Set 'sys_write' call.
	 mov ebx, 1											; Set file descriptor to stdout.
	 mov ecx, dispMsg									; Set message.
	 mov edx, lenDispMsg								; Set write length.
	 int 80h												; Invoke syscall.

														   ; Display input.
	 mov eax, 4											; Set 'sys_write' call.
	 mov ebx, 1											; Set file descriptor to stdout.
	 mov ecx, num										; Set message.
	 mov edx, 5											; Set write length to 5 bytes.
	 int 80h

														   ; Exit.
	 mov eax, 1											; Set 'sys_exit' call.
	 mov ebx, 0											; Set status to 0 (success).
	 int 80h												; Invoke syscall.

