global memcpy, memset, strlen

memcpy:
    mov rcx, rdx
    lc:
    mov al, [rsi]
    mov [rdi], al
    inc rdi
    inc rsi
    loop lc
    mov rax, rdi
    sub rax, rdx
    ret

memset:
    mov rcx, rdx
    ls:
    mov [rdi], sil
    inc rdi
    loop ls
    mov rax, rdi
    sub rax, rdx
    ret

strlen:
	xor rcx, rcx
	ll:
	mov al, [rdi+rcx]
	inc rcx
	test al, al
	jne ll
	lea rax, [rcx-1]
	ret
