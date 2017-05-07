.intel_syntax noprefix

	#region Semantic Error: usage of undefined carry
	mov cl, 0
	bsf ax, cx
	rcl ax, 1
	#endregion

	vaddpd xmm1, xmm2, xmm3 ; inimplemented instruction to stop the simulator

	#region move value to memory
	mov ptr qword [rax], 10
	mov rax, ptr qword [rax]
	#endregion

	vaddpd xmm1, xmm2, xmm3 ; inimplemented instruction to stop the simulator

	#region slow (expensive) instruction
	mov ptr qword [rax], 10
	mov rax, ptr qword [rax]
	popcnt rbx, rax
	#endregion

.att_syntax