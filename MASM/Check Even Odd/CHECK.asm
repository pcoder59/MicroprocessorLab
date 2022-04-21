data segment
    msg1 db "Enter The Number: $"
    msg2 db "The Entered Number is Odd!$"
    msg3 db "The Entered Number is Even!$"
    b1 db ?
data ends
code segment
    assume cs:code, ds:data

S1: mov ax, data    ; Move Data Segment To ds
    mov ds, ax

    lea dx, msg1    ; Load Message

    mov ah, 09h ; Display Message
    int 21h

    mov ah, 01h ; Accept Input
    int 21h

    mov ah, 02h ; Moving Display to New Line
    mov dl, 0dh
    int 21h
    mov dl, 0ah
    int 21h

    mov b1, 02
    mov ah, 00
    div b1
    cmp ah, 00
    jz even1
    lea dx, msg2
    mov ah, 09h
    int 21h
    jmp end1
even1:lea dx, msg3
    mov ah,09h
    int 21h

end1:mov ah, 04ch   ; Return Command to DOS
    int 21h

code ends
end S1