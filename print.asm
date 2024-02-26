.section .data

texto:
  .ascii "hello\n"

.section .text
.global _start

_start:
  mov $1, %rax
  mov $1, %rdi
  mov $texto, %rsi
  mov $8, %rdx
  syscall
  
  mov $60, %rax
  mov $0, %rsi
  syscall
