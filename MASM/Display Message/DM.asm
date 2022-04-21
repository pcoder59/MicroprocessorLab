data segment
    msg db "Welcome$"
data ends
code segment
    assume cs: code, ds: data

S1: mov ax, data    ;   Move Data Segment to ds
    mov ds, ax

    lea dx, msg ;   Load Message

    mov ah, 09h ;   Display Message on Screen
    int 21h

    mov ah, 04ch    ;   Return Command to DOS
    int 21h

code ends
end S1