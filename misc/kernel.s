
kernel.x:	file format Mach-O 64-bit x86-64


Disassembly of section __TEXT,__text:

0000000100000f40 _max:
100000f40: 55                          	pushq	%rbp
100000f41: 48 89 e5                    	movq	%rsp, %rbp
100000f44: 89 d0                       	movl	%edx, %eax
100000f46: 39 d7                       	cmpl	%edx, %edi
100000f48: 0f 4d c7                    	cmovgel	%edi, %eax
100000f4b: 39 f0                       	cmpl	%esi, %eax
100000f4d: 0f 4c c6                    	cmovll	%esi, %eax
100000f50: 5d                          	popq	%rbp
100000f51: c3                          	retq
100000f52: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
100000f5c: 0f 1f 40 00                 	nopl	(%rax)

0000000100000f60 _kernel:
100000f60: 55                          	pushq	%rbp
100000f61: 48 89 e5                    	movq	%rsp, %rbp
100000f64: 41 57                       	pushq	%r15
100000f66: 41 56                       	pushq	%r14
100000f68: 41 55                       	pushq	%r13
100000f6a: 41 54                       	pushq	%r12
100000f6c: 53                          	pushq	%rbx
100000f6d: 48 83 ec 58                 	subq	$88, %rsp
100000f71: 48 89 7d a0                 	movq	%rdi, -96(%rbp)
100000f75: 48 89 75 c8                 	movq	%rsi, -56(%rbp)
100000f79: 83 fe 02                    	cmpl	$2, %esi
100000f7c: 0f 8c 75 09 00 00           	jl	2421 <_kernel+0x997>
100000f82: 49 89 c9                    	movq	%rcx, %r9
100000f85: 4c 8b 5d c8                 	movq	-56(%rbp), %r11
100000f89: 4d 63 d3                    	movslq	%r11d, %r10
100000f8c: 48 8b 75 a0                 	movq	-96(%rbp), %rsi
100000f90: 8d 46 fd                    	leal	-3(%rsi), %eax
100000f93: 48 98                       	cltq
100000f95: 48 63 f6                    	movslq	%esi, %rsi
100000f98: c5 7b 10 1a                 	vmovsd	(%rdx), %xmm11
100000f9c: c5 7b 10 52 08              	vmovsd	8(%rdx), %xmm10
100000fa1: c5 7b 10 4a 10              	vmovsd	16(%rdx), %xmm9
100000fa6: 48 89 b5 10 ff ff ff        	movq	%rsi, -240(%rbp)
100000fad: 89 f6                       	movl	%esi, %esi
100000faf: 48 8d 78 ff                 	leaq	-1(%rax), %rdi
100000fb3: c5 7b 10 44 c2 f8           	vmovsd	-8(%rdx,%rax,8), %xmm8
100000fb9: 49 0f af fa                 	imulq	%r10, %rdi
100000fbd: 48 89 bd 18 ff ff ff        	movq	%rdi, -232(%rbp)
100000fc4: 48 89 c7                    	movq	%rax, %rdi
100000fc7: 49 0f af fa                 	imulq	%r10, %rdi
100000fcb: 48 89 7d 98                 	movq	%rdi, -104(%rbp)
100000fcf: 48 8d 78 01                 	leaq	1(%rax), %rdi
100000fd3: 48 89 bd 20 ff ff ff        	movq	%rdi, -224(%rbp)
100000fda: 49 0f af fa                 	imulq	%r10, %rdi
100000fde: 48 89 85 38 ff ff ff        	movq	%rax, -200(%rbp)
100000fe5: 48 8d 58 02                 	leaq	2(%rax), %rbx
100000fe9: 49 0f af da                 	imulq	%r10, %rbx
100000fed: 4c 89 d0                    	movq	%r10, %rax
100000ff0: 48 c1 e0 21                 	shlq	$33, %rax
100000ff4: 48 b9 00 00 00 00 01 00 00 00       	movabsq	$4294967296, %rcx
100000ffe: 48 09 c1                    	orq	%rax, %rcx
100001001: 48 89 4d b0                 	movq	%rcx, -80(%rbp)
100001005: 4c 89 d0                    	movq	%r10, %rax
100001008: 48 c1 e0 20                 	shlq	$32, %rax
10000100c: 48 89 85 78 ff ff ff        	movq	%rax, -136(%rbp)
100001013: 4c 89 d0                    	movq	%r10, %rax
100001016: 48 c1 e0 04                 	shlq	$4, %rax
10000101a: 48 89 45 c0                 	movq	%rax, -64(%rbp)
10000101e: 4c 89 d0                    	movq	%r10, %rax
100001021: 48 c1 e0 05                 	shlq	$5, %rax
100001025: 48 89 45 a8                 	movq	%rax, -88(%rbp)
100001029: 48 8d 46 fb                 	leaq	-5(%rsi), %rax
10000102d: 48 89 85 50 ff ff ff        	movq	%rax, -176(%rbp)
100001034: 48 83 c6 fc                 	addq	$-4, %rsi
100001038: 48 89 b5 70 ff ff ff        	movq	%rsi, -144(%rbp)
10000103f: c5 fb 10 25 89 5d 00 00     	vmovsd	23945(%rip), %xmm4
100001047: c5 fb 10 2d 89 5d 00 00     	vmovsd	23945(%rip), %xmm5
10000104f: 4b 8d 04 12                 	leaq	(%r10,%r10), %rax
100001053: 48 89 85 28 ff ff ff        	movq	%rax, -216(%rbp)
10000105a: 4b 8d 04 52                 	leaq	(%r10,%r10,2), %rax
10000105e: 48 89 85 30 ff ff ff        	movq	%rax, -208(%rbp)
100001065: 48 89 bd 40 ff ff ff        	movq	%rdi, -192(%rbp)
10000106c: 48 8d 47 02                 	leaq	2(%rdi), %rax
100001070: 48 89 85 58 ff ff ff        	movq	%rax, -168(%rbp)
100001077: 48 89 9d 48 ff ff ff        	movq	%rbx, -184(%rbp)
10000107e: 48 8d 43 01                 	leaq	1(%rbx), %rax
100001082: 48 89 85 60 ff ff ff        	movq	%rax, -160(%rbp)
100001089: 4e 8d 2c d5 00 00 00 00     	leaq	(,%r10,8), %r13
100001091: 4b 8d 44 6d 00              	leaq	(%r13,%r13,2), %rax
100001096: 48 89 85 68 ff ff ff        	movq	%rax, -152(%rbp)
10000109d: 43 8d 04 5b                 	leal	(%r11,%r11,2), %eax
1000010a1: 89 45 d4                    	movl	%eax, -44(%rbp)
1000010a4: 41 bb 01 00 00 00           	movl	$1, %r11d
1000010aa: bb 04 00 00 00              	movl	$4, %ebx
1000010af: 45 31 ff                    	xorl	%r15d, %r15d
1000010b2: 4c 89 45 b8                 	movq	%r8, -72(%rbp)
1000010b6: 4c 89 4d 90                 	movq	%r9, -112(%rbp)
1000010ba: 4c 89 95 08 ff ff ff        	movq	%r10, -248(%rbp)
1000010c1: eb 3b                       	jmp	59 <_kernel+0x19e>
1000010c3: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
1000010cd: 0f 1f 00                    	nopl	(%rax)
1000010d0: 48 83 c3 04                 	addq	$4, %rbx
1000010d4: 49 ff c7                    	incq	%r15
1000010d7: 48 83 45 b8 20              	addq	$32, -72(%rbp)
1000010dc: 83 45 d4 04                 	addl	$4, -44(%rbp)
1000010e0: 48 b8 00 00 00 00 04 00 00 00       	movabsq	$17179869184, %rax
1000010ea: 48 01 45 b0                 	addq	%rax, -80(%rbp)
1000010ee: 4c 8b 95 08 ff ff ff        	movq	-248(%rbp), %r10
1000010f5: 4d 39 d3                    	cmpq	%r10, %r11
1000010f8: 0f 8d f9 07 00 00           	jge	2041 <_kernel+0x997>
1000010fe: 48 89 9d 00 ff ff ff        	movq	%rbx, -256(%rbp)
100001105: 4b 8d 04 ba                 	leaq	(%r10,%r15,4), %rax
100001109: c4 81 23 c2 44 d9 f8 00     	vcmpeqsd	-8(%r9,%r11,8), %xmm11, %xmm0
100001111: c4 e3 51 4b c4 00           	vblendvpd	%xmm0, %xmm4, %xmm5, %xmm0
100001117: c4 81 7b 58 44 d8 f8        	vaddsd	-8(%r8,%r11,8), %xmm0, %xmm0
10000111e: c5 fb 2c c8                 	vcvttsd2si	%xmm0, %ecx
100001122: c4 81 53 58 04 d8           	vaddsd	(%r8,%r11,8), %xmm5, %xmm0
100001128: c5 fb 2c f0                 	vcvttsd2si	%xmm0, %esi
10000112c: c4 c1 53 58 04 c0           	vaddsd	(%r8,%rax,8), %xmm5, %xmm0
100001132: c5 fb 2c f8                 	vcvttsd2si	%xmm0, %edi
100001136: 39 f9                       	cmpl	%edi, %ecx
100001138: 0f 4d f9                    	cmovgel	%ecx, %edi
10000113b: 39 f7                       	cmpl	%esi, %edi
10000113d: 0f 4c fe                    	cmovll	%esi, %edi
100001140: 4b 8d 04 13                 	leaq	(%r11,%r10), %rax
100001144: c5 e3 2a c7                 	vcvtsi2sd	%edi, %xmm3, %xmm0
100001148: c4 c1 7b 11 04 c0           	vmovsd	%xmm0, (%r8,%rax,8)
10000114e: c4 81 23 c2 0c d9 00        	vcmpeqsd	(%r9,%r11,8), %xmm11, %xmm1
100001155: c4 e3 51 4b cc 10           	vblendvpd	%xmm1, %xmm4, %xmm5, %xmm1
10000115b: c4 81 73 58 0c d8           	vaddsd	(%r8,%r11,8), %xmm1, %xmm1
100001161: c5 fb 2c c9                 	vcvttsd2si	%xmm1, %ecx
100001165: c4 81 53 58 4c d8 08        	vaddsd	8(%r8,%r11,8), %xmm5, %xmm1
10000116c: c5 fb 2c f1                 	vcvttsd2si	%xmm1, %esi
100001170: c5 fb 58 c5                 	vaddsd	%xmm5, %xmm0, %xmm0
100001174: c5 fb 2c f8                 	vcvttsd2si	%xmm0, %edi
100001178: 39 f9                       	cmpl	%edi, %ecx
10000117a: 0f 4d f9                    	cmovgel	%ecx, %edi
10000117d: 39 f7                       	cmpl	%esi, %edi
10000117f: 0f 4c fe                    	cmovll	%esi, %edi
100001182: 4b 8d 4c 13 01              	leaq	1(%r11,%r10), %rcx
100001187: c5 e3 2a c7                 	vcvtsi2sd	%edi, %xmm3, %xmm0
10000118b: c4 c1 7b 11 04 c8           	vmovsd	%xmm0, (%r8,%rcx,8)
100001191: c4 81 23 c2 4c d9 08 00     	vcmpeqsd	8(%r9,%r11,8), %xmm11, %xmm1
100001199: c4 e3 51 4b cc 10           	vblendvpd	%xmm1, %xmm4, %xmm5, %xmm1
10000119f: c4 81 73 58 4c d8 08        	vaddsd	8(%r8,%r11,8), %xmm1, %xmm1
1000011a6: c5 fb 2c f1                 	vcvttsd2si	%xmm1, %esi
1000011aa: c4 81 53 58 4c d8 10        	vaddsd	16(%r8,%r11,8), %xmm5, %xmm1
1000011b1: c5 fb 2c f9                 	vcvttsd2si	%xmm1, %edi
1000011b5: c5 fb 58 c5                 	vaddsd	%xmm5, %xmm0, %xmm0
1000011b9: c5 fb 2c d8                 	vcvttsd2si	%xmm0, %ebx
1000011bd: 39 de                       	cmpl	%ebx, %esi
1000011bf: 0f 4d de                    	cmovgel	%esi, %ebx
1000011c2: 39 fb                       	cmpl	%edi, %ebx
1000011c4: 0f 4c df                    	cmovll	%edi, %ebx
1000011c7: c5 e3 2a c3                 	vcvtsi2sd	%ebx, %xmm3, %xmm0
1000011cb: 4b 8d 74 13 02              	leaq	2(%r11,%r10), %rsi
1000011d0: c4 c1 7b 11 04 f0           	vmovsd	%xmm0, (%r8,%rsi,8)
1000011d6: c4 81 23 c2 4c d9 10 00     	vcmpeqsd	16(%r9,%r11,8), %xmm11, %xmm1
1000011de: c4 e3 51 4b cc 10           	vblendvpd	%xmm1, %xmm4, %xmm5, %xmm1
1000011e4: c4 81 73 58 4c d8 10        	vaddsd	16(%r8,%r11,8), %xmm1, %xmm1
1000011eb: c5 fb 2c f9                 	vcvttsd2si	%xmm1, %edi
1000011ef: c4 81 53 58 4c d8 18        	vaddsd	24(%r8,%r11,8), %xmm5, %xmm1
1000011f6: c5 fb 58 c5                 	vaddsd	%xmm5, %xmm0, %xmm0
1000011fa: c5 fb 2c d8                 	vcvttsd2si	%xmm0, %ebx
1000011fe: 39 df                       	cmpl	%ebx, %edi
100001200: 0f 4d df                    	cmovgel	%edi, %ebx
100001203: c5 fb 2c f9                 	vcvttsd2si	%xmm1, %edi
100001207: 39 fb                       	cmpl	%edi, %ebx
100001209: 0f 4c df                    	cmovll	%edi, %ebx
10000120c: 4b 8d 7c 13 03              	leaq	3(%r11,%r10), %rdi
100001211: c5 e3 2a c3                 	vcvtsi2sd	%ebx, %xmm3, %xmm0
100001215: c4 c1 7b 11 04 f8           	vmovsd	%xmm0, (%r8,%rdi,8)
10000121b: 4c 8b 95 28 ff ff ff        	movq	-216(%rbp), %r10
100001222: 4b 8d 3c ba                 	leaq	(%r10,%r15,4), %rdi
100001226: c4 81 2b c2 44 d9 f8 00     	vcmpeqsd	-8(%r9,%r11,8), %xmm10, %xmm0
10000122e: c4 e3 51 4b c4 00           	vblendvpd	%xmm0, %xmm4, %xmm5, %xmm0
100001234: c4 c1 7b 58 44 c0 f8        	vaddsd	-8(%r8,%rax,8), %xmm0, %xmm0
10000123b: c5 fb 2c d8                 	vcvttsd2si	%xmm0, %ebx
10000123f: c4 c1 53 58 04 c0           	vaddsd	(%r8,%rax,8), %xmm5, %xmm0
100001245: c4 c1 53 58 0c f8           	vaddsd	(%r8,%rdi,8), %xmm5, %xmm1
10000124b: c5 fb 2c f9                 	vcvttsd2si	%xmm1, %edi
10000124f: 39 fb                       	cmpl	%edi, %ebx
100001251: 0f 4d fb                    	cmovgel	%ebx, %edi
100001254: c5 fb 2c d8                 	vcvttsd2si	%xmm0, %ebx
100001258: 39 df                       	cmpl	%ebx, %edi
10000125a: 0f 4c fb                    	cmovll	%ebx, %edi
10000125d: c5 e3 2a c7                 	vcvtsi2sd	%edi, %xmm3, %xmm0
100001261: 4b 8d 1c 13                 	leaq	(%r11,%r10), %rbx
100001265: c4 c1 7b 11 04 d8           	vmovsd	%xmm0, (%r8,%rbx,8)
10000126b: c4 81 2b c2 0c d9 00        	vcmpeqsd	(%r9,%r11,8), %xmm10, %xmm1
100001272: c4 e3 51 4b cc 10           	vblendvpd	%xmm1, %xmm4, %xmm5, %xmm1
100001278: c4 c1 73 58 0c c0           	vaddsd	(%r8,%rax,8), %xmm1, %xmm1
10000127e: c5 fb 2c c1                 	vcvttsd2si	%xmm1, %eax
100001282: c4 c1 53 58 0c c8           	vaddsd	(%r8,%rcx,8), %xmm5, %xmm1
100001288: c5 fb 58 c5                 	vaddsd	%xmm5, %xmm0, %xmm0
10000128c: c5 fb 2c c8                 	vcvttsd2si	%xmm0, %ecx
100001290: 39 c8                       	cmpl	%ecx, %eax
100001292: 0f 4d c8                    	cmovgel	%eax, %ecx
100001295: c5 fb 2c c1                 	vcvttsd2si	%xmm1, %eax
100001299: 39 c1                       	cmpl	%eax, %ecx
10000129b: 0f 4c c8                    	cmovll	%eax, %ecx
10000129e: c5 e3 2a c1                 	vcvtsi2sd	%ecx, %xmm3, %xmm0
1000012a2: 4b 8d 44 13 01              	leaq	1(%r11,%r10), %rax
1000012a7: c4 c1 7b 11 04 c0           	vmovsd	%xmm0, (%r8,%rax,8)
1000012ad: c4 81 2b c2 4c d9 08 00     	vcmpeqsd	8(%r9,%r11,8), %xmm10, %xmm1
1000012b5: c4 e3 51 4b cc 10           	vblendvpd	%xmm1, %xmm4, %xmm5, %xmm1
1000012bb: c4 c1 73 58 4c f0 f8        	vaddsd	-8(%r8,%rsi,8), %xmm1, %xmm1
1000012c2: c5 fb 2c c9                 	vcvttsd2si	%xmm1, %ecx
1000012c6: c4 c1 53 58 0c f0           	vaddsd	(%r8,%rsi,8), %xmm5, %xmm1
1000012cc: c5 fb 58 c5                 	vaddsd	%xmm5, %xmm0, %xmm0
1000012d0: c5 fb 2c f0                 	vcvttsd2si	%xmm0, %esi
1000012d4: 39 f1                       	cmpl	%esi, %ecx
1000012d6: 0f 4d f1                    	cmovgel	%ecx, %esi
1000012d9: c5 fb 2c c9                 	vcvttsd2si	%xmm1, %ecx
1000012dd: 39 ce                       	cmpl	%ecx, %esi
1000012df: 0f 4c f1                    	cmovll	%ecx, %esi
1000012e2: 48 8b bd 30 ff ff ff        	movq	-208(%rbp), %rdi
1000012e9: 4c 89 7d 88                 	movq	%r15, -120(%rbp)
1000012ed: 4a 8d 0c bf                 	leaq	(%rdi,%r15,4), %rcx
1000012f1: c5 eb 2a c6                 	vcvtsi2sd	%esi, %xmm2, %xmm0
1000012f5: 4b 8d 74 13 02              	leaq	2(%r11,%r10), %rsi
1000012fa: c4 c1 7b 11 04 f0           	vmovsd	%xmm0, (%r8,%rsi,8)
100001300: c4 81 33 c2 44 d9 f8 00     	vcmpeqsd	-8(%r9,%r11,8), %xmm9, %xmm0
100001308: c4 e3 51 4b c4 00           	vblendvpd	%xmm0, %xmm4, %xmm5, %xmm0
10000130e: c4 c1 7b 58 44 d8 f8        	vaddsd	-8(%r8,%rbx,8), %xmm0, %xmm0
100001315: c5 fb 2c f0                 	vcvttsd2si	%xmm0, %esi
100001319: c4 c1 53 58 04 d8           	vaddsd	(%r8,%rbx,8), %xmm5, %xmm0
10000131f: c4 c1 53 58 0c c8           	vaddsd	(%r8,%rcx,8), %xmm5, %xmm1
100001325: c5 fb 2c c9                 	vcvttsd2si	%xmm1, %ecx
100001329: 39 ce                       	cmpl	%ecx, %esi
10000132b: 0f 4d ce                    	cmovgel	%esi, %ecx
10000132e: c5 fb 2c f0                 	vcvttsd2si	%xmm0, %esi
100001332: 39 f1                       	cmpl	%esi, %ecx
100001334: 0f 4c ce                    	cmovll	%esi, %ecx
100001337: c5 eb 2a c1                 	vcvtsi2sd	%ecx, %xmm2, %xmm0
10000133b: 49 8d 0c 3b                 	leaq	(%r11,%rdi), %rcx
10000133f: c4 c1 7b 11 04 c8           	vmovsd	%xmm0, (%r8,%rcx,8)
100001345: c4 81 33 c2 0c d9 00        	vcmpeqsd	(%r9,%r11,8), %xmm9, %xmm1
10000134c: c4 e3 51 4b cc 10           	vblendvpd	%xmm1, %xmm4, %xmm5, %xmm1
100001352: c4 c1 73 58 0c d8           	vaddsd	(%r8,%rbx,8), %xmm1, %xmm1
100001358: c5 fb 2c c9                 	vcvttsd2si	%xmm1, %ecx
10000135c: c4 c1 53 58 0c c0           	vaddsd	(%r8,%rax,8), %xmm5, %xmm1
100001362: c5 fb 58 c5                 	vaddsd	%xmm5, %xmm0, %xmm0
100001366: c5 fb 2c c0                 	vcvttsd2si	%xmm0, %eax
10000136a: 39 c1                       	cmpl	%eax, %ecx
10000136c: 0f 4d c1                    	cmovgel	%ecx, %eax
10000136f: c5 fb 2c c9                 	vcvttsd2si	%xmm1, %ecx
100001373: 39 c8                       	cmpl	%ecx, %eax
100001375: 0f 4c c1                    	cmovll	%ecx, %eax
100001378: c5 eb 2a c0                 	vcvtsi2sd	%eax, %xmm2, %xmm0
10000137c: 4c 89 5d 80                 	movq	%r11, -128(%rbp)
100001380: 49 8d 44 3b 01              	leaq	1(%r11,%rdi), %rax
100001385: c4 c1 7b 11 04 c0           	vmovsd	%xmm0, (%r8,%rax,8)
10000138b: 83 7d a0 04                 	cmpl	$4, -96(%rbp)
10000138f: 48 8b 4d c8                 	movq	-56(%rbp), %rcx
100001393: 0f 8e 37 03 00 00           	jle	823 <_kernel+0x770>
100001399: 48 8b 45 90                 	movq	-112(%rbp), %rax
10000139d: 48 8b 75 80                 	movq	-128(%rbp), %rsi
1000013a1: c5 7b 10 64 f0 f8           	vmovsd	-8(%rax,%rsi,8), %xmm12
1000013a7: c5 7b 10 2c f0              	vmovsd	(%rax,%rsi,8), %xmm13
1000013ac: c5 fb 10 5c f0 08           	vmovsd	8(%rax,%rsi,8), %xmm3
1000013b2: c5 fb 10 54 f0 10           	vmovsd	16(%rax,%rsi,8), %xmm2
1000013b8: 83 f9 01                    	cmpl	$1, %ecx
1000013bb: 48 8b bd 50 ff ff ff        	movq	-176(%rbp), %rdi
1000013c2: 0f 85 78 01 00 00           	jne	376 <_kernel+0x5e0>
1000013c8: 48 8b 45 88                 	movq	-120(%rbp), %rax
1000013cc: 48 8d 04 85 00 00 00 00     	leaq	(,%rax,4), %rax
1000013d4: 8d 48 03                    	leal	3(%rax), %ecx
1000013d7: 8d 34 39                    	leal	(%rcx,%rdi), %esi
1000013da: 39 ce                       	cmpl	%ecx, %esi
1000013dc: 0f 8c 5e 01 00 00           	jl	350 <_kernel+0x5e0>
1000013e2: 48 89 f9                    	movq	%rdi, %rcx
1000013e5: 48 c1 e9 20                 	shrq	$32, %rcx
1000013e9: 0f 85 51 01 00 00           	jne	337 <_kernel+0x5e0>
1000013ef: 8d 70 04                    	leal	4(%rax), %esi
1000013f2: 01 f7                       	addl	%esi, %edi
1000013f4: 39 f7                       	cmpl	%esi, %edi
1000013f6: 0f 8c 44 01 00 00           	jl	324 <_kernel+0x5e0>
1000013fc: 48 85 c9                    	testq	%rcx, %rcx
1000013ff: 0f 85 3b 01 00 00           	jne	315 <_kernel+0x5e0>
100001405: c4 c1 7b 10 4c c0 20        	vmovsd	32(%r8,%rax,8), %xmm1
10000140c: 4c 8b 55 b0                 	movq	-80(%rbp), %r10
100001410: 31 c0                       	xorl	%eax, %eax
100001412: 8b 7d d4                    	movl	-44(%rbp), %edi
100001415: 48 8b 5d b8                 	movq	-72(%rbp), %rbx
100001419: 4c 8b 9d 70 ff ff ff        	movq	-144(%rbp), %r11
100001420: 4c 8b bd 78 ff ff ff        	movq	-136(%rbp), %r15
100001427: 4c 8b 75 a8                 	movq	-88(%rbp), %r14
10000142b: 0f 1f 44 00 00              	nopl	(%rax,%rax)
100001430: c5 9b c2 44 c2 18 00        	vcmpeqsd	24(%rdx,%rax,8), %xmm12, %xmm0
100001437: c4 e3 51 4b c4 00           	vblendvpd	%xmm0, %xmm4, %xmm5, %xmm0
10000143d: 4c 63 cf                    	movslq	%edi, %r9
100001440: c4 81 7b 58 04 c8           	vaddsd	(%r8,%r9,8), %xmm0, %xmm0
100001446: ff c7                       	incl	%edi
100001448: c5 fb 2c f0                 	vcvttsd2si	%xmm0, %esi
10000144c: 4c 63 e7                    	movslq	%edi, %r12
10000144f: c4 81 53 58 04 e0           	vaddsd	(%r8,%r12,8), %xmm5, %xmm0
100001455: c5 fb 2c c8                 	vcvttsd2si	%xmm0, %ecx
100001459: c5 f3 58 c5                 	vaddsd	%xmm5, %xmm1, %xmm0
10000145d: c5 fb 2c f8                 	vcvttsd2si	%xmm0, %edi
100001461: 39 fe                       	cmpl	%edi, %esi
100001463: 0f 4c f7                    	cmovll	%edi, %esi
100001466: 39 ce                       	cmpl	%ecx, %esi
100001468: 0f 4c f1                    	cmovll	%ecx, %esi
10000146b: c5 93 c2 44 c2 10 00        	vcmpeqsd	16(%rdx,%rax,8), %xmm13, %xmm0
100001472: c4 e3 51 4b c4 00           	vblendvpd	%xmm0, %xmm4, %xmm5, %xmm0
100001478: c5 db 2a ce                 	vcvtsi2sd	%esi, %xmm4, %xmm1
10000147c: c4 a1 7b 11 4c 33 08        	vmovsd	%xmm1, 8(%rbx,%r14)
100001483: 4c 89 d1                    	movq	%r10, %rcx
100001486: 48 c1 f9 1d                 	sarq	$29, %rcx
10000148a: c4 c1 7b 58 04 08           	vaddsd	(%r8,%rcx), %xmm0, %xmm0
100001490: c5 fb 2c c8                 	vcvttsd2si	%xmm0, %ecx
100001494: c4 81 53 58 04 e0           	vaddsd	(%r8,%r12,8), %xmm5, %xmm0
10000149a: c5 fb 2c f0                 	vcvttsd2si	%xmm0, %esi
10000149e: 39 f1                       	cmpl	%esi, %ecx
1000014a0: 0f 4d f1                    	cmovgel	%ecx, %esi
1000014a3: c5 e3 c2 44 c2 08 00        	vcmpeqsd	8(%rdx,%rax,8), %xmm3, %xmm0
1000014aa: c4 e3 51 4b c4 00           	vblendvpd	%xmm0, %xmm4, %xmm5, %xmm0
1000014b0: c5 eb c2 0c c2 00           	vcmpeqsd	(%rdx,%rax,8), %xmm2, %xmm1
1000014b6: c4 e3 51 4b cc 10           	vblendvpd	%xmm1, %xmm4, %xmm5, %xmm1
1000014bc: 39 fe                       	cmpl	%edi, %esi
1000014be: 0f 4c f7                    	cmovll	%edi, %esi
1000014c1: c5 db 2a f6                 	vcvtsi2sd	%esi, %xmm4, %xmm6
1000014c5: 48 8b 8d 68 ff ff ff        	movq	-152(%rbp), %rcx
1000014cc: c5 fb 11 74 0b 10           	vmovsd	%xmm6, 16(%rbx,%rcx)
1000014d2: c4 a1 7b 58 44 2b 10        	vaddsd	16(%rbx,%r13), %xmm0, %xmm0
1000014d9: c5 fb 2c c8                 	vcvttsd2si	%xmm0, %ecx
1000014dd: 39 f9                       	cmpl	%edi, %ecx
1000014df: 0f 4c cf                    	cmovll	%edi, %ecx
1000014e2: 39 f9                       	cmpl	%edi, %ecx
1000014e4: 0f 4c cf                    	cmovll	%edi, %ecx
1000014e7: c5 db 2a c1                 	vcvtsi2sd	%ecx, %xmm4, %xmm0
1000014eb: 48 8b 4d c0                 	movq	-64(%rbp), %rcx
1000014ef: c5 fb 11 44 0b 18           	vmovsd	%xmm0, 24(%rbx,%rcx)
1000014f5: c5 f3 58 43 18              	vaddsd	24(%rbx), %xmm1, %xmm0
1000014fa: c5 fb 2c c8                 	vcvttsd2si	%xmm0, %ecx
1000014fe: 39 f9                       	cmpl	%edi, %ecx
100001500: 0f 4c cf                    	cmovll	%edi, %ecx
100001503: 39 f9                       	cmpl	%edi, %ecx
100001505: 0f 4c cf                    	cmovll	%edi, %ecx
100001508: c5 db 2a c9                 	vcvtsi2sd	%ecx, %xmm4, %xmm1
10000150c: c4 a1 7b 11 4c 2b 20        	vmovsd	%xmm1, 32(%rbx,%r13)
100001513: 4c 01 eb                    	addq	%r13, %rbx
100001516: 44 03 4d c8                 	addl	-56(%rbp), %r9d
10000151a: 48 ff c0                    	incq	%rax
10000151d: 4d 01 fa                    	addq	%r15, %r10
100001520: 44 89 cf                    	movl	%r9d, %edi
100001523: 49 39 c3                    	cmpq	%rax, %r11
100001526: 0f 85 04 ff ff ff           	jne	-252 <_kernel+0x4d0>
10000152c: e9 9f 01 00 00              	jmp	415 <_kernel+0x770>
100001531: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
10000153b: 0f 1f 44 00 00              	nopl	(%rax,%rax)
100001540: 8b 45 d4                    	movl	-44(%rbp), %eax
100001543: 41 89 c4                    	movl	%eax, %r12d
100001546: 4c 8b 55 b0                 	movq	-80(%rbp), %r10
10000154a: 4c 8b 4d b8                 	movq	-72(%rbp), %r9
10000154e: 31 c9                       	xorl	%ecx, %ecx
100001550: 48 8b 7d a8                 	movq	-88(%rbp), %rdi
100001554: eb 2e                       	jmp	46 <_kernel+0x624>
100001556: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
100001560: c5 db 2a c0                 	vcvtsi2sd	%eax, %xmm4, %xmm0
100001564: c4 81 7b 11 44 29 20        	vmovsd	%xmm0, 32(%r9,%r13)
10000156b: 4d 01 e9                    	addq	%r13, %r9
10000156e: 48 ff c1                    	incq	%rcx
100001571: 4d 01 da                    	addq	%r11, %r10
100001574: 41 01 dc                    	addl	%ebx, %r12d
100001577: 49 39 ce                    	cmpq	%rcx, %r14
10000157a: 48 8b 7d a8                 	movq	-88(%rbp), %rdi
10000157e: 0f 84 4c 01 00 00           	je	332 <_kernel+0x770>
100001584: c5 9b c2 44 ca 18 00        	vcmpeqsd	24(%rdx,%rcx,8), %xmm12, %xmm0
10000158b: c4 e3 51 4b fc 00           	vblendvpd	%xmm0, %xmm4, %xmm5, %xmm7
100001591: c5 93 c2 44 ca 10 00        	vcmpeqsd	16(%rdx,%rcx,8), %xmm13, %xmm0
100001598: c4 e3 51 4b c4 00           	vblendvpd	%xmm0, %xmm4, %xmm5, %xmm0
10000159e: c5 e3 c2 74 ca 08 00        	vcmpeqsd	8(%rdx,%rcx,8), %xmm3, %xmm6
1000015a5: c5 eb c2 0c ca 00           	vcmpeqsd	(%rdx,%rcx,8), %xmm2, %xmm1
1000015ab: 49 63 c4                    	movslq	%r12d, %rax
1000015ae: c4 c1 43 58 3c c0           	vaddsd	(%r8,%rax,8), %xmm7, %xmm7
1000015b4: c5 fb 2c f7                 	vcvttsd2si	%xmm7, %esi
1000015b8: 41 8d 44 24 01              	leal	1(%r12), %eax
1000015bd: 4c 63 f8                    	movslq	%eax, %r15
1000015c0: c4 81 53 58 3c f8           	vaddsd	(%r8,%r15,8), %xmm5, %xmm7
1000015c6: c5 fb 2c c7                 	vcvttsd2si	%xmm7, %eax
1000015ca: c4 c1 53 58 3c 39           	vaddsd	(%r9,%rdi), %xmm5, %xmm7
1000015d0: c5 fb 2c df                 	vcvttsd2si	%xmm7, %ebx
1000015d4: 39 de                       	cmpl	%ebx, %esi
1000015d6: 7d 02                       	jge	2 <_kernel+0x67a>
1000015d8: 89 de                       	movl	%ebx, %esi
1000015da: 39 c6                       	cmpl	%eax, %esi
1000015dc: 4c 8b b5 70 ff ff ff        	movq	-144(%rbp), %r14
1000015e3: 4c 8b 9d 78 ff ff ff        	movq	-136(%rbp), %r11
1000015ea: 7d 02                       	jge	2 <_kernel+0x68e>
1000015ec: 89 c6                       	movl	%eax, %esi
1000015ee: c4 e3 51 4b f4 60           	vblendvpd	%xmm6, %xmm4, %xmm5, %xmm6
1000015f4: c5 db 2a fe                 	vcvtsi2sd	%esi, %xmm4, %xmm7
1000015f8: c4 c1 7b 11 7c 39 08        	vmovsd	%xmm7, 8(%r9,%rdi)
1000015ff: 4c 89 d6                    	movq	%r10, %rsi
100001602: 48 c1 fe 1d                 	sarq	$29, %rsi
100001606: c4 c1 7b 58 04 30           	vaddsd	(%r8,%rsi), %xmm0, %xmm0
10000160c: c5 fb 2c f0                 	vcvttsd2si	%xmm0, %esi
100001610: 48 8b 7d c0                 	movq	-64(%rbp), %rdi
100001614: c4 c1 53 58 44 39 10        	vaddsd	16(%r9,%rdi), %xmm5, %xmm0
10000161b: c5 fb 2c f8                 	vcvttsd2si	%xmm0, %edi
10000161f: c4 81 53 58 04 f8           	vaddsd	(%r8,%r15,8), %xmm5, %xmm0
100001625: c5 fb 2c c0                 	vcvttsd2si	%xmm0, %eax
100001629: 39 c6                       	cmpl	%eax, %esi
10000162b: 48 8b 5d c8                 	movq	-56(%rbp), %rbx
10000162f: 7d 02                       	jge	2 <_kernel+0x6d3>
100001631: 89 c6                       	movl	%eax, %esi
100001633: 39 fe                       	cmpl	%edi, %esi
100001635: 7d 02                       	jge	2 <_kernel+0x6d9>
100001637: 89 fe                       	movl	%edi, %esi
100001639: c4 e3 51 4b c4 10           	vblendvpd	%xmm1, %xmm4, %xmm5, %xmm0
10000163f: c5 db 2a ce                 	vcvtsi2sd	%esi, %xmm4, %xmm1
100001643: 48 8b 85 68 ff ff ff        	movq	-152(%rbp), %rax
10000164a: c4 c1 7b 11 4c 01 10        	vmovsd	%xmm1, 16(%r9,%rax)
100001651: c4 81 4b 58 4c 29 10        	vaddsd	16(%r9,%r13), %xmm6, %xmm1
100001658: c5 fb 2c c1                 	vcvttsd2si	%xmm1, %eax
10000165c: c4 81 53 58 4c 29 18        	vaddsd	24(%r9,%r13), %xmm5, %xmm1
100001663: c5 fb 2c f1                 	vcvttsd2si	%xmm1, %esi
100001667: 48 8b 7d c0                 	movq	-64(%rbp), %rdi
10000166b: c4 c1 53 58 4c 39 10        	vaddsd	16(%r9,%rdi), %xmm5, %xmm1
100001672: c5 fb 2c f9                 	vcvttsd2si	%xmm1, %edi
100001676: 39 f8                       	cmpl	%edi, %eax
100001678: 7d 02                       	jge	2 <_kernel+0x71c>
10000167a: 89 f8                       	movl	%edi, %eax
10000167c: 39 f0                       	cmpl	%esi, %eax
10000167e: 7d 02                       	jge	2 <_kernel+0x722>
100001680: 89 f0                       	movl	%esi, %eax
100001682: c5 db 2a c8                 	vcvtsi2sd	%eax, %xmm4, %xmm1
100001686: 48 8b 45 c0                 	movq	-64(%rbp), %rax
10000168a: c4 c1 7b 11 4c 01 18        	vmovsd	%xmm1, 24(%r9,%rax)
100001691: c4 c1 7b 58 41 18           	vaddsd	24(%r9), %xmm0, %xmm0
100001697: c5 fb 2c c0                 	vcvttsd2si	%xmm0, %eax
10000169b: c4 c1 53 58 41 20           	vaddsd	32(%r9), %xmm5, %xmm0
1000016a1: c5 fb 2c f0                 	vcvttsd2si	%xmm0, %esi
1000016a5: c4 81 53 58 44 29 18        	vaddsd	24(%r9,%r13), %xmm5, %xmm0
1000016ac: c5 fb 2c f8                 	vcvttsd2si	%xmm0, %edi
1000016b0: 39 f8                       	cmpl	%edi, %eax
1000016b2: 7d 02                       	jge	2 <_kernel+0x756>
1000016b4: 89 f8                       	movl	%edi, %eax
1000016b6: 39 f0                       	cmpl	%esi, %eax
1000016b8: 0f 8d a2 fe ff ff           	jge	-350 <_kernel+0x600>
1000016be: 89 f0                       	movl	%esi, %eax
1000016c0: e9 9b fe ff ff              	jmp	-357 <_kernel+0x600>
1000016c5: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
1000016cf: 90                          	nop
1000016d0: 4c 8b 4d 90                 	movq	-112(%rbp), %r9
1000016d4: 48 8b 9d 00 ff ff ff        	movq	-256(%rbp), %rbx
1000016db: c4 c1 3b c2 44 d9 f8 00     	vcmpeqsd	-8(%r9,%rbx,8), %xmm8, %xmm0
1000016e3: c4 e3 51 4b c4 00           	vblendvpd	%xmm0, %xmm4, %xmm5, %xmm0
1000016e9: 48 8b 85 18 ff ff ff        	movq	-232(%rbp), %rax
1000016f0: 48 8d 04 03                 	leaq	(%rbx,%rax), %rax
1000016f4: c4 c1 7b 58 44 c0 f8        	vaddsd	-8(%r8,%rax,8), %xmm0, %xmm0
1000016fb: c5 fb 2c c8                 	vcvttsd2si	%xmm0, %ecx
1000016ff: c4 c1 53 58 04 c0           	vaddsd	(%r8,%rax,8), %xmm5, %xmm0
100001705: c5 fb 2c f0                 	vcvttsd2si	%xmm0, %esi
100001709: 48 8b 45 98                 	movq	-104(%rbp), %rax
10000170d: 48 8d 04 03                 	leaq	(%rbx,%rax), %rax
100001711: c4 c1 53 58 44 c0 f8        	vaddsd	-8(%r8,%rax,8), %xmm5, %xmm0
100001718: c5 fb 2c f8                 	vcvttsd2si	%xmm0, %edi
10000171c: 4c 8b 5d 80                 	movq	-128(%rbp), %r11
100001720: 49 83 c3 04                 	addq	$4, %r11
100001724: 39 f9                       	cmpl	%edi, %ecx
100001726: 0f 4d f9                    	cmovgel	%ecx, %edi
100001729: 39 f7                       	cmpl	%esi, %edi
10000172b: 0f 4c fe                    	cmovll	%esi, %edi
10000172e: c5 db 2a c7                 	vcvtsi2sd	%edi, %xmm4, %xmm0
100001732: c4 c1 7b 11 04 c0           	vmovsd	%xmm0, (%r8,%rax,8)
100001738: 48 8b 8d 20 ff ff ff        	movq	-224(%rbp), %rcx
10000173f: 48 3b 8d 10 ff ff ff        	cmpq	-240(%rbp), %rcx
100001746: 4c 8b 7d 88                 	movq	-120(%rbp), %r15
10000174a: 0f 8d 80 f9 ff ff           	jge	-1664 <_kernel+0x170>
100001750: 48 8b 8d 58 ff ff ff        	movq	-168(%rbp), %rcx
100001757: 4a 8d 0c b9                 	leaq	(%rcx,%r15,4), %rcx
10000175b: 4c 8b 95 38 ff ff ff        	movq	-200(%rbp), %r10
100001762: c4 a1 7b 10 04 d2           	vmovsd	(%rdx,%r10,8), %xmm0
100001768: c4 c1 7b c2 4c d9 f0 00     	vcmpeqsd	-16(%r9,%rbx,8), %xmm0, %xmm1
100001770: c4 e3 51 4b cc 10           	vblendvpd	%xmm1, %xmm4, %xmm5, %xmm1
100001776: 48 8d 73 ff                 	leaq	-1(%rbx), %rsi
10000177a: 48 8b 7d 98                 	movq	-104(%rbp), %rdi
10000177e: 48 8d 3c 3e                 	leaq	(%rsi,%rdi), %rdi
100001782: c4 c1 73 58 4c f8 f8        	vaddsd	-8(%r8,%rdi,8), %xmm1, %xmm1
100001789: c4 c1 53 58 14 f8           	vaddsd	(%r8,%rdi,8), %xmm5, %xmm2
10000178f: c5 fb 2c f9                 	vcvttsd2si	%xmm1, %edi
100001793: c4 c1 53 58 0c c8           	vaddsd	(%r8,%rcx,8), %xmm5, %xmm1
100001799: c5 fb 2c c9                 	vcvttsd2si	%xmm1, %ecx
10000179d: 4c 8b b5 40 ff ff ff        	movq	-192(%rbp), %r14
1000017a4: 4c 01 f6                    	addq	%r14, %rsi
1000017a7: 39 cf                       	cmpl	%ecx, %edi
1000017a9: 0f 4d cf                    	cmovgel	%edi, %ecx
1000017ac: c5 fb 2c fa                 	vcvttsd2si	%xmm2, %edi
1000017b0: 39 f9                       	cmpl	%edi, %ecx
1000017b2: 0f 4c cf                    	cmovll	%edi, %ecx
1000017b5: c5 e3 2a c9                 	vcvtsi2sd	%ecx, %xmm3, %xmm1
1000017b9: c4 c1 7b 11 0c f0           	vmovsd	%xmm1, (%r8,%rsi,8)
1000017bf: c4 c1 7b c2 44 d9 f8 00     	vcmpeqsd	-8(%r9,%rbx,8), %xmm0, %xmm0
1000017c7: c4 e3 51 4b c4 00           	vblendvpd	%xmm0, %xmm4, %xmm5, %xmm0
1000017cd: c4 c1 7b 58 44 c0 f8        	vaddsd	-8(%r8,%rax,8), %xmm0, %xmm0
1000017d4: c5 fb 2c c8                 	vcvttsd2si	%xmm0, %ecx
1000017d8: c4 c1 53 58 04 c0           	vaddsd	(%r8,%rax,8), %xmm5, %xmm0
1000017de: c5 f3 58 cd                 	vaddsd	%xmm5, %xmm1, %xmm1
1000017e2: c5 fb 2c c1                 	vcvttsd2si	%xmm1, %eax
1000017e6: 39 c1                       	cmpl	%eax, %ecx
1000017e8: 0f 4d c1                    	cmovgel	%ecx, %eax
1000017eb: 48 8b 8d 60 ff ff ff        	movq	-160(%rbp), %rcx
1000017f2: 4a 8d 0c b9                 	leaq	(%rcx,%r15,4), %rcx
1000017f6: c5 fb 2c f0                 	vcvttsd2si	%xmm0, %esi
1000017fa: 39 f0                       	cmpl	%esi, %eax
1000017fc: 0f 4c c6                    	cmovll	%esi, %eax
1000017ff: c5 e3 2a c0                 	vcvtsi2sd	%eax, %xmm3, %xmm0
100001803: 4a 8d 04 33                 	leaq	(%rbx,%r14), %rax
100001807: c4 a1 7b 10 4c d2 08        	vmovsd	8(%rdx,%r10,8), %xmm1
10000180e: c4 c1 73 c2 54 d9 e8 00     	vcmpeqsd	-24(%r9,%rbx,8), %xmm1, %xmm2
100001816: c4 c1 7b 11 04 c0           	vmovsd	%xmm0, (%r8,%rax,8)
10000181c: c4 e3 51 4b c4 20           	vblendvpd	%xmm2, %xmm4, %xmm5, %xmm0
100001822: 4a 8d 74 33 fe              	leaq	-2(%rbx,%r14), %rsi
100001827: c4 c1 7b 58 44 f0 f8        	vaddsd	-8(%r8,%rsi,8), %xmm0, %xmm0
10000182e: c4 c1 53 58 14 f0           	vaddsd	(%r8,%rsi,8), %xmm5, %xmm2
100001834: c5 fb 2c f0                 	vcvttsd2si	%xmm0, %esi
100001838: c4 c1 53 58 04 c8           	vaddsd	(%r8,%rcx,8), %xmm5, %xmm0
10000183e: c5 fb 2c c8                 	vcvttsd2si	%xmm0, %ecx
100001842: 39 ce                       	cmpl	%ecx, %esi
100001844: 0f 4d ce                    	cmovgel	%esi, %ecx
100001847: c5 fb 2c f2                 	vcvttsd2si	%xmm2, %esi
10000184b: 39 f1                       	cmpl	%esi, %ecx
10000184d: 0f 4c ce                    	cmovll	%esi, %ecx
100001850: 48 8b bd 48 ff ff ff        	movq	-184(%rbp), %rdi
100001857: 48 8d 74 3b fe              	leaq	-2(%rbx,%rdi), %rsi
10000185c: c5 e3 2a c1                 	vcvtsi2sd	%ecx, %xmm3, %xmm0
100001860: c4 c1 73 c2 54 d9 f0 00     	vcmpeqsd	-16(%r9,%rbx,8), %xmm1, %xmm2
100001868: c4 e3 51 4b d4 20           	vblendvpd	%xmm2, %xmm4, %xmm5, %xmm2
10000186e: c4 c1 7b 11 04 f0           	vmovsd	%xmm0, (%r8,%rsi,8)
100001874: 4a 8d 4c 33 ff              	leaq	-1(%rbx,%r14), %rcx
100001879: c4 c1 6b 58 54 c8 f8        	vaddsd	-8(%r8,%rcx,8), %xmm2, %xmm2
100001880: c5 fb 2c f2                 	vcvttsd2si	%xmm2, %esi
100001884: c4 c1 53 58 14 c8           	vaddsd	(%r8,%rcx,8), %xmm5, %xmm2
10000188a: c5 fb 58 c5                 	vaddsd	%xmm5, %xmm0, %xmm0
10000188e: c5 fb 2c c8                 	vcvttsd2si	%xmm0, %ecx
100001892: 39 ce                       	cmpl	%ecx, %esi
100001894: 0f 4d ce                    	cmovgel	%esi, %ecx
100001897: c5 fb 2c f2                 	vcvttsd2si	%xmm2, %esi
10000189b: 39 f1                       	cmpl	%esi, %ecx
10000189d: 0f 4c ce                    	cmovll	%esi, %ecx
1000018a0: c5 e3 2a c1                 	vcvtsi2sd	%ecx, %xmm3, %xmm0
1000018a4: 48 8d 4c 3b ff              	leaq	-1(%rbx,%rdi), %rcx
1000018a9: c4 c1 7b 11 04 c8           	vmovsd	%xmm0, (%r8,%rcx,8)
1000018af: c4 c1 73 c2 4c d9 f8 00     	vcmpeqsd	-8(%r9,%rbx,8), %xmm1, %xmm1
1000018b7: c4 e3 51 4b cc 10           	vblendvpd	%xmm1, %xmm4, %xmm5, %xmm1
1000018bd: c4 c1 73 58 4c c0 f8        	vaddsd	-8(%r8,%rax,8), %xmm1, %xmm1
1000018c4: c5 fb 2c c9                 	vcvttsd2si	%xmm1, %ecx
1000018c8: c4 c1 53 58 0c c0           	vaddsd	(%r8,%rax,8), %xmm5, %xmm1
1000018ce: c5 fb 58 c5                 	vaddsd	%xmm5, %xmm0, %xmm0
1000018d2: c5 fb 2c c0                 	vcvttsd2si	%xmm0, %eax
1000018d6: 39 c1                       	cmpl	%eax, %ecx
1000018d8: 0f 4d c1                    	cmovgel	%ecx, %eax
1000018db: c5 fb 2c c9                 	vcvttsd2si	%xmm1, %ecx
1000018df: 39 c8                       	cmpl	%ecx, %eax
1000018e1: 0f 4c c1                    	cmovll	%ecx, %eax
1000018e4: c5 e3 2a c0                 	vcvtsi2sd	%eax, %xmm3, %xmm0
1000018e8: 48 8d 04 3b                 	leaq	(%rbx,%rdi), %rax
1000018ec: c4 c1 7b 11 04 c0           	vmovsd	%xmm0, (%r8,%rax,8)
1000018f2: e9 d9 f7 ff ff              	jmp	-2087 <_kernel+0x170>
1000018f7: 48 83 c4 58                 	addq	$88, %rsp
1000018fb: 5b                          	popq	%rbx
1000018fc: 41 5c                       	popq	%r12
1000018fe: 41 5d                       	popq	%r13
100001900: 41 5e                       	popq	%r14
100001902: 41 5f                       	popq	%r15
100001904: 5d                          	popq	%rbp
100001905: c3                          	retq
100001906: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)

0000000100001910 _SIMDkernel4packed:
100001910: 55                          	pushq	%rbp
100001911: 48 89 e5                    	movq	%rsp, %rbp
100001914: 41 57                       	pushq	%r15
100001916: 41 56                       	pushq	%r14
100001918: 41 55                       	pushq	%r13
10000191a: 41 54                       	pushq	%r12
10000191c: 53                          	pushq	%rbx
10000191d: 48 81 ec d8 00 00 00        	subq	$216, %rsp
100001924: 48 89 4d 98                 	movq	%rcx, -104(%rbp)
100001928: 48 89 75 c0                 	movq	%rsi, -64(%rbp)
10000192c: 83 fe 02                    	cmpl	$2, %esi
10000192f: 0f 8c 48 08 00 00           	jl	2120 <_SIMDkernel4packed+0x86d>
100001935: 41 89 fa                    	movl	%edi, %r10d
100001938: 48 8b 7d c0                 	movq	-64(%rbp), %rdi
10000193c: 4c 63 df                    	movslq	%edi, %r11
10000193f: 4d 63 ca                    	movslq	%r10d, %r9
100001942: 41 ff c2                    	incl	%r10d
100001945: 89 f8                       	movl	%edi, %eax
100001947: c1 e0 05                    	shll	$5, %eax
10000194a: 83 c0 20                    	addl	$32, %eax
10000194d: 48 89 85 20 ff ff ff        	movq	%rax, -224(%rbp)
100001954: 4c 89 d8                    	movq	%r11, %rax
100001957: 48 c1 e0 08                 	shlq	$8, %rax
10000195b: 48 05 00 01 00 00           	addq	$256, %rax
100001961: 48 89 85 28 ff ff ff        	movq	%rax, -216(%rbp)
100001968: 4c 89 d8                    	movq	%r11, %rax
10000196b: 48 c1 e0 04                 	shlq	$4, %rax
10000196f: 4a 8d 4c 00 08              	leaq	8(%rax,%r8), %rcx
100001974: 48 89 8d 78 ff ff ff        	movq	%rcx, -136(%rbp)
10000197b: 4a 8d 84 00 e8 00 00 00     	leaq	232(%rax,%r8), %rax
100001983: 48 89 45 80                 	movq	%rax, -128(%rbp)
100001987: 4c 89 d9                    	movq	%r11, %rcx
10000198a: 48 c1 e1 20                 	shlq	$32, %rcx
10000198e: 48 89 4d b8                 	movq	%rcx, -72(%rbp)
100001992: 48 b8 00 00 00 00 1c 00 00 00       	movabsq	$120259084288, %rax
10000199c: 48 01 c8                    	addq	%rcx, %rax
10000199f: 48 89 85 a0 fe ff ff        	movq	%rax, -352(%rbp)
1000019a6: 4c 89 d8                    	movq	%r11, %rax
1000019a9: 48 c1 e0 25                 	shlq	$37, %rax
1000019ad: 48 bb 00 00 00 00 20 00 00 00       	movabsq	$137438953472, %rbx
1000019b7: 48 01 c3                    	addq	%rax, %rbx
1000019ba: 48 89 9d 30 ff ff ff        	movq	%rbx, -208(%rbp)
1000019c1: 48 b8 00 00 00 00 18 00 00 00       	movabsq	$103079215104, %rax
1000019cb: 48 01 c8                    	addq	%rcx, %rax
1000019ce: 48 89 85 a8 fe ff ff        	movq	%rax, -344(%rbp)
1000019d5: 48 b8 00 00 00 00 14 00 00 00       	movabsq	$85899345920, %rax
1000019df: 48 01 c8                    	addq	%rcx, %rax
1000019e2: 48 89 85 b0 fe ff ff        	movq	%rax, -336(%rbp)
1000019e9: 48 b8 00 00 00 00 10 00 00 00       	movabsq	$68719476736, %rax
1000019f3: 48 01 c8                    	addq	%rcx, %rax
1000019f6: 48 89 85 b8 fe ff ff        	movq	%rax, -328(%rbp)
1000019fd: 48 b8 00 00 00 00 0c 00 00 00       	movabsq	$51539607552, %rax
100001a07: 48 01 c8                    	addq	%rcx, %rax
100001a0a: 48 89 85 c0 fe ff ff        	movq	%rax, -320(%rbp)
100001a11: 48 b8 00 00 00 00 08 00 00 00       	movabsq	$34359738368, %rax
100001a1b: 48 01 c8                    	addq	%rcx, %rax
100001a1e: 48 89 85 c8 fe ff ff        	movq	%rax, -312(%rbp)
100001a25: 49 bc 00 00 00 00 04 00 00 00       	movabsq	$17179869184, %r12
100001a2f: 49 01 cc                    	addq	%rcx, %r12
100001a32: 41 8d 41 ff                 	leal	-1(%r9), %eax
100001a36: 0f af c7                    	imull	%edi, %eax
100001a39: ff c0                       	incl	%eax
100001a3b: 48 89 45 88                 	movq	%rax, -120(%rbp)
100001a3f: c4 e2 7d 19 05 98 53 00 00  	vbroadcastsd	21400(%rip), %ymm0
100001a48: c4 e2 7d 19 0d 87 53 00 00  	vbroadcastsd	21383(%rip), %ymm1
100001a51: c5 fb 10 15 77 53 00 00     	vmovsd	21367(%rip), %xmm2
100001a59: c5 fb 10 1d 77 53 00 00     	vmovsd	21367(%rip), %xmm3
100001a61: 89 f8                       	movl	%edi, %eax
100001a63: 48 89 85 88 fe ff ff        	movq	%rax, -376(%rbp)
100001a6a: 4f 8d 7c d8 08              	leaq	8(%r8,%r11,8), %r15
100001a6f: 4a 8d 04 dd 00 00 00 00     	leaq	(,%r11,8), %rax
100001a77: 48 89 85 68 ff ff ff        	movq	%rax, -152(%rbp)
100001a7e: 8d 04 3f                    	leal	(%rdi,%rdi), %eax
100001a81: 48 89 85 40 ff ff ff        	movq	%rax, -192(%rbp)
100001a88: 8d 47 01                    	leal	1(%rdi), %eax
100001a8b: 48 89 85 90 fe ff ff        	movq	%rax, -368(%rbp)
100001a92: 48 8b 45 98                 	movq	-104(%rbp), %rax
100001a96: 48 8d 58 08                 	leaq	8(%rax), %rbx
100001a9a: 48 89 5d 90                 	movq	%rbx, -112(%rbp)
100001a9e: 4c 89 cb                    	movq	%r9, %rbx
100001aa1: 4c 89 8d 60 ff ff ff        	movq	%r9, -160(%rbp)
100001aa8: 41 8d 59 fe                 	leal	-2(%r9), %ebx
100001aac: 89 5d a4                    	movl	%ebx, -92(%rbp)
100001aaf: 4d 89 f9                    	movq	%r15, %r9
100001ab2: 49 8d 70 10                 	leaq	16(%r8), %rsi
100001ab6: 4d 89 de                    	movq	%r11, %r14
100001ab9: 4a 8d 1c dd 08 00 00 00     	leaq	8(,%r11,8), %rbx
100001ac1: 48 89 9d 98 fe ff ff        	movq	%rbx, -360(%rbp)
100001ac8: b9 01 00 00 00              	movl	$1, %ecx
100001acd: 41 bf 02 00 00 00           	movl	$2, %r15d
100001ad3: bb 20 00 00 00              	movl	$32, %ebx
100001ad8: 48 89 9d 70 ff ff ff        	movq	%rbx, -144(%rbp)
100001adf: 49 c7 c5 fe ff ff ff        	movq	$-2, %r13
100001ae6: 45 31 db                    	xorl	%r11d, %r11d
100001ae9: 48 8b 5d b8                 	movq	-72(%rbp), %rbx
100001aed: 48 89 85 48 ff ff ff        	movq	%rax, -184(%rbp)
100001af4: 48 89 95 10 ff ff ff        	movq	%rdx, -240(%rbp)
100001afb: 4c 89 b5 18 ff ff ff        	movq	%r14, -232(%rbp)
100001b02: 4c 89 a5 38 ff ff ff        	movq	%r12, -200(%rbp)
100001b09: e9 a0 00 00 00              	jmp	160 <_SIMDkernel4packed+0x29e>
100001b0e: 66 90                       	nop
100001b10: 4c 8b bd e0 fe ff ff        	movq	-288(%rbp), %r15
100001b17: 49 83 c7 20                 	addq	$32, %r15
100001b1b: 48 83 85 70 ff ff ff 20     	addq	$32, -144(%rbp)
100001b23: 44 8b 55 a8                 	movl	-88(%rbp), %r10d
100001b27: 41 83 c2 20                 	addl	$32, %r10d
100001b2b: 48 8b 85 20 ff ff ff        	movq	-224(%rbp), %rax
100001b32: 4c 8b 9d f0 fe ff ff        	movq	-272(%rbp), %r11
100001b39: 49 01 c3                    	addq	%rax, %r11
100001b3c: 48 81 85 48 ff ff ff 00 01 00 00    	addq	$256, -184(%rbp)
100001b47: 48 8b b5 28 ff ff ff        	movq	-216(%rbp), %rsi
100001b4e: 4c 8b 8d d0 fe ff ff        	movq	-304(%rbp), %r9
100001b55: 49 01 f1                    	addq	%rsi, %r9
100001b58: 48 01 b5 78 ff ff ff        	addq	%rsi, -136(%rbp)
100001b5f: 8b 7d ac                    	movl	-84(%rbp), %edi
100001b62: 01 c7                       	addl	%eax, %edi
100001b64: 48 01 75 80                 	addq	%rsi, -128(%rbp)
100001b68: 48 8b 9d f8 fe ff ff        	movq	-264(%rbp), %rbx
100001b6f: 48 03 9d 30 ff ff ff        	addq	-208(%rbp), %rbx
100001b76: 4c 8b ad e8 fe ff ff        	movq	-280(%rbp), %r13
100001b7d: 49 83 c5 e0                 	addq	$-32, %r13
100001b81: 48 01 45 88                 	addq	%rax, -120(%rbp)
100001b85: 48 81 45 90 00 01 00 00     	addq	$256, -112(%rbp)
100001b8d: 48 8b b5 d8 fe ff ff        	movq	-296(%rbp), %rsi
100001b94: 48 81 c6 00 01 00 00        	addq	$256, %rsi
100001b9b: 48 8b 85 18 ff ff ff        	movq	-232(%rbp), %rax
100001ba2: 49 89 c6                    	movq	%rax, %r14
100001ba5: 48 39 c1                    	cmpq	%rax, %rcx
100001ba8: 0f 8d cf 05 00 00           	jge	1487 <_SIMDkernel4packed+0x86d>
100001bae: 44 89 55 a8                 	movl	%r10d, -88(%rbp)
100001bb2: 4d 63 e2                    	movslq	%r10d, %r12
100001bb5: 49 8d 44 24 ff              	leaq	-1(%r12), %rax
100001bba: 49 0f af c6                 	imulq	%r14, %rax
100001bbe: 48 89 b5 d8 fe ff ff        	movq	%rsi, -296(%rbp)
100001bc5: 4c 8d 14 c6                 	leaq	(%rsi,%rax,8), %r10
100001bc9: 4d 0f af f4                 	imulq	%r12, %r14
100001bcd: 4d 01 fe                    	addq	%r15, %r14
100001bd0: 4b 8d 04 f0                 	leaq	(%r8,%r14,8), %rax
100001bd4: 48 89 85 08 ff ff ff        	movq	%rax, -248(%rbp)
100001bdb: 4c 89 a5 50 ff ff ff        	movq	%r12, -176(%rbp)
100001be2: 44 89 e0                    	movl	%r12d, %eax
100001be5: 4c 89 ad e8 fe ff ff        	movq	%r13, -280(%rbp)
100001bec: 4c 01 e8                    	addq	%r13, %rax
100001bef: 48 89 85 00 ff ff ff        	movq	%rax, -256(%rbp)
100001bf6: 48 89 9d f8 fe ff ff        	movq	%rbx, -264(%rbp)
100001bfd: 49 89 dc                    	movq	%rbx, %r12
100001c00: 48 8b 5d 80                 	movq	-128(%rbp), %rbx
100001c04: 89 7d ac                    	movl	%edi, -84(%rbp)
100001c07: 89 fe                       	movl	%edi, %esi
100001c09: 49 89 ce                    	movq	%rcx, %r14
100001c0c: 41 bd 01 00 00 00           	movl	$1, %r13d
100001c12: 48 8b bd 78 ff ff ff        	movq	-136(%rbp), %rdi
100001c19: 4c 89 8d d0 fe ff ff        	movq	%r9, -304(%rbp)
100001c20: 4c 89 c8                    	movq	%r9, %rax
100001c23: 4c 89 9d f0 fe ff ff        	movq	%r11, -272(%rbp)
100001c2a: 4c 89 d9                    	movq	%r11, %rcx
100001c2d: 48 89 55 d0                 	movq	%rdx, -48(%rbp)
100001c31: 4c 89 75 c8                 	movq	%r14, -56(%rbp)
100001c35: 4d 89 f1                    	movq	%r14, %r9
100001c38: 4c 89 bd e0 fe ff ff        	movq	%r15, -288(%rbp)
100001c3f: 4c 89 fa                    	movq	%r15, %rdx
100001c42: 4c 89 bd 58 ff ff ff        	movq	%r15, -168(%rbp)
100001c49: eb 58                       	jmp	88 <_SIMDkernel4packed+0x393>
100001c4b: 0f 1f 44 00 00              	nopl	(%rax,%rax)
100001c50: 48 ff 85 58 ff ff ff        	incq	-168(%rbp)
100001c57: 49 ff c1                    	incq	%r9
100001c5a: 48 83 45 d0 08              	addq	$8, -48(%rbp)
100001c5f: 48 03 8d 88 fe ff ff        	addq	-376(%rbp), %rcx
100001c66: 48 8b 9d 68 ff ff ff        	movq	-152(%rbp), %rbx
100001c6d: 48 01 d8                    	addq	%rbx, %rax
100001c70: 48 01 df                    	addq	%rbx, %rdi
100001c73: 4d 8d 6e 01                 	leaq	1(%r14), %r13
100001c77: 48 8b 55 c0                 	movq	-64(%rbp), %rdx
100001c7b: 41 8d 34 17                 	leal	(%r15,%rdx), %esi
100001c7f: 48 8b 55 b0                 	movq	-80(%rbp), %rdx
100001c83: 48 8d 1c 1a                 	leaq	(%rdx,%rbx), %rbx
100001c87: 48 8b 55 b8                 	movq	-72(%rbp), %rdx
100001c8b: 4c 8b 9d 80 fe ff ff        	movq	-384(%rbp), %r11
100001c92: 4d 8d 24 13                 	leaq	(%r11,%rdx), %r12
100001c96: 4c 3b 8d 70 ff ff ff        	cmpq	-144(%rbp), %r9
100001c9d: 0f 84 9d 00 00 00           	je	157 <_SIMDkernel4packed+0x430>
100001ca3: 4d 89 ee                    	movq	%r13, %r14
100001ca6: 41 89 f7                    	movl	%esi, %r15d
100001ca9: 48 89 5d b0                 	movq	%rbx, -80(%rbp)
100001cad: 4c 89 a5 80 fe ff ff        	movq	%r12, -384(%rbp)
100001cb4: 4c 3b 4d c8                 	cmpq	-56(%rbp), %r9
100001cb8: 72 96                       	jb	-106 <_SIMDkernel4packed+0x340>
100001cba: 45 31 e4                    	xorl	%r12d, %r12d
100001cbd: 48 8b 75 d0                 	movq	-48(%rbp), %rsi
100001cc1: eb 27                       	jmp	39 <_SIMDkernel4packed+0x3da>
100001cc3: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
100001ccd: 0f 1f 00                    	nopl	(%rax)
100001cd0: c5 d3 2a e2                 	vcvtsi2sd	%edx, %xmm5, %xmm4
100001cd4: c4 a1 7b 11 24 e7           	vmovsd	%xmm4, (%rdi,%r12,8)
100001cda: 48 83 c6 f8                 	addq	$-8, %rsi
100001cde: 49 ff c4                    	incq	%r12
100001ce1: 4d 39 e6                    	cmpq	%r12, %r14
100001ce4: 0f 84 66 ff ff ff           	je	-154 <_SIMDkernel4packed+0x340>
100001cea: 48 8b 95 48 ff ff ff        	movq	-184(%rbp), %rdx
100001cf1: c4 a1 7b 10 24 e2           	vmovsd	(%rdx,%r12,8), %xmm4
100001cf7: c5 db c2 26 00              	vcmpeqsd	(%rsi), %xmm4, %xmm4
100001cfc: c4 e3 61 4b e2 40           	vblendvpd	%xmm4, %xmm2, %xmm3, %xmm4
100001d02: 42 8d 14 21                 	leal	(%rcx,%r12), %edx
100001d06: 48 63 d2                    	movslq	%edx, %rdx
100001d09: c4 c1 5b 58 24 d0           	vaddsd	(%r8,%rdx,8), %xmm4, %xmm4
100001d0f: c5 fb 2c d4                 	vcvttsd2si	%xmm4, %edx
100001d13: c4 a1 63 58 64 e0 f8        	vaddsd	-8(%rax,%r12,8), %xmm3, %xmm4
100001d1a: c5 fb 2c dc                 	vcvttsd2si	%xmm4, %ebx
100001d1e: c4 a1 63 58 24 e0           	vaddsd	(%rax,%r12,8), %xmm3, %xmm4
100001d24: c5 7b 2c ec                 	vcvttsd2si	%xmm4, %r13d
100001d28: 44 39 ea                    	cmpl	%r13d, %edx
100001d2b: 7d 03                       	jge	3 <_SIMDkernel4packed+0x420>
100001d2d: 44 89 ea                    	movl	%r13d, %edx
100001d30: 39 da                       	cmpl	%ebx, %edx
100001d32: 7d 9c                       	jge	-100 <_SIMDkernel4packed+0x3c0>
100001d34: 89 da                       	movl	%ebx, %edx
100001d36: eb 98                       	jmp	-104 <_SIMDkernel4packed+0x3c0>
100001d38: 0f 1f 84 00 00 00 00 00     	nopl	(%rax,%rax)
100001d40: 48 8b 85 60 ff ff ff        	movq	-160(%rbp), %rax
100001d47: 48 8b 4d c8                 	movq	-56(%rbp), %rcx
100001d4b: 48 01 c1                    	addq	%rax, %rcx
100001d4e: 48 63 85 58 ff ff ff        	movslq	-168(%rbp), %rax
100001d55: 48 89 4d d0                 	movq	%rcx, -48(%rbp)
100001d59: 48 39 c8                    	cmpq	%rcx, %rax
100001d5c: 48 8b 95 10 ff ff ff        	movq	-240(%rbp), %rdx
100001d63: 4c 8b 8d 38 ff ff ff        	movq	-200(%rbp), %r9
100001d6a: 4c 8b a5 68 ff ff ff        	movq	-152(%rbp), %r12
100001d71: 4c 8b ad 40 ff ff ff        	movq	-192(%rbp), %r13
100001d78: 48 8b bd 00 ff ff ff        	movq	-256(%rbp), %rdi
100001d7f: 0f 8d 19 03 00 00           	jge	793 <_SIMDkernel4packed+0x78e>
100001d85: 48 8b 45 98                 	movq	-104(%rbp), %rax
100001d89: 48 8b 4d c8                 	movq	-56(%rbp), %rcx
100001d8d: c5 fd 28 64 c8 f8           	vmovapd	-8(%rax,%rcx,8), %ymm4
100001d93: c5 fd 28 6c c8 18           	vmovapd	24(%rax,%rcx,8), %ymm5
100001d99: c5 fd 28 74 c8 38           	vmovapd	56(%rax,%rcx,8), %ymm6
100001d9f: c5 fd 28 7c c8 58           	vmovapd	88(%rax,%rcx,8), %ymm7
100001da5: c5 7d 28 44 c8 78           	vmovapd	120(%rax,%rcx,8), %ymm8
100001dab: c5 7d 28 8c c8 98 00 00 00  	vmovapd	152(%rax,%rcx,8), %ymm9
100001db4: c5 7d 28 94 c8 b8 00 00 00  	vmovapd	184(%rax,%rcx,8), %ymm10
100001dbd: c5 7d 28 9c c8 d8 00 00 00  	vmovapd	216(%rax,%rcx,8), %ymm11
100001dc6: 48 8b 4d c0                 	movq	-64(%rbp), %rcx
100001dca: 66 0f 1f 44 00 00           	nopw	(%rax,%rax)
100001dd0: 41 8d 46 fd                 	leal	-3(%r14), %eax
100001dd4: 48 98                       	cltq
100001dd6: c4 63 fd 01 24 c2 1b        	vpermpd	$27, (%rdx,%rax,8), %ymm12
100001ddd: c5 1d c2 e4 00              	vcmpeqpd	%ymm4, %ymm12, %ymm12
100001de2: 4d 63 ff                    	movslq	%r15d, %r15
100001de5: c5 1d 54 e0                 	vandpd	%ymm0, %ymm12, %ymm12
100001de9: c4 01 1d 58 24 f8           	vaddpd	(%r8,%r15,8), %ymm12, %ymm12
100001def: 48 8b 45 b8                 	movq	-72(%rbp), %rax
100001df3: 4a 8d 1c 18                 	leaq	(%rax,%r11), %rbx
100001df7: 48 89 d8                    	movq	%rbx, %rax
100001dfa: 48 c1 f8 1d                 	sarq	$29, %rax
100001dfe: c4 41 7d 10 2c 00           	vmovupd	(%r8,%rax), %ymm13
100001e04: 48 8b 75 b0                 	movq	-80(%rbp), %rsi
100001e08: c5 7d 10 b6 20 ff ff ff     	vmovupd	-224(%rsi), %ymm14
100001e10: 41 8d 46 f9                 	leal	-7(%r14), %eax
100001e14: c4 41 15 5f e4              	vmaxpd	%ymm12, %ymm13, %ymm12
100001e19: 48 98                       	cltq
100001e1b: c4 63 fd 01 2c c2 1b        	vpermpd	$27, (%rdx,%rax,8), %ymm13
100001e22: c4 41 0d 5f e4              	vmaxpd	%ymm12, %ymm14, %ymm12
100001e27: c5 1d 58 e1                 	vaddpd	%ymm1, %ymm12, %ymm12
100001e2b: 43 8d 44 3d 01              	leal	1(%r13,%r15), %eax
100001e30: 48 98                       	cltq
100001e32: c4 41 7d 11 24 c0           	vmovupd	%ymm12, (%r8,%rax,8)
100001e38: c5 15 c2 e5 00              	vcmpeqpd	%ymm5, %ymm13, %ymm12
100001e3d: 41 8d 47 04                 	leal	4(%r15), %eax
100001e41: 48 98                       	cltq
100001e43: c5 1d 54 e0                 	vandpd	%ymm0, %ymm12, %ymm12
100001e47: c4 41 1d 58 24 c0           	vaddpd	(%r8,%rax,8), %ymm12, %ymm12
100001e4d: 4b 8d 04 19                 	leaq	(%r9,%r11), %rax
100001e51: 48 c1 f8 1d                 	sarq	$29, %rax
100001e55: c4 41 7d 10 2c 00           	vmovupd	(%r8,%rax), %ymm13
100001e5b: c5 7d 10 b6 40 ff ff ff     	vmovupd	-192(%rsi), %ymm14
100001e63: 41 8d 46 f5                 	leal	-11(%r14), %eax
100001e67: c4 41 15 5f e4              	vmaxpd	%ymm12, %ymm13, %ymm12
100001e6c: 48 98                       	cltq
100001e6e: c4 63 fd 01 2c c2 1b        	vpermpd	$27, (%rdx,%rax,8), %ymm13
100001e75: c4 41 0d 5f e4              	vmaxpd	%ymm12, %ymm14, %ymm12
100001e7a: c5 1d 58 e1                 	vaddpd	%ymm1, %ymm12, %ymm12
100001e7e: 43 8d 44 3d 05              	leal	5(%r13,%r15), %eax
100001e83: 48 98                       	cltq
100001e85: c4 41 7d 11 24 c0           	vmovupd	%ymm12, (%r8,%rax,8)
100001e8b: c5 15 c2 e6 00              	vcmpeqpd	%ymm6, %ymm13, %ymm12
100001e90: 41 8d 47 08                 	leal	8(%r15), %eax
100001e94: 48 98                       	cltq
100001e96: c5 1d 54 e0                 	vandpd	%ymm0, %ymm12, %ymm12
100001e9a: c4 41 1d 58 24 c0           	vaddpd	(%r8,%rax,8), %ymm12, %ymm12
100001ea0: 48 8b 85 c8 fe ff ff        	movq	-312(%rbp), %rax
100001ea7: 4c 01 d8                    	addq	%r11, %rax
100001eaa: 48 c1 f8 1d                 	sarq	$29, %rax
100001eae: c4 41 7d 10 2c 00           	vmovupd	(%r8,%rax), %ymm13
100001eb4: c5 7d 10 b6 60 ff ff ff     	vmovupd	-160(%rsi), %ymm14
100001ebc: 41 8d 46 f1                 	leal	-15(%r14), %eax
100001ec0: c4 41 15 5f e4              	vmaxpd	%ymm12, %ymm13, %ymm12
100001ec5: 48 98                       	cltq
100001ec7: c4 63 fd 01 2c c2 1b        	vpermpd	$27, (%rdx,%rax,8), %ymm13
100001ece: c4 41 0d 5f e4              	vmaxpd	%ymm12, %ymm14, %ymm12
100001ed3: c5 1d 58 e1                 	vaddpd	%ymm1, %ymm12, %ymm12
100001ed7: 43 8d 44 3d 09              	leal	9(%r13,%r15), %eax
100001edc: 48 98                       	cltq
100001ede: c4 41 7d 11 24 c0           	vmovupd	%ymm12, (%r8,%rax,8)
100001ee4: c5 15 c2 e7 00              	vcmpeqpd	%ymm7, %ymm13, %ymm12
100001ee9: 41 8d 47 0c                 	leal	12(%r15), %eax
100001eed: 48 98                       	cltq
100001eef: c5 1d 54 e0                 	vandpd	%ymm0, %ymm12, %ymm12
100001ef3: c4 41 1d 58 24 c0           	vaddpd	(%r8,%rax,8), %ymm12, %ymm12
100001ef9: 48 8b 85 c0 fe ff ff        	movq	-320(%rbp), %rax
100001f00: 4c 01 d8                    	addq	%r11, %rax
100001f03: 48 c1 f8 1d                 	sarq	$29, %rax
100001f07: c4 41 7d 10 2c 00           	vmovupd	(%r8,%rax), %ymm13
100001f0d: c5 7d 10 76 80              	vmovupd	-128(%rsi), %ymm14
100001f12: 41 8d 46 ed                 	leal	-19(%r14), %eax
100001f16: c4 41 15 5f e4              	vmaxpd	%ymm12, %ymm13, %ymm12
100001f1b: 48 98                       	cltq
100001f1d: c4 63 fd 01 2c c2 1b        	vpermpd	$27, (%rdx,%rax,8), %ymm13
100001f24: c4 41 0d 5f e4              	vmaxpd	%ymm12, %ymm14, %ymm12
100001f29: c5 1d 58 e1                 	vaddpd	%ymm1, %ymm12, %ymm12
100001f2d: 43 8d 44 3d 0d              	leal	13(%r13,%r15), %eax
100001f32: 48 98                       	cltq
100001f34: c4 41 7d 11 24 c0           	vmovupd	%ymm12, (%r8,%rax,8)
100001f3a: c4 41 15 c2 e0 00           	vcmpeqpd	%ymm8, %ymm13, %ymm12
100001f40: 41 8d 47 10                 	leal	16(%r15), %eax
100001f44: 48 98                       	cltq
100001f46: c5 1d 54 e0                 	vandpd	%ymm0, %ymm12, %ymm12
100001f4a: c4 41 1d 58 24 c0           	vaddpd	(%r8,%rax,8), %ymm12, %ymm12
100001f50: 48 8b 85 b8 fe ff ff        	movq	-328(%rbp), %rax
100001f57: 4c 01 d8                    	addq	%r11, %rax
100001f5a: 48 c1 f8 1d                 	sarq	$29, %rax
100001f5e: c4 41 7d 10 2c 00           	vmovupd	(%r8,%rax), %ymm13
100001f64: c5 7d 10 76 a0              	vmovupd	-96(%rsi), %ymm14
100001f69: 41 8d 46 e9                 	leal	-23(%r14), %eax
100001f6d: c4 41 15 5f e4              	vmaxpd	%ymm12, %ymm13, %ymm12
100001f72: 48 98                       	cltq
100001f74: c4 63 fd 01 2c c2 1b        	vpermpd	$27, (%rdx,%rax,8), %ymm13
100001f7b: c4 41 0d 5f e4              	vmaxpd	%ymm12, %ymm14, %ymm12
100001f80: c5 1d 58 e1                 	vaddpd	%ymm1, %ymm12, %ymm12
100001f84: 43 8d 44 3d 11              	leal	17(%r13,%r15), %eax
100001f89: 48 98                       	cltq
100001f8b: c4 41 7d 11 24 c0           	vmovupd	%ymm12, (%r8,%rax,8)
100001f91: c4 41 15 c2 e1 00           	vcmpeqpd	%ymm9, %ymm13, %ymm12
100001f97: 41 8d 47 14                 	leal	20(%r15), %eax
100001f9b: 48 98                       	cltq
100001f9d: c5 1d 54 e0                 	vandpd	%ymm0, %ymm12, %ymm12
100001fa1: c4 41 1d 58 24 c0           	vaddpd	(%r8,%rax,8), %ymm12, %ymm12
100001fa7: 48 8b 85 b0 fe ff ff        	movq	-336(%rbp), %rax
100001fae: 4c 01 d8                    	addq	%r11, %rax
100001fb1: 48 c1 f8 1d                 	sarq	$29, %rax
100001fb5: c4 41 7d 10 2c 00           	vmovupd	(%r8,%rax), %ymm13
100001fbb: c5 7d 10 76 c0              	vmovupd	-64(%rsi), %ymm14
100001fc0: 41 8d 46 e5                 	leal	-27(%r14), %eax
100001fc4: c4 41 15 5f e4              	vmaxpd	%ymm12, %ymm13, %ymm12
100001fc9: 48 98                       	cltq
100001fcb: c4 63 fd 01 2c c2 1b        	vpermpd	$27, (%rdx,%rax,8), %ymm13
100001fd2: c4 41 0d 5f e4              	vmaxpd	%ymm12, %ymm14, %ymm12
100001fd7: c5 1d 58 e1                 	vaddpd	%ymm1, %ymm12, %ymm12
100001fdb: 43 8d 44 3d 15              	leal	21(%r13,%r15), %eax
100001fe0: 48 98                       	cltq
100001fe2: c4 41 7d 11 24 c0           	vmovupd	%ymm12, (%r8,%rax,8)
100001fe8: c4 41 15 c2 e2 00           	vcmpeqpd	%ymm10, %ymm13, %ymm12
100001fee: 41 8d 47 18                 	leal	24(%r15), %eax
100001ff2: 48 98                       	cltq
100001ff4: c5 1d 54 e0                 	vandpd	%ymm0, %ymm12, %ymm12
100001ff8: c4 41 1d 58 24 c0           	vaddpd	(%r8,%rax,8), %ymm12, %ymm12
100001ffe: 48 8b 85 a8 fe ff ff        	movq	-344(%rbp), %rax
100002005: 4c 01 d8                    	addq	%r11, %rax
100002008: 48 c1 f8 1d                 	sarq	$29, %rax
10000200c: c4 41 7d 10 2c 00           	vmovupd	(%r8,%rax), %ymm13
100002012: c5 7d 10 76 e0              	vmovupd	-32(%rsi), %ymm14
100002017: 41 8d 46 e1                 	leal	-31(%r14), %eax
10000201b: c4 41 15 5f e4              	vmaxpd	%ymm12, %ymm13, %ymm12
100002020: 48 98                       	cltq
100002022: c4 63 fd 01 2c c2 1b        	vpermpd	$27, (%rdx,%rax,8), %ymm13
100002029: c4 41 0d 5f e4              	vmaxpd	%ymm12, %ymm14, %ymm12
10000202e: c5 1d 58 e1                 	vaddpd	%ymm1, %ymm12, %ymm12
100002032: 43 8d 44 3d 19              	leal	25(%r13,%r15), %eax
100002037: 48 98                       	cltq
100002039: c4 41 7d 11 24 c0           	vmovupd	%ymm12, (%r8,%rax,8)
10000203f: c4 41 15 c2 e3 00           	vcmpeqpd	%ymm11, %ymm13, %ymm12
100002045: 41 8d 47 1c                 	leal	28(%r15), %eax
100002049: 48 98                       	cltq
10000204b: c5 1d 54 e0                 	vandpd	%ymm0, %ymm12, %ymm12
10000204f: c4 41 1d 58 24 c0           	vaddpd	(%r8,%rax,8), %ymm12, %ymm12
100002055: 4c 03 9d a0 fe ff ff        	addq	-352(%rbp), %r11
10000205c: 49 c1 fb 1d                 	sarq	$29, %r11
100002060: c4 01 7d 10 2c 18           	vmovupd	(%r8,%r11), %ymm13
100002066: c4 41 15 5f e4              	vmaxpd	%ymm12, %ymm13, %ymm12
10000206b: c5 7d 10 2e                 	vmovupd	(%rsi), %ymm13
10000206f: c4 41 15 5f e4              	vmaxpd	%ymm12, %ymm13, %ymm12
100002074: c5 1d 58 e1                 	vaddpd	%ymm1, %ymm12, %ymm12
100002078: 43 8d 44 3d 1d              	leal	29(%r13,%r15), %eax
10000207d: 48 98                       	cltq
10000207f: c4 41 7d 11 24 c0           	vmovupd	%ymm12, (%r8,%rax,8)
100002085: 41 01 cf                    	addl	%ecx, %r15d
100002088: 49 ff c6                    	incq	%r14
10000208b: 4c 01 e6                    	addq	%r12, %rsi
10000208e: 48 89 75 b0                 	movq	%rsi, -80(%rbp)
100002092: 49 89 db                    	movq	%rbx, %r11
100002095: 4c 39 f7                    	cmpq	%r14, %rdi
100002098: 0f 85 32 fd ff ff           	jne	-718 <_SIMDkernel4packed+0x4c0>
10000209e: 48 8b 4d c8                 	movq	-56(%rbp), %rcx
1000020a2: 48 83 c1 20                 	addq	$32, %rcx
1000020a6: 48 83 45 d0 1e              	addq	$30, -48(%rbp)
1000020ab: 41 bb 1f 00 00 00           	movl	$31, %r11d
1000020b1: 4c 8b 75 90                 	movq	-112(%rbp), %r14
1000020b5: 4c 8b 65 88                 	movq	-120(%rbp), %r12
1000020b9: 48 8b b5 08 ff ff ff        	movq	-248(%rbp), %rsi
1000020c0: eb 36                       	jmp	54 <_SIMDkernel4packed+0x7e8>
1000020c2: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
1000020cc: 0f 1f 40 00                 	nopl	(%rax)
1000020d0: 4c 03 a5 90 fe ff ff        	addq	-368(%rbp), %r12
1000020d7: 49 83 c6 08                 	addq	$8, %r14
1000020db: 48 8b 85 98 fe ff ff        	movq	-360(%rbp), %rax
1000020e2: 49 01 c2                    	addq	%rax, %r10
1000020e5: 48 01 c6                    	addq	%rax, %rsi
1000020e8: 49 ff cb                    	decq	%r11
1000020eb: 4c 3b 4d d0                 	cmpq	-48(%rbp), %r9
1000020ef: 4c 89 f9                    	movq	%r15, %rcx
1000020f2: 0f 8d 18 fa ff ff           	jge	-1512 <_SIMDkernel4packed+0x200>
1000020f8: 4c 8b 8d 50 ff ff ff        	movq	-176(%rbp), %r9
1000020ff: 49 8d 41 01                 	leaq	1(%r9), %rax
100002103: 48 89 85 50 ff ff ff        	movq	%rax, -176(%rbp)
10000210a: 48 2b 85 60 ff ff ff        	subq	-160(%rbp), %rax
100002111: 49 89 cf                    	movq	%rcx, %r15
100002114: 48 39 c8                    	cmpq	%rcx, %rax
100002117: 73 b7                       	jae	-73 <_SIMDkernel4packed+0x7c0>
100002119: 8b 5d a4                    	movl	-92(%rbp), %ebx
10000211c: 31 ff                       	xorl	%edi, %edi
10000211e: eb 13                       	jmp	19 <_SIMDkernel4packed+0x823>
100002120: c5 fb 2a e0                 	vcvtsi2sd	%eax, %xmm0, %xmm4
100002124: c5 fb 11 24 fe              	vmovsd	%xmm4, (%rsi,%rdi,8)
100002129: 48 ff c7                    	incq	%rdi
10000212c: ff cb                       	decl	%ebx
10000212e: 49 39 fb                    	cmpq	%rdi, %r11
100002131: 74 9d                       	je	-99 <_SIMDkernel4packed+0x7c0>
100002133: 48 63 c3                    	movslq	%ebx, %rax
100002136: c4 c1 7b 10 24 fe           	vmovsd	(%r14,%rdi,8), %xmm4
10000213c: c5 db c2 24 c2 00           	vcmpeqsd	(%rdx,%rax,8), %xmm4, %xmm4
100002142: c4 e3 61 4b e2 40           	vblendvpd	%xmm4, %xmm2, %xmm3, %xmm4
100002148: 41 8d 04 3c                 	leal	(%r12,%rdi), %eax
10000214c: 48 98                       	cltq
10000214e: c4 c1 5b 58 24 c0           	vaddsd	(%r8,%rax,8), %xmm4, %xmm4
100002154: c5 fb 2c c4                 	vcvttsd2si	%xmm4, %eax
100002158: c4 c1 63 58 64 fa f8        	vaddsd	-8(%r10,%rdi,8), %xmm3, %xmm4
10000215f: c5 7b 2c ec                 	vcvttsd2si	%xmm4, %r13d
100002163: c4 c1 63 58 24 fa           	vaddsd	(%r10,%rdi,8), %xmm3, %xmm4
100002169: c5 fb 2c cc                 	vcvttsd2si	%xmm4, %ecx
10000216d: 39 c8                       	cmpl	%ecx, %eax
10000216f: 7d 02                       	jge	2 <_SIMDkernel4packed+0x863>
100002171: 89 c8                       	movl	%ecx, %eax
100002173: 44 39 e8                    	cmpl	%r13d, %eax
100002176: 7d a8                       	jge	-88 <_SIMDkernel4packed+0x810>
100002178: 44 89 e8                    	movl	%r13d, %eax
10000217b: eb a3                       	jmp	-93 <_SIMDkernel4packed+0x810>
10000217d: 48 81 c4 d8 00 00 00        	addq	$216, %rsp
100002184: 5b                          	popq	%rbx
100002185: 41 5c                       	popq	%r12
100002187: 41 5d                       	popq	%r13
100002189: 41 5e                       	popq	%r14
10000218b: 41 5f                       	popq	%r15
10000218d: 5d                          	popq	%rbp
10000218e: c5 f8 77                    	vzeroupper
100002191: c3                          	retq
100002192: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
10000219c: 0f 1f 40 00                 	nopl	(%rax)

00000001000021a0 _repack:
1000021a0: 55                          	pushq	%rbp
1000021a1: 48 89 e5                    	movq	%rsp, %rbp
1000021a4: 41 57                       	pushq	%r15
1000021a6: 41 56                       	pushq	%r14
1000021a8: 41 55                       	pushq	%r13
1000021aa: 41 54                       	pushq	%r12
1000021ac: 53                          	pushq	%rbx
1000021ad: 48 89 4d d0                 	movq	%rcx, -48(%rbp)
1000021b1: 85 ff                       	testl	%edi, %edi
1000021b3: 0f 8e ff 00 00 00           	jle	255 <_repack+0x118>
1000021b9: 85 f6                       	testl	%esi, %esi
1000021bb: 0f 8e f7 00 00 00           	jle	247 <_repack+0x118>
1000021c1: 48 63 ce                    	movslq	%esi, %rcx
1000021c4: 41 89 f3                    	movl	%esi, %r11d
1000021c7: 41 89 f9                    	movl	%edi, %r9d
1000021ca: 45 89 da                    	movl	%r11d, %r10d
1000021cd: 41 83 e2 01                 	andl	$1, %r10d
1000021d1: 8d 04 36                    	leal	(%rsi,%rsi), %eax
1000021d4: 48 98                       	cltq
1000021d6: 4c 8d 34 c5 10 00 00 00     	leaq	16(,%rax,8), %r14
1000021de: 48 8b 45 d0                 	movq	-48(%rbp), %rax
1000021e2: 48 8d 40 08                 	leaq	8(%rax), %rax
1000021e6: 48 89 4d b8                 	movq	%rcx, -72(%rbp)
1000021ea: 48 8d 0c cd 00 00 00 00     	leaq	(,%rcx,8), %rcx
1000021f2: 48 89 4d b0                 	movq	%rcx, -80(%rbp)
1000021f6: 4d 29 d3                    	subq	%r10, %r11
1000021f9: 45 31 ff                    	xorl	%r15d, %r15d
1000021fc: 41 89 f4                    	movl	%esi, %r12d
1000021ff: 45 31 ed                    	xorl	%r13d, %r13d
100002202: 4c 89 4d c0                 	movq	%r9, -64(%rbp)
100002206: 4c 89 55 c8                 	movq	%r10, -56(%rbp)
10000220a: 83 fe 01                    	cmpl	$1, %esi
10000220d: 75 41                       	jne	65 <_repack+0xb0>
10000220f: eb 2a                       	jmp	42 <_repack+0x9b>
100002211: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
10000221b: 0f 1f 44 00 00              	nopl	(%rax,%rax)
100002220: 49 ff c5                    	incq	%r13
100002223: 41 01 f4                    	addl	%esi, %r12d
100002226: 48 03 45 b0                 	addq	-80(%rbp), %rax
10000222a: 41 01 f7                    	addl	%esi, %r15d
10000222d: 4d 39 cd                    	cmpq	%r9, %r13
100002230: 0f 84 82 00 00 00           	je	130 <_repack+0x118>
100002236: 83 fe 01                    	cmpl	$1, %esi
100002239: 75 15                       	jne	21 <_repack+0xb0>
10000223b: 31 db                       	xorl	%ebx, %ebx
10000223d: 31 c9                       	xorl	%ecx, %ecx
10000223f: 4d 85 d2                    	testq	%r10, %r10
100002242: 74 dc                       	je	-36 <_repack+0x80>
100002244: eb 4a                       	jmp	74 <_repack+0xf0>
100002246: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
100002250: 4d 63 c4                    	movslq	%r12d, %r8
100002253: 49 63 cf                    	movslq	%r15d, %rcx
100002256: 49 89 d2                    	movq	%rdx, %r10
100002259: 31 db                       	xorl	%ebx, %ebx
10000225b: 0f 1f 44 00 00              	nopl	(%rax,%rax)
100002260: 4c 8b 0c ca                 	movq	(%rdx,%rcx,8), %r9
100002264: 4c 89 4c d8 f8              	movq	%r9, -8(%rax,%rbx,8)
100002269: 4a 8b 7c c2 08              	movq	8(%rdx,%r8,8), %rdi
10000226e: 48 89 3c d8                 	movq	%rdi, (%rax,%rbx,8)
100002272: 48 83 c3 02                 	addq	$2, %rbx
100002276: 4c 01 f2                    	addq	%r14, %rdx
100002279: 49 39 db                    	cmpq	%rbx, %r11
10000227c: 75 e2                       	jne	-30 <_repack+0xc0>
10000227e: 89 d9                       	movl	%ebx, %ecx
100002280: 4c 89 d2                    	movq	%r10, %rdx
100002283: 4c 8b 4d c0                 	movq	-64(%rbp), %r9
100002287: 4c 8b 55 c8                 	movq	-56(%rbp), %r10
10000228b: 4d 85 d2                    	testq	%r10, %r10
10000228e: 74 90                       	je	-112 <_repack+0x80>
100002290: 4d 89 e8                    	movq	%r13, %r8
100002293: 4c 0f af 45 b8              	imulq	-72(%rbp), %r8
100002298: 44 01 e9                    	addl	%r13d, %ecx
10000229b: 0f af ce                    	imull	%esi, %ecx
10000229e: 48 63 c9                    	movslq	%ecx, %rcx
1000022a1: 48 01 d9                    	addq	%rbx, %rcx
1000022a4: 48 8b 0c ca                 	movq	(%rdx,%rcx,8), %rcx
1000022a8: 49 01 d8                    	addq	%rbx, %r8
1000022ab: 48 8b 7d d0                 	movq	-48(%rbp), %rdi
1000022af: 4a 89 0c c7                 	movq	%rcx, (%rdi,%r8,8)
1000022b3: e9 68 ff ff ff              	jmp	-152 <_repack+0x80>
1000022b8: 5b                          	popq	%rbx
1000022b9: 41 5c                       	popq	%r12
1000022bb: 41 5d                       	popq	%r13
1000022bd: 41 5e                       	popq	%r14
1000022bf: 41 5f                       	popq	%r15
1000022c1: 5d                          	popq	%rbp
1000022c2: c3                          	retq
1000022c3: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
1000022cd: 0f 1f 00                    	nopl	(%rax)

00000001000022d0 _SIMDkernel4:
1000022d0: 55                          	pushq	%rbp
1000022d1: 48 89 e5                    	movq	%rsp, %rbp
1000022d4: 41 57                       	pushq	%r15
1000022d6: 41 56                       	pushq	%r14
1000022d8: 41 55                       	pushq	%r13
1000022da: 41 54                       	pushq	%r12
1000022dc: 53                          	pushq	%rbx
1000022dd: 48 83 ec 68                 	subq	$104, %rsp
1000022e1: 48 89 55 c0                 	movq	%rdx, -64(%rbp)
1000022e5: 89 75 d0                    	movl	%esi, -48(%rbp)
1000022e8: 89 7d d4                    	movl	%edi, -44(%rbp)
1000022eb: 83 ff 02                    	cmpl	$2, %edi
1000022ee: 0f 8c 9f 06 00 00           	jl	1695 <_SIMDkernel4+0x6c3>
1000022f4: 44 8b 4d d4                 	movl	-44(%rbp), %r9d
1000022f8: 49 63 f1                    	movslq	%r9d, %rsi
1000022fb: 48 8d 7e fc                 	leaq	-4(%rsi), %rdi
1000022ff: 48 63 45 d0                 	movslq	-48(%rbp), %rax
100002303: 48 8b 55 c0                 	movq	-64(%rbp), %rdx
100002307: c5 7b 10 3a                 	vmovsd	(%rdx), %xmm15
10000230b: c5 7b 10 6a 08              	vmovsd	8(%rdx), %xmm13
100002310: 48 8d 1c 00                 	leaq	(%rax,%rax), %rbx
100002314: 48 89 9d 38 ff ff ff        	movq	%rbx, -200(%rbp)
10000231b: c5 fb 10 42 10              	vmovsd	16(%rdx), %xmm0
100002320: c5 fb 11 85 40 ff ff ff     	vmovsd	%xmm0, -192(%rbp)
100002328: 48 8d 1c 40                 	leaq	(%rax,%rax,2), %rbx
10000232c: 48 89 9d 48 ff ff ff        	movq	%rbx, -184(%rbp)
100002333: 45 89 cb                    	movl	%r9d, %r11d
100002336: 48 8d 5e fd                 	leaq	-3(%rsi), %rbx
10000233a: c5 fb 10 44 f2 e0           	vmovsd	-32(%rdx,%rsi,8), %xmm0
100002340: c5 fb 11 85 60 ff ff ff     	vmovsd	%xmm0, -160(%rbp)
100002348: c5 7b 10 74 f2 e8           	vmovsd	-24(%rdx,%rsi,8), %xmm14
10000234e: 48 0f af f8                 	imulq	%rax, %rdi
100002352: 48 89 bd 28 ff ff ff        	movq	%rdi, -216(%rbp)
100002359: 48 0f af d8                 	imulq	%rax, %rbx
10000235d: 48 89 9d 58 ff ff ff        	movq	%rbx, -168(%rbp)
100002364: 4c 8d 76 fe                 	leaq	-2(%rsi), %r14
100002368: 4c 0f af f0                 	imulq	%rax, %r14
10000236c: 48 8d 5e ff                 	leaq	-1(%rsi), %rbx
100002370: 48 89 b5 20 ff ff ff        	movq	%rsi, -224(%rbp)
100002377: c5 fb 10 6c f2 f0           	vmovsd	-16(%rdx,%rsi,8), %xmm5
10000237d: 48 0f af d8                 	imulq	%rax, %rbx
100002381: 48 89 c6                    	movq	%rax, %rsi
100002384: 48 c1 e6 21                 	shlq	$33, %rsi
100002388: 48 bf 00 00 00 00 01 00 00 00       	movabsq	$4294967296, %rdi
100002392: 48 09 f7                    	orq	%rsi, %rdi
100002395: 48 89 7d b0                 	movq	%rdi, -80(%rbp)
100002399: 48 89 c6                    	movq	%rax, %rsi
10000239c: 48 c1 e6 20                 	shlq	$32, %rsi
1000023a0: 48 89 b5 78 ff ff ff        	movq	%rsi, -136(%rbp)
1000023a7: 48 89 c2                    	movq	%rax, %rdx
1000023aa: 48 c1 e2 04                 	shlq	$4, %rdx
1000023ae: 48 89 55 90                 	movq	%rdx, -112(%rbp)
1000023b2: 48 89 c2                    	movq	%rax, %rdx
1000023b5: 48 c1 e2 05                 	shlq	$5, %rdx
1000023b9: 48 89 55 98                 	movq	%rdx, -104(%rbp)
1000023bd: 49 83 c3 fc                 	addq	$-4, %r11
1000023c1: 4c 89 9d 50 ff ff ff        	movq	%r11, -176(%rbp)
1000023c8: c5 fb 10 35 00 4a 00 00     	vmovsd	18944(%rip), %xmm6
1000023d0: c5 fb 10 3d 00 4a 00 00     	vmovsd	18944(%rip), %xmm7
1000023d8: c4 62 7d 19 05 ff 49 00 00  	vbroadcastsd	18943(%rip), %ymm8
1000023e1: c4 62 7d 19 0d ee 49 00 00  	vbroadcastsd	18926(%rip), %ymm9
1000023ea: 4c 89 b5 68 ff ff ff        	movq	%r14, -152(%rbp)
1000023f1: 49 8d 76 02                 	leaq	2(%r14), %rsi
1000023f5: 48 89 75 80                 	movq	%rsi, -128(%rbp)
1000023f9: 48 89 9d 70 ff ff ff        	movq	%rbx, -144(%rbp)
100002400: 48 8d 73 01                 	leaq	1(%rbx), %rsi
100002404: 48 89 75 88                 	movq	%rsi, -120(%rbp)
100002408: 4c 8d 3c c5 00 00 00 00     	leaq	(,%rax,8), %r15
100002410: 4b 8d 34 7f                 	leaq	(%r15,%r15,2), %rsi
100002414: 48 89 b5 f0 fe ff ff        	movq	%rsi, -272(%rbp)
10000241b: 48 89 85 30 ff ff ff        	movq	%rax, -208(%rbp)
100002422: 8d 04 40                    	leal	(%rax,%rax,2), %eax
100002425: 89 45 cc                    	movl	%eax, -52(%rbp)
100002428: ba 01 00 00 00              	movl	$1, %edx
10000242d: 41 ba 04 00 00 00           	movl	$4, %r10d
100002433: 45 31 c9                    	xorl	%r9d, %r9d
100002436: 4c 89 45 b8                 	movq	%r8, -72(%rbp)
10000243a: 48 89 4d a8                 	movq	%rcx, -88(%rbp)
10000243e: 4c 8b a5 50 ff ff ff        	movq	-176(%rbp), %r12
100002445: e9 30 02 00 00              	jmp	560 <_SIMDkernel4+0x3aa>
10000244a: 66 0f 1f 44 00 00           	nopw	(%rax,%rax)
100002450: 48 8b 4d a8                 	movq	-88(%rbp), %rcx
100002454: c5 fb 10 85 60 ff ff ff     	vmovsd	-160(%rbp), %xmm0
10000245c: 4c 8b 95 f8 fe ff ff        	movq	-264(%rbp), %r10
100002463: c4 a1 7b c2 44 d1 f8 00     	vcmpeqsd	-8(%rcx,%r10,8), %xmm0, %xmm0
10000246b: c4 e3 41 4b c6 00           	vblendvpd	%xmm0, %xmm6, %xmm7, %xmm0
100002471: 48 8b 85 28 ff ff ff        	movq	-216(%rbp), %rax
100002478: 49 8d 04 02                 	leaq	(%r10,%rax), %rax
10000247c: c4 c1 7b 58 44 c0 f8        	vaddsd	-8(%r8,%rax,8), %xmm0, %xmm0
100002483: c5 fb 2c f0                 	vcvttsd2si	%xmm0, %esi
100002487: c4 c1 43 58 04 c0           	vaddsd	(%r8,%rax,8), %xmm7, %xmm0
10000248d: 48 8b 9d 58 ff ff ff        	movq	-168(%rbp), %rbx
100002494: 49 8d 3c 1a                 	leaq	(%r10,%rbx), %rdi
100002498: c4 c1 43 58 4c f8 f8        	vaddsd	-8(%r8,%rdi,8), %xmm7, %xmm1
10000249f: c5 fb 2c c1                 	vcvttsd2si	%xmm1, %eax
1000024a3: 39 c6                       	cmpl	%eax, %esi
1000024a5: 0f 4d c6                    	cmovgel	%esi, %eax
1000024a8: c5 fb 2c f0                 	vcvttsd2si	%xmm0, %esi
1000024ac: 39 f0                       	cmpl	%esi, %eax
1000024ae: 0f 4c c6                    	cmovll	%esi, %eax
1000024b1: c5 d3 2a c0                 	vcvtsi2sd	%eax, %xmm5, %xmm0
1000024b5: c4 a1 0b c2 4c d1 f0 00     	vcmpeqsd	-16(%rcx,%r10,8), %xmm14, %xmm1
1000024bd: c4 e3 41 4b ce 10           	vblendvpd	%xmm1, %xmm6, %xmm7, %xmm1
1000024c3: c4 c1 7b 11 04 f8           	vmovsd	%xmm0, (%r8,%rdi,8)
1000024c9: 48 8b 95 10 ff ff ff        	movq	-240(%rbp), %rdx
1000024d0: 48 8d 04 1a                 	leaq	(%rdx,%rbx), %rax
1000024d4: c4 c1 73 58 44 c0 f8        	vaddsd	-8(%r8,%rax,8), %xmm1, %xmm0
1000024db: c4 c1 43 58 0c c0           	vaddsd	(%r8,%rax,8), %xmm7, %xmm1
1000024e1: c5 fb 2c c0                 	vcvttsd2si	%xmm0, %eax
1000024e5: 48 8b b5 18 ff ff ff        	movq	-232(%rbp), %rsi
1000024ec: c4 c1 43 58 04 f0           	vaddsd	(%r8,%rsi,8), %xmm7, %xmm0
1000024f2: c5 fb 2c f0                 	vcvttsd2si	%xmm0, %esi
1000024f6: 48 8b 9d 68 ff ff ff        	movq	-152(%rbp), %rbx
1000024fd: 48 01 da                    	addq	%rbx, %rdx
100002500: 39 f0                       	cmpl	%esi, %eax
100002502: 0f 4d f0                    	cmovgel	%eax, %esi
100002505: c5 fb 2c c1                 	vcvttsd2si	%xmm1, %eax
100002509: 39 c6                       	cmpl	%eax, %esi
10000250b: 0f 4c f0                    	cmovll	%eax, %esi
10000250e: c5 d3 2a c6                 	vcvtsi2sd	%esi, %xmm5, %xmm0
100002512: c4 c1 7b 11 04 d0           	vmovsd	%xmm0, (%r8,%rdx,8)
100002518: c4 a1 0b c2 4c d1 f8 00     	vcmpeqsd	-8(%rcx,%r10,8), %xmm14, %xmm1
100002520: c4 e3 41 4b ce 10           	vblendvpd	%xmm1, %xmm6, %xmm7, %xmm1
100002526: c4 c1 73 58 4c f8 f8        	vaddsd	-8(%r8,%rdi,8), %xmm1, %xmm1
10000252d: c5 fb 2c c1                 	vcvttsd2si	%xmm1, %eax
100002531: c4 c1 43 58 0c f8           	vaddsd	(%r8,%rdi,8), %xmm7, %xmm1
100002537: c5 fb 58 c7                 	vaddsd	%xmm7, %xmm0, %xmm0
10000253b: c5 fb 2c f0                 	vcvttsd2si	%xmm0, %esi
10000253f: 39 f0                       	cmpl	%esi, %eax
100002541: 0f 4d f0                    	cmovgel	%eax, %esi
100002544: c5 fb 2c c1                 	vcvttsd2si	%xmm1, %eax
100002548: 39 c6                       	cmpl	%eax, %esi
10000254a: 0f 4c f0                    	cmovll	%eax, %esi
10000254d: 4d 8d 1c 1a                 	leaq	(%r10,%rbx), %r11
100002551: c5 d3 2a c6                 	vcvtsi2sd	%esi, %xmm5, %xmm0
100002555: c4 a1 53 c2 4c d1 e8 00     	vcmpeqsd	-24(%rcx,%r10,8), %xmm5, %xmm1
10000255d: c4 81 7b 11 04 d8           	vmovsd	%xmm0, (%r8,%r11,8)
100002563: c4 e3 41 4b c6 10           	vblendvpd	%xmm1, %xmm6, %xmm7, %xmm0
100002569: 49 8d 44 1a fe              	leaq	-2(%r10,%rbx), %rax
10000256e: c4 c1 7b 58 44 c0 f8        	vaddsd	-8(%r8,%rax,8), %xmm0, %xmm0
100002575: c4 c1 43 58 0c c0           	vaddsd	(%r8,%rax,8), %xmm7, %xmm1
10000257b: c5 fb 2c c0                 	vcvttsd2si	%xmm0, %eax
10000257f: 48 8b 95 08 ff ff ff        	movq	-248(%rbp), %rdx
100002586: c4 c1 43 58 04 d0           	vaddsd	(%r8,%rdx,8), %xmm7, %xmm0
10000258c: c5 fb 2c f0                 	vcvttsd2si	%xmm0, %esi
100002590: 39 f0                       	cmpl	%esi, %eax
100002592: 0f 4d f0                    	cmovgel	%eax, %esi
100002595: c5 fb 2c c1                 	vcvttsd2si	%xmm1, %eax
100002599: 39 c6                       	cmpl	%eax, %esi
10000259b: 0f 4c f0                    	cmovll	%eax, %esi
10000259e: 48 8b bd 70 ff ff ff        	movq	-144(%rbp), %rdi
1000025a5: 49 8d 44 3a fe              	leaq	-2(%r10,%rdi), %rax
1000025aa: c5 d3 2a c6                 	vcvtsi2sd	%esi, %xmm5, %xmm0
1000025ae: c4 a1 53 c2 4c d1 f0 00     	vcmpeqsd	-16(%rcx,%r10,8), %xmm5, %xmm1
1000025b6: c4 e3 41 4b ce 10           	vblendvpd	%xmm1, %xmm6, %xmm7, %xmm1
1000025bc: c4 c1 7b 11 04 c0           	vmovsd	%xmm0, (%r8,%rax,8)
1000025c2: 49 8d 44 1a ff              	leaq	-1(%r10,%rbx), %rax
1000025c7: c4 c1 73 58 4c c0 f8        	vaddsd	-8(%r8,%rax,8), %xmm1, %xmm1
1000025ce: c5 fb 2c f1                 	vcvttsd2si	%xmm1, %esi
1000025d2: c4 c1 43 58 0c c0           	vaddsd	(%r8,%rax,8), %xmm7, %xmm1
1000025d8: c5 fb 58 c7                 	vaddsd	%xmm7, %xmm0, %xmm0
1000025dc: c5 fb 2c c0                 	vcvttsd2si	%xmm0, %eax
1000025e0: 39 c6                       	cmpl	%eax, %esi
1000025e2: 0f 4d c6                    	cmovgel	%esi, %eax
1000025e5: c5 fb 2c f1                 	vcvttsd2si	%xmm1, %esi
1000025e9: 39 f0                       	cmpl	%esi, %eax
1000025eb: 0f 4c c6                    	cmovll	%esi, %eax
1000025ee: c5 d3 2a c0                 	vcvtsi2sd	%eax, %xmm5, %xmm0
1000025f2: 49 8d 44 3a ff              	leaq	-1(%r10,%rdi), %rax
1000025f7: c4 c1 7b 11 04 c0           	vmovsd	%xmm0, (%r8,%rax,8)
1000025fd: c4 a1 53 c2 4c d1 f8 00     	vcmpeqsd	-8(%rcx,%r10,8), %xmm5, %xmm1
100002605: c4 e3 41 4b ce 10           	vblendvpd	%xmm1, %xmm6, %xmm7, %xmm1
10000260b: c4 81 73 58 4c d8 f8        	vaddsd	-8(%r8,%r11,8), %xmm1, %xmm1
100002612: c5 fb 2c c1                 	vcvttsd2si	%xmm1, %eax
100002616: c4 81 43 58 0c d8           	vaddsd	(%r8,%r11,8), %xmm7, %xmm1
10000261c: c5 fb 58 c7                 	vaddsd	%xmm7, %xmm0, %xmm0
100002620: c5 fb 2c f0                 	vcvttsd2si	%xmm0, %esi
100002624: 39 f0                       	cmpl	%esi, %eax
100002626: 0f 4d f0                    	cmovgel	%eax, %esi
100002629: c5 fb 2c c1                 	vcvttsd2si	%xmm1, %eax
10000262d: 39 c6                       	cmpl	%eax, %esi
10000262f: 0f 4c f0                    	cmovll	%eax, %esi
100002632: c5 db 2a c6                 	vcvtsi2sd	%esi, %xmm4, %xmm0
100002636: 49 8d 04 3a                 	leaq	(%r10,%rdi), %rax
10000263a: c4 c1 7b 11 04 c0           	vmovsd	%xmm0, (%r8,%rax,8)
100002640: 48 8b 55 a0                 	movq	-96(%rbp), %rdx
100002644: 48 83 c2 04                 	addq	$4, %rdx
100002648: 49 83 c2 04                 	addq	$4, %r10
10000264c: 4c 8b 8d 00 ff ff ff        	movq	-256(%rbp), %r9
100002653: 49 ff c1                    	incq	%r9
100002656: 48 83 45 b8 20              	addq	$32, -72(%rbp)
10000265b: 83 45 cc 04                 	addl	$4, -52(%rbp)
10000265f: 48 b8 00 00 00 00 04 00 00 00       	movabsq	$17179869184, %rax
100002669: 48 01 45 b0                 	addq	%rax, -80(%rbp)
10000266d: 48 3b 95 20 ff ff ff        	cmpq	-224(%rbp), %rdx
100002674: 0f 8d 19 03 00 00           	jge	793 <_SIMDkernel4+0x6c3>
10000267a: 48 8b bd 30 ff ff ff        	movq	-208(%rbp), %rdi
100002681: 4a 8d 04 8f                 	leaq	(%rdi,%r9,4), %rax
100002685: c5 83 c2 54 d1 f8 00        	vcmpeqsd	-8(%rcx,%rdx,8), %xmm15, %xmm2
10000268c: c4 e3 41 4b d6 20           	vblendvpd	%xmm2, %xmm6, %xmm7, %xmm2
100002692: c4 c1 6b 58 54 d0 f8        	vaddsd	-8(%r8,%rdx,8), %xmm2, %xmm2
100002699: c5 fb 2c f2                 	vcvttsd2si	%xmm2, %esi
10000269d: c4 c1 43 58 14 d0           	vaddsd	(%r8,%rdx,8), %xmm7, %xmm2
1000026a3: c5 fb 2c da                 	vcvttsd2si	%xmm2, %ebx
1000026a7: c4 c1 43 58 14 c0           	vaddsd	(%r8,%rax,8), %xmm7, %xmm2
1000026ad: c5 fb 2c c2                 	vcvttsd2si	%xmm2, %eax
1000026b1: 39 c6                       	cmpl	%eax, %esi
1000026b3: 0f 4d c6                    	cmovgel	%esi, %eax
1000026b6: 39 d8                       	cmpl	%ebx, %eax
1000026b8: 0f 4c c3                    	cmovll	%ebx, %eax
1000026bb: 4c 8d 34 3a                 	leaq	(%rdx,%rdi), %r14
1000026bf: c5 e3 2a d0                 	vcvtsi2sd	%eax, %xmm3, %xmm2
1000026c3: c4 81 7b 11 14 f0           	vmovsd	%xmm2, (%r8,%r14,8)
1000026c9: c5 83 c2 1c d1 00           	vcmpeqsd	(%rcx,%rdx,8), %xmm15, %xmm3
1000026cf: c4 e3 41 4b de 30           	vblendvpd	%xmm3, %xmm6, %xmm7, %xmm3
1000026d5: c4 c1 63 58 1c d0           	vaddsd	(%r8,%rdx,8), %xmm3, %xmm3
1000026db: c5 fb 2c c3                 	vcvttsd2si	%xmm3, %eax
1000026df: c4 c1 43 58 5c d0 08        	vaddsd	8(%r8,%rdx,8), %xmm7, %xmm3
1000026e6: c5 fb 2c f3                 	vcvttsd2si	%xmm3, %esi
1000026ea: c5 eb 58 d7                 	vaddsd	%xmm7, %xmm2, %xmm2
1000026ee: c5 fb 2c da                 	vcvttsd2si	%xmm2, %ebx
1000026f2: 39 d8                       	cmpl	%ebx, %eax
1000026f4: 0f 4d d8                    	cmovgel	%eax, %ebx
1000026f7: 39 f3                       	cmpl	%esi, %ebx
1000026f9: 0f 4c de                    	cmovll	%esi, %ebx
1000026fc: c5 db 2a d3                 	vcvtsi2sd	%ebx, %xmm4, %xmm2
100002700: 4c 8d 6c 3a 01              	leaq	1(%rdx,%rdi), %r13
100002705: c4 81 7b 11 14 e8           	vmovsd	%xmm2, (%r8,%r13,8)
10000270b: c5 83 c2 5c d1 08 00        	vcmpeqsd	8(%rcx,%rdx,8), %xmm15, %xmm3
100002712: c4 e3 41 4b de 30           	vblendvpd	%xmm3, %xmm6, %xmm7, %xmm3
100002718: c4 c1 63 58 5c d0 08        	vaddsd	8(%r8,%rdx,8), %xmm3, %xmm3
10000271f: c5 fb 2c c3                 	vcvttsd2si	%xmm3, %eax
100002723: c4 c1 43 58 5c d0 10        	vaddsd	16(%r8,%rdx,8), %xmm7, %xmm3
10000272a: c5 eb 58 d7                 	vaddsd	%xmm7, %xmm2, %xmm2
10000272e: c5 fb 2c f2                 	vcvttsd2si	%xmm2, %esi
100002732: 39 f0                       	cmpl	%esi, %eax
100002734: 0f 4d f0                    	cmovgel	%eax, %esi
100002737: c5 fb 2c c3                 	vcvttsd2si	%xmm3, %eax
10000273b: 39 c6                       	cmpl	%eax, %esi
10000273d: 0f 4c f0                    	cmovll	%eax, %esi
100002740: 48 8d 44 3a 02              	leaq	2(%rdx,%rdi), %rax
100002745: c5 db 2a d6                 	vcvtsi2sd	%esi, %xmm4, %xmm2
100002749: c4 c1 7b 11 14 c0           	vmovsd	%xmm2, (%r8,%rax,8)
10000274f: 48 8b 9d 38 ff ff ff        	movq	-200(%rbp), %rbx
100002756: 4a 8d 04 8b                 	leaq	(%rbx,%r9,4), %rax
10000275a: c5 93 c2 54 d1 f8 00        	vcmpeqsd	-8(%rcx,%rdx,8), %xmm13, %xmm2
100002761: c4 e3 41 4b d6 20           	vblendvpd	%xmm2, %xmm6, %xmm7, %xmm2
100002767: c4 81 6b 58 54 f0 f8        	vaddsd	-8(%r8,%r14,8), %xmm2, %xmm2
10000276e: c5 fb 2c f2                 	vcvttsd2si	%xmm2, %esi
100002772: c4 81 43 58 14 f0           	vaddsd	(%r8,%r14,8), %xmm7, %xmm2
100002778: c4 c1 43 58 1c c0           	vaddsd	(%r8,%rax,8), %xmm7, %xmm3
10000277e: c5 fb 2c c3                 	vcvttsd2si	%xmm3, %eax
100002782: 39 c6                       	cmpl	%eax, %esi
100002784: 0f 4d c6                    	cmovgel	%esi, %eax
100002787: c5 fb 2c f2                 	vcvttsd2si	%xmm2, %esi
10000278b: 39 f0                       	cmpl	%esi, %eax
10000278d: 0f 4c c6                    	cmovll	%esi, %eax
100002790: c5 db 2a d0                 	vcvtsi2sd	%eax, %xmm4, %xmm2
100002794: 48 8d 04 1a                 	leaq	(%rdx,%rbx), %rax
100002798: c4 c1 7b 11 14 c0           	vmovsd	%xmm2, (%r8,%rax,8)
10000279e: c5 93 c2 1c d1 00           	vcmpeqsd	(%rcx,%rdx,8), %xmm13, %xmm3
1000027a4: c4 e3 41 4b de 30           	vblendvpd	%xmm3, %xmm6, %xmm7, %xmm3
1000027aa: c4 81 63 58 1c f0           	vaddsd	(%r8,%r14,8), %xmm3, %xmm3
1000027b0: c5 fb 2c fb                 	vcvttsd2si	%xmm3, %edi
1000027b4: c4 81 43 58 1c e8           	vaddsd	(%r8,%r13,8), %xmm7, %xmm3
1000027ba: c5 eb 58 d7                 	vaddsd	%xmm7, %xmm2, %xmm2
1000027be: c5 fb 2c f2                 	vcvttsd2si	%xmm2, %esi
1000027c2: 39 f7                       	cmpl	%esi, %edi
1000027c4: 0f 4d f7                    	cmovgel	%edi, %esi
1000027c7: c5 fb 2c fb                 	vcvttsd2si	%xmm3, %edi
1000027cb: 39 fe                       	cmpl	%edi, %esi
1000027cd: 0f 4c f7                    	cmovll	%edi, %esi
1000027d0: c5 db 2a d6                 	vcvtsi2sd	%esi, %xmm4, %xmm2
1000027d4: 48 8d 74 1a 01              	leaq	1(%rdx,%rbx), %rsi
1000027d9: c4 c1 7b 11 14 f0           	vmovsd	%xmm2, (%r8,%rsi,8)
1000027df: c5 fb 10 85 40 ff ff ff     	vmovsd	-192(%rbp), %xmm0
1000027e7: c5 fb c2 54 d1 f8 00        	vcmpeqsd	-8(%rcx,%rdx,8), %xmm0, %xmm2
1000027ee: c4 e3 41 4b d6 20           	vblendvpd	%xmm2, %xmm6, %xmm7, %xmm2
1000027f4: c4 c1 6b 58 54 c0 f8        	vaddsd	-8(%r8,%rax,8), %xmm2, %xmm2
1000027fb: c5 fb 2c ca                 	vcvttsd2si	%xmm2, %ecx
1000027ff: c4 c1 43 58 14 c0           	vaddsd	(%r8,%rax,8), %xmm7, %xmm2
100002805: 48 8b 85 48 ff ff ff        	movq	-184(%rbp), %rax
10000280c: 48 89 55 a0                 	movq	%rdx, -96(%rbp)
100002810: 48 01 d0                    	addq	%rdx, %rax
100002813: c4 c1 43 58 5c c0 f8        	vaddsd	-8(%r8,%rax,8), %xmm7, %xmm3
10000281a: c5 fb 2c f3                 	vcvttsd2si	%xmm3, %esi
10000281e: 39 f1                       	cmpl	%esi, %ecx
100002820: 0f 4d f1                    	cmovgel	%ecx, %esi
100002823: c5 fb 2c ca                 	vcvttsd2si	%xmm2, %ecx
100002827: 39 ce                       	cmpl	%ecx, %esi
100002829: 0f 4c f1                    	cmovll	%ecx, %esi
10000282c: 4c 89 95 f8 fe ff ff        	movq	%r10, -264(%rbp)
100002833: 49 8d 4a ff                 	leaq	-1(%r10), %rcx
100002837: 48 89 8d 10 ff ff ff        	movq	%rcx, -240(%rbp)
10000283e: c5 db 2a d6                 	vcvtsi2sd	%esi, %xmm4, %xmm2
100002842: 48 8b 4d 88                 	movq	-120(%rbp), %rcx
100002846: 4a 8d 0c 89                 	leaq	(%rcx,%r9,4), %rcx
10000284a: 48 89 8d 08 ff ff ff        	movq	%rcx, -248(%rbp)
100002851: c4 c1 7b 11 14 c0           	vmovsd	%xmm2, (%r8,%rax,8)
100002857: 48 8b 45 80                 	movq	-128(%rbp), %rax
10000285b: 4c 89 8d 00 ff ff ff        	movq	%r9, -256(%rbp)
100002862: 4a 8d 04 88                 	leaq	(%rax,%r9,4), %rax
100002866: 48 89 85 18 ff ff ff        	movq	%rax, -232(%rbp)
10000286d: 83 7d d4 04                 	cmpl	$4, -44(%rbp)
100002871: 44 8b 5d d0                 	movl	-48(%rbp), %r11d
100002875: 4c 8b 8d 78 ff ff ff        	movq	-136(%rbp), %r9
10000287c: 48 8b 55 c0                 	movq	-64(%rbp), %rdx
100002880: 4c 8b 55 90                 	movq	-112(%rbp), %r10
100002884: 48 8b 7d 98                 	movq	-104(%rbp), %rdi
100002888: 0f 8e c2 fb ff ff           	jle	-1086 <_SIMDkernel4+0x180>
10000288e: 48 8b 45 a8                 	movq	-88(%rbp), %rax
100002892: 48 8b 4d a0                 	movq	-96(%rbp), %rcx
100002896: c4 63 fd 01 54 c8 f8 1b     	vpermpd	$27, -8(%rax,%rcx,8), %ymm10
10000289e: c5 fb 10 12                 	vmovsd	(%rdx), %xmm2
1000028a2: 4c 8b 75 b0                 	movq	-80(%rbp), %r14
1000028a6: 45 31 ed                    	xorl	%r13d, %r13d
1000028a9: 8b 75 cc                    	movl	-52(%rbp), %esi
1000028ac: 48 8b 4d b8                 	movq	-72(%rbp), %rcx
1000028b0: c4 a1 7b 10 5c ea 08        	vmovsd	8(%rdx,%r13,8), %xmm3
1000028b7: c5 e9 14 d3                 	vunpcklpd	%xmm3, %xmm2, %xmm2
1000028bb: c4 a3 6d 18 54 ea 10 01     	vinsertf128	$1, 16(%rdx,%r13,8), %ymm2, %ymm2
1000028c3: 4c 89 f0                    	movq	%r14, %rax
1000028c6: 48 c1 f8 1d                 	sarq	$29, %rax
1000028ca: c4 c1 7b 10 0c 00           	vmovsd	(%r8,%rax), %xmm1
1000028d0: 48 63 de                    	movslq	%esi, %rbx
1000028d3: ff c6                       	incl	%esi
1000028d5: 48 63 c6                    	movslq	%esi, %rax
1000028d8: c4 c1 7b 10 24 c0           	vmovsd	(%r8,%rax,8), %xmm4
1000028de: 44 89 d8                    	movl	%r11d, %eax
1000028e1: c4 c1 6d c2 d2 00           	vcmpeqpd	%ymm10, %ymm2, %ymm2
1000028e7: c4 c1 6d 54 d0              	vandpd	%ymm8, %ymm2, %ymm2
1000028ec: c5 fb 10 41 18              	vmovsd	24(%rcx), %xmm0
1000028f1: c4 a1 79 16 44 39 10        	vmovhpd	16(%rcx,%r15), %xmm0, %xmm0
1000028f8: c4 c1 71 16 0c d8           	vmovhpd	(%r8,%rbx,8), %xmm1, %xmm1
1000028fe: c5 7b 10 59 20              	vmovsd	32(%rcx), %xmm11
100002903: c4 e3 7d 18 c1 01           	vinsertf128	$1, %xmm1, %ymm0, %ymm0
100002909: c5 ed 58 c0                 	vaddpd	%ymm0, %ymm2, %ymm0
10000290d: c4 a1 7b 10 4c 11 10        	vmovsd	16(%rcx,%r10), %xmm1
100002914: c4 a1 7b 10 54 39 18        	vmovsd	24(%rcx,%r15), %xmm2
10000291b: c5 71 14 e4                 	vunpcklpd	%xmm4, %xmm1, %xmm12
10000291f: c5 21 14 da                 	vunpcklpd	%xmm2, %xmm11, %xmm11
100002923: c4 43 25 18 dc 01           	vinsertf128	$1, %xmm12, %ymm11, %ymm11
100002929: c4 c1 7d 5f c3              	vmaxpd	%ymm11, %ymm0, %ymm0
10000292e: c5 e9 14 c9                 	vunpcklpd	%xmm1, %xmm2, %xmm1
100002932: c5 d9 16 14 39              	vmovhpd	(%rcx,%rdi), %xmm4, %xmm2
100002937: c4 e3 75 18 ca 01           	vinsertf128	$1, %xmm2, %ymm1, %ymm1
10000293d: c5 fd 5f c1                 	vmaxpd	%ymm1, %ymm0, %ymm0
100002941: c4 c1 7d 58 c1              	vaddpd	%ymm9, %ymm0, %ymm0
100002946: c4 e3 7d 19 c1 01           	vextractf128	$1, %ymm0, %xmm1
10000294c: c4 e3 f9 16 4c 39 08 01     	vpextrq	$1, %xmm1, 8(%rcx,%rdi)
100002954: 48 8b b5 f0 fe ff ff        	movq	-272(%rbp), %rsi
10000295b: c5 f9 d6 4c 31 10           	vmovq	%xmm1, 16(%rcx,%rsi)
100002961: c4 a3 f9 16 44 11 18 01     	vpextrq	$1, %xmm0, 24(%rcx,%r10)
100002969: c4 a1 79 d6 44 39 20        	vmovq	%xmm0, 32(%rcx,%r15)
100002970: 4c 01 f9                    	addq	%r15, %rcx
100002973: 44 01 db                    	addl	%r11d, %ebx
100002976: 4c 89 c8                    	movq	%r9, %rax
100002979: 49 ff c5                    	incq	%r13
10000297c: 4d 01 ce                    	addq	%r9, %r14
10000297f: 89 de                       	movl	%ebx, %esi
100002981: c5 f9 28 d3                 	vmovapd	%xmm3, %xmm2
100002985: 4d 39 ec                    	cmpq	%r13, %r12
100002988: 0f 85 22 ff ff ff           	jne	-222 <_SIMDkernel4+0x5e0>
10000298e: e9 bd fa ff ff              	jmp	-1347 <_SIMDkernel4+0x180>
100002993: 48 83 c4 68                 	addq	$104, %rsp
100002997: 5b                          	popq	%rbx
100002998: 41 5c                       	popq	%r12
10000299a: 41 5d                       	popq	%r13
10000299c: 41 5e                       	popq	%r14
10000299e: 41 5f                       	popq	%r15
1000029a0: 5d                          	popq	%rbp
1000029a1: c5 f8 77                    	vzeroupper
1000029a4: c3                          	retq
1000029a5: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
1000029af: 90                          	nop

00000001000029b0 _SIMDkernel8:
1000029b0: 55                          	pushq	%rbp
1000029b1: 48 89 e5                    	movq	%rsp, %rbp
1000029b4: 41 57                       	pushq	%r15
1000029b6: 41 56                       	pushq	%r14
1000029b8: 41 55                       	pushq	%r13
1000029ba: 41 54                       	pushq	%r12
1000029bc: 53                          	pushq	%rbx
1000029bd: 48 83 e4 e0                 	andq	$-32, %rsp
1000029c1: 48 81 ec 80 02 00 00        	subq	$640, %rsp
1000029c8: 48 89 4c 24 20              	movq	%rcx, 32(%rsp)
1000029cd: 48 89 54 24 60              	movq	%rdx, 96(%rsp)
1000029d2: 89 74 24 1c                 	movl	%esi, 28(%rsp)
1000029d6: 89 7c 24 14                 	movl	%edi, 20(%rsp)
1000029da: 83 ff 02                    	cmpl	$2, %edi
1000029dd: 0f 8c 3f 17 00 00           	jl	5951 <_SIMDkernel8+0x1772>
1000029e3: 44 8b 74 24 14              	movl	20(%rsp), %r14d
1000029e8: 49 63 f6                    	movslq	%r14d, %rsi
1000029eb: 48 8d 46 f8                 	leaq	-8(%rsi), %rax
1000029ef: 48 63 7c 24 1c              	movslq	28(%rsp), %rdi
1000029f4: 48 8b 54 24 60              	movq	96(%rsp), %rdx
1000029f9: c5 fb 10 02                 	vmovsd	(%rdx), %xmm0
1000029fd: c5 fb 11 84 24 88 01 00 00  	vmovsd	%xmm0, 392(%rsp)
100002a06: c5 fb 10 42 08              	vmovsd	8(%rdx), %xmm0
100002a0b: c5 fb 11 84 24 80 01 00 00  	vmovsd	%xmm0, 384(%rsp)
100002a14: c5 fb 10 42 10              	vmovsd	16(%rdx), %xmm0
100002a19: c5 fb 11 84 24 78 01 00 00  	vmovsd	%xmm0, 376(%rsp)
100002a22: c5 fb 10 42 18              	vmovsd	24(%rdx), %xmm0
100002a27: c5 fb 11 84 24 70 01 00 00  	vmovsd	%xmm0, 368(%rsp)
100002a30: c5 fb 10 42 20              	vmovsd	32(%rdx), %xmm0
100002a35: c5 fb 11 84 24 68 01 00 00  	vmovsd	%xmm0, 360(%rsp)
100002a3e: c5 fb 10 42 28              	vmovsd	40(%rdx), %xmm0
100002a43: c5 fb 11 84 24 60 01 00 00  	vmovsd	%xmm0, 352(%rsp)
100002a4c: c5 fb 10 42 30              	vmovsd	48(%rdx), %xmm0
100002a51: c5 fb 11 84 24 58 01 00 00  	vmovsd	%xmm0, 344(%rsp)
100002a5a: 4c 8d 3c fd 00 00 00 00     	leaq	(,%rdi,8), %r15
100002a62: 4c 89 fb                    	movq	%r15, %rbx
100002a65: 48 29 fb                    	subq	%rdi, %rbx
100002a68: 48 89 9c 24 50 01 00 00     	movq	%rbx, 336(%rsp)
100002a70: 48 8d 5e f9                 	leaq	-7(%rsi), %rbx
100002a74: c5 fb 10 44 f2 c0           	vmovsd	-64(%rdx,%rsi,8), %xmm0
100002a7a: c5 fb 11 84 24 40 01 00 00  	vmovsd	%xmm0, 320(%rsp)
100002a83: c5 fb 10 44 f2 c8           	vmovsd	-56(%rdx,%rsi,8), %xmm0
100002a89: c5 fb 11 84 24 38 01 00 00  	vmovsd	%xmm0, 312(%rsp)
100002a92: 48 0f af c7                 	imulq	%rdi, %rax
100002a96: 48 89 84 24 98 01 00 00     	movq	%rax, 408(%rsp)
100002a9e: 48 0f af df                 	imulq	%rdi, %rbx
100002aa2: 48 89 9c 24 48 01 00 00     	movq	%rbx, 328(%rsp)
100002aaa: 4c 8d 5e fa                 	leaq	-6(%rsi), %r11
100002aae: 4c 0f af df                 	imulq	%rdi, %r11
100002ab2: 4c 8d 66 fb                 	leaq	-5(%rsi), %r12
100002ab6: c5 fb 10 44 f2 d0           	vmovsd	-48(%rdx,%rsi,8), %xmm0
100002abc: c5 fb 11 84 24 20 01 00 00  	vmovsd	%xmm0, 288(%rsp)
100002ac5: 4c 0f af e7                 	imulq	%rdi, %r12
100002ac9: 4c 8d 4e fc                 	leaq	-4(%rsi), %r9
100002acd: c5 fb 10 44 f2 d8           	vmovsd	-40(%rdx,%rsi,8), %xmm0
100002ad3: c5 fb 11 84 24 10 01 00 00  	vmovsd	%xmm0, 272(%rsp)
100002adc: 4c 0f af cf                 	imulq	%rdi, %r9
100002ae0: 4c 8d 6e fd                 	leaq	-3(%rsi), %r13
100002ae4: c5 fb 10 44 f2 e0           	vmovsd	-32(%rdx,%rsi,8), %xmm0
100002aea: c5 fb 11 84 24 00 01 00 00  	vmovsd	%xmm0, 256(%rsp)
100002af3: 4c 0f af ef                 	imulq	%rdi, %r13
100002af7: 48 89 f8                    	movq	%rdi, %rax
100002afa: 48 c1 e0 21                 	shlq	$33, %rax
100002afe: 48 8d 04 40                 	leaq	(%rax,%rax,2), %rax
100002b02: 48 bb 00 00 00 00 01 00 00 00       	movabsq	$4294967296, %rbx
100002b0c: 48 09 c3                    	orq	%rax, %rbx
100002b0f: 48 89 5c 24 48              	movq	%rbx, 72(%rsp)
100002b14: 48 89 f8                    	movq	%rdi, %rax
100002b17: 48 c1 e0 04                 	shlq	$4, %rax
100002b1b: b9 10 00 00 00              	movl	$16, %ecx
100002b20: 48 29 c1                    	subq	%rax, %rcx
100002b23: 48 89 8c 24 c0 00 00 00     	movq	%rcx, 192(%rsp)
100002b2b: 48 8d 46 fe                 	leaq	-2(%rsi), %rax
100002b2f: c5 fb 10 44 f2 e8           	vmovsd	-24(%rdx,%rsi,8), %xmm0
100002b35: c5 fb 11 84 24 f0 00 00 00  	vmovsd	%xmm0, 240(%rsp)
100002b3e: 48 0f af c7                 	imulq	%rdi, %rax
100002b42: c5 fb 10 44 f2 f0           	vmovsd	-16(%rdx,%rsi,8), %xmm0
100002b48: c5 fb 11 84 24 e8 00 00 00  	vmovsd	%xmm0, 232(%rsp)
100002b51: 48 89 b4 24 a0 01 00 00     	movq	%rsi, 416(%rsp)
100002b59: 48 8d 56 ff                 	leaq	-1(%rsi), %rdx
100002b5d: 48 0f af d7                 	imulq	%rdi, %rdx
100002b61: 8d 34 fd 00 00 00 00        	leal	(,%rdi,8), %esi
100002b68: 29 fe                       	subl	%edi, %esi
100002b6a: 89 74 24 18                 	movl	%esi, 24(%rsp)
100002b6e: 48 89 fe                    	movq	%rdi, %rsi
100002b71: 48 c1 e6 20                 	shlq	$32, %rsi
100002b75: 48 89 b4 24 d8 00 00 00     	movq	%rsi, 216(%rsp)
100002b7d: 44 89 f1                    	movl	%r14d, %ecx
100002b80: 48 83 c1 f8                 	addq	$-8, %rcx
100002b84: 48 89 8c 24 d0 00 00 00     	movq	%rcx, 208(%rsp)
100002b8c: b9 08 00 00 00              	movl	$8, %ecx
100002b91: 4c 89 bc 24 18 02 00 00     	movq	%r15, 536(%rsp)
100002b99: 4c 29 f9                    	subq	%r15, %rcx
100002b9c: 48 89 8c 24 00 02 00 00     	movq	%rcx, 512(%rsp)
100002ba4: 48 8d 0c 7f                 	leaq	(%rdi,%rdi,2), %rcx
100002ba8: 48 89 8c 24 c8 00 00 00     	movq	%rcx, 200(%rsp)
100002bb0: 48 c1 e1 04                 	shlq	$4, %rcx
100002bb4: 48 83 c1 d8                 	addq	$-40, %rcx
100002bb8: 48 89 8c 24 10 02 00 00     	movq	%rcx, 528(%rsp)
100002bc0: 48 89 f9                    	movq	%rdi, %rcx
100002bc3: 48 c1 e1 06                 	shlq	$6, %rcx
100002bc7: 48 83 c1 c0                 	addq	$-64, %rcx
100002bcb: 48 89 8c 24 08 02 00 00     	movq	%rcx, 520(%rsp)
100002bd3: 48 6b cf 38                 	imulq	$56, %rdi, %rcx
100002bd7: 48 83 c1 d0                 	addq	$-48, %rcx
100002bdb: 48 89 8c 24 b8 00 00 00     	movq	%rcx, 184(%rsp)
100002be3: c5 fb 10 1d e5 41 00 00     	vmovsd	16869(%rip), %xmm3
100002beb: c5 fb 10 25 e5 41 00 00     	vmovsd	16869(%rip), %xmm4
100002bf3: 48 8d 0c 3f                 	leaq	(%rdi,%rdi), %rcx
100002bf7: 48 8d 34 bd 00 00 00 00     	leaq	(,%rdi,4), %rsi
100002bff: 48 89 b4 24 a8 00 00 00     	movq	%rsi, 168(%rsp)
100002c07: 48 89 bc 24 90 01 00 00     	movq	%rdi, 400(%rsp)
100002c0f: 48 8d 34 bf                 	leaq	(%rdi,%rdi,4), %rsi
100002c13: 48 89 8c 24 b0 00 00 00     	movq	%rcx, 176(%rsp)
100002c1b: 48 8d 0c 49                 	leaq	(%rcx,%rcx,2), %rcx
100002c1f: 48 89 8c 24 98 00 00 00     	movq	%rcx, 152(%rsp)
100002c27: 4c 89 9c 24 30 01 00 00     	movq	%r11, 304(%rsp)
100002c2f: 49 8d 4b 06                 	leaq	6(%r11), %rcx
100002c33: 48 89 8c 24 90 00 00 00     	movq	%rcx, 144(%rsp)
100002c3b: 4c 89 a4 24 28 01 00 00     	movq	%r12, 296(%rsp)
100002c43: 49 8d 4c 24 05              	leaq	5(%r12), %rcx
100002c48: 48 89 8c 24 88 00 00 00     	movq	%rcx, 136(%rsp)
100002c50: 4c 89 8c 24 18 01 00 00     	movq	%r9, 280(%rsp)
100002c58: 49 8d 49 04                 	leaq	4(%r9), %rcx
100002c5c: 48 89 8c 24 80 00 00 00     	movq	%rcx, 128(%rsp)
100002c64: 4c 89 ac 24 08 01 00 00     	movq	%r13, 264(%rsp)
100002c6c: 49 8d 4d 03                 	leaq	3(%r13), %rcx
100002c70: 48 89 4c 24 78              	movq	%rcx, 120(%rsp)
100002c75: 48 89 84 24 f8 00 00 00     	movq	%rax, 248(%rsp)
100002c7d: 48 8d 40 02                 	leaq	2(%rax), %rax
100002c81: 48 89 44 24 70              	movq	%rax, 112(%rsp)
100002c86: 48 89 94 24 e0 00 00 00     	movq	%rdx, 224(%rsp)
100002c8e: 48 8d 42 01                 	leaq	1(%rdx), %rax
100002c92: 48 89 44 24 68              	movq	%rax, 104(%rsp)
100002c97: 48 89 b4 24 a0 00 00 00     	movq	%rsi, 160(%rsp)
100002c9f: 49 8d 44 f0 20              	leaq	32(%r8,%rsi,8), %rax
100002ca4: 48 89 44 24 40              	movq	%rax, 64(%rsp)
100002ca9: 41 bf 08 00 00 00           	movl	$8, %r15d
100002caf: b9 01 00 00 00              	movl	$1, %ecx
100002cb4: 31 d2                       	xorl	%edx, %edx
100002cb6: e9 e4 08 00 00              	jmp	2276 <_SIMDkernel8+0xbef>
100002cbb: 0f 1f 44 00 00              	nopl	(%rax,%rax)
100002cc0: c5 fb 10 84 24 40 01 00 00  	vmovsd	320(%rsp), %xmm0
100002cc9: 4c 8b 4c 24 20              	movq	32(%rsp), %r9
100002cce: 4c 8b 7c 24 58              	movq	88(%rsp), %r15
100002cd3: c4 81 7b c2 44 f9 f8 00     	vcmpeqsd	-8(%r9,%r15,8), %xmm0, %xmm0
100002cdb: c5 fb 10 1d ed 40 00 00     	vmovsd	16621(%rip), %xmm3
100002ce3: c5 fb 10 25 ed 40 00 00     	vmovsd	16621(%rip), %xmm4
100002ceb: c4 e3 59 4b c3 00           	vblendvpd	%xmm0, %xmm3, %xmm4, %xmm0
100002cf1: 48 8b 84 24 98 01 00 00     	movq	408(%rsp), %rax
100002cf9: 49 8d 04 07                 	leaq	(%r15,%rax), %rax
100002cfd: c4 c1 7b 58 44 c6 f8        	vaddsd	-8(%r14,%rax,8), %xmm0, %xmm0
100002d04: c5 fb 2c d0                 	vcvttsd2si	%xmm0, %edx
100002d08: c4 c1 5b 58 04 c6           	vaddsd	(%r14,%rax,8), %xmm4, %xmm0
100002d0e: 48 8b bc 24 48 01 00 00     	movq	328(%rsp), %rdi
100002d16: 49 8d 04 3f                 	leaq	(%r15,%rdi), %rax
100002d1a: c4 c1 5b 58 4c c6 f8        	vaddsd	-8(%r14,%rax,8), %xmm4, %xmm1
100002d21: c5 fb 2c f1                 	vcvttsd2si	%xmm1, %esi
100002d25: 39 f2                       	cmpl	%esi, %edx
100002d27: 0f 4d f2                    	cmovgel	%edx, %esi
100002d2a: c5 fb 2c d0                 	vcvttsd2si	%xmm0, %edx
100002d2e: 39 d6                       	cmpl	%edx, %esi
100002d30: 0f 4c f2                    	cmovll	%edx, %esi
100002d33: c4 41 18 57 e4              	vxorps	%xmm12, %xmm12, %xmm12
100002d38: c5 9b 2a c6                 	vcvtsi2sd	%esi, %xmm12, %xmm0
100002d3c: c5 fb 10 94 24 38 01 00 00  	vmovsd	312(%rsp), %xmm2
100002d45: c4 81 6b c2 4c f9 f0 00     	vcmpeqsd	-16(%r9,%r15,8), %xmm2, %xmm1
100002d4d: c4 e3 59 4b cb 10           	vblendvpd	%xmm1, %xmm3, %xmm4, %xmm1
100002d53: c4 c1 7b 11 04 c6           	vmovsd	%xmm0, (%r14,%rax,8)
100002d59: 48 8b 8c 24 b8 01 00 00     	movq	440(%rsp), %rcx
100002d61: 48 8d 14 39                 	leaq	(%rcx,%rdi), %rdx
100002d65: c4 c1 73 58 44 d6 f8        	vaddsd	-8(%r14,%rdx,8), %xmm1, %xmm0
100002d6c: c4 c1 5b 58 0c d6           	vaddsd	(%r14,%rdx,8), %xmm4, %xmm1
100002d72: c5 fb 2c d0                 	vcvttsd2si	%xmm0, %edx
100002d76: 48 8b b4 24 a8 01 00 00     	movq	424(%rsp), %rsi
100002d7e: c4 c1 5b 58 04 f6           	vaddsd	(%r14,%rsi,8), %xmm4, %xmm0
100002d84: c5 fb 2c f0                 	vcvttsd2si	%xmm0, %esi
100002d88: 48 8b bc 24 30 01 00 00     	movq	304(%rsp), %rdi
100002d90: 48 01 f9                    	addq	%rdi, %rcx
100002d93: 39 f2                       	cmpl	%esi, %edx
100002d95: 0f 4d f2                    	cmovgel	%edx, %esi
100002d98: c5 fb 2c d1                 	vcvttsd2si	%xmm1, %edx
100002d9c: 39 d6                       	cmpl	%edx, %esi
100002d9e: 0f 4c f2                    	cmovll	%edx, %esi
100002da1: c4 41 18 57 e4              	vxorps	%xmm12, %xmm12, %xmm12
100002da6: c5 9b 2a c6                 	vcvtsi2sd	%esi, %xmm12, %xmm0
100002daa: c4 c1 7b 11 04 ce           	vmovsd	%xmm0, (%r14,%rcx,8)
100002db0: c4 81 6b c2 4c f9 f8 00     	vcmpeqsd	-8(%r9,%r15,8), %xmm2, %xmm1
100002db8: c4 e3 59 4b cb 10           	vblendvpd	%xmm1, %xmm3, %xmm4, %xmm1
100002dbe: c4 c1 73 58 4c c6 f8        	vaddsd	-8(%r14,%rax,8), %xmm1, %xmm1
100002dc5: c5 fb 2c d1                 	vcvttsd2si	%xmm1, %edx
100002dc9: c4 c1 5b 58 0c c6           	vaddsd	(%r14,%rax,8), %xmm4, %xmm1
100002dcf: c5 fb 58 c4                 	vaddsd	%xmm4, %xmm0, %xmm0
100002dd3: c5 fb 2c f0                 	vcvttsd2si	%xmm0, %esi
100002dd7: 39 f2                       	cmpl	%esi, %edx
100002dd9: 0f 4d f2                    	cmovgel	%edx, %esi
100002ddc: c5 fb 2c c1                 	vcvttsd2si	%xmm1, %eax
100002de0: 39 c6                       	cmpl	%eax, %esi
100002de2: 0f 4c f0                    	cmovll	%eax, %esi
100002de5: 49 8d 04 3f                 	leaq	(%r15,%rdi), %rax
100002de9: c5 a3 2a c6                 	vcvtsi2sd	%esi, %xmm11, %xmm0
100002ded: c5 fb 10 94 24 20 01 00 00  	vmovsd	288(%rsp), %xmm2
100002df6: c4 81 6b c2 4c f9 e8 00     	vcmpeqsd	-24(%r9,%r15,8), %xmm2, %xmm1
100002dfe: c4 e3 59 4b cb 10           	vblendvpd	%xmm1, %xmm3, %xmm4, %xmm1
100002e04: c4 c1 7b 11 04 c6           	vmovsd	%xmm0, (%r14,%rax,8)
100002e0a: 48 8b 8c 24 c8 01 00 00     	movq	456(%rsp), %rcx
100002e12: 48 8d 14 39                 	leaq	(%rcx,%rdi), %rdx
100002e16: c4 c1 73 58 44 d6 f8        	vaddsd	-8(%r14,%rdx,8), %xmm1, %xmm0
100002e1d: c4 c1 5b 58 0c d6           	vaddsd	(%r14,%rdx,8), %xmm4, %xmm1
100002e23: c5 fb 2c d0                 	vcvttsd2si	%xmm0, %edx
100002e27: 48 8b b4 24 b0 01 00 00     	movq	432(%rsp), %rsi
100002e2f: c4 c1 5b 58 04 f6           	vaddsd	(%r14,%rsi,8), %xmm4, %xmm0
100002e35: c5 fb 2c f0                 	vcvttsd2si	%xmm0, %esi
100002e39: 48 8b 9c 24 28 01 00 00     	movq	296(%rsp), %rbx
100002e41: 48 01 d9                    	addq	%rbx, %rcx
100002e44: 39 f2                       	cmpl	%esi, %edx
100002e46: 0f 4d f2                    	cmovgel	%edx, %esi
100002e49: c5 fb 2c d1                 	vcvttsd2si	%xmm1, %edx
100002e4d: 39 d6                       	cmpl	%edx, %esi
100002e4f: 0f 4c f2                    	cmovll	%edx, %esi
100002e52: c5 cb 2a c6                 	vcvtsi2sd	%esi, %xmm6, %xmm0
100002e56: c4 81 6b c2 4c f9 f0 00     	vcmpeqsd	-16(%r9,%r15,8), %xmm2, %xmm1
100002e5e: c4 e3 59 4b cb 10           	vblendvpd	%xmm1, %xmm3, %xmm4, %xmm1
100002e64: c4 c1 7b 11 04 ce           	vmovsd	%xmm0, (%r14,%rcx,8)
100002e6a: 49 8d 54 3f ff              	leaq	-1(%r15,%rdi), %rdx
100002e6f: c4 c1 73 58 4c d6 f8        	vaddsd	-8(%r14,%rdx,8), %xmm1, %xmm1
100002e76: c5 fb 2c f1                 	vcvttsd2si	%xmm1, %esi
100002e7a: c4 c1 5b 58 0c d6           	vaddsd	(%r14,%rdx,8), %xmm4, %xmm1
100002e80: c5 fb 58 c4                 	vaddsd	%xmm4, %xmm0, %xmm0
100002e84: c5 fb 2c d0                 	vcvttsd2si	%xmm0, %edx
100002e88: 39 d6                       	cmpl	%edx, %esi
100002e8a: 0f 4d d6                    	cmovgel	%esi, %edx
100002e8d: c5 fb 2c f1                 	vcvttsd2si	%xmm1, %esi
100002e91: 39 f2                       	cmpl	%esi, %edx
100002e93: 0f 4c d6                    	cmovll	%esi, %edx
100002e96: c5 d3 2a c2                 	vcvtsi2sd	%edx, %xmm5, %xmm0
100002e9a: 49 8d 74 1f ff              	leaq	-1(%r15,%rbx), %rsi
100002e9f: c4 c1 7b 11 04 f6           	vmovsd	%xmm0, (%r14,%rsi,8)
100002ea5: c4 81 6b c2 4c f9 f8 00     	vcmpeqsd	-8(%r9,%r15,8), %xmm2, %xmm1
100002ead: c4 e3 59 4b cb 10           	vblendvpd	%xmm1, %xmm3, %xmm4, %xmm1
100002eb3: c4 c1 73 58 4c c6 f8        	vaddsd	-8(%r14,%rax,8), %xmm1, %xmm1
100002eba: c5 fb 2c d1                 	vcvttsd2si	%xmm1, %edx
100002ebe: c4 c1 5b 58 0c c6           	vaddsd	(%r14,%rax,8), %xmm4, %xmm1
100002ec4: c5 fb 58 c4                 	vaddsd	%xmm4, %xmm0, %xmm0
100002ec8: c5 fb 2c c0                 	vcvttsd2si	%xmm0, %eax
100002ecc: 39 c2                       	cmpl	%eax, %edx
100002ece: 0f 4d c2                    	cmovgel	%edx, %eax
100002ed1: c5 fb 2c d1                 	vcvttsd2si	%xmm1, %edx
100002ed5: 39 d0                       	cmpl	%edx, %eax
100002ed7: 0f 4c c2                    	cmovll	%edx, %eax
100002eda: 49 8d 14 1f                 	leaq	(%r15,%rbx), %rdx
100002ede: c5 d3 2a c0                 	vcvtsi2sd	%eax, %xmm5, %xmm0
100002ee2: c5 fb 10 94 24 10 01 00 00  	vmovsd	272(%rsp), %xmm2
100002eeb: c4 81 6b c2 4c f9 e0 00     	vcmpeqsd	-32(%r9,%r15,8), %xmm2, %xmm1
100002ef3: c4 e3 59 4b cb 10           	vblendvpd	%xmm1, %xmm3, %xmm4, %xmm1
100002ef9: c4 c1 7b 11 04 d6           	vmovsd	%xmm0, (%r14,%rdx,8)
100002eff: 48 8b 8c 24 d0 01 00 00     	movq	464(%rsp), %rcx
100002f07: 48 8d 04 19                 	leaq	(%rcx,%rbx), %rax
100002f0b: c4 c1 73 58 44 c6 f8        	vaddsd	-8(%r14,%rax,8), %xmm1, %xmm0
100002f12: c4 c1 5b 58 0c c6           	vaddsd	(%r14,%rax,8), %xmm4, %xmm1
100002f18: c5 fb 2c c0                 	vcvttsd2si	%xmm0, %eax
100002f1c: 48 8b bc 24 c0 01 00 00     	movq	448(%rsp), %rdi
100002f24: c4 c1 5b 58 04 fe           	vaddsd	(%r14,%rdi,8), %xmm4, %xmm0
100002f2a: c5 fb 2c f8                 	vcvttsd2si	%xmm0, %edi
100002f2e: 4c 8b 9c 24 18 01 00 00     	movq	280(%rsp), %r11
100002f36: 4c 01 d9                    	addq	%r11, %rcx
100002f39: 39 f8                       	cmpl	%edi, %eax
100002f3b: 0f 4d f8                    	cmovgel	%eax, %edi
100002f3e: c5 fb 2c c1                 	vcvttsd2si	%xmm1, %eax
100002f42: 39 c7                       	cmpl	%eax, %edi
100002f44: 0f 4c f8                    	cmovll	%eax, %edi
100002f47: c5 d3 2a c7                 	vcvtsi2sd	%edi, %xmm5, %xmm0
100002f4b: c4 81 6b c2 4c f9 e8 00     	vcmpeqsd	-24(%r9,%r15,8), %xmm2, %xmm1
100002f53: c4 e3 59 4b cb 10           	vblendvpd	%xmm1, %xmm3, %xmm4, %xmm1
100002f59: c4 c1 7b 11 04 ce           	vmovsd	%xmm0, (%r14,%rcx,8)
100002f5f: 49 8d 44 1f fe              	leaq	-2(%r15,%rbx), %rax
100002f64: c4 c1 73 58 4c c6 f8        	vaddsd	-8(%r14,%rax,8), %xmm1, %xmm1
100002f6b: c5 fb 2c f9                 	vcvttsd2si	%xmm1, %edi
100002f6f: c4 c1 5b 58 0c c6           	vaddsd	(%r14,%rax,8), %xmm4, %xmm1
100002f75: c5 fb 58 c4                 	vaddsd	%xmm4, %xmm0, %xmm0
100002f79: c5 fb 2c c0                 	vcvttsd2si	%xmm0, %eax
100002f7d: 39 c7                       	cmpl	%eax, %edi
100002f7f: 0f 4d c7                    	cmovgel	%edi, %eax
100002f82: c5 fb 2c f9                 	vcvttsd2si	%xmm1, %edi
100002f86: 39 f8                       	cmpl	%edi, %eax
100002f88: 0f 4c c7                    	cmovll	%edi, %eax
100002f8b: c5 e3 2a c0                 	vcvtsi2sd	%eax, %xmm3, %xmm0
100002f8f: 4b 8d 44 1f fe              	leaq	-2(%r15,%r11), %rax
100002f94: c4 c1 7b 11 04 c6           	vmovsd	%xmm0, (%r14,%rax,8)
100002f9a: c4 81 6b c2 4c f9 f0 00     	vcmpeqsd	-16(%r9,%r15,8), %xmm2, %xmm1
100002fa2: c4 e3 59 4b cb 10           	vblendvpd	%xmm1, %xmm3, %xmm4, %xmm1
100002fa8: c4 c1 73 58 4c f6 f8        	vaddsd	-8(%r14,%rsi,8), %xmm1, %xmm1
100002faf: c5 fb 2c f9                 	vcvttsd2si	%xmm1, %edi
100002fb3: c4 c1 5b 58 0c f6           	vaddsd	(%r14,%rsi,8), %xmm4, %xmm1
100002fb9: c5 fb 58 c4                 	vaddsd	%xmm4, %xmm0, %xmm0
100002fbd: c5 fb 2c f0                 	vcvttsd2si	%xmm0, %esi
100002fc1: 39 f7                       	cmpl	%esi, %edi
100002fc3: 0f 4d f7                    	cmovgel	%edi, %esi
100002fc6: c5 fb 2c f9                 	vcvttsd2si	%xmm1, %edi
100002fca: 39 fe                       	cmpl	%edi, %esi
100002fcc: 0f 4c f7                    	cmovll	%edi, %esi
100002fcf: c5 e3 2a c6                 	vcvtsi2sd	%esi, %xmm3, %xmm0
100002fd3: 4b 8d 5c 1f ff              	leaq	-1(%r15,%r11), %rbx
100002fd8: c4 c1 7b 11 04 de           	vmovsd	%xmm0, (%r14,%rbx,8)
100002fde: c4 81 6b c2 4c f9 f8 00     	vcmpeqsd	-8(%r9,%r15,8), %xmm2, %xmm1
100002fe6: c4 e3 59 4b cb 10           	vblendvpd	%xmm1, %xmm3, %xmm4, %xmm1
100002fec: c4 c1 73 58 4c d6 f8        	vaddsd	-8(%r14,%rdx,8), %xmm1, %xmm1
100002ff3: c5 fb 2c f1                 	vcvttsd2si	%xmm1, %esi
100002ff7: c4 c1 5b 58 0c d6           	vaddsd	(%r14,%rdx,8), %xmm4, %xmm1
100002ffd: c5 fb 58 c4                 	vaddsd	%xmm4, %xmm0, %xmm0
100003001: c5 fb 2c d0                 	vcvttsd2si	%xmm0, %edx
100003005: 39 d6                       	cmpl	%edx, %esi
100003007: 0f 4d d6                    	cmovgel	%esi, %edx
10000300a: c5 fb 2c f1                 	vcvttsd2si	%xmm1, %esi
10000300e: 39 f2                       	cmpl	%esi, %edx
100003010: 0f 4c d6                    	cmovll	%esi, %edx
100003013: 4b 8d 34 1f                 	leaq	(%r15,%r11), %rsi
100003017: c5 e3 2a c2                 	vcvtsi2sd	%edx, %xmm3, %xmm0
10000301b: c5 fb 10 94 24 00 01 00 00  	vmovsd	256(%rsp), %xmm2
100003024: c4 81 6b c2 4c f9 d8 00     	vcmpeqsd	-40(%r9,%r15,8), %xmm2, %xmm1
10000302c: c4 e3 59 4b cb 10           	vblendvpd	%xmm1, %xmm3, %xmm4, %xmm1
100003032: c4 c1 7b 11 04 f6           	vmovsd	%xmm0, (%r14,%rsi,8)
100003038: 48 8b 8c 24 e0 01 00 00     	movq	480(%rsp), %rcx
100003040: 4a 8d 14 19                 	leaq	(%rcx,%r11), %rdx
100003044: c4 c1 73 58 44 d6 f8        	vaddsd	-8(%r14,%rdx,8), %xmm1, %xmm0
10000304b: c4 c1 5b 58 0c d6           	vaddsd	(%r14,%rdx,8), %xmm4, %xmm1
100003051: c5 fb 2c d0                 	vcvttsd2si	%xmm0, %edx
100003055: 48 8b bc 24 d8 01 00 00     	movq	472(%rsp), %rdi
10000305d: c4 c1 5b 58 04 fe           	vaddsd	(%r14,%rdi,8), %xmm4, %xmm0
100003063: c5 fb 2c f8                 	vcvttsd2si	%xmm0, %edi
100003067: 4c 8b a4 24 08 01 00 00     	movq	264(%rsp), %r12
10000306f: 4c 01 e1                    	addq	%r12, %rcx
100003072: 39 fa                       	cmpl	%edi, %edx
100003074: 0f 4d fa                    	cmovgel	%edx, %edi
100003077: c5 fb 2c d1                 	vcvttsd2si	%xmm1, %edx
10000307b: 39 d7                       	cmpl	%edx, %edi
10000307d: 0f 4c fa                    	cmovll	%edx, %edi
100003080: c5 e3 2a c7                 	vcvtsi2sd	%edi, %xmm3, %xmm0
100003084: c4 81 6b c2 4c f9 e0 00     	vcmpeqsd	-32(%r9,%r15,8), %xmm2, %xmm1
10000308c: c4 e3 59 4b cb 10           	vblendvpd	%xmm1, %xmm3, %xmm4, %xmm1
100003092: c4 c1 7b 11 04 ce           	vmovsd	%xmm0, (%r14,%rcx,8)
100003098: 4b 8d 54 1f fd              	leaq	-3(%r15,%r11), %rdx
10000309d: c4 c1 73 58 4c d6 f8        	vaddsd	-8(%r14,%rdx,8), %xmm1, %xmm1
1000030a4: c5 fb 2c f9                 	vcvttsd2si	%xmm1, %edi
1000030a8: c4 c1 5b 58 0c d6           	vaddsd	(%r14,%rdx,8), %xmm4, %xmm1
1000030ae: c5 fb 58 c4                 	vaddsd	%xmm4, %xmm0, %xmm0
1000030b2: c5 fb 2c d0                 	vcvttsd2si	%xmm0, %edx
1000030b6: 39 d7                       	cmpl	%edx, %edi
1000030b8: 0f 4d d7                    	cmovgel	%edi, %edx
1000030bb: c5 fb 2c f9                 	vcvttsd2si	%xmm1, %edi
1000030bf: 39 fa                       	cmpl	%edi, %edx
1000030c1: 0f 4c d7                    	cmovll	%edi, %edx
1000030c4: c5 e3 2a c2                 	vcvtsi2sd	%edx, %xmm3, %xmm0
1000030c8: 4b 8d 54 27 fd              	leaq	-3(%r15,%r12), %rdx
1000030cd: c4 c1 7b 11 04 d6           	vmovsd	%xmm0, (%r14,%rdx,8)
1000030d3: c4 81 6b c2 4c f9 e8 00     	vcmpeqsd	-24(%r9,%r15,8), %xmm2, %xmm1
1000030db: c4 e3 59 4b cb 10           	vblendvpd	%xmm1, %xmm3, %xmm4, %xmm1
1000030e1: c4 c1 73 58 4c c6 f8        	vaddsd	-8(%r14,%rax,8), %xmm1, %xmm1
1000030e8: c5 fb 2c f9                 	vcvttsd2si	%xmm1, %edi
1000030ec: c4 c1 5b 58 0c c6           	vaddsd	(%r14,%rax,8), %xmm4, %xmm1
1000030f2: c5 fb 58 c4                 	vaddsd	%xmm4, %xmm0, %xmm0
1000030f6: c5 fb 2c c0                 	vcvttsd2si	%xmm0, %eax
1000030fa: 39 c7                       	cmpl	%eax, %edi
1000030fc: 0f 4d c7                    	cmovgel	%edi, %eax
1000030ff: c5 fb 2c f9                 	vcvttsd2si	%xmm1, %edi
100003103: 39 f8                       	cmpl	%edi, %eax
100003105: 0f 4c c7                    	cmovll	%edi, %eax
100003108: c5 e3 2a c0                 	vcvtsi2sd	%eax, %xmm3, %xmm0
10000310c: 4f 8d 54 27 fe              	leaq	-2(%r15,%r12), %r10
100003111: c4 81 7b 11 04 d6           	vmovsd	%xmm0, (%r14,%r10,8)
100003117: c4 81 6b c2 4c f9 f0 00     	vcmpeqsd	-16(%r9,%r15,8), %xmm2, %xmm1
10000311f: c4 e3 59 4b cb 10           	vblendvpd	%xmm1, %xmm3, %xmm4, %xmm1
100003125: c4 c1 73 58 4c de f8        	vaddsd	-8(%r14,%rbx,8), %xmm1, %xmm1
10000312c: c5 fb 2c f9                 	vcvttsd2si	%xmm1, %edi
100003130: c4 c1 5b 58 0c de           	vaddsd	(%r14,%rbx,8), %xmm4, %xmm1
100003136: c5 fb 58 c4                 	vaddsd	%xmm4, %xmm0, %xmm0
10000313a: c5 fb 2c d8                 	vcvttsd2si	%xmm0, %ebx
10000313e: 39 df                       	cmpl	%ebx, %edi
100003140: 0f 4d df                    	cmovgel	%edi, %ebx
100003143: c5 fb 2c f9                 	vcvttsd2si	%xmm1, %edi
100003147: 39 fb                       	cmpl	%edi, %ebx
100003149: 0f 4c df                    	cmovll	%edi, %ebx
10000314c: c5 e3 2a c3                 	vcvtsi2sd	%ebx, %xmm3, %xmm0
100003150: 4b 8d 4c 27 ff              	leaq	-1(%r15,%r12), %rcx
100003155: c4 c1 7b 11 04 ce           	vmovsd	%xmm0, (%r14,%rcx,8)
10000315b: c4 81 6b c2 4c f9 f8 00     	vcmpeqsd	-8(%r9,%r15,8), %xmm2, %xmm1
100003163: c4 e3 59 4b cb 10           	vblendvpd	%xmm1, %xmm3, %xmm4, %xmm1
100003169: c4 c1 73 58 4c f6 f8        	vaddsd	-8(%r14,%rsi,8), %xmm1, %xmm1
100003170: c5 fb 2c f9                 	vcvttsd2si	%xmm1, %edi
100003174: c4 c1 5b 58 0c f6           	vaddsd	(%r14,%rsi,8), %xmm4, %xmm1
10000317a: c5 fb 58 c4                 	vaddsd	%xmm4, %xmm0, %xmm0
10000317e: c5 fb 2c f0                 	vcvttsd2si	%xmm0, %esi
100003182: 39 f7                       	cmpl	%esi, %edi
100003184: 0f 4d f7                    	cmovgel	%edi, %esi
100003187: c5 fb 2c f9                 	vcvttsd2si	%xmm1, %edi
10000318b: 39 fe                       	cmpl	%edi, %esi
10000318d: 0f 4c f7                    	cmovll	%edi, %esi
100003190: 4f 8d 1c 27                 	leaq	(%r15,%r12), %r11
100003194: c5 e3 2a c6                 	vcvtsi2sd	%esi, %xmm3, %xmm0
100003198: c5 fb 10 94 24 f0 00 00 00  	vmovsd	240(%rsp), %xmm2
1000031a1: c4 81 6b c2 4c f9 d0 00     	vcmpeqsd	-48(%r9,%r15,8), %xmm2, %xmm1
1000031a9: c4 e3 59 4b cb 10           	vblendvpd	%xmm1, %xmm3, %xmm4, %xmm1
1000031af: c4 81 7b 11 04 de           	vmovsd	%xmm0, (%r14,%r11,8)
1000031b5: 48 8b 84 24 f0 01 00 00     	movq	496(%rsp), %rax
1000031bd: 4a 8d 34 20                 	leaq	(%rax,%r12), %rsi
1000031c1: c4 c1 73 58 44 f6 f8        	vaddsd	-8(%r14,%rsi,8), %xmm1, %xmm0
1000031c8: c4 c1 5b 58 0c f6           	vaddsd	(%r14,%rsi,8), %xmm4, %xmm1
1000031ce: c5 fb 2c f0                 	vcvttsd2si	%xmm0, %esi
1000031d2: 48 8b bc 24 e8 01 00 00     	movq	488(%rsp), %rdi
1000031da: c4 c1 5b 58 04 fe           	vaddsd	(%r14,%rdi,8), %xmm4, %xmm0
1000031e0: c5 fb 2c f8                 	vcvttsd2si	%xmm0, %edi
1000031e4: 48 8b 9c 24 f8 00 00 00     	movq	248(%rsp), %rbx
1000031ec: 48 01 d8                    	addq	%rbx, %rax
1000031ef: 39 fe                       	cmpl	%edi, %esi
1000031f1: 0f 4d fe                    	cmovgel	%esi, %edi
1000031f4: c5 fb 2c f1                 	vcvttsd2si	%xmm1, %esi
1000031f8: 39 f7                       	cmpl	%esi, %edi
1000031fa: 0f 4c fe                    	cmovll	%esi, %edi
1000031fd: c5 e3 2a c7                 	vcvtsi2sd	%edi, %xmm3, %xmm0
100003201: c4 81 6b c2 4c f9 d8 00     	vcmpeqsd	-40(%r9,%r15,8), %xmm2, %xmm1
100003209: c4 e3 59 4b cb 10           	vblendvpd	%xmm1, %xmm3, %xmm4, %xmm1
10000320f: c4 c1 7b 11 04 c6           	vmovsd	%xmm0, (%r14,%rax,8)
100003215: 4b 8d 74 27 fc              	leaq	-4(%r15,%r12), %rsi
10000321a: c4 c1 73 58 4c f6 f8        	vaddsd	-8(%r14,%rsi,8), %xmm1, %xmm1
100003221: c5 fb 2c f9                 	vcvttsd2si	%xmm1, %edi
100003225: c4 c1 5b 58 0c f6           	vaddsd	(%r14,%rsi,8), %xmm4, %xmm1
10000322b: c5 fb 58 c4                 	vaddsd	%xmm4, %xmm0, %xmm0
10000322f: c5 fb 2c f0                 	vcvttsd2si	%xmm0, %esi
100003233: 39 f7                       	cmpl	%esi, %edi
100003235: 0f 4d f7                    	cmovgel	%edi, %esi
100003238: c5 fb 2c f9                 	vcvttsd2si	%xmm1, %edi
10000323c: 39 fe                       	cmpl	%edi, %esi
10000323e: 0f 4c f7                    	cmovll	%edi, %esi
100003241: c5 e3 2a c6                 	vcvtsi2sd	%esi, %xmm3, %xmm0
100003245: 49 8d 74 1f fc              	leaq	-4(%r15,%rbx), %rsi
10000324a: c4 c1 7b 11 04 f6           	vmovsd	%xmm0, (%r14,%rsi,8)
100003250: c4 81 6b c2 4c f9 e0 00     	vcmpeqsd	-32(%r9,%r15,8), %xmm2, %xmm1
100003258: c4 e3 59 4b cb 10           	vblendvpd	%xmm1, %xmm3, %xmm4, %xmm1
10000325e: c4 c1 73 58 4c d6 f8        	vaddsd	-8(%r14,%rdx,8), %xmm1, %xmm1
100003265: c5 fb 2c f9                 	vcvttsd2si	%xmm1, %edi
100003269: c4 c1 5b 58 0c d6           	vaddsd	(%r14,%rdx,8), %xmm4, %xmm1
10000326f: c5 fb 58 c4                 	vaddsd	%xmm4, %xmm0, %xmm0
100003273: c5 fb 2c d0                 	vcvttsd2si	%xmm0, %edx
100003277: 39 d7                       	cmpl	%edx, %edi
100003279: 0f 4d d7                    	cmovgel	%edi, %edx
10000327c: c5 fb 2c f9                 	vcvttsd2si	%xmm1, %edi
100003280: 39 fa                       	cmpl	%edi, %edx
100003282: 0f 4c d7                    	cmovll	%edi, %edx
100003285: c5 e3 2a c2                 	vcvtsi2sd	%edx, %xmm3, %xmm0
100003289: 4d 8d 64 1f fd              	leaq	-3(%r15,%rbx), %r12
10000328e: c4 81 7b 11 04 e6           	vmovsd	%xmm0, (%r14,%r12,8)
100003294: c4 81 6b c2 4c f9 e8 00     	vcmpeqsd	-24(%r9,%r15,8), %xmm2, %xmm1
10000329c: c4 e3 59 4b cb 10           	vblendvpd	%xmm1, %xmm3, %xmm4, %xmm1
1000032a2: c4 81 73 58 4c d6 f8        	vaddsd	-8(%r14,%r10,8), %xmm1, %xmm1
1000032a9: c5 fb 2c d1                 	vcvttsd2si	%xmm1, %edx
1000032ad: c4 81 5b 58 0c d6           	vaddsd	(%r14,%r10,8), %xmm4, %xmm1
1000032b3: c5 fb 58 c4                 	vaddsd	%xmm4, %xmm0, %xmm0
1000032b7: c5 fb 2c c0                 	vcvttsd2si	%xmm0, %eax
1000032bb: 39 c2                       	cmpl	%eax, %edx
1000032bd: 0f 4d c2                    	cmovgel	%edx, %eax
1000032c0: c5 fb 2c d1                 	vcvttsd2si	%xmm1, %edx
1000032c4: 39 d0                       	cmpl	%edx, %eax
1000032c6: 0f 4c c2                    	cmovll	%edx, %eax
1000032c9: c5 e3 2a c0                 	vcvtsi2sd	%eax, %xmm3, %xmm0
1000032cd: 49 8d 54 1f fe              	leaq	-2(%r15,%rbx), %rdx
1000032d2: c4 c1 7b 11 04 d6           	vmovsd	%xmm0, (%r14,%rdx,8)
1000032d8: c4 81 6b c2 4c f9 f0 00     	vcmpeqsd	-16(%r9,%r15,8), %xmm2, %xmm1
1000032e0: c4 e3 59 4b cb 10           	vblendvpd	%xmm1, %xmm3, %xmm4, %xmm1
1000032e6: c4 c1 73 58 4c ce f8        	vaddsd	-8(%r14,%rcx,8), %xmm1, %xmm1
1000032ed: c5 fb 2c c1                 	vcvttsd2si	%xmm1, %eax
1000032f1: c4 c1 5b 58 0c ce           	vaddsd	(%r14,%rcx,8), %xmm4, %xmm1
1000032f7: c5 fb 58 c4                 	vaddsd	%xmm4, %xmm0, %xmm0
1000032fb: c5 fb 2c f8                 	vcvttsd2si	%xmm0, %edi
1000032ff: 39 f8                       	cmpl	%edi, %eax
100003301: 0f 4d f8                    	cmovgel	%eax, %edi
100003304: c5 fb 2c c1                 	vcvttsd2si	%xmm1, %eax
100003308: 39 c7                       	cmpl	%eax, %edi
10000330a: 0f 4c f8                    	cmovll	%eax, %edi
10000330d: c5 e3 2a c7                 	vcvtsi2sd	%edi, %xmm3, %xmm0
100003311: 49 8d 4c 1f ff              	leaq	-1(%r15,%rbx), %rcx
100003316: c4 c1 7b 11 04 ce           	vmovsd	%xmm0, (%r14,%rcx,8)
10000331c: c4 81 6b c2 4c f9 f8 00     	vcmpeqsd	-8(%r9,%r15,8), %xmm2, %xmm1
100003324: c4 e3 59 4b cb 10           	vblendvpd	%xmm1, %xmm3, %xmm4, %xmm1
10000332a: c4 81 73 58 4c de f8        	vaddsd	-8(%r14,%r11,8), %xmm1, %xmm1
100003331: c5 fb 2c c1                 	vcvttsd2si	%xmm1, %eax
100003335: c4 81 5b 58 0c de           	vaddsd	(%r14,%r11,8), %xmm4, %xmm1
10000333b: c5 fb 58 c4                 	vaddsd	%xmm4, %xmm0, %xmm0
10000333f: c5 fb 2c f8                 	vcvttsd2si	%xmm0, %edi
100003343: 39 f8                       	cmpl	%edi, %eax
100003345: 0f 4d f8                    	cmovgel	%eax, %edi
100003348: c5 fb 2c c1                 	vcvttsd2si	%xmm1, %eax
10000334c: 39 c7                       	cmpl	%eax, %edi
10000334e: 0f 4c f8                    	cmovll	%eax, %edi
100003351: 4d 8d 1c 1f                 	leaq	(%r15,%rbx), %r11
100003355: c5 e3 2a c7                 	vcvtsi2sd	%edi, %xmm3, %xmm0
100003359: c5 fb 10 94 24 e8 00 00 00  	vmovsd	232(%rsp), %xmm2
100003362: c4 81 6b c2 4c f9 c8 00     	vcmpeqsd	-56(%r9,%r15,8), %xmm2, %xmm1
10000336a: c4 81 7b 11 04 de           	vmovsd	%xmm0, (%r14,%r11,8)
100003370: c4 e3 59 4b c3 10           	vblendvpd	%xmm1, %xmm3, %xmm4, %xmm0
100003376: 49 8d 44 1f fa              	leaq	-6(%r15,%rbx), %rax
10000337b: c4 c1 7b 58 44 c6 f8        	vaddsd	-8(%r14,%rax,8), %xmm0, %xmm0
100003382: c4 c1 5b 58 0c c6           	vaddsd	(%r14,%rax,8), %xmm4, %xmm1
100003388: c5 fb 2c c0                 	vcvttsd2si	%xmm0, %eax
10000338c: 48 8b bc 24 f8 01 00 00     	movq	504(%rsp), %rdi
100003394: c4 c1 5b 58 04 fe           	vaddsd	(%r14,%rdi,8), %xmm4, %xmm0
10000339a: c5 fb 2c f8                 	vcvttsd2si	%xmm0, %edi
10000339e: 39 f8                       	cmpl	%edi, %eax
1000033a0: 0f 4d f8                    	cmovgel	%eax, %edi
1000033a3: c5 fb 2c c1                 	vcvttsd2si	%xmm1, %eax
1000033a7: 39 c7                       	cmpl	%eax, %edi
1000033a9: 0f 4c f8                    	cmovll	%eax, %edi
1000033ac: 4c 8b ac 24 e0 00 00 00     	movq	224(%rsp), %r13
1000033b4: 4b 8d 44 2f fa              	leaq	-6(%r15,%r13), %rax
1000033b9: c5 e3 2a c7                 	vcvtsi2sd	%edi, %xmm3, %xmm0
1000033bd: c4 81 6b c2 4c f9 d0 00     	vcmpeqsd	-48(%r9,%r15,8), %xmm2, %xmm1
1000033c5: c4 e3 59 4b cb 10           	vblendvpd	%xmm1, %xmm3, %xmm4, %xmm1
1000033cb: c4 c1 7b 11 04 c6           	vmovsd	%xmm0, (%r14,%rax,8)
1000033d1: 49 8d 44 1f fb              	leaq	-5(%r15,%rbx), %rax
1000033d6: c4 c1 73 58 4c c6 f8        	vaddsd	-8(%r14,%rax,8), %xmm1, %xmm1
1000033dd: c5 fb 2c f9                 	vcvttsd2si	%xmm1, %edi
1000033e1: c4 c1 5b 58 0c c6           	vaddsd	(%r14,%rax,8), %xmm4, %xmm1
1000033e7: c5 fb 58 c4                 	vaddsd	%xmm4, %xmm0, %xmm0
1000033eb: c5 fb 2c c0                 	vcvttsd2si	%xmm0, %eax
1000033ef: 39 c7                       	cmpl	%eax, %edi
1000033f1: 0f 4d c7                    	cmovgel	%edi, %eax
1000033f4: c5 fb 2c f9                 	vcvttsd2si	%xmm1, %edi
1000033f8: 39 f8                       	cmpl	%edi, %eax
1000033fa: 0f 4c c7                    	cmovll	%edi, %eax
1000033fd: c5 e3 2a c0                 	vcvtsi2sd	%eax, %xmm3, %xmm0
100003401: 4b 8d 44 2f fb              	leaq	-5(%r15,%r13), %rax
100003406: c4 c1 7b 11 04 c6           	vmovsd	%xmm0, (%r14,%rax,8)
10000340c: c4 81 6b c2 4c f9 d8 00     	vcmpeqsd	-40(%r9,%r15,8), %xmm2, %xmm1
100003414: c4 e3 59 4b cb 10           	vblendvpd	%xmm1, %xmm3, %xmm4, %xmm1
10000341a: c4 c1 73 58 4c f6 f8        	vaddsd	-8(%r14,%rsi,8), %xmm1, %xmm1
100003421: c5 fb 2c c1                 	vcvttsd2si	%xmm1, %eax
100003425: c4 c1 5b 58 0c f6           	vaddsd	(%r14,%rsi,8), %xmm4, %xmm1
10000342b: c5 fb 58 c4                 	vaddsd	%xmm4, %xmm0, %xmm0
10000342f: c5 fb 2c f0                 	vcvttsd2si	%xmm0, %esi
100003433: 39 f0                       	cmpl	%esi, %eax
100003435: 0f 4d f0                    	cmovgel	%eax, %esi
100003438: c5 fb 2c c1                 	vcvttsd2si	%xmm1, %eax
10000343c: 39 c6                       	cmpl	%eax, %esi
10000343e: 0f 4c f0                    	cmovll	%eax, %esi
100003441: c5 e3 2a c6                 	vcvtsi2sd	%esi, %xmm3, %xmm0
100003445: 4b 8d 44 2f fc              	leaq	-4(%r15,%r13), %rax
10000344a: c4 c1 7b 11 04 c6           	vmovsd	%xmm0, (%r14,%rax,8)
100003450: c4 81 6b c2 4c f9 e0 00     	vcmpeqsd	-32(%r9,%r15,8), %xmm2, %xmm1
100003458: c4 e3 59 4b cb 10           	vblendvpd	%xmm1, %xmm3, %xmm4, %xmm1
10000345e: c4 81 73 58 4c e6 f8        	vaddsd	-8(%r14,%r12,8), %xmm1, %xmm1
100003465: c5 fb 2c c1                 	vcvttsd2si	%xmm1, %eax
100003469: c4 81 5b 58 0c e6           	vaddsd	(%r14,%r12,8), %xmm4, %xmm1
10000346f: c5 fb 58 c4                 	vaddsd	%xmm4, %xmm0, %xmm0
100003473: c5 fb 2c f0                 	vcvttsd2si	%xmm0, %esi
100003477: 39 f0                       	cmpl	%esi, %eax
100003479: 0f 4d f0                    	cmovgel	%eax, %esi
10000347c: c5 fb 2c c1                 	vcvttsd2si	%xmm1, %eax
100003480: 39 c6                       	cmpl	%eax, %esi
100003482: 0f 4c f0                    	cmovll	%eax, %esi
100003485: c5 e3 2a c6                 	vcvtsi2sd	%esi, %xmm3, %xmm0
100003489: 4b 8d 44 2f fd              	leaq	-3(%r15,%r13), %rax
10000348e: c4 c1 7b 11 04 c6           	vmovsd	%xmm0, (%r14,%rax,8)
100003494: c4 81 6b c2 4c f9 e8 00     	vcmpeqsd	-24(%r9,%r15,8), %xmm2, %xmm1
10000349c: c4 e3 59 4b cb 10           	vblendvpd	%xmm1, %xmm3, %xmm4, %xmm1
1000034a2: c4 c1 73 58 4c d6 f8        	vaddsd	-8(%r14,%rdx,8), %xmm1, %xmm1
1000034a9: c5 fb 2c c1                 	vcvttsd2si	%xmm1, %eax
1000034ad: c4 c1 5b 58 0c d6           	vaddsd	(%r14,%rdx,8), %xmm4, %xmm1
1000034b3: c5 fb 58 c4                 	vaddsd	%xmm4, %xmm0, %xmm0
1000034b7: c5 fb 2c d0                 	vcvttsd2si	%xmm0, %edx
1000034bb: 39 d0                       	cmpl	%edx, %eax
1000034bd: 0f 4d d0                    	cmovgel	%eax, %edx
1000034c0: c5 fb 2c c1                 	vcvttsd2si	%xmm1, %eax
1000034c4: 39 c2                       	cmpl	%eax, %edx
1000034c6: 0f 4c d0                    	cmovll	%eax, %edx
1000034c9: c5 e3 2a c2                 	vcvtsi2sd	%edx, %xmm3, %xmm0
1000034cd: 4b 8d 44 2f fe              	leaq	-2(%r15,%r13), %rax
1000034d2: c4 c1 7b 11 04 c6           	vmovsd	%xmm0, (%r14,%rax,8)
1000034d8: c4 81 6b c2 4c f9 f0 00     	vcmpeqsd	-16(%r9,%r15,8), %xmm2, %xmm1
1000034e0: c4 e3 59 4b cb 10           	vblendvpd	%xmm1, %xmm3, %xmm4, %xmm1
1000034e6: c4 c1 73 58 4c ce f8        	vaddsd	-8(%r14,%rcx,8), %xmm1, %xmm1
1000034ed: c5 fb 2c c1                 	vcvttsd2si	%xmm1, %eax
1000034f1: c4 c1 5b 58 0c ce           	vaddsd	(%r14,%rcx,8), %xmm4, %xmm1
1000034f7: c5 fb 58 c4                 	vaddsd	%xmm4, %xmm0, %xmm0
1000034fb: c5 fb 2c d0                 	vcvttsd2si	%xmm0, %edx
1000034ff: 39 d0                       	cmpl	%edx, %eax
100003501: 0f 4d d0                    	cmovgel	%eax, %edx
100003504: c5 fb 2c c1                 	vcvttsd2si	%xmm1, %eax
100003508: 39 c2                       	cmpl	%eax, %edx
10000350a: 0f 4c d0                    	cmovll	%eax, %edx
10000350d: c5 e3 2a c2                 	vcvtsi2sd	%edx, %xmm3, %xmm0
100003511: 4b 8d 44 2f ff              	leaq	-1(%r15,%r13), %rax
100003516: c4 c1 7b 11 04 c6           	vmovsd	%xmm0, (%r14,%rax,8)
10000351c: c4 81 6b c2 4c f9 f8 00     	vcmpeqsd	-8(%r9,%r15,8), %xmm2, %xmm1
100003524: c4 e3 59 4b cb 10           	vblendvpd	%xmm1, %xmm3, %xmm4, %xmm1
10000352a: c4 81 73 58 4c de f8        	vaddsd	-8(%r14,%r11,8), %xmm1, %xmm1
100003531: c5 fb 2c c1                 	vcvttsd2si	%xmm1, %eax
100003535: c4 81 5b 58 0c de           	vaddsd	(%r14,%r11,8), %xmm4, %xmm1
10000353b: c5 fb 58 c4                 	vaddsd	%xmm4, %xmm0, %xmm0
10000353f: c5 fb 2c d0                 	vcvttsd2si	%xmm0, %edx
100003543: 39 d0                       	cmpl	%edx, %eax
100003545: 0f 4d d0                    	cmovgel	%eax, %edx
100003548: c5 fb 2c c1                 	vcvttsd2si	%xmm1, %eax
10000354c: 39 c2                       	cmpl	%eax, %edx
10000354e: 0f 4c d0                    	cmovll	%eax, %edx
100003551: c5 e3 2a c2                 	vcvtsi2sd	%edx, %xmm3, %xmm0
100003555: 4b 8d 04 2f                 	leaq	(%r15,%r13), %rax
100003559: c4 c1 7b 11 04 c6           	vmovsd	%xmm0, (%r14,%rax,8)
10000355f: 48 8b 4c 24 50              	movq	80(%rsp), %rcx
100003564: 48 83 c1 08                 	addq	$8, %rcx
100003568: 49 83 c7 08                 	addq	$8, %r15
10000356c: 48 8b 54 24 28              	movq	40(%rsp), %rdx
100003571: 48 ff c2                    	incq	%rdx
100003574: 83 44 24 18 08              	addl	$8, 24(%rsp)
100003579: 48 b8 00 00 00 00 08 00 00 00       	movabsq	$34359738368, %rax
100003583: 48 01 44 24 48              	addq	%rax, 72(%rsp)
100003588: 48 83 44 24 40 40           	addq	$64, 64(%rsp)
10000358e: 48 3b 8c 24 a0 01 00 00     	cmpq	416(%rsp), %rcx
100003596: 4d 89 f0                    	movq	%r14, %r8
100003599: 0f 8d 83 0b 00 00           	jge	2947 <_SIMDkernel8+0x1772>
10000359f: 4c 89 7c 24 58              	movq	%r15, 88(%rsp)
1000035a4: 4c 8b 4c 24 20              	movq	32(%rsp), %r9
1000035a9: 4c 8b a4 24 90 01 00 00     	movq	400(%rsp), %r12
1000035b1: 49 8d 04 d4                 	leaq	(%r12,%rdx,8), %rax
1000035b5: c5 fb 10 84 24 88 01 00 00  	vmovsd	392(%rsp), %xmm0
1000035be: c4 c1 7b c2 54 c9 f8 00     	vcmpeqsd	-8(%r9,%rcx,8), %xmm0, %xmm2
1000035c6: c4 e3 59 4b d3 20           	vblendvpd	%xmm2, %xmm3, %xmm4, %xmm2
1000035cc: c4 c1 6b 58 54 c8 f8        	vaddsd	-8(%r8,%rcx,8), %xmm2, %xmm2
1000035d3: 49 89 d7                    	movq	%rdx, %r15
1000035d6: 48 89 54 24 28              	movq	%rdx, 40(%rsp)
1000035db: c5 fb 2c d2                 	vcvttsd2si	%xmm2, %edx
1000035df: c4 c1 5b 58 14 c8           	vaddsd	(%r8,%rcx,8), %xmm4, %xmm2
1000035e5: c5 fb 2c f2                 	vcvttsd2si	%xmm2, %esi
1000035e9: c4 c1 5b 58 14 c0           	vaddsd	(%r8,%rax,8), %xmm4, %xmm2
1000035ef: c5 fb 2c fa                 	vcvttsd2si	%xmm2, %edi
1000035f3: 39 fa                       	cmpl	%edi, %edx
1000035f5: 0f 4d fa                    	cmovgel	%edx, %edi
1000035f8: 39 f7                       	cmpl	%esi, %edi
1000035fa: 0f 4c fe                    	cmovll	%esi, %edi
1000035fd: 4a 8d 04 21                 	leaq	(%rcx,%r12), %rax
100003601: c5 d3 2a d7                 	vcvtsi2sd	%edi, %xmm5, %xmm2
100003605: c4 c1 7b 11 14 c0           	vmovsd	%xmm2, (%r8,%rax,8)
10000360b: c4 c1 7b c2 34 c9 00        	vcmpeqsd	(%r9,%rcx,8), %xmm0, %xmm6
100003612: c4 e3 59 4b f3 60           	vblendvpd	%xmm6, %xmm3, %xmm4, %xmm6
100003618: c4 c1 4b 58 34 c8           	vaddsd	(%r8,%rcx,8), %xmm6, %xmm6
10000361e: c5 fb 2c d6                 	vcvttsd2si	%xmm6, %edx
100003622: c4 c1 5b 58 74 c8 08        	vaddsd	8(%r8,%rcx,8), %xmm4, %xmm6
100003629: c5 fb 2c f6                 	vcvttsd2si	%xmm6, %esi
10000362d: c5 eb 58 d4                 	vaddsd	%xmm4, %xmm2, %xmm2
100003631: c5 fb 2c fa                 	vcvttsd2si	%xmm2, %edi
100003635: 39 fa                       	cmpl	%edi, %edx
100003637: 0f 4d fa                    	cmovgel	%edx, %edi
10000363a: 39 f7                       	cmpl	%esi, %edi
10000363c: 0f 4c fe                    	cmovll	%esi, %edi
10000363f: 4a 8d 54 21 01              	leaq	1(%rcx,%r12), %rdx
100003644: 48 89 54 24 30              	movq	%rdx, 48(%rsp)
100003649: c5 d3 2a d7                 	vcvtsi2sd	%edi, %xmm5, %xmm2
10000364d: c4 c1 7b 11 14 d0           	vmovsd	%xmm2, (%r8,%rdx,8)
100003653: c4 c1 7b c2 74 c9 08 00     	vcmpeqsd	8(%r9,%rcx,8), %xmm0, %xmm6
10000365b: c4 e3 59 4b f3 60           	vblendvpd	%xmm6, %xmm3, %xmm4, %xmm6
100003661: c4 c1 4b 58 74 c8 08        	vaddsd	8(%r8,%rcx,8), %xmm6, %xmm6
100003668: c5 fb 2c d6                 	vcvttsd2si	%xmm6, %edx
10000366c: c4 c1 5b 58 74 c8 10        	vaddsd	16(%r8,%rcx,8), %xmm4, %xmm6
100003673: c5 fb 2c f6                 	vcvttsd2si	%xmm6, %esi
100003677: c5 eb 58 d4                 	vaddsd	%xmm4, %xmm2, %xmm2
10000367b: c5 fb 2c fa                 	vcvttsd2si	%xmm2, %edi
10000367f: 39 fa                       	cmpl	%edi, %edx
100003681: 0f 4d fa                    	cmovgel	%edx, %edi
100003684: 39 f7                       	cmpl	%esi, %edi
100003686: 0f 4c fe                    	cmovll	%esi, %edi
100003689: 4a 8d 5c 21 02              	leaq	2(%rcx,%r12), %rbx
10000368e: c5 d3 2a d7                 	vcvtsi2sd	%edi, %xmm5, %xmm2
100003692: c4 c1 7b 11 14 d8           	vmovsd	%xmm2, (%r8,%rbx,8)
100003698: c4 c1 7b c2 74 c9 10 00     	vcmpeqsd	16(%r9,%rcx,8), %xmm0, %xmm6
1000036a0: c4 e3 59 4b f3 60           	vblendvpd	%xmm6, %xmm3, %xmm4, %xmm6
1000036a6: c4 c1 4b 58 74 c8 10        	vaddsd	16(%r8,%rcx,8), %xmm6, %xmm6
1000036ad: c5 fb 2c d6                 	vcvttsd2si	%xmm6, %edx
1000036b1: c4 c1 5b 58 74 c8 18        	vaddsd	24(%r8,%rcx,8), %xmm4, %xmm6
1000036b8: c5 fb 2c f6                 	vcvttsd2si	%xmm6, %esi
1000036bc: c5 eb 58 d4                 	vaddsd	%xmm4, %xmm2, %xmm2
1000036c0: c5 fb 2c fa                 	vcvttsd2si	%xmm2, %edi
1000036c4: 39 fa                       	cmpl	%edi, %edx
1000036c6: 0f 4d fa                    	cmovgel	%edx, %edi
1000036c9: 39 f7                       	cmpl	%esi, %edi
1000036cb: 0f 4c fe                    	cmovll	%esi, %edi
1000036ce: 4a 8d 74 21 03              	leaq	3(%rcx,%r12), %rsi
1000036d3: c5 d3 2a d7                 	vcvtsi2sd	%edi, %xmm5, %xmm2
1000036d7: c4 c1 7b 11 14 f0           	vmovsd	%xmm2, (%r8,%rsi,8)
1000036dd: c4 c1 7b c2 74 c9 18 00     	vcmpeqsd	24(%r9,%rcx,8), %xmm0, %xmm6
1000036e5: c4 e3 59 4b f3 60           	vblendvpd	%xmm6, %xmm3, %xmm4, %xmm6
1000036eb: c4 c1 4b 58 74 c8 18        	vaddsd	24(%r8,%rcx,8), %xmm6, %xmm6
1000036f2: c5 fb 2c d6                 	vcvttsd2si	%xmm6, %edx
1000036f6: c4 c1 5b 58 74 c8 20        	vaddsd	32(%r8,%rcx,8), %xmm4, %xmm6
1000036fd: c5 7b 2c de                 	vcvttsd2si	%xmm6, %r11d
100003701: c5 eb 58 d4                 	vaddsd	%xmm4, %xmm2, %xmm2
100003705: c5 fb 2c fa                 	vcvttsd2si	%xmm2, %edi
100003709: 39 fa                       	cmpl	%edi, %edx
10000370b: 0f 4d fa                    	cmovgel	%edx, %edi
10000370e: 44 39 df                    	cmpl	%r11d, %edi
100003711: 41 0f 4c fb                 	cmovll	%r11d, %edi
100003715: 4a 8d 54 21 04              	leaq	4(%rcx,%r12), %rdx
10000371a: 48 89 94 24 20 02 00 00     	movq	%rdx, 544(%rsp)
100003722: c5 d3 2a d7                 	vcvtsi2sd	%edi, %xmm5, %xmm2
100003726: c4 c1 7b 11 14 d0           	vmovsd	%xmm2, (%r8,%rdx,8)
10000372c: c4 c1 7b c2 74 c9 20 00     	vcmpeqsd	32(%r9,%rcx,8), %xmm0, %xmm6
100003734: c4 e3 59 4b f3 60           	vblendvpd	%xmm6, %xmm3, %xmm4, %xmm6
10000373a: c4 c1 4b 58 74 c8 20        	vaddsd	32(%r8,%rcx,8), %xmm6, %xmm6
100003741: c5 fb 2c d6                 	vcvttsd2si	%xmm6, %edx
100003745: c4 c1 5b 58 74 c8 28        	vaddsd	40(%r8,%rcx,8), %xmm4, %xmm6
10000374c: c5 fb 2c fe                 	vcvttsd2si	%xmm6, %edi
100003750: c5 eb 58 d4                 	vaddsd	%xmm4, %xmm2, %xmm2
100003754: c5 7b 2c ea                 	vcvttsd2si	%xmm2, %r13d
100003758: 44 39 ea                    	cmpl	%r13d, %edx
10000375b: 44 0f 4d ea                 	cmovgel	%edx, %r13d
10000375f: 41 39 fd                    	cmpl	%edi, %r13d
100003762: 44 0f 4c ef                 	cmovll	%edi, %r13d
100003766: 4e 8d 5c 21 05              	leaq	5(%rcx,%r12), %r11
10000376b: c4 c1 63 2a d5              	vcvtsi2sd	%r13d, %xmm3, %xmm2
100003770: c4 81 7b 11 14 d8           	vmovsd	%xmm2, (%r8,%r11,8)
100003776: c4 c1 7b c2 74 c9 28 00     	vcmpeqsd	40(%r9,%rcx,8), %xmm0, %xmm6
10000377e: c4 e3 59 4b f3 60           	vblendvpd	%xmm6, %xmm3, %xmm4, %xmm6
100003784: c4 c1 4b 58 74 c8 28        	vaddsd	40(%r8,%rcx,8), %xmm6, %xmm6
10000378b: c5 fb 2c d6                 	vcvttsd2si	%xmm6, %edx
10000378f: c4 c1 5b 58 74 c8 30        	vaddsd	48(%r8,%rcx,8), %xmm4, %xmm6
100003796: c5 7b 2c ee                 	vcvttsd2si	%xmm6, %r13d
10000379a: c5 eb 58 d4                 	vaddsd	%xmm4, %xmm2, %xmm2
10000379e: c5 fb 2c fa                 	vcvttsd2si	%xmm2, %edi
1000037a2: 39 fa                       	cmpl	%edi, %edx
1000037a4: 0f 4d fa                    	cmovgel	%edx, %edi
1000037a7: 4a 8d 54 21 06              	leaq	6(%rcx,%r12), %rdx
1000037ac: 44 39 ef                    	cmpl	%r13d, %edi
1000037af: 41 0f 4c fd                 	cmovll	%r13d, %edi
1000037b3: c5 f3 2a d7                 	vcvtsi2sd	%edi, %xmm1, %xmm2
1000037b7: c4 c1 7b 11 14 d0           	vmovsd	%xmm2, (%r8,%rdx,8)
1000037bd: 4c 8b 94 24 b0 00 00 00     	movq	176(%rsp), %r10
1000037c5: 4f 8d 2c fa                 	leaq	(%r10,%r15,8), %r13
1000037c9: c5 fb 10 84 24 80 01 00 00  	vmovsd	384(%rsp), %xmm0
1000037d2: c4 c1 7b c2 54 c9 f8 00     	vcmpeqsd	-8(%r9,%rcx,8), %xmm0, %xmm2
1000037da: c4 e3 59 4b d3 20           	vblendvpd	%xmm2, %xmm3, %xmm4, %xmm2
1000037e0: c4 c1 6b 58 54 c0 f8        	vaddsd	-8(%r8,%rax,8), %xmm2, %xmm2
1000037e7: c5 fb 2c fa                 	vcvttsd2si	%xmm2, %edi
1000037eb: c4 c1 5b 58 14 c0           	vaddsd	(%r8,%rax,8), %xmm4, %xmm2
1000037f1: c5 fb 2c d2                 	vcvttsd2si	%xmm2, %edx
1000037f5: c4 81 5b 58 14 e8           	vaddsd	(%r8,%r13,8), %xmm4, %xmm2
1000037fb: c5 7b 2c ea                 	vcvttsd2si	%xmm2, %r13d
1000037ff: 44 39 ef                    	cmpl	%r13d, %edi
100003802: 44 0f 4d ef                 	cmovgel	%edi, %r13d
100003806: 41 39 d5                    	cmpl	%edx, %r13d
100003809: 44 0f 4c ea                 	cmovll	%edx, %r13d
10000380d: 4a 8d 14 11                 	leaq	(%rcx,%r10), %rdx
100003811: c4 c1 73 2a d5              	vcvtsi2sd	%r13d, %xmm1, %xmm2
100003816: c4 c1 7b 11 14 d0           	vmovsd	%xmm2, (%r8,%rdx,8)
10000381c: c4 c1 7b c2 34 c9 00        	vcmpeqsd	(%r9,%rcx,8), %xmm0, %xmm6
100003823: c4 e3 59 4b f3 60           	vblendvpd	%xmm6, %xmm3, %xmm4, %xmm6
100003829: c4 c1 4b 58 34 c0           	vaddsd	(%r8,%rax,8), %xmm6, %xmm6
10000382f: c5 fb 2c c6                 	vcvttsd2si	%xmm6, %eax
100003833: 48 8b 7c 24 30              	movq	48(%rsp), %rdi
100003838: c4 c1 5b 58 34 f8           	vaddsd	(%r8,%rdi,8), %xmm4, %xmm6
10000383e: c5 7b 2c ee                 	vcvttsd2si	%xmm6, %r13d
100003842: c5 eb 58 d4                 	vaddsd	%xmm4, %xmm2, %xmm2
100003846: c5 fb 2c fa                 	vcvttsd2si	%xmm2, %edi
10000384a: 39 f8                       	cmpl	%edi, %eax
10000384c: 0f 4d f8                    	cmovgel	%eax, %edi
10000384f: 44 39 ef                    	cmpl	%r13d, %edi
100003852: 41 0f 4c fd                 	cmovll	%r13d, %edi
100003856: 4e 8d 6c 11 01              	leaq	1(%rcx,%r10), %r13
10000385b: c5 f3 2a d7                 	vcvtsi2sd	%edi, %xmm1, %xmm2
10000385f: c4 81 7b 11 14 e8           	vmovsd	%xmm2, (%r8,%r13,8)
100003865: c4 c1 7b c2 74 c9 08 00     	vcmpeqsd	8(%r9,%rcx,8), %xmm0, %xmm6
10000386d: c4 e3 59 4b f3 60           	vblendvpd	%xmm6, %xmm3, %xmm4, %xmm6
100003873: c4 c1 4b 58 74 d8 f8        	vaddsd	-8(%r8,%rbx,8), %xmm6, %xmm6
10000387a: c5 fb 2c fe                 	vcvttsd2si	%xmm6, %edi
10000387e: c4 c1 5b 58 34 d8           	vaddsd	(%r8,%rbx,8), %xmm4, %xmm6
100003884: c5 fb 2c de                 	vcvttsd2si	%xmm6, %ebx
100003888: c5 eb 58 d4                 	vaddsd	%xmm4, %xmm2, %xmm2
10000388c: c5 fb 2c c2                 	vcvttsd2si	%xmm2, %eax
100003890: 39 c7                       	cmpl	%eax, %edi
100003892: 0f 4d c7                    	cmovgel	%edi, %eax
100003895: 39 d8                       	cmpl	%ebx, %eax
100003897: 0f 4c c3                    	cmovll	%ebx, %eax
10000389a: 4a 8d 5c 11 02              	leaq	2(%rcx,%r10), %rbx
10000389f: c5 f3 2a d0                 	vcvtsi2sd	%eax, %xmm1, %xmm2
1000038a3: c4 c1 7b 11 14 d8           	vmovsd	%xmm2, (%r8,%rbx,8)
1000038a9: c4 c1 7b c2 74 c9 10 00     	vcmpeqsd	16(%r9,%rcx,8), %xmm0, %xmm6
1000038b1: c4 e3 59 4b f3 60           	vblendvpd	%xmm6, %xmm3, %xmm4, %xmm6
1000038b7: c4 c1 4b 58 74 f0 f8        	vaddsd	-8(%r8,%rsi,8), %xmm6, %xmm6
1000038be: c5 fb 2c c6                 	vcvttsd2si	%xmm6, %eax
1000038c2: c4 c1 5b 58 34 f0           	vaddsd	(%r8,%rsi,8), %xmm4, %xmm6
1000038c8: c5 fb 2c f6                 	vcvttsd2si	%xmm6, %esi
1000038cc: c5 eb 58 d4                 	vaddsd	%xmm4, %xmm2, %xmm2
1000038d0: c5 fb 2c fa                 	vcvttsd2si	%xmm2, %edi
1000038d4: 39 f8                       	cmpl	%edi, %eax
1000038d6: 0f 4d f8                    	cmovgel	%eax, %edi
1000038d9: 39 f7                       	cmpl	%esi, %edi
1000038db: 0f 4c fe                    	cmovll	%esi, %edi
1000038de: 4e 8d 74 11 03              	leaq	3(%rcx,%r10), %r14
1000038e3: c5 f3 2a d7                 	vcvtsi2sd	%edi, %xmm1, %xmm2
1000038e7: c4 81 7b 11 14 f0           	vmovsd	%xmm2, (%r8,%r14,8)
1000038ed: c4 c1 7b c2 74 c9 18 00     	vcmpeqsd	24(%r9,%rcx,8), %xmm0, %xmm6
1000038f5: c4 e3 59 4b f3 60           	vblendvpd	%xmm6, %xmm3, %xmm4, %xmm6
1000038fb: 48 8b b4 24 20 02 00 00     	movq	544(%rsp), %rsi
100003903: c4 c1 4b 58 74 f0 f8        	vaddsd	-8(%r8,%rsi,8), %xmm6, %xmm6
10000390a: c5 fb 2c c6                 	vcvttsd2si	%xmm6, %eax
10000390e: c4 c1 5b 58 34 f0           	vaddsd	(%r8,%rsi,8), %xmm4, %xmm6
100003914: c5 fb 2c fe                 	vcvttsd2si	%xmm6, %edi
100003918: c5 eb 58 d4                 	vaddsd	%xmm4, %xmm2, %xmm2
10000391c: c5 7b 2c fa                 	vcvttsd2si	%xmm2, %r15d
100003920: 44 39 f8                    	cmpl	%r15d, %eax
100003923: 44 0f 4d f8                 	cmovgel	%eax, %r15d
100003927: 41 39 ff                    	cmpl	%edi, %r15d
10000392a: 44 0f 4c ff                 	cmovll	%edi, %r15d
10000392e: 4a 8d 7c 11 04              	leaq	4(%rcx,%r10), %rdi
100003933: c4 c1 73 2a d7              	vcvtsi2sd	%r15d, %xmm1, %xmm2
100003938: c4 c1 7b 11 14 f8           	vmovsd	%xmm2, (%r8,%rdi,8)
10000393e: c4 c1 7b c2 74 c9 20 00     	vcmpeqsd	32(%r9,%rcx,8), %xmm0, %xmm6
100003946: c4 e3 59 4b f3 60           	vblendvpd	%xmm6, %xmm3, %xmm4, %xmm6
10000394c: c4 81 4b 58 74 d8 f8        	vaddsd	-8(%r8,%r11,8), %xmm6, %xmm6
100003953: c5 7b 2c fe                 	vcvttsd2si	%xmm6, %r15d
100003957: c4 81 5b 58 34 d8           	vaddsd	(%r8,%r11,8), %xmm4, %xmm6
10000395d: c5 7b 2c de                 	vcvttsd2si	%xmm6, %r11d
100003961: c5 eb 58 d4                 	vaddsd	%xmm4, %xmm2, %xmm2
100003965: c5 fb 2c c2                 	vcvttsd2si	%xmm2, %eax
100003969: 41 39 c7                    	cmpl	%eax, %r15d
10000396c: 41 0f 4d c7                 	cmovgel	%r15d, %eax
100003970: 4c 8b a4 24 c8 00 00 00     	movq	200(%rsp), %r12
100003978: 48 8b 74 24 28              	movq	40(%rsp), %rsi
10000397d: 4d 8d 3c f4                 	leaq	(%r12,%rsi,8), %r15
100003981: 44 39 d8                    	cmpl	%r11d, %eax
100003984: 41 0f 4c c3                 	cmovll	%r11d, %eax
100003988: 4e 8d 5c 11 05              	leaq	5(%rcx,%r10), %r11
10000398d: c5 f3 2a d0                 	vcvtsi2sd	%eax, %xmm1, %xmm2
100003991: c4 81 7b 11 14 d8           	vmovsd	%xmm2, (%r8,%r11,8)
100003997: c5 fb 10 84 24 78 01 00 00  	vmovsd	376(%rsp), %xmm0
1000039a0: c4 c1 7b c2 54 c9 f8 00     	vcmpeqsd	-8(%r9,%rcx,8), %xmm0, %xmm2
1000039a8: c4 e3 59 4b d3 20           	vblendvpd	%xmm2, %xmm3, %xmm4, %xmm2
1000039ae: c4 c1 6b 58 54 d0 f8        	vaddsd	-8(%r8,%rdx,8), %xmm2, %xmm2
1000039b5: c5 fb 2c c2                 	vcvttsd2si	%xmm2, %eax
1000039b9: c4 c1 5b 58 14 d0           	vaddsd	(%r8,%rdx,8), %xmm4, %xmm2
1000039bf: c5 7b 2c da                 	vcvttsd2si	%xmm2, %r11d
1000039c3: c4 81 5b 58 14 f8           	vaddsd	(%r8,%r15,8), %xmm4, %xmm2
1000039c9: c5 7b 2c fa                 	vcvttsd2si	%xmm2, %r15d
1000039cd: 44 39 f8                    	cmpl	%r15d, %eax
1000039d0: 44 0f 4d f8                 	cmovgel	%eax, %r15d
1000039d4: 45 39 df                    	cmpl	%r11d, %r15d
1000039d7: 45 0f 4c fb                 	cmovll	%r11d, %r15d
1000039db: 4e 8d 1c 21                 	leaq	(%rcx,%r12), %r11
1000039df: c4 c1 73 2a d7              	vcvtsi2sd	%r15d, %xmm1, %xmm2
1000039e4: c4 81 7b 11 14 d8           	vmovsd	%xmm2, (%r8,%r11,8)
1000039ea: c4 c1 7b c2 34 c9 00        	vcmpeqsd	(%r9,%rcx,8), %xmm0, %xmm6
1000039f1: c4 e3 59 4b f3 60           	vblendvpd	%xmm6, %xmm3, %xmm4, %xmm6
1000039f7: c4 c1 4b 58 34 d0           	vaddsd	(%r8,%rdx,8), %xmm6, %xmm6
1000039fd: c5 fb 2c c6                 	vcvttsd2si	%xmm6, %eax
100003a01: c4 81 5b 58 34 e8           	vaddsd	(%r8,%r13,8), %xmm4, %xmm6
100003a07: c5 7b 2c fe                 	vcvttsd2si	%xmm6, %r15d
100003a0b: c5 eb 58 d4                 	vaddsd	%xmm4, %xmm2, %xmm2
100003a0f: c5 fb 2c d2                 	vcvttsd2si	%xmm2, %edx
100003a13: 39 d0                       	cmpl	%edx, %eax
100003a15: 0f 4d d0                    	cmovgel	%eax, %edx
100003a18: 44 39 fa                    	cmpl	%r15d, %edx
100003a1b: 41 0f 4c d7                 	cmovll	%r15d, %edx
100003a1f: 4a 8d 44 21 01              	leaq	1(%rcx,%r12), %rax
100003a24: 48 89 44 24 30              	movq	%rax, 48(%rsp)
100003a29: c5 f3 2a d2                 	vcvtsi2sd	%edx, %xmm1, %xmm2
100003a2d: c4 c1 7b 11 14 c0           	vmovsd	%xmm2, (%r8,%rax,8)
100003a33: c4 c1 7b c2 74 c9 08 00     	vcmpeqsd	8(%r9,%rcx,8), %xmm0, %xmm6
100003a3b: c4 e3 59 4b f3 60           	vblendvpd	%xmm6, %xmm3, %xmm4, %xmm6
100003a41: c4 c1 4b 58 74 d8 f8        	vaddsd	-8(%r8,%rbx,8), %xmm6, %xmm6
100003a48: c5 fb 2c d6                 	vcvttsd2si	%xmm6, %edx
100003a4c: c4 c1 5b 58 34 d8           	vaddsd	(%r8,%rbx,8), %xmm4, %xmm6
100003a52: c5 fb 2c de                 	vcvttsd2si	%xmm6, %ebx
100003a56: c5 eb 58 d4                 	vaddsd	%xmm4, %xmm2, %xmm2
100003a5a: c5 fb 2c c2                 	vcvttsd2si	%xmm2, %eax
100003a5e: 39 c2                       	cmpl	%eax, %edx
100003a60: 0f 4d c2                    	cmovgel	%edx, %eax
100003a63: 39 d8                       	cmpl	%ebx, %eax
100003a65: 0f 4c c3                    	cmovll	%ebx, %eax
100003a68: 4e 8d 6c 21 02              	leaq	2(%rcx,%r12), %r13
100003a6d: c5 f3 2a d0                 	vcvtsi2sd	%eax, %xmm1, %xmm2
100003a71: c4 81 7b 11 14 e8           	vmovsd	%xmm2, (%r8,%r13,8)
100003a77: c4 c1 7b c2 74 c9 10 00     	vcmpeqsd	16(%r9,%rcx,8), %xmm0, %xmm6
100003a7f: c4 e3 59 4b f3 60           	vblendvpd	%xmm6, %xmm3, %xmm4, %xmm6
100003a85: c4 81 4b 58 74 f0 f8        	vaddsd	-8(%r8,%r14,8), %xmm6, %xmm6
100003a8c: c5 fb 2c c6                 	vcvttsd2si	%xmm6, %eax
100003a90: c4 81 5b 58 34 f0           	vaddsd	(%r8,%r14,8), %xmm4, %xmm6
100003a96: c5 fb 2c f6                 	vcvttsd2si	%xmm6, %esi
100003a9a: c5 eb 58 d4                 	vaddsd	%xmm4, %xmm2, %xmm2
100003a9e: c5 fb 2c da                 	vcvttsd2si	%xmm2, %ebx
100003aa2: 39 d8                       	cmpl	%ebx, %eax
100003aa4: 0f 4d d8                    	cmovgel	%eax, %ebx
100003aa7: 39 f3                       	cmpl	%esi, %ebx
100003aa9: 0f 4c de                    	cmovll	%esi, %ebx
100003aac: 4a 8d 74 21 03              	leaq	3(%rcx,%r12), %rsi
100003ab1: c5 f3 2a d3                 	vcvtsi2sd	%ebx, %xmm1, %xmm2
100003ab5: c4 c1 7b 11 14 f0           	vmovsd	%xmm2, (%r8,%rsi,8)
100003abb: c4 c1 7b c2 74 c9 18 00     	vcmpeqsd	24(%r9,%rcx,8), %xmm0, %xmm6
100003ac3: c4 e3 59 4b f3 60           	vblendvpd	%xmm6, %xmm3, %xmm4, %xmm6
100003ac9: c4 c1 4b 58 74 f8 f8        	vaddsd	-8(%r8,%rdi,8), %xmm6, %xmm6
100003ad0: c5 fb 2c c6                 	vcvttsd2si	%xmm6, %eax
100003ad4: c4 c1 5b 58 34 f8           	vaddsd	(%r8,%rdi,8), %xmm4, %xmm6
100003ada: c5 fb 2c fe                 	vcvttsd2si	%xmm6, %edi
100003ade: c5 eb 58 d4                 	vaddsd	%xmm4, %xmm2, %xmm2
100003ae2: c5 fb 2c da                 	vcvttsd2si	%xmm2, %ebx
100003ae6: 39 d8                       	cmpl	%ebx, %eax
100003ae8: 0f 4d d8                    	cmovgel	%eax, %ebx
100003aeb: 4c 8b 7c 24 28              	movq	40(%rsp), %r15
100003af0: 4c 8b 94 24 a8 00 00 00     	movq	168(%rsp), %r10
100003af8: 4b 8d 04 fa                 	leaq	(%r10,%r15,8), %rax
100003afc: 39 fb                       	cmpl	%edi, %ebx
100003afe: 0f 4c df                    	cmovll	%edi, %ebx
100003b01: 4a 8d 7c 21 04              	leaq	4(%rcx,%r12), %rdi
100003b06: c5 f3 2a d3                 	vcvtsi2sd	%ebx, %xmm1, %xmm2
100003b0a: c4 c1 7b 11 14 f8           	vmovsd	%xmm2, (%r8,%rdi,8)
100003b10: c5 fb 10 84 24 70 01 00 00  	vmovsd	368(%rsp), %xmm0
100003b19: c4 c1 7b c2 54 c9 f8 00     	vcmpeqsd	-8(%r9,%rcx,8), %xmm0, %xmm2
100003b21: c4 e3 59 4b d3 20           	vblendvpd	%xmm2, %xmm3, %xmm4, %xmm2
100003b27: c4 81 6b 58 54 d8 f8        	vaddsd	-8(%r8,%r11,8), %xmm2, %xmm2
100003b2e: c5 fb 2c fa                 	vcvttsd2si	%xmm2, %edi
100003b32: c4 81 5b 58 14 d8           	vaddsd	(%r8,%r11,8), %xmm4, %xmm2
100003b38: c5 fb 2c da                 	vcvttsd2si	%xmm2, %ebx
100003b3c: c4 c1 5b 58 14 c0           	vaddsd	(%r8,%rax,8), %xmm4, %xmm2
100003b42: c5 fb 2c c2                 	vcvttsd2si	%xmm2, %eax
100003b46: 39 c7                       	cmpl	%eax, %edi
100003b48: 0f 4d c7                    	cmovgel	%edi, %eax
100003b4b: 39 d8                       	cmpl	%ebx, %eax
100003b4d: 0f 4c c3                    	cmovll	%ebx, %eax
100003b50: 4a 8d 1c 11                 	leaq	(%rcx,%r10), %rbx
100003b54: c5 f3 2a d0                 	vcvtsi2sd	%eax, %xmm1, %xmm2
100003b58: c4 c1 7b 11 14 d8           	vmovsd	%xmm2, (%r8,%rbx,8)
100003b5e: c4 c1 7b c2 34 c9 00        	vcmpeqsd	(%r9,%rcx,8), %xmm0, %xmm6
100003b65: c4 e3 59 4b f3 60           	vblendvpd	%xmm6, %xmm3, %xmm4, %xmm6
100003b6b: c4 81 4b 58 34 d8           	vaddsd	(%r8,%r11,8), %xmm6, %xmm6
100003b71: c5 fb 2c c6                 	vcvttsd2si	%xmm6, %eax
100003b75: 48 8b 54 24 30              	movq	48(%rsp), %rdx
100003b7a: c4 c1 5b 58 34 d0           	vaddsd	(%r8,%rdx,8), %xmm4, %xmm6
100003b80: c5 fb 2c fe                 	vcvttsd2si	%xmm6, %edi
100003b84: c5 eb 58 d4                 	vaddsd	%xmm4, %xmm2, %xmm2
100003b88: c5 fb 2c d2                 	vcvttsd2si	%xmm2, %edx
100003b8c: 39 d0                       	cmpl	%edx, %eax
100003b8e: 0f 4d d0                    	cmovgel	%eax, %edx
100003b91: 39 fa                       	cmpl	%edi, %edx
100003b93: 0f 4c d7                    	cmovll	%edi, %edx
100003b96: 4e 8d 5c 11 01              	leaq	1(%rcx,%r10), %r11
100003b9b: c5 f3 2a d2                 	vcvtsi2sd	%edx, %xmm1, %xmm2
100003b9f: c4 81 7b 11 14 d8           	vmovsd	%xmm2, (%r8,%r11,8)
100003ba5: c4 c1 7b c2 74 c9 08 00     	vcmpeqsd	8(%r9,%rcx,8), %xmm0, %xmm6
100003bad: c4 e3 59 4b f3 60           	vblendvpd	%xmm6, %xmm3, %xmm4, %xmm6
100003bb3: c4 81 4b 58 74 e8 f8        	vaddsd	-8(%r8,%r13,8), %xmm6, %xmm6
100003bba: c5 fb 2c d6                 	vcvttsd2si	%xmm6, %edx
100003bbe: c4 81 5b 58 34 e8           	vaddsd	(%r8,%r13,8), %xmm4, %xmm6
100003bc4: c5 fb 2c fe                 	vcvttsd2si	%xmm6, %edi
100003bc8: c5 eb 58 d4                 	vaddsd	%xmm4, %xmm2, %xmm2
100003bcc: c5 fb 2c c2                 	vcvttsd2si	%xmm2, %eax
100003bd0: 39 c2                       	cmpl	%eax, %edx
100003bd2: 0f 4d c2                    	cmovgel	%edx, %eax
100003bd5: 39 f8                       	cmpl	%edi, %eax
100003bd7: 0f 4c c7                    	cmovll	%edi, %eax
100003bda: 4a 8d 54 11 02              	leaq	2(%rcx,%r10), %rdx
100003bdf: c5 f3 2a d0                 	vcvtsi2sd	%eax, %xmm1, %xmm2
100003be3: c4 c1 7b 11 14 d0           	vmovsd	%xmm2, (%r8,%rdx,8)
100003be9: c4 c1 7b c2 74 c9 10 00     	vcmpeqsd	16(%r9,%rcx,8), %xmm0, %xmm6
100003bf1: c4 e3 59 4b f3 60           	vblendvpd	%xmm6, %xmm3, %xmm4, %xmm6
100003bf7: c4 c1 4b 58 74 f0 f8        	vaddsd	-8(%r8,%rsi,8), %xmm6, %xmm6
100003bfe: c5 fb 2c c6                 	vcvttsd2si	%xmm6, %eax
100003c02: c4 c1 5b 58 34 f0           	vaddsd	(%r8,%rsi,8), %xmm4, %xmm6
100003c08: c5 fb 2c f6                 	vcvttsd2si	%xmm6, %esi
100003c0c: c5 eb 58 d4                 	vaddsd	%xmm4, %xmm2, %xmm2
100003c10: c5 fb 2c fa                 	vcvttsd2si	%xmm2, %edi
100003c14: 39 f8                       	cmpl	%edi, %eax
100003c16: 0f 4d f8                    	cmovgel	%eax, %edi
100003c19: 4c 8b a4 24 a0 00 00 00     	movq	160(%rsp), %r12
100003c21: 4b 8d 04 fc                 	leaq	(%r12,%r15,8), %rax
100003c25: 39 f7                       	cmpl	%esi, %edi
100003c27: 0f 4c fe                    	cmovll	%esi, %edi
100003c2a: 4a 8d 74 11 03              	leaq	3(%rcx,%r10), %rsi
100003c2f: c5 f3 2a d7                 	vcvtsi2sd	%edi, %xmm1, %xmm2
100003c33: c4 c1 7b 11 14 f0           	vmovsd	%xmm2, (%r8,%rsi,8)
100003c39: c5 fb 10 84 24 68 01 00 00  	vmovsd	360(%rsp), %xmm0
100003c42: c4 c1 7b c2 54 c9 f8 00     	vcmpeqsd	-8(%r9,%rcx,8), %xmm0, %xmm2
100003c4a: c4 e3 59 4b d3 20           	vblendvpd	%xmm2, %xmm3, %xmm4, %xmm2
100003c50: c4 c1 6b 58 54 d8 f8        	vaddsd	-8(%r8,%rbx,8), %xmm2, %xmm2
100003c57: c5 fb 2c f2                 	vcvttsd2si	%xmm2, %esi
100003c5b: c4 c1 5b 58 14 d8           	vaddsd	(%r8,%rbx,8), %xmm4, %xmm2
100003c61: c5 fb 2c fa                 	vcvttsd2si	%xmm2, %edi
100003c65: c4 c1 5b 58 14 c0           	vaddsd	(%r8,%rax,8), %xmm4, %xmm2
100003c6b: c5 fb 2c c2                 	vcvttsd2si	%xmm2, %eax
100003c6f: 39 c6                       	cmpl	%eax, %esi
100003c71: 0f 4d c6                    	cmovgel	%esi, %eax
100003c74: 39 f8                       	cmpl	%edi, %eax
100003c76: 0f 4c c7                    	cmovll	%edi, %eax
100003c79: 4e 8d 2c 21                 	leaq	(%rcx,%r12), %r13
100003c7d: c5 f3 2a d0                 	vcvtsi2sd	%eax, %xmm1, %xmm2
100003c81: c4 81 7b 11 14 e8           	vmovsd	%xmm2, (%r8,%r13,8)
100003c87: c4 c1 7b c2 34 c9 00        	vcmpeqsd	(%r9,%rcx,8), %xmm0, %xmm6
100003c8e: c4 e3 59 4b f3 60           	vblendvpd	%xmm6, %xmm3, %xmm4, %xmm6
100003c94: c4 c1 4b 58 34 d8           	vaddsd	(%r8,%rbx,8), %xmm6, %xmm6
100003c9a: c5 fb 2c c6                 	vcvttsd2si	%xmm6, %eax
100003c9e: c4 81 5b 58 34 d8           	vaddsd	(%r8,%r11,8), %xmm4, %xmm6
100003ca4: c5 fb 2c fe                 	vcvttsd2si	%xmm6, %edi
100003ca8: c5 eb 58 d4                 	vaddsd	%xmm4, %xmm2, %xmm2
100003cac: c5 fb 2c da                 	vcvttsd2si	%xmm2, %ebx
100003cb0: 39 d8                       	cmpl	%ebx, %eax
100003cb2: 0f 4d d8                    	cmovgel	%eax, %ebx
100003cb5: 39 fb                       	cmpl	%edi, %ebx
100003cb7: 0f 4c df                    	cmovll	%edi, %ebx
100003cba: 4e 8d 5c 21 01              	leaq	1(%rcx,%r12), %r11
100003cbf: c5 f3 2a d3                 	vcvtsi2sd	%ebx, %xmm1, %xmm2
100003cc3: c4 81 7b 11 14 d8           	vmovsd	%xmm2, (%r8,%r11,8)
100003cc9: c4 c1 7b c2 74 c9 08 00     	vcmpeqsd	8(%r9,%rcx,8), %xmm0, %xmm6
100003cd1: c4 e3 59 4b f3 60           	vblendvpd	%xmm6, %xmm3, %xmm4, %xmm6
100003cd7: c4 c1 4b 58 74 d0 f8        	vaddsd	-8(%r8,%rdx,8), %xmm6, %xmm6
100003cde: c5 fb 2c fe                 	vcvttsd2si	%xmm6, %edi
100003ce2: c4 c1 5b 58 34 d0           	vaddsd	(%r8,%rdx,8), %xmm4, %xmm6
100003ce8: c5 fb 2c d6                 	vcvttsd2si	%xmm6, %edx
100003cec: c5 eb 58 d4                 	vaddsd	%xmm4, %xmm2, %xmm2
100003cf0: c5 fb 2c da                 	vcvttsd2si	%xmm2, %ebx
100003cf4: 4c 8b 94 24 98 00 00 00     	movq	152(%rsp), %r10
100003cfc: 4b 8d 04 fa                 	leaq	(%r10,%r15,8), %rax
100003d00: 39 df                       	cmpl	%ebx, %edi
100003d02: 0f 4d df                    	cmovgel	%edi, %ebx
100003d05: 48 8b 74 24 58              	movq	88(%rsp), %rsi
100003d0a: 48 8d 7e ff                 	leaq	-1(%rsi), %rdi
100003d0e: 48 89 bc 24 b8 01 00 00     	movq	%rdi, 440(%rsp)
100003d16: 39 d3                       	cmpl	%edx, %ebx
100003d18: 0f 4c da                    	cmovll	%edx, %ebx
100003d1b: 4a 8d 54 21 02              	leaq	2(%rcx,%r12), %rdx
100003d20: c5 f3 2a d3                 	vcvtsi2sd	%ebx, %xmm1, %xmm2
100003d24: c4 c1 7b 11 14 d0           	vmovsd	%xmm2, (%r8,%rdx,8)
100003d2a: c5 fb 10 84 24 60 01 00 00  	vmovsd	352(%rsp), %xmm0
100003d33: c4 c1 7b c2 54 c9 f8 00     	vcmpeqsd	-8(%r9,%rcx,8), %xmm0, %xmm2
100003d3b: c4 e3 59 4b d3 20           	vblendvpd	%xmm2, %xmm3, %xmm4, %xmm2
100003d41: c4 81 6b 58 54 e8 f8        	vaddsd	-8(%r8,%r13,8), %xmm2, %xmm2
100003d48: c5 fb 2c d2                 	vcvttsd2si	%xmm2, %edx
100003d4c: c4 81 5b 58 14 e8           	vaddsd	(%r8,%r13,8), %xmm4, %xmm2
100003d52: c5 fb 2c fa                 	vcvttsd2si	%xmm2, %edi
100003d56: c4 c1 5b 58 14 c0           	vaddsd	(%r8,%rax,8), %xmm4, %xmm2
100003d5c: c5 fb 2c c2                 	vcvttsd2si	%xmm2, %eax
100003d60: 48 89 f3                    	movq	%rsi, %rbx
100003d63: 48 83 c6 fe                 	addq	$-2, %rsi
100003d67: 48 89 b4 24 c8 01 00 00     	movq	%rsi, 456(%rsp)
100003d6f: 39 c2                       	cmpl	%eax, %edx
100003d71: 0f 4d c2                    	cmovgel	%edx, %eax
100003d74: 48 8d 53 fd                 	leaq	-3(%rbx), %rdx
100003d78: 48 89 94 24 d0 01 00 00     	movq	%rdx, 464(%rsp)
100003d80: 39 f8                       	cmpl	%edi, %eax
100003d82: 0f 4c c7                    	cmovll	%edi, %eax
100003d85: 4a 8d 14 11                 	leaq	(%rcx,%r10), %rdx
100003d89: c5 f3 2a d0                 	vcvtsi2sd	%eax, %xmm1, %xmm2
100003d8d: c4 c1 7b 11 14 d0           	vmovsd	%xmm2, (%r8,%rdx,8)
100003d93: c4 c1 7b c2 34 c9 00        	vcmpeqsd	(%r9,%rcx,8), %xmm0, %xmm6
100003d9a: c4 e3 59 4b f3 60           	vblendvpd	%xmm6, %xmm3, %xmm4, %xmm6
100003da0: c4 81 4b 58 34 e8           	vaddsd	(%r8,%r13,8), %xmm6, %xmm6
100003da6: c5 fb 2c c6                 	vcvttsd2si	%xmm6, %eax
100003daa: c4 81 5b 58 34 d8           	vaddsd	(%r8,%r11,8), %xmm4, %xmm6
100003db0: c5 fb 2c f6                 	vcvttsd2si	%xmm6, %esi
100003db4: 48 8d 7b fc                 	leaq	-4(%rbx), %rdi
100003db8: 48 89 bc 24 e0 01 00 00     	movq	%rdi, 480(%rsp)
100003dc0: c5 eb 58 d4                 	vaddsd	%xmm4, %xmm2, %xmm2
100003dc4: c5 fb 2c fa                 	vcvttsd2si	%xmm2, %edi
100003dc8: 39 f8                       	cmpl	%edi, %eax
100003dca: 0f 4d f8                    	cmovgel	%eax, %edi
100003dcd: 39 f7                       	cmpl	%esi, %edi
100003dcf: 0f 4c fe                    	cmovll	%esi, %edi
100003dd2: c5 f3 2a d7                 	vcvtsi2sd	%edi, %xmm1, %xmm2
100003dd6: 4a 8d 44 11 01              	leaq	1(%rcx,%r10), %rax
100003ddb: c4 c1 7b 11 14 c0           	vmovsd	%xmm2, (%r8,%rax,8)
100003de1: c5 fb 10 84 24 58 01 00 00  	vmovsd	344(%rsp), %xmm0
100003dea: c4 c1 7b c2 54 c9 f8 00     	vcmpeqsd	-8(%r9,%rcx,8), %xmm0, %xmm2
100003df2: c4 e3 59 4b d3 20           	vblendvpd	%xmm2, %xmm3, %xmm4, %xmm2
100003df8: c4 c1 6b 58 54 d0 f8        	vaddsd	-8(%r8,%rdx,8), %xmm2, %xmm2
100003dff: c5 fb 2c c2                 	vcvttsd2si	%xmm2, %eax
100003e03: c4 c1 5b 58 14 d0           	vaddsd	(%r8,%rdx,8), %xmm4, %xmm2
100003e09: 48 8d 53 fb                 	leaq	-5(%rbx), %rdx
100003e0d: 48 89 94 24 f0 01 00 00     	movq	%rdx, 496(%rsp)
100003e15: c5 fb 2c d2                 	vcvttsd2si	%xmm2, %edx
100003e19: 48 8b b4 24 50 01 00 00     	movq	336(%rsp), %rsi
100003e21: 48 89 4c 24 50              	movq	%rcx, 80(%rsp)
100003e26: 48 01 ce                    	addq	%rcx, %rsi
100003e29: c4 c1 5b 58 54 f0 f8        	vaddsd	-8(%r8,%rsi,8), %xmm4, %xmm2
100003e30: c5 fb 2c fa                 	vcvttsd2si	%xmm2, %edi
100003e34: 39 f8                       	cmpl	%edi, %eax
100003e36: 0f 4d f8                    	cmovgel	%eax, %edi
100003e39: 39 d7                       	cmpl	%edx, %edi
100003e3b: 0f 4c fa                    	cmovll	%edx, %edi
100003e3e: 48 8b 44 24 68              	movq	104(%rsp), %rax
100003e43: 4a 8d 04 f8                 	leaq	(%rax,%r15,8), %rax
100003e47: 48 89 84 24 f8 01 00 00     	movq	%rax, 504(%rsp)
100003e4f: 48 8b 44 24 70              	movq	112(%rsp), %rax
100003e54: 4a 8d 04 f8                 	leaq	(%rax,%r15,8), %rax
100003e58: 48 89 84 24 e8 01 00 00     	movq	%rax, 488(%rsp)
100003e60: 48 8b 44 24 78              	movq	120(%rsp), %rax
100003e65: 4a 8d 04 f8                 	leaq	(%rax,%r15,8), %rax
100003e69: 48 89 84 24 d8 01 00 00     	movq	%rax, 472(%rsp)
100003e71: 48 8b 84 24 80 00 00 00     	movq	128(%rsp), %rax
100003e79: 4a 8d 04 f8                 	leaq	(%rax,%r15,8), %rax
100003e7d: 48 89 84 24 c0 01 00 00     	movq	%rax, 448(%rsp)
100003e85: c5 f3 2a d7                 	vcvtsi2sd	%edi, %xmm1, %xmm2
100003e89: 48 8b 84 24 88 00 00 00     	movq	136(%rsp), %rax
100003e91: 4a 8d 04 f8                 	leaq	(%rax,%r15,8), %rax
100003e95: 48 89 84 24 b0 01 00 00     	movq	%rax, 432(%rsp)
100003e9d: c4 c1 7b 11 14 f0           	vmovsd	%xmm2, (%r8,%rsi,8)
100003ea3: 48 8b 84 24 90 00 00 00     	movq	144(%rsp), %rax
100003eab: 4a 8d 04 f8                 	leaq	(%rax,%r15,8), %rax
100003eaf: 48 89 84 24 a8 01 00 00     	movq	%rax, 424(%rsp)
100003eb7: 83 7c 24 14 08              	cmpl	$8, 20(%rsp)
100003ebc: 4c 8b 94 24 d8 00 00 00     	movq	216(%rsp), %r10
100003ec4: 48 8b 8c 24 d0 00 00 00     	movq	208(%rsp), %rcx
100003ecc: 4d 89 c6                    	movq	%r8, %r14
100003ecf: 4c 8b bc 24 c0 00 00 00     	movq	192(%rsp), %r15
100003ed7: 4c 8b 8c 24 b8 00 00 00     	movq	184(%rsp), %r9
100003edf: 0f 8e db ed ff ff           	jle	-4645 <_SIMDkernel8+0x310>
100003ee5: 48 8b 44 24 20              	movq	32(%rsp), %rax
100003eea: 48 8b 74 24 50              	movq	80(%rsp), %rsi
100003eef: c4 e3 fd 01 44 f0 f8 1b     	vpermpd	$27, -8(%rax,%rsi,8), %ymm0
100003ef7: c5 fc 29 84 24 20 02 00 00  	vmovaps	%ymm0, 544(%rsp)
100003f00: c4 e3 fd 01 44 f0 18 1b     	vpermpd	$27, 24(%rax,%rsi,8), %ymm0
100003f08: c5 fc 29 84 24 40 02 00 00  	vmovaps	%ymm0, 576(%rsp)
100003f11: 31 f6                       	xorl	%esi, %esi
100003f13: 48 8b 44 24 40              	movq	64(%rsp), %rax
100003f18: 4c 8b 64 24 48              	movq	72(%rsp), %r12
100003f1d: 8b 7c 24 18                 	movl	24(%rsp), %edi
100003f21: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
100003f2b: 0f 1f 44 00 00              	nopl	(%rax,%rax)
100003f30: 4c 8b 44 24 60              	movq	96(%rsp), %r8
100003f35: c5 fd 28 84 24 20 02 00 00  	vmovapd	544(%rsp), %ymm0
100003f3e: c4 41 7d c2 54 f0 20 00     	vcmpeqpd	32(%r8,%rsi,8), %ymm0, %ymm10
100003f46: 4c 8b 9c 24 00 02 00 00     	movq	512(%rsp), %r11
100003f4e: 4a 8d 54 18 f0              	leaq	-16(%rax,%r11), %rdx
100003f53: 4a 8d 1c 1a                 	leaq	(%rdx,%r11), %rbx
100003f57: c4 c1 7b 10 14 1b           	vmovsd	(%r11,%rbx), %xmm2
100003f5d: 4c 01 db                    	addq	%r11, %rbx
100003f60: c4 c1 69 16 04 13           	vmovhpd	(%r11,%rdx), %xmm2, %xmm0
100003f66: c5 f9 29 44 24 30           	vmovapd	%xmm0, 48(%rsp)
100003f6c: 4a 8d 14 1b                 	leaq	(%rbx,%r11), %rdx
100003f70: c4 c1 7b 10 14 13           	vmovsd	(%r11,%rdx), %xmm2
100003f76: c4 41 69 16 24 1b           	vmovhpd	(%r11,%rbx), %xmm2, %xmm12
100003f7c: 48 63 df                    	movslq	%edi, %rbx
100003f7f: ff c7                       	incl	%edi
100003f81: 4c 01 da                    	addq	%r11, %rdx
100003f84: 48 63 ff                    	movslq	%edi, %rdi
100003f87: c4 41 7b 10 2c fe           	vmovsd	(%r14,%rdi,8), %xmm13
100003f8d: 48 8b bc 24 10 02 00 00     	movq	528(%rsp), %rdi
100003f95: c5 7b 10 34 17              	vmovsd	(%rdi,%rdx), %xmm14
100003f9a: 48 01 fa                    	addq	%rdi, %rdx
100003f9d: c5 7b 10 78 f8              	vmovsd	-8(%rax), %xmm15
100003fa2: c4 41 7b 10 1c 17           	vmovsd	(%r15,%rdx), %xmm11
100003fa8: 4c 01 fa                    	addq	%r15, %rdx
100003fab: 4a 8d 3c 1a                 	leaq	(%rdx,%r11), %rdi
100003faf: c4 c1 7b 10 34 3b           	vmovsd	(%r11,%rdi), %xmm6
100003fb5: 4c 01 df                    	addq	%r11, %rdi
100003fb8: c4 c1 49 16 34 13           	vmovhpd	(%r11,%rdx), %xmm6, %xmm6
100003fbe: 4a 8d 14 1f                 	leaq	(%rdi,%r11), %rdx
100003fc2: c4 c1 7b 10 0c 13           	vmovsd	(%r11,%rdx), %xmm1
100003fc8: 4c 01 da                    	addq	%r11, %rdx
100003fcb: c4 c1 71 16 0c 3b           	vmovhpd	(%r11,%rdi), %xmm1, %xmm1
100003fd1: 4c 8b ac 24 08 02 00 00     	movq	520(%rsp), %r13
100003fd9: 4a 8d 3c 2a                 	leaq	(%rdx,%r13), %rdi
100003fdd: c4 c1 11 16 64 15 00        	vmovhpd	(%r13,%rdx), %xmm13, %xmm4
100003fe4: c4 c1 01 16 04 3f           	vmovhpd	(%r15,%rdi), %xmm15, %xmm0
100003fea: 4c 01 ff                    	addq	%r15, %rdi
100003fed: 4a 8d 14 3f                 	leaq	(%rdi,%r15), %rdx
100003ff1: c4 c1 7b 10 3c 13           	vmovsd	(%r11,%rdx), %xmm7
100003ff7: 4c 01 da                    	addq	%r11, %rdx
100003ffa: c4 c1 41 16 3c 3f           	vmovhpd	(%r15,%rdi), %xmm7, %xmm7
100004000: 4a 8d 3c 1a                 	leaq	(%rdx,%r11), %rdi
100004004: c4 c1 7b 10 1c 3b           	vmovsd	(%r11,%rdi), %xmm3
10000400a: c4 c1 61 16 1c 13           	vmovhpd	(%r11,%rdx), %xmm3, %xmm3
100004010: 4c 89 e2                    	movq	%r12, %rdx
100004013: 48 c1 fa 1d                 	sarq	$29, %rdx
100004017: c4 c1 7b 10 2c 16           	vmovsd	(%r14,%rdx), %xmm5
10000401d: c5 fd 28 94 24 40 02 00 00  	vmovapd	576(%rsp), %ymm2
100004026: c4 41 6d c2 04 f0 00        	vcmpeqpd	(%r8,%rsi,8), %ymm2, %ymm8
10000402d: 8b 54 24 1c                 	movl	28(%rsp), %edx
100004031: c4 62 7d 19 0d a6 2d 00 00  	vbroadcastsd	11686(%rip), %ymm9
10000403a: c4 41 2d 54 d1              	vandpd	%ymm9, %ymm10, %ymm10
10000403f: c4 41 3d 54 c1              	vandpd	%ymm9, %ymm8, %ymm8
100004044: c4 c1 51 16 2c de           	vmovhpd	(%r14,%rbx,8), %xmm5, %xmm5
10000404a: c4 a1 7b 10 54 18 f0        	vmovsd	-16(%rax,%r11), %xmm2
100004051: c5 e9 16 50 f0              	vmovhpd	-16(%rax), %xmm2, %xmm2
100004056: c4 e3 6d 18 d5 01           	vinsertf128	$1, %xmm5, %ymm2, %ymm2
10000405c: c5 2d 58 ca                 	vaddpd	%ymm2, %ymm10, %ymm9
100004060: c4 e3 1d 18 6c 24 30 01     	vinsertf128	$1, 48(%rsp), %ymm12, %ymm5
100004068: c5 bd 58 ed                 	vaddpd	%ymm5, %ymm8, %ymm5
10000406c: c4 c1 09 14 d5              	vunpcklpd	%xmm13, %xmm14, %xmm2
100004071: c4 41 21 14 c7              	vunpcklpd	%xmm15, %xmm11, %xmm8
100004076: c4 e3 3d 18 d2 01           	vinsertf128	$1, %xmm2, %ymm8, %ymm2
10000407c: c5 b5 5f d2                 	vmaxpd	%ymm2, %ymm9, %ymm2
100004080: c4 e3 75 18 ce 01           	vinsertf128	$1, %xmm6, %ymm1, %ymm1
100004086: c5 d5 5f c9                 	vmaxpd	%ymm1, %ymm5, %ymm1
10000408a: c4 e3 7d 18 c4 01           	vinsertf128	$1, %xmm4, %ymm0, %ymm0
100004090: c5 ed 5f c0                 	vmaxpd	%ymm0, %ymm2, %ymm0
100004094: 4c 01 df                    	addq	%r11, %rdi
100004097: c4 e3 65 18 d7 01           	vinsertf128	$1, %xmm7, %ymm3, %ymm2
10000409d: c4 e2 7d 19 1d 32 2d 00 00  	vbroadcastsd	11570(%rip), %ymm3
1000040a6: c5 fd 58 c3                 	vaddpd	%ymm3, %ymm0, %ymm0
1000040aa: c4 e3 7d 19 c4 01           	vextractf128	$1, %ymm0, %xmm4
1000040b0: c4 c3 f9 16 24 39 01        	vpextrq	$1, %xmm4, (%r9,%rdi)
1000040b7: c5 f5 5f ca                 	vmaxpd	%ymm2, %ymm1, %ymm1
1000040bb: 4c 01 cf                    	addq	%r9, %rdi
1000040be: c4 c1 79 d6 24 3b           	vmovq	%xmm4, (%r11,%rdi)
1000040c4: 4c 01 df                    	addq	%r11, %rdi
1000040c7: c4 c3 f9 16 04 3b 01        	vpextrq	$1, %xmm0, (%r11,%rdi)
1000040ce: c5 f5 58 cb                 	vaddpd	%ymm3, %ymm1, %ymm1
1000040d2: 4c 01 df                    	addq	%r11, %rdi
1000040d5: c5 f9 d6 00                 	vmovq	%xmm0, (%rax)
1000040d9: c4 e3 7d 19 c8 01           	vextractf128	$1, %ymm1, %xmm0
1000040df: c4 c3 f9 16 04 3f 01        	vpextrq	$1, %xmm0, (%r15,%rdi)
1000040e6: 4c 01 ff                    	addq	%r15, %rdi
1000040e9: c4 c1 79 d6 04 3b           	vmovq	%xmm0, (%r11,%rdi)
1000040ef: 4c 01 df                    	addq	%r11, %rdi
1000040f2: c4 c3 f9 16 0c 3b 01        	vpextrq	$1, %xmm1, (%r11,%rdi)
1000040f9: 4c 01 df                    	addq	%r11, %rdi
1000040fc: c4 c1 79 d6 0c 3b           	vmovq	%xmm1, (%r11,%rdi)
100004102: 01 d3                       	addl	%edx, %ebx
100004104: 4d 01 d4                    	addq	%r10, %r12
100004107: 48 03 84 24 18 02 00 00     	addq	536(%rsp), %rax
10000410f: 48 ff c6                    	incq	%rsi
100004112: 89 df                       	movl	%ebx, %edi
100004114: 48 39 f1                    	cmpq	%rsi, %rcx
100004117: 0f 85 13 fe ff ff           	jne	-493 <_SIMDkernel8+0x1580>
10000411d: e9 9e eb ff ff              	jmp	-5218 <_SIMDkernel8+0x310>
100004122: 48 8d 65 d8                 	leaq	-40(%rbp), %rsp
100004126: 5b                          	popq	%rbx
100004127: 41 5c                       	popq	%r12
100004129: 41 5d                       	popq	%r13
10000412b: 41 5e                       	popq	%r14
10000412d: 41 5f                       	popq	%r15
10000412f: 5d                          	popq	%rbp
100004130: c5 f8 77                    	vzeroupper
100004133: c3                          	retq
100004134: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
10000413e: 66 90                       	nop

0000000100004140 _SIMDkernel16:
100004140: 55                          	pushq	%rbp
100004141: 48 89 e5                    	movq	%rsp, %rbp
100004144: 41 57                       	pushq	%r15
100004146: 41 56                       	pushq	%r14
100004148: 41 55                       	pushq	%r13
10000414a: 41 54                       	pushq	%r12
10000414c: 53                          	pushq	%rbx
10000414d: 48 83 e4 e0                 	andq	$-32, %rsp
100004151: 48 81 ec 00 02 00 00        	subq	$512, %rsp
100004158: 48 89 4c 24 28              	movq	%rcx, 40(%rsp)
10000415d: 89 7c 24 10                 	movl	%edi, 16(%rsp)
100004161: 83 ff 02                    	cmpl	$2, %edi
100004164: 0f 8c 0e 08 00 00           	jl	2062 <_SIMDkernel16+0x838>
10000416a: 49 89 d6                    	movq	%rdx, %r14
10000416d: 8b 44 24 10                 	movl	16(%rsp), %eax
100004171: 4c 63 c8                    	movslq	%eax, %r9
100004174: 48 63 fe                    	movslq	%esi, %rdi
100004177: 89 c3                       	movl	%eax, %ebx
100004179: 4d 8d 51 f1                 	leaq	-15(%r9), %r10
10000417d: 4c 0f af d7                 	imulq	%rdi, %r10
100004181: 4c 8d 24 fd 00 00 00 00     	leaq	(,%rdi,8), %r12
100004189: 8d 0c bf                    	leal	(%rdi,%rdi,4), %ecx
10000418c: 8d 0c 49                    	leal	(%rcx,%rcx,2), %ecx
10000418f: 89 4c 24 14                 	movl	%ecx, 20(%rsp)
100004193: 48 b9 00 00 00 00 0e 00 00 00       	movabsq	$60129542144, %rcx
10000419d: 48 0f af cf                 	imulq	%rdi, %rcx
1000041a1: 48 ba 00 00 00 00 01 00 00 00       	movabsq	$4294967296, %rdx
1000041ab: 48 09 ca                    	orq	%rcx, %rdx
1000041ae: 48 89 54 24 38              	movq	%rdx, 56(%rsp)
1000041b3: 48 89 f9                    	movq	%rdi, %rcx
1000041b6: 48 c1 e1 20                 	shlq	$32, %rcx
1000041ba: 48 89 8c 24 80 00 00 00     	movq	%rcx, 128(%rsp)
1000041c2: 48 6b cf 68                 	imulq	$104, %rdi, %rcx
1000041c6: 4a 8d 4c 01 20              	leaq	32(%rcx,%r8), %rcx
1000041cb: 48 89 4c 24 30              	movq	%rcx, 48(%rsp)
1000041d0: 48 83 c3 f0                 	addq	$-16, %rbx
1000041d4: 48 89 9c 24 88 00 00 00     	movq	%rbx, 136(%rsp)
1000041dc: 41 bf 08 00 00 00           	movl	$8, %r15d
1000041e2: 4d 29 e7                    	subq	%r12, %r15
1000041e5: 48 6b cf 70                 	imulq	$112, %rdi, %rcx
1000041e9: 48 83 c1 98                 	addq	$-104, %rcx
1000041ed: 48 89 8c 24 c8 00 00 00     	movq	%rcx, 200(%rsp)
1000041f5: 48 89 f9                    	movq	%rdi, %rcx
1000041f8: 48 c1 e1 04                 	shlq	$4, %rcx
1000041fc: bb 10 00 00 00              	movl	$16, %ebx
100004201: 48 29 cb                    	subq	%rcx, %rbx
100004204: 48 89 f9                    	movq	%rdi, %rcx
100004207: 48 c1 e1 07                 	shlq	$7, %rcx
10000420b: 48 83 c1 80                 	addq	$-128, %rcx
10000420f: 48 89 8c 24 c0 00 00 00     	movq	%rcx, 192(%rsp)
100004217: 48 6b cf 78                 	imulq	$120, %rdi, %rcx
10000421b: 48 83 c1 90                 	addq	$-112, %rcx
10000421f: 48 89 8c 24 b8 00 00 00     	movq	%rcx, 184(%rsp)
100004227: 4c 89 8c 24 90 00 00 00     	movq	%r9, 144(%rsp)
10000422f: 49 8d 41 f0                 	leaq	-16(%r9), %rax
100004233: 48 89 f9                    	movq	%rdi, %rcx
100004236: 48 89 c2                    	movq	%rax, %rdx
100004239: 48 89 84 24 d0 00 00 00     	movq	%rax, 208(%rsp)
100004241: 48 0f af c8                 	imulq	%rax, %rcx
100004245: 49 8d 8c c8 80 00 00 00     	leaq	128(%r8,%rcx,8), %rcx
10000424d: 48 89 4c 24 50              	movq	%rcx, 80(%rsp)
100004252: 49 8d 4a 0f                 	leaq	15(%r10), %rcx
100004256: 48 89 4c 24 70              	movq	%rcx, 112(%rsp)
10000425b: 4b 8d 84 d0 80 00 00 00     	leaq	128(%r8,%r10,8), %rax
100004263: 48 89 44 24 48              	movq	%rax, 72(%rsp)
100004268: c5 fb 10 05 60 2b 00 00     	vmovsd	11104(%rip), %xmm0
100004270: c5 fb 10 0d 60 2b 00 00     	vmovsd	11104(%rip), %xmm1
100004278: c4 e2 7d 19 1d 5f 2b 00 00  	vbroadcastsd	11103(%rip), %ymm3
100004281: c4 62 7d 19 15 4e 2b 00 00  	vbroadcastsd	11086(%rip), %ymm10
10000428a: 48 8d 0c fd f8 ff ff ff     	leaq	-8(,%rdi,8), %rcx
100004292: 4d 8d 58 08                 	leaq	8(%r8), %r11
100004296: 48 89 7c 24 68              	movq	%rdi, 104(%rsp)
10000429b: 49 8d 14 f8                 	leaq	(%r8,%rdi,8), %rdx
10000429f: 48 8b 44 24 28              	movq	40(%rsp), %rax
1000042a4: 48 8d 78 78                 	leaq	120(%rax), %rdi
1000042a8: 48 89 7c 24 40              	movq	%rdi, 64(%rsp)
1000042ad: bf 01 00 00 00              	movl	$1, %edi
1000042b2: 48 89 7c 24 18              	movq	%rdi, 24(%rsp)
1000042b7: 45 31 c9                    	xorl	%r9d, %r9d
1000042ba: 48 89 44 24 58              	movq	%rax, 88(%rsp)
1000042bf: 89 74 24 24                 	movl	%esi, 36(%rsp)
1000042c3: 4c 89 a4 24 d8 00 00 00     	movq	%r12, 216(%rsp)
1000042cb: 48 89 5c 24 78              	movq	%rbx, 120(%rsp)
1000042d0: c5 7d 29 94 24 00 01 00 00  	vmovapd	%ymm10, 256(%rsp)
1000042d9: 48 89 4c 24 60              	movq	%rcx, 96(%rsp)
1000042de: c5 fd 29 9c 24 e0 00 00 00  	vmovapd	%ymm3, 224(%rsp)
1000042e7: eb 7c                       	jmp	124 <_SIMDkernel16+0x225>
1000042e9: 0f 1f 80 00 00 00 00        	nopl	(%rax)
1000042f0: 48 8b 44 24 18              	movq	24(%rsp), %rax
1000042f5: 48 83 c0 10                 	addq	$16, %rax
1000042f9: 4c 8b 8c 24 a0 00 00 00     	movq	160(%rsp), %r9
100004301: 49 ff c1                    	incq	%r9
100004304: 48 83 6c 24 58 80           	subq	$-128, 88(%rsp)
10000430a: 4c 8b 9c 24 b0 00 00 00     	movq	176(%rsp), %r11
100004312: 49 83 eb 80                 	subq	$-128, %r11
100004316: 48 8b 94 24 a8 00 00 00     	movq	168(%rsp), %rdx
10000431e: 48 83 ea 80                 	subq	$-128, %rdx
100004322: 83 44 24 14 10              	addl	$16, 20(%rsp)
100004327: 48 bf 00 00 00 00 10 00 00 00       	movabsq	$68719476736, %rdi
100004331: 48 01 7c 24 38              	addq	%rdi, 56(%rsp)
100004336: 48 83 6c 24 30 80           	subq	$-128, 48(%rsp)
10000433c: 48 83 6c 24 40 80           	subq	$-128, 64(%rsp)
100004342: 48 83 6c 24 50 80           	subq	$-128, 80(%rsp)
100004348: 48 83 6c 24 48 80           	subq	$-128, 72(%rsp)
10000434e: 48 89 44 24 18              	movq	%rax, 24(%rsp)
100004353: 48 3b 84 24 90 00 00 00     	cmpq	144(%rsp), %rax
10000435b: c5 fd 28 dd                 	vmovapd	%ymm5, %ymm3
10000435f: 0f 8d 13 06 00 00           	jge	1555 <_SIMDkernel16+0x838>
100004365: 4c 89 8c 24 a0 00 00 00     	movq	%r9, 160(%rsp)
10000436d: 49 c1 e1 04                 	shlq	$4, %r9
100004371: 48 8b 44 24 70              	movq	112(%rsp), %rax
100004376: 4c 01 c8                    	addq	%r9, %rax
100004379: 48 89 84 24 98 00 00 00     	movq	%rax, 152(%rsp)
100004381: 4c 03 4c 24 68              	addq	104(%rsp), %r9
100004386: 48 89 94 24 a8 00 00 00     	movq	%rdx, 168(%rsp)
10000438e: 48 89 d1                    	movq	%rdx, %rcx
100004391: 4c 89 9c 24 b0 00 00 00     	movq	%r11, 176(%rsp)
100004399: 31 c0                       	xorl	%eax, %eax
10000439b: be 01 00 00 00              	movl	$1, %esi
1000043a0: eb 32                       	jmp	50 <_SIMDkernel16+0x294>
1000043a2: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
1000043ac: 0f 1f 40 00                 	nopl	(%rax)
1000043b0: 48 ff c6                    	incq	%rsi
1000043b3: 48 ff c0                    	incq	%rax
1000043b6: 4c 8b a4 24 d8 00 00 00     	movq	216(%rsp), %r12
1000043be: 4d 01 e3                    	addq	%r12, %r11
1000043c1: 4c 01 e1                    	addq	%r12, %rcx
1000043c4: 48 83 fe 10                 	cmpq	$16, %rsi
1000043c8: 4d 89 f0                    	movq	%r14, %r8
1000043cb: 49 89 d6                    	movq	%rdx, %r14
1000043ce: 0f 84 9c 00 00 00           	je	156 <_SIMDkernel16+0x330>
1000043d4: 48 89 c7                    	movq	%rax, %rdi
1000043d7: 48 0f af 7c 24 68           	imulq	104(%rsp), %rdi
1000043dd: 4c 01 cf                    	addq	%r9, %rdi
1000043e0: 4c 89 f2                    	movq	%r14, %rdx
1000043e3: c4 c1 7b 10 64 f6 f8        	vmovsd	-8(%r14,%rsi,8), %xmm4
1000043ea: 4d 89 c6                    	movq	%r8, %r14
1000043ed: c4 c1 7b 10 14 f8           	vmovsd	(%r8,%rdi,8), %xmm2
1000043f3: bf 01 00 00 00              	movl	$1, %edi
1000043f8: 4d 89 dd                    	movq	%r11, %r13
1000043fb: 4c 8b 54 24 58              	movq	88(%rsp), %r10
100004400: eb 2d                       	jmp	45 <_SIMDkernel16+0x2ef>
100004402: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
10000440c: 0f 1f 40 00                 	nopl	(%rax)
100004410: c5 cb 2a d3                 	vcvtsi2sd	%ebx, %xmm6, %xmm2
100004414: c5 fb 11 14 f9              	vmovsd	%xmm2, (%rcx,%rdi,8)
100004419: 49 83 c2 08                 	addq	$8, %r10
10000441d: 49 83 c5 08                 	addq	$8, %r13
100004421: 48 8d 5c 38 01              	leaq	1(%rax,%rdi), %rbx
100004426: 48 ff c7                    	incq	%rdi
100004429: 48 83 fb 10                 	cmpq	$16, %rbx
10000442d: 74 81                       	je	-127 <_SIMDkernel16+0x270>
10000442f: c4 c1 5b c2 2a 00           	vcmpeqsd	(%r10), %xmm4, %xmm5
100004435: c4 e3 71 4b e8 50           	vblendvpd	%xmm5, %xmm0, %xmm1, %xmm5
10000443b: c4 c1 53 58 6d f8           	vaddsd	-8(%r13), %xmm5, %xmm5
100004441: c5 fb 2c dd                 	vcvttsd2si	%xmm5, %ebx
100004445: c4 c1 73 58 6d 00           	vaddsd	(%r13), %xmm1, %xmm5
10000444b: c5 7b 2c c5                 	vcvttsd2si	%xmm5, %r8d
10000444f: c5 eb 58 d1                 	vaddsd	%xmm1, %xmm2, %xmm2
100004453: c5 7b 2c e2                 	vcvttsd2si	%xmm2, %r12d
100004457: 44 39 e3                    	cmpl	%r12d, %ebx
10000445a: 7d 03                       	jge	3 <_SIMDkernel16+0x31f>
10000445c: 44 89 e3                    	movl	%r12d, %ebx
10000445f: 44 39 c3                    	cmpl	%r8d, %ebx
100004462: 7d ac                       	jge	-84 <_SIMDkernel16+0x2d0>
100004464: 44 89 c3                    	movl	%r8d, %ebx
100004467: eb a7                       	jmp	-89 <_SIMDkernel16+0x2d0>
100004469: 0f 1f 80 00 00 00 00        	nopl	(%rax)
100004470: 83 7c 24 10 11              	cmpl	$17, 16(%rsp)
100004475: 4c 8b 94 24 88 00 00 00     	movq	136(%rsp), %r10
10000447d: 4c 8b 9c 24 80 00 00 00     	movq	128(%rsp), %r11
100004485: 48 8b 74 24 78              	movq	120(%rsp), %rsi
10000448a: c5 7d 28 fb                 	vmovapd	%ymm3, %ymm15
10000448e: 0f 8c 18 04 00 00           	jl	1048 <_SIMDkernel16+0x76c>
100004494: 48 8b 44 24 28              	movq	40(%rsp), %rax
100004499: 48 8b 4c 24 18              	movq	24(%rsp), %rcx
10000449e: c4 e3 fd 01 54 c8 f8 1b     	vpermpd	$27, -8(%rax,%rcx,8), %ymm2
1000044a6: c5 fc 29 94 24 80 01 00 00  	vmovaps	%ymm2, 384(%rsp)
1000044af: c4 e3 fd 01 54 c8 18 1b     	vpermpd	$27, 24(%rax,%rcx,8), %ymm2
1000044b7: c5 fc 29 94 24 60 01 00 00  	vmovaps	%ymm2, 352(%rsp)
1000044c0: c4 e3 fd 01 54 c8 38 1b     	vpermpd	$27, 56(%rax,%rcx,8), %ymm2
1000044c8: c5 fc 29 94 24 40 01 00 00  	vmovaps	%ymm2, 320(%rsp)
1000044d1: c4 e3 fd 01 54 c8 58 1b     	vpermpd	$27, 88(%rax,%rcx,8), %ymm2
1000044d9: c5 fc 29 94 24 20 01 00 00  	vmovaps	%ymm2, 288(%rsp)
1000044e2: 31 d2                       	xorl	%edx, %edx
1000044e4: 48 8b 7c 24 30              	movq	48(%rsp), %rdi
1000044e9: 4c 8b 6c 24 38              	movq	56(%rsp), %r13
1000044ee: 8b 4c 24 14                 	movl	20(%rsp), %ecx
1000044f2: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
1000044fc: 0f 1f 40 00                 	nopl	(%rax)
100004500: c5 fd 28 94 24 80 01 00 00  	vmovapd	384(%rsp), %ymm2
100004509: c4 41 6d c2 44 d6 60 00     	vcmpeqpd	96(%r14,%rdx,8), %ymm2, %ymm8
100004511: c5 fd 28 94 24 60 01 00 00  	vmovapd	352(%rsp), %ymm2
10000451a: c4 41 6d c2 54 d6 40 00     	vcmpeqpd	64(%r14,%rdx,8), %ymm2, %ymm10
100004522: 4a 8d 44 3f f0              	leaq	-16(%rdi,%r15), %rax
100004527: 4a 8d 1c 38                 	leaq	(%rax,%r15), %rbx
10000452b: c5 fd 28 94 24 40 01 00 00  	vmovapd	320(%rsp), %ymm2
100004534: c4 41 6d c2 5c d6 20 00     	vcmpeqpd	32(%r14,%rdx,8), %ymm2, %ymm11
10000453c: c4 c1 7b 10 14 1f           	vmovsd	(%r15,%rbx), %xmm2
100004542: 4c 01 fb                    	addq	%r15, %rbx
100004545: c4 41 69 16 2c 07           	vmovhpd	(%r15,%rax), %xmm2, %xmm13
10000454b: 4a 8d 04 3b                 	leaq	(%rbx,%r15), %rax
10000454f: c4 c1 7b 10 14 07           	vmovsd	(%r15,%rax), %xmm2
100004555: c4 41 69 16 0c 1f           	vmovhpd	(%r15,%rbx), %xmm2, %xmm9
10000455b: 4c 01 f8                    	addq	%r15, %rax
10000455e: 4a 8d 1c 38                 	leaq	(%rax,%r15), %rbx
100004562: c5 fd 28 94 24 20 01 00 00  	vmovapd	288(%rsp), %ymm2
10000456b: c4 41 6d c2 34 d6 00        	vcmpeqpd	(%r14,%rdx,8), %ymm2, %ymm14
100004572: c4 c1 7b 10 3c 1f           	vmovsd	(%r15,%rbx), %xmm7
100004578: 4c 01 fb                    	addq	%r15, %rbx
10000457b: c4 c1 41 16 3c 07           	vmovhpd	(%r15,%rax), %xmm7, %xmm7
100004581: 4a 8d 04 3b                 	leaq	(%rbx,%r15), %rax
100004585: c4 c1 7b 10 1c 07           	vmovsd	(%r15,%rax), %xmm3
10000458b: c4 c1 61 16 1c 1f           	vmovhpd	(%r15,%rbx), %xmm3, %xmm3
100004591: 4c 01 f8                    	addq	%r15, %rax
100004594: 4a 8d 1c 38                 	leaq	(%rax,%r15), %rbx
100004598: c4 c1 7b 10 24 1f           	vmovsd	(%r15,%rbx), %xmm4
10000459e: 4c 01 fb                    	addq	%r15, %rbx
1000045a1: c4 c1 59 16 24 07           	vmovhpd	(%r15,%rax), %xmm4, %xmm4
1000045a7: 4a 8d 04 3b                 	leaq	(%rbx,%r15), %rax
1000045ab: c4 c1 7b 10 2c 07           	vmovsd	(%r15,%rax), %xmm5
1000045b1: c4 41 51 16 24 1f           	vmovhpd	(%r15,%rbx), %xmm5, %xmm12
1000045b7: 4c 89 eb                    	movq	%r13, %rbx
1000045ba: 48 c1 fb 1d                 	sarq	$29, %rbx
1000045be: c4 c1 3d 54 ef              	vandpd	%ymm15, %ymm8, %ymm5
1000045c3: c4 c1 7b 10 34 18           	vmovsd	(%r8,%rbx), %xmm6
1000045c9: 4c 63 c9                    	movslq	%ecx, %r9
1000045cc: ff c1                       	incl	%ecx
1000045ce: c4 41 2d 54 c7              	vandpd	%ymm15, %ymm10, %ymm8
1000045d3: c4 a1 7b 10 54 3f f0        	vmovsd	-16(%rdi,%r15), %xmm2
1000045da: c4 81 49 16 34 c8           	vmovhpd	(%r8,%r9,8), %xmm6, %xmm6
1000045e0: c4 41 25 54 d7              	vandpd	%ymm15, %ymm11, %ymm10
1000045e5: c5 e9 16 57 f0              	vmovhpd	-16(%rdi), %xmm2, %xmm2
1000045ea: c4 e3 6d 18 d6 01           	vinsertf128	$1, %xmm6, %ymm2, %ymm2
1000045f0: c4 41 0d 54 f7              	vandpd	%ymm15, %ymm14, %ymm14
1000045f5: c5 d5 58 d2                 	vaddpd	%ymm2, %ymm5, %ymm2
1000045f9: c4 c3 35 18 ed 01           	vinsertf128	$1, %xmm13, %ymm9, %ymm5
1000045ff: c5 3d 58 fd                 	vaddpd	%ymm5, %ymm8, %ymm15
100004603: c4 e3 65 18 df 01           	vinsertf128	$1, %xmm7, %ymm3, %ymm3
100004609: 4c 01 f8                    	addq	%r15, %rax
10000460c: 48 63 c9                    	movslq	%ecx, %rcx
10000460f: c4 c1 7b 10 34 c8           	vmovsd	(%r8,%rcx,8), %xmm6
100004615: c5 ad 58 db                 	vaddpd	%ymm3, %ymm10, %ymm3
100004619: c5 fd 29 9c 24 c0 01 00 00  	vmovapd	%ymm3, 448(%rsp)
100004622: 48 8b 8c 24 c8 00 00 00     	movq	200(%rsp), %rcx
10000462a: c5 fb 10 1c 01              	vmovsd	(%rcx,%rax), %xmm3
10000462f: 48 01 c8                    	addq	%rcx, %rax
100004632: c5 7b 10 5f f8              	vmovsd	-8(%rdi), %xmm11
100004637: c4 e3 1d 18 e4 01           	vinsertf128	$1, %xmm4, %ymm12, %ymm4
10000463d: c5 fb 10 3c 06              	vmovsd	(%rsi,%rax), %xmm7
100004642: 48 01 f0                    	addq	%rsi, %rax
100004645: 4a 8d 0c 38                 	leaq	(%rax,%r15), %rcx
100004649: c5 e1 14 de                 	vunpcklpd	%xmm6, %xmm3, %xmm3
10000464d: c4 c1 7b 10 2c 0f           	vmovsd	(%r15,%rcx), %xmm5
100004653: c4 c1 51 16 2c 07           	vmovhpd	(%r15,%rax), %xmm5, %xmm5
100004659: c5 8d 58 e4                 	vaddpd	%ymm4, %ymm14, %ymm4
10000465d: c5 fd 29 a4 24 a0 01 00 00  	vmovapd	%ymm4, 416(%rsp)
100004666: 4c 01 f9                    	addq	%r15, %rcx
100004669: 4a 8d 04 39                 	leaq	(%rcx,%r15), %rax
10000466d: c4 c1 7b 10 24 07           	vmovsd	(%r15,%rax), %xmm4
100004673: c4 c1 41 14 fb              	vunpcklpd	%xmm11, %xmm7, %xmm7
100004678: 4c 01 f8                    	addq	%r15, %rax
10000467b: c4 41 59 16 24 0f           	vmovhpd	(%r15,%rcx), %xmm4, %xmm12
100004681: c4 e3 45 18 db 01           	vinsertf128	$1, %xmm3, %ymm7, %ymm3
100004687: 4a 8d 0c 38                 	leaq	(%rax,%r15), %rcx
10000468b: c4 c1 7b 10 24 0f           	vmovsd	(%r15,%rcx), %xmm4
100004691: 4c 01 f9                    	addq	%r15, %rcx
100004694: c5 6d 5f d3                 	vmaxpd	%ymm3, %ymm2, %ymm10
100004698: c4 41 59 16 04 07           	vmovhpd	(%r15,%rax), %xmm4, %xmm8
10000469e: 4a 8d 04 39                 	leaq	(%rcx,%r15), %rax
1000046a2: c4 c1 7b 10 14 07           	vmovsd	(%r15,%rax), %xmm2
1000046a8: 4c 01 f8                    	addq	%r15, %rax
1000046ab: c4 41 69 16 2c 0f           	vmovhpd	(%r15,%rcx), %xmm2, %xmm13
1000046b1: c4 e3 1d 18 d5 01           	vinsertf128	$1, %xmm5, %ymm12, %ymm2
1000046b7: 4a 8d 0c 38                 	leaq	(%rax,%r15), %rcx
1000046bb: c4 c1 7b 10 1c 0f           	vmovsd	(%r15,%rcx), %xmm3
1000046c1: 4c 01 f9                    	addq	%r15, %rcx
1000046c4: c5 05 5f e2                 	vmaxpd	%ymm2, %ymm15, %ymm12
1000046c8: c4 c1 61 16 2c 07           	vmovhpd	(%r15,%rax), %xmm3, %xmm5
1000046ce: 4a 8d 04 39                 	leaq	(%rcx,%r15), %rax
1000046d2: c4 c1 7b 10 14 07           	vmovsd	(%r15,%rax), %xmm2
1000046d8: 4c 01 f8                    	addq	%r15, %rax
1000046db: c4 41 69 16 34 0f           	vmovhpd	(%r15,%rcx), %xmm2, %xmm14
1000046e1: 48 8b 9c 24 c0 00 00 00     	movq	192(%rsp), %rbx
1000046e9: 48 8d 0c 18                 	leaq	(%rax,%rbx), %rcx
1000046ed: c5 c9 16 34 03              	vmovhpd	(%rbx,%rax), %xmm6, %xmm6
1000046f2: c5 21 16 1c 0e              	vmovhpd	(%rsi,%rcx), %xmm11, %xmm11
1000046f7: 48 01 f1                    	addq	%rsi, %rcx
1000046fa: 48 8d 04 31                 	leaq	(%rcx,%rsi), %rax
1000046fe: c4 c1 7b 10 14 07           	vmovsd	(%r15,%rax), %xmm2
100004704: 4c 01 f8                    	addq	%r15, %rax
100004707: c5 e9 16 24 0e              	vmovhpd	(%rsi,%rcx), %xmm2, %xmm4
10000470c: 4a 8d 0c 38                 	leaq	(%rax,%r15), %rcx
100004710: c4 c1 7b 10 1c 0f           	vmovsd	(%r15,%rcx), %xmm3
100004716: 4c 01 f9                    	addq	%r15, %rcx
100004719: c4 c1 61 16 1c 07           	vmovhpd	(%r15,%rax), %xmm3, %xmm3
10000471f: 4a 8d 04 39                 	leaq	(%rcx,%r15), %rax
100004723: c4 c1 7b 10 3c 07           	vmovsd	(%r15,%rax), %xmm7
100004729: 4c 01 f8                    	addq	%r15, %rax
10000472c: c4 41 41 16 3c 0f           	vmovhpd	(%r15,%rcx), %xmm7, %xmm15
100004732: 4a 8d 0c 38                 	leaq	(%rax,%r15), %rcx
100004736: c4 c1 7b 10 3c 0f           	vmovsd	(%r15,%rcx), %xmm7
10000473c: c4 c1 41 16 3c 07           	vmovhpd	(%r15,%rax), %xmm7, %xmm7
100004742: 4c 01 f9                    	addq	%r15, %rcx
100004745: 4a 8d 1c 39                 	leaq	(%rcx,%r15), %rbx
100004749: c4 c1 7b 10 14 1f           	vmovsd	(%r15,%rbx), %xmm2
10000474f: 4c 01 fb                    	addq	%r15, %rbx
100004752: c4 c1 69 16 14 0f           	vmovhpd	(%r15,%rcx), %xmm2, %xmm2
100004758: 4a 8d 04 3b                 	leaq	(%rbx,%r15), %rax
10000475c: c4 41 7b 10 0c 07           	vmovsd	(%r15,%rax), %xmm9
100004762: c4 41 31 16 0c 1f           	vmovhpd	(%r15,%rbx), %xmm9, %xmm9
100004768: 8b 5c 24 24                 	movl	36(%rsp), %ebx
10000476c: c4 43 15 18 c0 01           	vinsertf128	$1, %xmm8, %ymm13, %ymm8
100004772: c5 7d 28 ac 24 c0 01 00 00  	vmovapd	448(%rsp), %ymm13
10000477b: c4 41 15 5f c0              	vmaxpd	%ymm8, %ymm13, %ymm8
100004780: c4 e3 0d 18 ed 01           	vinsertf128	$1, %xmm5, %ymm14, %ymm5
100004786: c5 7d 28 ac 24 a0 01 00 00  	vmovapd	416(%rsp), %ymm13
10000478f: c5 95 5f ed                 	vmaxpd	%ymm5, %ymm13, %ymm5
100004793: c4 e3 25 18 f6 01           	vinsertf128	$1, %xmm6, %ymm11, %ymm6
100004799: c5 ad 5f f6                 	vmaxpd	%ymm6, %ymm10, %ymm6
10000479d: c5 7d 28 94 24 00 01 00 00  	vmovapd	256(%rsp), %ymm10
1000047a6: c4 e3 65 18 dc 01           	vinsertf128	$1, %xmm4, %ymm3, %ymm3
1000047ac: 4c 01 f8                    	addq	%r15, %rax
1000047af: c4 c1 4d 58 e2              	vaddpd	%ymm10, %ymm6, %ymm4
1000047b4: c4 e3 7d 19 e6 01           	vextractf128	$1, %ymm4, %xmm6
1000047ba: 48 8b 8c 24 b8 00 00 00     	movq	184(%rsp), %rcx
1000047c2: c4 e3 f9 16 34 01 01        	vpextrq	$1, %xmm6, (%rcx,%rax)
1000047c9: c5 9d 5f db                 	vmaxpd	%ymm3, %ymm12, %ymm3
1000047cd: 48 01 c8                    	addq	%rcx, %rax
1000047d0: c4 c1 79 d6 34 07           	vmovq	%xmm6, (%r15,%rax)
1000047d6: 4c 01 f8                    	addq	%r15, %rax
1000047d9: c4 c3 f9 16 24 07 01        	vpextrq	$1, %xmm4, (%r15,%rax)
1000047e0: c4 c1 65 58 da              	vaddpd	%ymm10, %ymm3, %ymm3
1000047e5: 4c 01 f8                    	addq	%r15, %rax
1000047e8: c5 f9 d6 27                 	vmovq	%xmm4, (%rdi)
1000047ec: c4 e3 7d 19 dc 01           	vextractf128	$1, %ymm3, %xmm4
1000047f2: c4 e3 f9 16 24 06 01        	vpextrq	$1, %xmm4, (%rsi,%rax)
1000047f9: c4 c3 45 18 f7 01           	vinsertf128	$1, %xmm15, %ymm7, %ymm6
1000047ff: c5 7d 28 bc 24 e0 00 00 00  	vmovapd	224(%rsp), %ymm15
100004808: c5 bd 5f f6                 	vmaxpd	%ymm6, %ymm8, %ymm6
10000480c: c4 e3 35 18 d2 01           	vinsertf128	$1, %xmm2, %ymm9, %ymm2
100004812: c5 d5 5f d2                 	vmaxpd	%ymm2, %ymm5, %ymm2
100004816: c4 c1 4d 58 ea              	vaddpd	%ymm10, %ymm6, %ymm5
10000481b: 48 01 f0                    	addq	%rsi, %rax
10000481e: c4 c1 79 d6 24 07           	vmovq	%xmm4, (%r15,%rax)
100004824: 4c 01 f8                    	addq	%r15, %rax
100004827: c4 c3 f9 16 1c 07 01        	vpextrq	$1, %xmm3, (%r15,%rax)
10000482e: 4c 01 f8                    	addq	%r15, %rax
100004831: c4 c1 79 d6 1c 07           	vmovq	%xmm3, (%r15,%rax)
100004837: 4c 01 f8                    	addq	%r15, %rax
10000483a: c4 e3 7d 19 eb 01           	vextractf128	$1, %ymm5, %xmm3
100004840: c4 c3 f9 16 1c 07 01        	vpextrq	$1, %xmm3, (%r15,%rax)
100004847: c4 c1 6d 58 d2              	vaddpd	%ymm10, %ymm2, %ymm2
10000484c: 4c 01 f8                    	addq	%r15, %rax
10000484f: c4 c1 79 d6 1c 07           	vmovq	%xmm3, (%r15,%rax)
100004855: 4c 01 f8                    	addq	%r15, %rax
100004858: c4 c3 f9 16 2c 07 01        	vpextrq	$1, %xmm5, (%r15,%rax)
10000485f: 4c 01 f8                    	addq	%r15, %rax
100004862: c4 c1 79 d6 2c 07           	vmovq	%xmm5, (%r15,%rax)
100004868: 4c 01 f8                    	addq	%r15, %rax
10000486b: c4 e3 7d 19 d3 01           	vextractf128	$1, %ymm2, %xmm3
100004871: c4 c3 f9 16 1c 07 01        	vpextrq	$1, %xmm3, (%r15,%rax)
100004878: 4c 01 f8                    	addq	%r15, %rax
10000487b: c4 c1 79 d6 1c 07           	vmovq	%xmm3, (%r15,%rax)
100004881: 4c 01 f8                    	addq	%r15, %rax
100004884: c4 c3 f9 16 14 07 01        	vpextrq	$1, %xmm2, (%r15,%rax)
10000488b: 4c 01 f8                    	addq	%r15, %rax
10000488e: c4 c1 79 d6 14 07           	vmovq	%xmm2, (%r15,%rax)
100004894: 41 01 d9                    	addl	%ebx, %r9d
100004897: 4d 01 dd                    	addq	%r11, %r13
10000489a: 4c 01 e7                    	addq	%r12, %rdi
10000489d: 48 ff c2                    	incq	%rdx
1000048a0: 44 89 c9                    	movl	%r9d, %ecx
1000048a3: 49 39 d2                    	cmpq	%rdx, %r10
1000048a6: 0f 85 54 fc ff ff           	jne	-940 <_SIMDkernel16+0x3c0>
1000048ac: c5 7d 29 fd                 	vmovapd	%ymm15, %ymm5
1000048b0: 48 8b 84 24 98 00 00 00     	movq	152(%rsp), %rax
1000048b8: 4d 8d 0c c0                 	leaq	(%r8,%rax,8), %r9
1000048bc: 41 bb 01 00 00 00           	movl	$1, %r11d
1000048c2: 4c 8b 54 24 48              	movq	72(%rsp), %r10
1000048c7: 48 8b 7c 24 50              	movq	80(%rsp), %rdi
1000048cc: 4c 8b 64 24 40              	movq	64(%rsp), %r12
1000048d1: 45 31 ed                    	xorl	%r13d, %r13d
1000048d4: 48 8b 4c 24 60              	movq	96(%rsp), %rcx
1000048d9: eb 24                       	jmp	36 <_SIMDkernel16+0x7bf>
1000048db: 0f 1f 44 00 00              	nopl	(%rax,%rax)
1000048e0: 49 ff c3                    	incq	%r11
1000048e3: 49 ff c5                    	incq	%r13
1000048e6: 49 83 c4 f8                 	addq	$-8, %r12
1000048ea: 48 8b 4c 24 60              	movq	96(%rsp), %rcx
1000048ef: 48 01 cf                    	addq	%rcx, %rdi
1000048f2: 49 01 ca                    	addq	%rcx, %r10
1000048f5: 49 83 fb 10                 	cmpq	$16, %r11
1000048f9: 0f 84 f1 f9 ff ff           	je	-1551 <_SIMDkernel16+0x1b0>
1000048ff: 48 89 c8                    	movq	%rcx, %rax
100004902: 49 0f af c5                 	imulq	%r13, %rax
100004906: 48 8b 8c 24 d0 00 00 00     	movq	208(%rsp), %rcx
10000490e: 4c 01 d9                    	addq	%r11, %rcx
100004911: c4 c1 7b 10 64 ce f8        	vmovsd	-8(%r14,%rcx,8), %xmm4
100004918: c4 c1 7b 10 14 01           	vmovsd	(%r9,%rax), %xmm2
10000491e: 31 db                       	xorl	%ebx, %ebx
100004920: eb 20                       	jmp	32 <_SIMDkernel16+0x802>
100004922: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
10000492c: 0f 1f 40 00                 	nopl	(%rax)
100004930: c5 9b 2a d2                 	vcvtsi2sd	%edx, %xmm12, %xmm2
100004934: c4 c1 7b 11 14 da           	vmovsd	%xmm2, (%r10,%rbx,8)
10000493a: 48 ff c3                    	incq	%rbx
10000493d: 49 39 db                    	cmpq	%rbx, %r11
100004940: 74 9e                       	je	-98 <_SIMDkernel16+0x7a0>
100004942: c4 c1 5b c2 1c dc 00        	vcmpeqsd	(%r12,%rbx,8), %xmm4, %xmm3
100004949: c4 e3 71 4b d8 30           	vblendvpd	%xmm3, %xmm0, %xmm1, %xmm3
10000494f: c5 e3 58 5c df f8           	vaddsd	-8(%rdi,%rbx,8), %xmm3, %xmm3
100004955: c5 fb 2c d3                 	vcvttsd2si	%xmm3, %edx
100004959: c5 f3 58 1c df              	vaddsd	(%rdi,%rbx,8), %xmm1, %xmm3
10000495e: c5 fb 2c c3                 	vcvttsd2si	%xmm3, %eax
100004962: c5 eb 58 d1                 	vaddsd	%xmm1, %xmm2, %xmm2
100004966: c5 fb 2c ca                 	vcvttsd2si	%xmm2, %ecx
10000496a: 39 ca                       	cmpl	%ecx, %edx
10000496c: 7d 02                       	jge	2 <_SIMDkernel16+0x830>
10000496e: 89 ca                       	movl	%ecx, %edx
100004970: 39 c2                       	cmpl	%eax, %edx
100004972: 7d bc                       	jge	-68 <_SIMDkernel16+0x7f0>
100004974: 89 c2                       	movl	%eax, %edx
100004976: eb b8                       	jmp	-72 <_SIMDkernel16+0x7f0>
100004978: 48 8d 65 d8                 	leaq	-40(%rbp), %rsp
10000497c: 5b                          	popq	%rbx
10000497d: 41 5c                       	popq	%r12
10000497f: 41 5d                       	popq	%r13
100004981: 41 5e                       	popq	%r14
100004983: 41 5f                       	popq	%r15
100004985: 5d                          	popq	%rbp
100004986: c5 f8 77                    	vzeroupper
100004989: c3                          	retq
10000498a: 66 0f 1f 44 00 00           	nopw	(%rax,%rax)

0000000100004990 _SIMDkernel32:
100004990: 55                          	pushq	%rbp
100004991: 48 89 e5                    	movq	%rsp, %rbp
100004994: 41 57                       	pushq	%r15
100004996: 41 56                       	pushq	%r14
100004998: 41 55                       	pushq	%r13
10000499a: 41 54                       	pushq	%r12
10000499c: 53                          	pushq	%rbx
10000499d: 48 83 e4 e0                 	andq	$-32, %rsp
1000049a1: 48 81 ec 60 02 00 00        	subq	$608, %rsp
1000049a8: 48 89 4c 24 28              	movq	%rcx, 40(%rsp)
1000049ad: 89 7c 24 10                 	movl	%edi, 16(%rsp)
1000049b1: 83 ff 02                    	cmpl	$2, %edi
1000049b4: 0f 8c d0 0b 00 00           	jl	3024 <_SIMDkernel32+0xbfa>
1000049ba: 8b 44 24 10                 	movl	16(%rsp), %eax
1000049be: 4c 63 c8                    	movslq	%eax, %r9
1000049c1: 48 63 de                    	movslq	%esi, %rbx
1000049c4: 89 c7                       	movl	%eax, %edi
1000049c6: 4d 8d 59 e1                 	leaq	-31(%r9), %r11
1000049ca: 4c 0f af db                 	imulq	%rbx, %r11
1000049ce: 4c 8d 14 dd 00 00 00 00     	leaq	(,%rbx,8), %r10
1000049d6: 89 d9                       	movl	%ebx, %ecx
1000049d8: c1 e1 05                    	shll	$5, %ecx
1000049db: 29 d9                       	subl	%ebx, %ecx
1000049dd: 89 4c 24 14                 	movl	%ecx, 20(%rsp)
1000049e1: 48 b9 00 00 00 00 1e 00 00 00       	movabsq	$128849018880, %rcx
1000049eb: 48 0f af cb                 	imulq	%rbx, %rcx
1000049ef: 48 b8 00 00 00 00 01 00 00 00       	movabsq	$4294967296, %rax
1000049f9: 48 09 c8                    	orq	%rcx, %rax
1000049fc: 48 89 44 24 38              	movq	%rax, 56(%rsp)
100004a01: 48 89 d8                    	movq	%rbx, %rax
100004a04: 48 c1 e0 20                 	shlq	$32, %rax
100004a08: 48 89 84 24 90 00 00 00     	movq	%rax, 144(%rsp)
100004a10: 48 69 cb e8 00 00 00        	imulq	$232, %rbx, %rcx
100004a17: 4a 8d 44 01 20              	leaq	32(%rcx,%r8), %rax
100004a1c: 48 89 44 24 30              	movq	%rax, 48(%rsp)
100004a21: 48 83 c7 e0                 	addq	$-32, %rdi
100004a25: 48 89 bc 24 d0 00 00 00     	movq	%rdi, 208(%rsp)
100004a2d: 41 be 08 00 00 00           	movl	$8, %r14d
100004a33: 4c 89 54 24 78              	movq	%r10, 120(%rsp)
100004a38: 4d 29 d6                    	subq	%r10, %r14
100004a3b: 4c 69 d3 f0 00 00 00        	imulq	$240, %rbx, %r10
100004a42: 49 81 c2 18 ff ff ff        	addq	$-232, %r10
100004a49: 48 89 d9                    	movq	%rbx, %rcx
100004a4c: 48 c1 e1 04                 	shlq	$4, %rcx
100004a50: b8 10 00 00 00              	movl	$16, %eax
100004a55: 48 29 c8                    	subq	%rcx, %rax
100004a58: 48 89 44 24 58              	movq	%rax, 88(%rsp)
100004a5d: 48 89 d8                    	movq	%rbx, %rax
100004a60: 48 c1 e0 08                 	shlq	$8, %rax
100004a64: 48 05 00 ff ff ff           	addq	$-256, %rax
100004a6a: 48 89 84 24 c0 00 00 00     	movq	%rax, 192(%rsp)
100004a72: 48 69 c3 f8 00 00 00        	imulq	$248, %rbx, %rax
100004a79: 48 05 10 ff ff ff           	addq	$-240, %rax
100004a7f: 48 89 84 24 88 00 00 00     	movq	%rax, 136(%rsp)
100004a87: 4c 89 8c 24 98 00 00 00     	movq	%r9, 152(%rsp)
100004a8f: 49 8d 79 e0                 	leaq	-32(%r9), %rdi
100004a93: 48 89 d9                    	movq	%rbx, %rcx
100004a96: 48 89 f8                    	movq	%rdi, %rax
100004a99: 48 89 bc 24 d8 00 00 00     	movq	%rdi, 216(%rsp)
100004aa1: 48 0f af cf                 	imulq	%rdi, %rcx
100004aa5: 49 8d 84 c8 00 01 00 00     	leaq	256(%r8,%rcx,8), %rax
100004aad: 48 89 44 24 50              	movq	%rax, 80(%rsp)
100004ab2: 4b 8d 84 d8 00 01 00 00     	leaq	256(%r8,%r11,8), %rax
100004aba: 48 89 44 24 48              	movq	%rax, 72(%rsp)
100004abf: 49 8d 43 1f                 	leaq	31(%r11), %rax
100004ac3: 48 89 84 24 80 00 00 00     	movq	%rax, 128(%rsp)
100004acb: c5 fb 10 05 fd 22 00 00     	vmovsd	8957(%rip), %xmm0
100004ad3: c5 fb 10 0d fd 22 00 00     	vmovsd	8957(%rip), %xmm1
100004adb: c4 62 7d 19 2d fc 22 00 00  	vbroadcastsd	8956(%rip), %ymm13
100004ae4: c4 62 7d 19 1d eb 22 00 00  	vbroadcastsd	8939(%rip), %ymm11
100004aed: 48 8d 0c dd f8 ff ff ff     	leaq	-8(,%rbx,8), %rcx
100004af5: 4d 8d 58 08                 	leaq	8(%r8), %r11
100004af9: 48 89 5c 24 70              	movq	%rbx, 112(%rsp)
100004afe: 49 8d 3c d8                 	leaq	(%r8,%rbx,8), %rdi
100004b02: 48 8b 44 24 28              	movq	40(%rsp), %rax
100004b07: 48 8d 98 f8 00 00 00        	leaq	248(%rax), %rbx
100004b0e: 48 89 5c 24 40              	movq	%rbx, 64(%rsp)
100004b13: bb 01 00 00 00              	movl	$1, %ebx
100004b18: 48 89 5c 24 18              	movq	%rbx, 24(%rsp)
100004b1d: 45 31 c9                    	xorl	%r9d, %r9d
100004b20: 48 89 44 24 60              	movq	%rax, 96(%rsp)
100004b25: 89 74 24 24                 	movl	%esi, 36(%rsp)
100004b29: 4c 89 94 24 c8 00 00 00     	movq	%r10, 200(%rsp)
100004b31: c5 7d 29 9c 24 e0 00 00 00  	vmovapd	%ymm11, 224(%rsp)
100004b3a: 48 89 4c 24 68              	movq	%rcx, 104(%rsp)
100004b3f: e9 92 00 00 00              	jmp	146 <_SIMDkernel32+0x246>
100004b44: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
100004b4e: 66 90                       	nop
100004b50: 48 8b 44 24 18              	movq	24(%rsp), %rax
100004b55: 48 83 c0 20                 	addq	$32, %rax
100004b59: 4c 8b 8c 24 a8 00 00 00     	movq	168(%rsp), %r9
100004b61: 49 ff c1                    	incq	%r9
100004b64: 48 81 44 24 60 00 01 00 00  	addq	$256, 96(%rsp)
100004b6d: 4c 8b 9c 24 b8 00 00 00     	movq	184(%rsp), %r11
100004b75: 49 81 c3 00 01 00 00        	addq	$256, %r11
100004b7c: 48 8b bc 24 b0 00 00 00     	movq	176(%rsp), %rdi
100004b84: 48 81 c7 00 01 00 00        	addq	$256, %rdi
100004b8b: 83 44 24 14 20              	addl	$32, 20(%rsp)
100004b90: 48 bb 00 00 00 00 20 00 00 00       	movabsq	$137438953472, %rbx
100004b9a: 48 01 5c 24 38              	addq	%rbx, 56(%rsp)
100004b9f: 48 81 44 24 30 00 01 00 00  	addq	$256, 48(%rsp)
100004ba8: 48 81 44 24 40 00 01 00 00  	addq	$256, 64(%rsp)
100004bb1: 48 81 44 24 50 00 01 00 00  	addq	$256, 80(%rsp)
100004bba: 48 81 44 24 48 00 01 00 00  	addq	$256, 72(%rsp)
100004bc3: 48 89 44 24 18              	movq	%rax, 24(%rsp)
100004bc8: 48 3b 84 24 98 00 00 00     	cmpq	152(%rsp), %rax
100004bd0: 0f 8d b4 09 00 00           	jge	2484 <_SIMDkernel32+0xbfa>
100004bd6: 4c 89 8c 24 a8 00 00 00     	movq	%r9, 168(%rsp)
100004bde: 49 c1 e1 05                 	shlq	$5, %r9
100004be2: 48 8b 84 24 80 00 00 00     	movq	128(%rsp), %rax
100004bea: 4c 01 c8                    	addq	%r9, %rax
100004bed: 48 89 84 24 a0 00 00 00     	movq	%rax, 160(%rsp)
100004bf5: 4c 03 4c 24 70              	addq	112(%rsp), %r9
100004bfa: 48 89 bc 24 b0 00 00 00     	movq	%rdi, 176(%rsp)
100004c02: 48 89 f9                    	movq	%rdi, %rcx
100004c05: 4c 89 9c 24 b8 00 00 00     	movq	%r11, 184(%rsp)
100004c0d: 31 ff                       	xorl	%edi, %edi
100004c0f: b8 01 00 00 00              	movl	$1, %eax
100004c14: eb 28                       	jmp	40 <_SIMDkernel32+0x2ae>
100004c16: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
100004c20: 48 ff c0                    	incq	%rax
100004c23: 48 ff c7                    	incq	%rdi
100004c26: 48 8b 74 24 78              	movq	120(%rsp), %rsi
100004c2b: 49 01 f3                    	addq	%rsi, %r11
100004c2e: 48 01 f1                    	addq	%rsi, %rcx
100004c31: 48 83 f8 20                 	cmpq	$32, %rax
100004c35: 4d 89 e0                    	movq	%r12, %r8
100004c38: 0f 84 92 00 00 00           	je	146 <_SIMDkernel32+0x340>
100004c3e: 48 89 fe                    	movq	%rdi, %rsi
100004c41: 48 0f af 74 24 70           	imulq	112(%rsp), %rsi
100004c47: 4c 01 ce                    	addq	%r9, %rsi
100004c4a: c5 fb 10 54 c2 f8           	vmovsd	-8(%rdx,%rax,8), %xmm2
100004c50: 4d 89 c4                    	movq	%r8, %r12
100004c53: c4 c1 7b 10 1c f0           	vmovsd	(%r8,%rsi,8), %xmm3
100004c59: be 01 00 00 00              	movl	$1, %esi
100004c5e: 4d 89 dd                    	movq	%r11, %r13
100004c61: 4c 8b 54 24 60              	movq	96(%rsp), %r10
100004c66: eb 27                       	jmp	39 <_SIMDkernel32+0x2ff>
100004c68: 0f 1f 84 00 00 00 00 00     	nopl	(%rax,%rax)
100004c70: c5 d3 2a db                 	vcvtsi2sd	%ebx, %xmm5, %xmm3
100004c74: c5 fb 11 1c f1              	vmovsd	%xmm3, (%rcx,%rsi,8)
100004c79: 49 83 c2 08                 	addq	$8, %r10
100004c7d: 49 83 c5 08                 	addq	$8, %r13
100004c81: 48 8d 5c 37 01              	leaq	1(%rdi,%rsi), %rbx
100004c86: 48 ff c6                    	incq	%rsi
100004c89: 48 83 fb 20                 	cmpq	$32, %rbx
100004c8d: 74 91                       	je	-111 <_SIMDkernel32+0x290>
100004c8f: c4 c1 6b c2 22 00           	vcmpeqsd	(%r10), %xmm2, %xmm4
100004c95: c4 e3 71 4b e0 40           	vblendvpd	%xmm4, %xmm0, %xmm1, %xmm4
100004c9b: c4 c1 5b 58 65 f8           	vaddsd	-8(%r13), %xmm4, %xmm4
100004ca1: c5 fb 2c dc                 	vcvttsd2si	%xmm4, %ebx
100004ca5: c4 c1 73 58 65 00           	vaddsd	(%r13), %xmm1, %xmm4
100004cab: c5 7b 2c fc                 	vcvttsd2si	%xmm4, %r15d
100004caf: c5 e3 58 d9                 	vaddsd	%xmm1, %xmm3, %xmm3
100004cb3: c5 7b 2c c3                 	vcvttsd2si	%xmm3, %r8d
100004cb7: 44 39 c3                    	cmpl	%r8d, %ebx
100004cba: 7d 03                       	jge	3 <_SIMDkernel32+0x32f>
100004cbc: 44 89 c3                    	movl	%r8d, %ebx
100004cbf: 44 39 fb                    	cmpl	%r15d, %ebx
100004cc2: 7d ac                       	jge	-84 <_SIMDkernel32+0x2e0>
100004cc4: 44 89 fb                    	movl	%r15d, %ebx
100004cc7: eb a7                       	jmp	-89 <_SIMDkernel32+0x2e0>
100004cc9: 0f 1f 80 00 00 00 00        	nopl	(%rax)
100004cd0: 83 7c 24 10 21              	cmpl	$33, 16(%rsp)
100004cd5: 4c 8b a4 24 90 00 00 00     	movq	144(%rsp), %r12
100004cdd: 4c 8b 7c 24 58              	movq	88(%rsp), %r15
100004ce2: 48 8b 8c 24 88 00 00 00     	movq	136(%rsp), %rcx
100004cea: 0f 8c cd 07 00 00           	jl	1997 <_SIMDkernel32+0xb2d>
100004cf0: 4c 8b 4c 24 28              	movq	40(%rsp), %r9
100004cf5: 48 8b 7c 24 18              	movq	24(%rsp), %rdi
100004cfa: c4 c3 fd 01 54 f9 f8 1b     	vpermpd	$27, -8(%r9,%rdi,8), %ymm2
100004d02: c5 fc 29 94 24 e0 01 00 00  	vmovaps	%ymm2, 480(%rsp)
100004d0b: c4 c3 fd 01 54 f9 18 1b     	vpermpd	$27, 24(%r9,%rdi,8), %ymm2
100004d13: c5 fc 29 94 24 c0 01 00 00  	vmovaps	%ymm2, 448(%rsp)
100004d1c: c4 c3 fd 01 54 f9 38 1b     	vpermpd	$27, 56(%r9,%rdi,8), %ymm2
100004d24: c5 fc 29 94 24 a0 01 00 00  	vmovaps	%ymm2, 416(%rsp)
100004d2d: c4 c3 fd 01 54 f9 58 1b     	vpermpd	$27, 88(%r9,%rdi,8), %ymm2
100004d35: c5 fc 29 94 24 80 01 00 00  	vmovaps	%ymm2, 384(%rsp)
100004d3e: c4 c3 fd 01 54 f9 78 1b     	vpermpd	$27, 120(%r9,%rdi,8), %ymm2
100004d46: c5 fc 29 94 24 60 01 00 00  	vmovaps	%ymm2, 352(%rsp)
100004d4f: c4 c3 fd 01 94 f9 98 00 00 00 1b    	vpermpd	$27, 152(%r9,%rdi,8), %ymm2
100004d5a: c5 fc 29 94 24 40 01 00 00  	vmovaps	%ymm2, 320(%rsp)
100004d63: c4 c3 fd 01 94 f9 b8 00 00 00 1b    	vpermpd	$27, 184(%r9,%rdi,8), %ymm2
100004d6e: c5 fc 29 94 24 20 01 00 00  	vmovaps	%ymm2, 288(%rsp)
100004d77: c4 c3 fd 01 94 f9 d8 00 00 00 1b    	vpermpd	$27, 216(%r9,%rdi,8), %ymm2
100004d82: c5 fc 29 94 24 00 01 00 00  	vmovaps	%ymm2, 256(%rsp)
100004d8b: 31 ff                       	xorl	%edi, %edi
100004d8d: 4c 8b 5c 24 30              	movq	48(%rsp), %r11
100004d92: 4c 8b 4c 24 38              	movq	56(%rsp), %r9
100004d97: 44 8b 6c 24 14              	movl	20(%rsp), %r13d
100004d9c: 0f 1f 40 00                 	nopl	(%rax)
100004da0: c5 fd 28 94 24 e0 01 00 00  	vmovapd	480(%rsp), %ymm2
100004da9: c5 ed c2 9c fa e0 00 00 00 00       	vcmpeqpd	224(%rdx,%rdi,8), %ymm2, %ymm3
100004db3: c5 fd 28 94 24 c0 01 00 00  	vmovapd	448(%rsp), %ymm2
100004dbc: c5 ed c2 94 fa c0 00 00 00 00       	vcmpeqpd	192(%rdx,%rdi,8), %ymm2, %ymm2
100004dc6: 4d 63 d5                    	movslq	%r13d, %r10
100004dc9: 4c 89 c8                    	movq	%r9, %rax
100004dcc: 48 c1 f8 1d                 	sarq	$29, %rax
100004dd0: c4 81 7b 10 64 33 f0        	vmovsd	-16(%r11,%r14), %xmm4
100004dd7: c4 c1 7b 10 2c 00           	vmovsd	(%r8,%rax), %xmm5
100004ddd: c4 c1 59 16 63 f0           	vmovhpd	-16(%r11), %xmm4, %xmm4
100004de3: c4 81 51 16 2c d0           	vmovhpd	(%r8,%r10,8), %xmm5, %xmm5
100004de9: 4b 8d 44 33 f0              	leaq	-16(%r11,%r14), %rax
100004dee: 4a 8d 1c 30                 	leaq	(%rax,%r14), %rbx
100004df2: c4 c1 7b 10 34 1e           	vmovsd	(%r14,%rbx), %xmm6
100004df8: 4c 01 f3                    	addq	%r14, %rbx
100004dfb: c4 c1 49 16 34 06           	vmovhpd	(%r14,%rax), %xmm6, %xmm6
100004e01: 4a 8d 04 33                 	leaq	(%rbx,%r14), %rax
100004e05: c4 c1 7b 10 3c 06           	vmovsd	(%r14,%rax), %xmm7
100004e0b: 4c 01 f0                    	addq	%r14, %rax
100004e0e: c4 41 41 16 04 1e           	vmovhpd	(%r14,%rbx), %xmm7, %xmm8
100004e14: c4 e3 5d 18 e5 01           	vinsertf128	$1, %xmm5, %ymm4, %ymm4
100004e1a: 4a 8d 1c 30                 	leaq	(%rax,%r14), %rbx
100004e1e: c4 c1 7b 10 2c 1e           	vmovsd	(%r14,%rbx), %xmm5
100004e24: 4c 01 f3                    	addq	%r14, %rbx
100004e27: c4 c1 65 54 dd              	vandpd	%ymm13, %ymm3, %ymm3
100004e2c: c4 41 51 16 3c 06           	vmovhpd	(%r14,%rax), %xmm5, %xmm15
100004e32: 4a 8d 04 33                 	leaq	(%rbx,%r14), %rax
100004e36: c4 41 6d 54 cd              	vandpd	%ymm13, %ymm2, %ymm9
100004e3b: c4 c1 7b 10 14 06           	vmovsd	(%r14,%rax), %xmm2
100004e41: c4 41 69 16 1c 1e           	vmovhpd	(%r14,%rbx), %xmm2, %xmm11
100004e47: c5 65 58 f4                 	vaddpd	%ymm4, %ymm3, %ymm14
100004e4b: 4c 01 f0                    	addq	%r14, %rax
100004e4e: 4a 8d 1c 30                 	leaq	(%rax,%r14), %rbx
100004e52: c4 c1 7b 10 14 1e           	vmovsd	(%r14,%rbx), %xmm2
100004e58: c4 e3 3d 18 de 01           	vinsertf128	$1, %xmm6, %ymm8, %ymm3
100004e5e: 4c 01 f3                    	addq	%r14, %rbx
100004e61: c4 41 69 16 14 06           	vmovhpd	(%r14,%rax), %xmm2, %xmm10
100004e67: c5 b5 58 d3                 	vaddpd	%ymm3, %ymm9, %ymm2
100004e6b: c5 fd 29 94 24 00 02 00 00  	vmovapd	%ymm2, 512(%rsp)
100004e74: 4a 8d 04 33                 	leaq	(%rbx,%r14), %rax
100004e78: c4 c1 7b 10 1c 06           	vmovsd	(%r14,%rax), %xmm3
100004e7e: c4 41 61 16 04 1e           	vmovhpd	(%r14,%rbx), %xmm3, %xmm8
100004e84: 4c 01 f0                    	addq	%r14, %rax
100004e87: 4a 8d 1c 30                 	leaq	(%rax,%r14), %rbx
100004e8b: c4 c1 7b 10 1c 1e           	vmovsd	(%r14,%rbx), %xmm3
100004e91: 4c 01 f3                    	addq	%r14, %rbx
100004e94: c4 c1 61 16 1c 06           	vmovhpd	(%r14,%rax), %xmm3, %xmm3
100004e9a: 4a 8d 04 33                 	leaq	(%rbx,%r14), %rax
100004e9e: c4 c1 7b 10 24 06           	vmovsd	(%r14,%rax), %xmm4
100004ea4: 4c 01 f0                    	addq	%r14, %rax
100004ea7: c4 41 59 16 0c 1e           	vmovhpd	(%r14,%rbx), %xmm4, %xmm9
100004ead: 4a 8d 1c 30                 	leaq	(%rax,%r14), %rbx
100004eb1: c4 c1 7b 10 24 1e           	vmovsd	(%r14,%rbx), %xmm4
100004eb7: 4c 01 f3                    	addq	%r14, %rbx
100004eba: c4 c1 59 16 24 06           	vmovhpd	(%r14,%rax), %xmm4, %xmm4
100004ec0: 4a 8d 04 33                 	leaq	(%rbx,%r14), %rax
100004ec4: c4 c1 7b 10 34 06           	vmovsd	(%r14,%rax), %xmm6
100004eca: c4 41 49 16 24 1e           	vmovhpd	(%r14,%rbx), %xmm6, %xmm12
100004ed0: 4c 01 f0                    	addq	%r14, %rax
100004ed3: 4a 8d 1c 30                 	leaq	(%rax,%r14), %rbx
100004ed7: c4 c1 7b 10 34 1e           	vmovsd	(%r14,%rbx), %xmm6
100004edd: 4c 01 f3                    	addq	%r14, %rbx
100004ee0: c4 c1 49 16 34 06           	vmovhpd	(%r14,%rax), %xmm6, %xmm6
100004ee6: 4a 8d 04 33                 	leaq	(%rbx,%r14), %rax
100004eea: c4 c1 7b 10 2c 06           	vmovsd	(%r14,%rax), %xmm5
100004ef0: 4c 01 f0                    	addq	%r14, %rax
100004ef3: c4 c1 51 16 2c 1e           	vmovhpd	(%r14,%rbx), %xmm5, %xmm5
100004ef9: 4a 8d 1c 30                 	leaq	(%rax,%r14), %rbx
100004efd: c4 c1 7b 10 3c 1e           	vmovsd	(%r14,%rbx), %xmm7
100004f03: 4c 01 f3                    	addq	%r14, %rbx
100004f06: c4 c1 41 16 3c 06           	vmovhpd	(%r14,%rax), %xmm7, %xmm7
100004f0c: 4a 8d 04 33                 	leaq	(%rbx,%r14), %rax
100004f10: c4 c1 7b 10 14 06           	vmovsd	(%r14,%rax), %xmm2
100004f16: c4 c1 69 16 14 1e           	vmovhpd	(%r14,%rbx), %xmm2, %xmm2
100004f1c: c4 43 25 18 df 01           	vinsertf128	$1, %xmm15, %ymm11, %ymm11
100004f22: c5 7d 28 bc 24 a0 01 00 00  	vmovapd	416(%rsp), %ymm15
100004f2b: c5 05 c2 bc fa a0 00 00 00 00       	vcmpeqpd	160(%rdx,%rdi,8), %ymm15, %ymm15
100004f35: c4 41 05 54 fd              	vandpd	%ymm13, %ymm15, %ymm15
100004f3a: c4 41 05 58 fb              	vaddpd	%ymm11, %ymm15, %ymm15
100004f3f: c4 43 3d 18 c2 01           	vinsertf128	$1, %xmm10, %ymm8, %ymm8
100004f45: c5 7d 28 94 24 80 01 00 00  	vmovapd	384(%rsp), %ymm10
100004f4e: c5 2d c2 94 fa 80 00 00 00 00       	vcmpeqpd	128(%rdx,%rdi,8), %ymm10, %ymm10
100004f58: c4 41 2d 54 d5              	vandpd	%ymm13, %ymm10, %ymm10
100004f5d: c4 41 2d 58 d8              	vaddpd	%ymm8, %ymm10, %ymm11
100004f62: c5 7d 28 84 24 60 01 00 00  	vmovapd	352(%rsp), %ymm8
100004f6b: c5 3d c2 44 fa 60 00        	vcmpeqpd	96(%rdx,%rdi,8), %ymm8, %ymm8
100004f72: c4 e3 35 18 db 01           	vinsertf128	$1, %xmm3, %ymm9, %ymm3
100004f78: c5 7d 28 8c 24 40 01 00 00  	vmovapd	320(%rsp), %ymm9
100004f81: c5 35 c2 4c fa 40 00        	vcmpeqpd	64(%rdx,%rdi,8), %ymm9, %ymm9
100004f88: c4 41 3d 54 c5              	vandpd	%ymm13, %ymm8, %ymm8
100004f8d: c5 3d 58 d3                 	vaddpd	%ymm3, %ymm8, %ymm10
100004f91: c4 e3 1d 18 dc 01           	vinsertf128	$1, %xmm4, %ymm12, %ymm3
100004f97: c5 fd 28 a4 24 20 01 00 00  	vmovapd	288(%rsp), %ymm4
100004fa0: c5 5d c2 44 fa 20 00        	vcmpeqpd	32(%rdx,%rdi,8), %ymm4, %ymm8
100004fa7: c4 c1 35 54 e5              	vandpd	%ymm13, %ymm9, %ymm4
100004fac: c5 dd 58 e3                 	vaddpd	%ymm3, %ymm4, %ymm4
100004fb0: c5 fd 28 9c 24 00 01 00 00  	vmovapd	256(%rsp), %ymm3
100004fb9: c5 e5 c2 1c fa 00           	vcmpeqpd	(%rdx,%rdi,8), %ymm3, %ymm3
100004fbf: c4 41 3d 54 c5              	vandpd	%ymm13, %ymm8, %ymm8
100004fc4: c4 41 65 54 cd              	vandpd	%ymm13, %ymm3, %ymm9
100004fc9: 41 ff c5                    	incl	%r13d
100004fcc: c4 e3 55 18 de 01           	vinsertf128	$1, %xmm6, %ymm5, %ymm3
100004fd2: c5 bd 58 db                 	vaddpd	%ymm3, %ymm8, %ymm3
100004fd6: 4c 01 f0                    	addq	%r14, %rax
100004fd9: 49 63 dd                    	movslq	%r13d, %rbx
100004fdc: c4 e3 6d 18 d7 01           	vinsertf128	$1, %xmm7, %ymm2, %ymm2
100004fe2: c4 41 7b 10 04 d8           	vmovsd	(%r8,%rbx,8), %xmm8
100004fe8: 48 8b 9c 24 c8 00 00 00     	movq	200(%rsp), %rbx
100004ff0: c5 fb 10 2c 03              	vmovsd	(%rbx,%rax), %xmm5
100004ff5: 48 01 d8                    	addq	%rbx, %rax
100004ff8: c5 35 58 e2                 	vaddpd	%ymm2, %ymm9, %ymm12
100004ffc: c4 41 7b 10 4b f8           	vmovsd	-8(%r11), %xmm9
100005002: c4 c1 7b 10 14 07           	vmovsd	(%r15,%rax), %xmm2
100005008: 4c 01 f8                    	addq	%r15, %rax
10000500b: c4 c1 51 14 e8              	vunpcklpd	%xmm8, %xmm5, %xmm5
100005010: c4 c1 69 14 d1              	vunpcklpd	%xmm9, %xmm2, %xmm2
100005015: c4 e3 6d 18 d5 01           	vinsertf128	$1, %xmm5, %ymm2, %ymm2
10000501b: 4a 8d 1c 30                 	leaq	(%rax,%r14), %rbx
10000501f: c4 c1 7b 10 2c 1e           	vmovsd	(%r14,%rbx), %xmm5
100005025: 4c 01 f3                    	addq	%r14, %rbx
100005028: c4 c1 51 16 2c 06           	vmovhpd	(%r14,%rax), %xmm5, %xmm5
10000502e: c5 8d 5f d2                 	vmaxpd	%ymm2, %ymm14, %ymm2
100005032: c5 fd 29 94 24 20 02 00 00  	vmovapd	%ymm2, 544(%rsp)
10000503b: 4a 8d 04 33                 	leaq	(%rbx,%r14), %rax
10000503f: c4 c1 7b 10 14 06           	vmovsd	(%r14,%rax), %xmm2
100005045: c4 c1 69 16 14 1e           	vmovhpd	(%r14,%rbx), %xmm2, %xmm2
10000504b: 4c 01 f0                    	addq	%r14, %rax
10000504e: c4 e3 6d 18 d5 01           	vinsertf128	$1, %xmm5, %ymm2, %ymm2
100005054: 4a 8d 1c 30                 	leaq	(%rax,%r14), %rbx
100005058: c4 c1 7b 10 2c 1e           	vmovsd	(%r14,%rbx), %xmm5
10000505e: 4c 01 f3                    	addq	%r14, %rbx
100005061: c4 c1 51 16 2c 06           	vmovhpd	(%r14,%rax), %xmm5, %xmm5
100005067: c5 fd 28 b4 24 00 02 00 00  	vmovapd	512(%rsp), %ymm6
100005070: c5 4d 5f f2                 	vmaxpd	%ymm2, %ymm6, %ymm14
100005074: 4a 8d 04 33                 	leaq	(%rbx,%r14), %rax
100005078: c4 c1 7b 10 14 06           	vmovsd	(%r14,%rax), %xmm2
10000507e: c4 c1 69 16 14 1e           	vmovhpd	(%r14,%rbx), %xmm2, %xmm2
100005084: 4c 01 f0                    	addq	%r14, %rax
100005087: c4 e3 6d 18 d5 01           	vinsertf128	$1, %xmm5, %ymm2, %ymm2
10000508d: 4a 8d 1c 30                 	leaq	(%rax,%r14), %rbx
100005091: c4 c1 7b 10 2c 1e           	vmovsd	(%r14,%rbx), %xmm5
100005097: 4c 01 f3                    	addq	%r14, %rbx
10000509a: c4 c1 51 16 2c 06           	vmovhpd	(%r14,%rax), %xmm5, %xmm5
1000050a0: c5 05 5f fa                 	vmaxpd	%ymm2, %ymm15, %ymm15
1000050a4: 4a 8d 04 33                 	leaq	(%rbx,%r14), %rax
1000050a8: c4 c1 7b 10 14 06           	vmovsd	(%r14,%rax), %xmm2
1000050ae: c4 c1 69 16 14 1e           	vmovhpd	(%r14,%rbx), %xmm2, %xmm2
1000050b4: 4c 01 f0                    	addq	%r14, %rax
1000050b7: c4 e3 6d 18 d5 01           	vinsertf128	$1, %xmm5, %ymm2, %ymm2
1000050bd: 4a 8d 1c 30                 	leaq	(%rax,%r14), %rbx
1000050c1: c4 c1 7b 10 2c 1e           	vmovsd	(%r14,%rbx), %xmm5
1000050c7: 4c 01 f3                    	addq	%r14, %rbx
1000050ca: c4 c1 51 16 2c 06           	vmovhpd	(%r14,%rax), %xmm5, %xmm5
1000050d0: c5 25 5f da                 	vmaxpd	%ymm2, %ymm11, %ymm11
1000050d4: 4a 8d 04 33                 	leaq	(%rbx,%r14), %rax
1000050d8: c4 c1 7b 10 34 06           	vmovsd	(%r14,%rax), %xmm6
1000050de: c4 c1 49 16 34 1e           	vmovhpd	(%r14,%rbx), %xmm6, %xmm6
1000050e4: 4c 01 f0                    	addq	%r14, %rax
1000050e7: c4 e3 4d 18 ed 01           	vinsertf128	$1, %xmm5, %ymm6, %ymm5
1000050ed: 4a 8d 1c 30                 	leaq	(%rax,%r14), %rbx
1000050f1: c4 c1 7b 10 34 1e           	vmovsd	(%r14,%rbx), %xmm6
1000050f7: 4c 01 f3                    	addq	%r14, %rbx
1000050fa: c4 c1 49 16 34 06           	vmovhpd	(%r14,%rax), %xmm6, %xmm6
100005100: c5 ad 5f ed                 	vmaxpd	%ymm5, %ymm10, %ymm5
100005104: 4a 8d 04 33                 	leaq	(%rbx,%r14), %rax
100005108: c4 c1 7b 10 3c 06           	vmovsd	(%r14,%rax), %xmm7
10000510e: c4 c1 41 16 3c 1e           	vmovhpd	(%r14,%rbx), %xmm7, %xmm7
100005114: 4c 01 f0                    	addq	%r14, %rax
100005117: c4 e3 45 18 f6 01           	vinsertf128	$1, %xmm6, %ymm7, %ymm6
10000511d: 4a 8d 1c 30                 	leaq	(%rax,%r14), %rbx
100005121: c4 c1 7b 10 3c 1e           	vmovsd	(%r14,%rbx), %xmm7
100005127: 4c 01 f3                    	addq	%r14, %rbx
10000512a: c4 c1 41 16 3c 06           	vmovhpd	(%r14,%rax), %xmm7, %xmm7
100005130: c5 dd 5f f6                 	vmaxpd	%ymm6, %ymm4, %ymm6
100005134: 4a 8d 04 33                 	leaq	(%rbx,%r14), %rax
100005138: c4 c1 7b 10 24 06           	vmovsd	(%r14,%rax), %xmm4
10000513e: c4 c1 59 16 24 1e           	vmovhpd	(%r14,%rbx), %xmm4, %xmm4
100005144: 4c 01 f0                    	addq	%r14, %rax
100005147: c4 e3 5d 18 e7 01           	vinsertf128	$1, %xmm7, %ymm4, %ymm4
10000514d: 4a 8d 1c 30                 	leaq	(%rax,%r14), %rbx
100005151: c4 c1 7b 10 3c 1e           	vmovsd	(%r14,%rbx), %xmm7
100005157: 4c 01 f3                    	addq	%r14, %rbx
10000515a: c4 c1 41 16 14 06           	vmovhpd	(%r14,%rax), %xmm7, %xmm2
100005160: c5 e5 5f fc                 	vmaxpd	%ymm4, %ymm3, %ymm7
100005164: 4a 8d 04 33                 	leaq	(%rbx,%r14), %rax
100005168: c4 c1 7b 10 1c 06           	vmovsd	(%r14,%rax), %xmm3
10000516e: c4 c1 61 16 1c 1e           	vmovhpd	(%r14,%rbx), %xmm3, %xmm3
100005174: c4 e3 65 18 d2 01           	vinsertf128	$1, %xmm2, %ymm3, %ymm2
10000517a: c5 1d 5f e2                 	vmaxpd	%ymm2, %ymm12, %ymm12
10000517e: 4c 01 f0                    	addq	%r14, %rax
100005181: 49 89 cd                    	movq	%rcx, %r13
100005184: 48 8b 8c 24 c0 00 00 00     	movq	192(%rsp), %rcx
10000518c: 48 8d 1c 08                 	leaq	(%rax,%rcx), %rbx
100005190: c5 b9 16 14 01              	vmovhpd	(%rcx,%rax), %xmm8, %xmm2
100005195: c4 c1 31 16 1c 1f           	vmovhpd	(%r15,%rbx), %xmm9, %xmm3
10000519b: 4c 01 fb                    	addq	%r15, %rbx
10000519e: c4 e3 65 18 d2 01           	vinsertf128	$1, %xmm2, %ymm3, %ymm2
1000051a4: 4a 8d 04 3b                 	leaq	(%rbx,%r15), %rax
1000051a8: c4 c1 7b 10 1c 06           	vmovsd	(%r14,%rax), %xmm3
1000051ae: 4c 01 f0                    	addq	%r14, %rax
1000051b1: c4 c1 61 16 1c 1f           	vmovhpd	(%r15,%rbx), %xmm3, %xmm3
1000051b7: c5 fd 28 a4 24 20 02 00 00  	vmovapd	544(%rsp), %ymm4
1000051c0: c5 5d 5f ca                 	vmaxpd	%ymm2, %ymm4, %ymm9
1000051c4: 4a 8d 1c 30                 	leaq	(%rax,%r14), %rbx
1000051c8: c4 c1 7b 10 14 1e           	vmovsd	(%r14,%rbx), %xmm2
1000051ce: c4 c1 69 16 14 06           	vmovhpd	(%r14,%rax), %xmm2, %xmm2
1000051d4: 4c 01 f3                    	addq	%r14, %rbx
1000051d7: c4 e3 6d 18 d3 01           	vinsertf128	$1, %xmm3, %ymm2, %ymm2
1000051dd: 4a 8d 04 33                 	leaq	(%rbx,%r14), %rax
1000051e1: c4 c1 7b 10 1c 06           	vmovsd	(%r14,%rax), %xmm3
1000051e7: 4c 01 f0                    	addq	%r14, %rax
1000051ea: c4 c1 61 16 1c 1e           	vmovhpd	(%r14,%rbx), %xmm3, %xmm3
1000051f0: c5 0d 5f c2                 	vmaxpd	%ymm2, %ymm14, %ymm8
1000051f4: 4a 8d 1c 30                 	leaq	(%rax,%r14), %rbx
1000051f8: c4 c1 7b 10 14 1e           	vmovsd	(%r14,%rbx), %xmm2
1000051fe: c4 c1 69 16 14 06           	vmovhpd	(%r14,%rax), %xmm2, %xmm2
100005204: 4c 01 f3                    	addq	%r14, %rbx
100005207: c4 e3 6d 18 d3 01           	vinsertf128	$1, %xmm3, %ymm2, %ymm2
10000520d: 4a 8d 04 33                 	leaq	(%rbx,%r14), %rax
100005211: c4 c1 7b 10 1c 06           	vmovsd	(%r14,%rax), %xmm3
100005217: 4c 01 f0                    	addq	%r14, %rax
10000521a: c4 c1 61 16 1c 1e           	vmovhpd	(%r14,%rbx), %xmm3, %xmm3
100005220: c5 05 5f f2                 	vmaxpd	%ymm2, %ymm15, %ymm14
100005224: 4a 8d 1c 30                 	leaq	(%rax,%r14), %rbx
100005228: c4 c1 7b 10 14 1e           	vmovsd	(%r14,%rbx), %xmm2
10000522e: c4 c1 69 16 14 06           	vmovhpd	(%r14,%rax), %xmm2, %xmm2
100005234: 4c 01 f3                    	addq	%r14, %rbx
100005237: c4 e3 6d 18 d3 01           	vinsertf128	$1, %xmm3, %ymm2, %ymm2
10000523d: 4a 8d 04 33                 	leaq	(%rbx,%r14), %rax
100005241: c4 c1 7b 10 1c 06           	vmovsd	(%r14,%rax), %xmm3
100005247: 4c 01 f0                    	addq	%r14, %rax
10000524a: c4 c1 61 16 1c 1e           	vmovhpd	(%r14,%rbx), %xmm3, %xmm3
100005250: c5 25 5f d2                 	vmaxpd	%ymm2, %ymm11, %ymm10
100005254: c5 7d 28 9c 24 e0 00 00 00  	vmovapd	224(%rsp), %ymm11
10000525d: 4a 8d 1c 30                 	leaq	(%rax,%r14), %rbx
100005261: c4 c1 7b 10 14 1e           	vmovsd	(%r14,%rbx), %xmm2
100005267: c4 c1 69 16 14 06           	vmovhpd	(%r14,%rax), %xmm2, %xmm2
10000526d: 4c 01 f3                    	addq	%r14, %rbx
100005270: c4 e3 6d 18 d3 01           	vinsertf128	$1, %xmm3, %ymm2, %ymm2
100005276: 4a 8d 04 33                 	leaq	(%rbx,%r14), %rax
10000527a: c4 c1 7b 10 1c 06           	vmovsd	(%r14,%rax), %xmm3
100005280: 4c 01 f0                    	addq	%r14, %rax
100005283: c4 c1 61 16 1c 1e           	vmovhpd	(%r14,%rbx), %xmm3, %xmm3
100005289: c5 d5 5f ea                 	vmaxpd	%ymm2, %ymm5, %ymm5
10000528d: 4a 8d 1c 30                 	leaq	(%rax,%r14), %rbx
100005291: c4 c1 7b 10 14 1e           	vmovsd	(%r14,%rbx), %xmm2
100005297: c4 c1 69 16 14 06           	vmovhpd	(%r14,%rax), %xmm2, %xmm2
10000529d: 4c 01 f3                    	addq	%r14, %rbx
1000052a0: c4 e3 6d 18 d3 01           	vinsertf128	$1, %xmm3, %ymm2, %ymm2
1000052a6: 4a 8d 04 33                 	leaq	(%rbx,%r14), %rax
1000052aa: c4 c1 7b 10 1c 06           	vmovsd	(%r14,%rax), %xmm3
1000052b0: 4c 01 f0                    	addq	%r14, %rax
1000052b3: c4 c1 61 16 1c 1e           	vmovhpd	(%r14,%rbx), %xmm3, %xmm3
1000052b9: c5 cd 5f f2                 	vmaxpd	%ymm2, %ymm6, %ymm6
1000052bd: 4a 8d 1c 30                 	leaq	(%rax,%r14), %rbx
1000052c1: c4 c1 7b 10 14 1e           	vmovsd	(%r14,%rbx), %xmm2
1000052c7: c4 c1 69 16 14 06           	vmovhpd	(%r14,%rax), %xmm2, %xmm2
1000052cd: 4c 01 f3                    	addq	%r14, %rbx
1000052d0: c4 e3 6d 18 d3 01           	vinsertf128	$1, %xmm3, %ymm2, %ymm2
1000052d6: 4a 8d 0c 33                 	leaq	(%rbx,%r14), %rcx
1000052da: c4 c1 7b 10 1c 0e           	vmovsd	(%r14,%rcx), %xmm3
1000052e0: 4c 01 f1                    	addq	%r14, %rcx
1000052e3: c4 c1 61 16 1c 1e           	vmovhpd	(%r14,%rbx), %xmm3, %xmm3
1000052e9: 48 8b 74 24 78              	movq	120(%rsp), %rsi
1000052ee: 8b 5c 24 24                 	movl	36(%rsp), %ebx
1000052f2: c5 c5 5f fa                 	vmaxpd	%ymm2, %ymm7, %ymm7
1000052f6: 4a 8d 04 31                 	leaq	(%rcx,%r14), %rax
1000052fa: c4 c1 7b 10 14 06           	vmovsd	(%r14,%rax), %xmm2
100005300: c4 c1 69 16 14 0e           	vmovhpd	(%r14,%rcx), %xmm2, %xmm2
100005306: 4c 89 e9                    	movq	%r13, %rcx
100005309: 4c 8b 7c 24 58              	movq	88(%rsp), %r15
10000530e: c4 e3 6d 18 d3 01           	vinsertf128	$1, %xmm3, %ymm2, %ymm2
100005314: c4 c1 35 58 db              	vaddpd	%ymm11, %ymm9, %ymm3
100005319: c4 e3 7d 19 dc 01           	vextractf128	$1, %ymm3, %xmm4
10000531f: 4c 01 f0                    	addq	%r14, %rax
100005322: c4 c3 f9 16 64 05 00 01     	vpextrq	$1, %xmm4, (%r13,%rax)
10000532a: c5 1d 5f ca                 	vmaxpd	%ymm2, %ymm12, %ymm9
10000532e: 4c 01 e8                    	addq	%r13, %rax
100005331: c4 c1 79 d6 24 06           	vmovq	%xmm4, (%r14,%rax)
100005337: 4c 01 f0                    	addq	%r14, %rax
10000533a: c4 c3 f9 16 1c 06 01        	vpextrq	$1, %xmm3, (%r14,%rax)
100005341: c4 c1 3d 58 d3              	vaddpd	%ymm11, %ymm8, %ymm2
100005346: c4 c1 79 d6 1b              	vmovq	%xmm3, (%r11)
10000534b: c4 e3 7d 19 d3 01           	vextractf128	$1, %ymm2, %xmm3
100005351: 4c 01 f0                    	addq	%r14, %rax
100005354: c4 c3 f9 16 1c 07 01        	vpextrq	$1, %xmm3, (%r15,%rax)
10000535b: 4c 01 f8                    	addq	%r15, %rax
10000535e: c4 c1 79 d6 1c 06           	vmovq	%xmm3, (%r14,%rax)
100005364: c4 c1 0d 58 db              	vaddpd	%ymm11, %ymm14, %ymm3
100005369: 4c 01 f0                    	addq	%r14, %rax
10000536c: c4 c3 f9 16 14 06 01        	vpextrq	$1, %xmm2, (%r14,%rax)
100005373: 4c 01 f0                    	addq	%r14, %rax
100005376: c4 c1 79 d6 14 06           	vmovq	%xmm2, (%r14,%rax)
10000537c: c4 e3 7d 19 da 01           	vextractf128	$1, %ymm3, %xmm2
100005382: 4c 01 f0                    	addq	%r14, %rax
100005385: c4 c3 f9 16 14 06 01        	vpextrq	$1, %xmm2, (%r14,%rax)
10000538c: 4c 01 f0                    	addq	%r14, %rax
10000538f: c4 c1 79 d6 14 06           	vmovq	%xmm2, (%r14,%rax)
100005395: c4 c1 2d 58 d3              	vaddpd	%ymm11, %ymm10, %ymm2
10000539a: 4c 01 f0                    	addq	%r14, %rax
10000539d: c4 c3 f9 16 1c 06 01        	vpextrq	$1, %xmm3, (%r14,%rax)
1000053a4: 4c 01 f0                    	addq	%r14, %rax
1000053a7: c4 c1 79 d6 1c 06           	vmovq	%xmm3, (%r14,%rax)
1000053ad: c4 e3 7d 19 d3 01           	vextractf128	$1, %ymm2, %xmm3
1000053b3: 4c 01 f0                    	addq	%r14, %rax
1000053b6: c4 c3 f9 16 1c 06 01        	vpextrq	$1, %xmm3, (%r14,%rax)
1000053bd: 4c 01 f0                    	addq	%r14, %rax
1000053c0: c4 c1 79 d6 1c 06           	vmovq	%xmm3, (%r14,%rax)
1000053c6: c4 c1 55 58 db              	vaddpd	%ymm11, %ymm5, %ymm3
1000053cb: 4c 01 f0                    	addq	%r14, %rax
1000053ce: c4 c3 f9 16 14 06 01        	vpextrq	$1, %xmm2, (%r14,%rax)
1000053d5: 4c 01 f0                    	addq	%r14, %rax
1000053d8: c4 c1 79 d6 14 06           	vmovq	%xmm2, (%r14,%rax)
1000053de: c4 e3 7d 19 da 01           	vextractf128	$1, %ymm3, %xmm2
1000053e4: 4c 01 f0                    	addq	%r14, %rax
1000053e7: c4 c3 f9 16 14 06 01        	vpextrq	$1, %xmm2, (%r14,%rax)
1000053ee: 4c 01 f0                    	addq	%r14, %rax
1000053f1: c4 c1 79 d6 14 06           	vmovq	%xmm2, (%r14,%rax)
1000053f7: c4 c1 4d 58 d3              	vaddpd	%ymm11, %ymm6, %ymm2
1000053fc: 4c 01 f0                    	addq	%r14, %rax
1000053ff: c4 c3 f9 16 1c 06 01        	vpextrq	$1, %xmm3, (%r14,%rax)
100005406: 4c 01 f0                    	addq	%r14, %rax
100005409: c4 c1 79 d6 1c 06           	vmovq	%xmm3, (%r14,%rax)
10000540f: c4 e3 7d 19 d3 01           	vextractf128	$1, %ymm2, %xmm3
100005415: 4c 01 f0                    	addq	%r14, %rax
100005418: c4 c3 f9 16 1c 06 01        	vpextrq	$1, %xmm3, (%r14,%rax)
10000541f: 4c 01 f0                    	addq	%r14, %rax
100005422: c4 c1 79 d6 1c 06           	vmovq	%xmm3, (%r14,%rax)
100005428: c4 c1 45 58 db              	vaddpd	%ymm11, %ymm7, %ymm3
10000542d: 4c 01 f0                    	addq	%r14, %rax
100005430: c4 c3 f9 16 14 06 01        	vpextrq	$1, %xmm2, (%r14,%rax)
100005437: 4c 01 f0                    	addq	%r14, %rax
10000543a: c4 c1 79 d6 14 06           	vmovq	%xmm2, (%r14,%rax)
100005440: c4 e3 7d 19 da 01           	vextractf128	$1, %ymm3, %xmm2
100005446: 4c 01 f0                    	addq	%r14, %rax
100005449: c4 c3 f9 16 14 06 01        	vpextrq	$1, %xmm2, (%r14,%rax)
100005450: 4c 01 f0                    	addq	%r14, %rax
100005453: c4 c1 79 d6 14 06           	vmovq	%xmm2, (%r14,%rax)
100005459: c4 c1 35 58 d3              	vaddpd	%ymm11, %ymm9, %ymm2
10000545e: 4c 01 f0                    	addq	%r14, %rax
100005461: c4 c3 f9 16 1c 06 01        	vpextrq	$1, %xmm3, (%r14,%rax)
100005468: 4c 01 f0                    	addq	%r14, %rax
10000546b: c4 c1 79 d6 1c 06           	vmovq	%xmm3, (%r14,%rax)
100005471: c4 e3 7d 19 d3 01           	vextractf128	$1, %ymm2, %xmm3
100005477: 4c 01 f0                    	addq	%r14, %rax
10000547a: c4 c3 f9 16 1c 06 01        	vpextrq	$1, %xmm3, (%r14,%rax)
100005481: 4c 01 f0                    	addq	%r14, %rax
100005484: c4 c1 79 d6 1c 06           	vmovq	%xmm3, (%r14,%rax)
10000548a: 4c 01 f0                    	addq	%r14, %rax
10000548d: c4 c3 f9 16 14 06 01        	vpextrq	$1, %xmm2, (%r14,%rax)
100005494: 4c 01 f0                    	addq	%r14, %rax
100005497: c4 c1 79 d6 14 06           	vmovq	%xmm2, (%r14,%rax)
10000549d: 41 01 da                    	addl	%ebx, %r10d
1000054a0: 4d 01 e1                    	addq	%r12, %r9
1000054a3: 49 01 f3                    	addq	%rsi, %r11
1000054a6: 48 ff c7                    	incq	%rdi
1000054a9: 45 89 d5                    	movl	%r10d, %r13d
1000054ac: 48 8b 84 24 d0 00 00 00     	movq	208(%rsp), %rax
1000054b4: 48 39 f8                    	cmpq	%rdi, %rax
1000054b7: 0f 85 e3 f8 ff ff           	jne	-1821 <_SIMDkernel32+0x410>
1000054bd: 48 8b 84 24 a0 00 00 00     	movq	160(%rsp), %rax
1000054c5: 4d 8d 0c c0                 	leaq	(%r8,%rax,8), %r9
1000054c9: 41 bf 01 00 00 00           	movl	$1, %r15d
1000054cf: 4c 8b 54 24 48              	movq	72(%rsp), %r10
1000054d4: 4c 8b 64 24 50              	movq	80(%rsp), %r12
1000054d9: 4c 8b 5c 24 40              	movq	64(%rsp), %r11
1000054de: 45 31 ed                    	xorl	%r13d, %r13d
1000054e1: 48 8b 4c 24 68              	movq	104(%rsp), %rcx
1000054e6: eb 27                       	jmp	39 <_SIMDkernel32+0xb7f>
1000054e8: 0f 1f 84 00 00 00 00 00     	nopl	(%rax,%rax)
1000054f0: 49 ff c7                    	incq	%r15
1000054f3: 49 ff c5                    	incq	%r13
1000054f6: 49 83 c3 f8                 	addq	$-8, %r11
1000054fa: 48 8b 4c 24 68              	movq	104(%rsp), %rcx
1000054ff: 49 01 cc                    	addq	%rcx, %r12
100005502: 49 01 ca                    	addq	%rcx, %r10
100005505: 49 83 ff 20                 	cmpq	$32, %r15
100005509: 0f 84 41 f6 ff ff           	je	-2495 <_SIMDkernel32+0x1c0>
10000550f: 48 89 c8                    	movq	%rcx, %rax
100005512: 49 0f af c5                 	imulq	%r13, %rax
100005516: 48 8b 8c 24 d8 00 00 00     	movq	216(%rsp), %rcx
10000551e: 4c 01 f9                    	addq	%r15, %rcx
100005521: c5 fb 10 54 ca f8           	vmovsd	-8(%rdx,%rcx,8), %xmm2
100005527: c4 c1 7b 10 1c 01           	vmovsd	(%r9,%rax), %xmm3
10000552d: 31 db                       	xorl	%ebx, %ebx
10000552f: eb 21                       	jmp	33 <_SIMDkernel32+0xbc2>
100005531: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
10000553b: 0f 1f 44 00 00              	nopl	(%rax,%rax)
100005540: c5 d3 2a d8                 	vcvtsi2sd	%eax, %xmm5, %xmm3
100005544: c4 c1 7b 11 1c da           	vmovsd	%xmm3, (%r10,%rbx,8)
10000554a: 48 ff c3                    	incq	%rbx
10000554d: 49 39 df                    	cmpq	%rbx, %r15
100005550: 74 9e                       	je	-98 <_SIMDkernel32+0xb60>
100005552: c4 c1 6b c2 24 db 00        	vcmpeqsd	(%r11,%rbx,8), %xmm2, %xmm4
100005559: c4 e3 71 4b e0 40           	vblendvpd	%xmm4, %xmm0, %xmm1, %xmm4
10000555f: c4 c1 5b 58 64 dc f8        	vaddsd	-8(%r12,%rbx,8), %xmm4, %xmm4
100005566: c5 fb 2c c4                 	vcvttsd2si	%xmm4, %eax
10000556a: c4 c1 73 58 24 dc           	vaddsd	(%r12,%rbx,8), %xmm1, %xmm4
100005570: c5 fb 2c fc                 	vcvttsd2si	%xmm4, %edi
100005574: c5 e3 58 d9                 	vaddsd	%xmm1, %xmm3, %xmm3
100005578: c5 fb 2c cb                 	vcvttsd2si	%xmm3, %ecx
10000557c: 39 c8                       	cmpl	%ecx, %eax
10000557e: 7d 02                       	jge	2 <_SIMDkernel32+0xbf2>
100005580: 89 c8                       	movl	%ecx, %eax
100005582: 39 f8                       	cmpl	%edi, %eax
100005584: 7d ba                       	jge	-70 <_SIMDkernel32+0xbb0>
100005586: 89 f8                       	movl	%edi, %eax
100005588: eb b6                       	jmp	-74 <_SIMDkernel32+0xbb0>
10000558a: 48 8d 65 d8                 	leaq	-40(%rbp), %rsp
10000558e: 5b                          	popq	%rbx
10000558f: 41 5c                       	popq	%r12
100005591: 41 5d                       	popq	%r13
100005593: 41 5e                       	popq	%r14
100005595: 41 5f                       	popq	%r15
100005597: 5d                          	popq	%rbp
100005598: c5 f8 77                    	vzeroupper
10000559b: c3                          	retq
10000559c: 0f 1f 40 00                 	nopl	(%rax)

00000001000055a0 _naive:
1000055a0: 55                          	pushq	%rbp
1000055a1: 48 89 e5                    	movq	%rsp, %rbp
1000055a4: 41 57                       	pushq	%r15
1000055a6: 41 56                       	pushq	%r14
1000055a8: 41 55                       	pushq	%r13
1000055aa: 41 54                       	pushq	%r12
1000055ac: 53                          	pushq	%rbx
1000055ad: 48 89 55 d0                 	movq	%rdx, -48(%rbp)
1000055b1: 83 ff 02                    	cmpl	$2, %edi
1000055b4: 0f 8c c0 00 00 00           	jl	192 <_naive+0xda>
1000055ba: 83 fe 02                    	cmpl	$2, %esi
1000055bd: 0f 8c b7 00 00 00           	jl	183 <_naive+0xda>
1000055c3: 4c 63 d6                    	movslq	%esi, %r10
1000055c6: 41 89 f4                    	movl	%esi, %r12d
1000055c9: 89 fa                       	movl	%edi, %edx
1000055cb: 4f 8d 6c d0 08              	leaq	8(%r8,%r10,8), %r13
1000055d0: 4e 8d 1c d5 00 00 00 00     	leaq	(,%r10,8), %r11
1000055d8: 49 8d 40 08                 	leaq	8(%r8), %rax
1000055dc: 49 ff cc                    	decq	%r12
1000055df: 41 bf 01 00 00 00           	movl	$1, %r15d
1000055e5: 45 31 f6                    	xorl	%r14d, %r14d
1000055e8: c5 fb 10 05 e0 17 00 00     	vmovsd	6112(%rip), %xmm0
1000055f0: c5 fb 10 0d e0 17 00 00     	vmovsd	6112(%rip), %xmm1
1000055f8: eb 17                       	jmp	23 <_naive+0x71>
1000055fa: 66 0f 1f 44 00 00           	nopw	(%rax,%rax)
100005600: 49 ff c7                    	incq	%r15
100005603: 49 ff c6                    	incq	%r14
100005606: 4d 01 dd                    	addq	%r11, %r13
100005609: 4c 01 d8                    	addq	%r11, %rax
10000560c: 49 39 d7                    	cmpq	%rdx, %r15
10000560f: 74 69                       	je	105 <_naive+0xda>
100005611: 4c 89 f6                    	movq	%r14, %rsi
100005614: 49 0f af f2                 	imulq	%r10, %rsi
100005618: 4c 01 d6                    	addq	%r10, %rsi
10000561b: 48 8b 7d d0                 	movq	-48(%rbp), %rdi
10000561f: c4 a1 7b 10 54 ff f8        	vmovsd	-8(%rdi,%r15,8), %xmm2
100005626: c4 c1 7b 10 1c f0           	vmovsd	(%r8,%rsi,8), %xmm3
10000562c: 31 db                       	xorl	%ebx, %ebx
10000562e: eb 13                       	jmp	19 <_naive+0xa3>
100005630: c5 d3 2a de                 	vcvtsi2sd	%esi, %xmm5, %xmm3
100005634: c4 c1 7b 11 5c dd 00        	vmovsd	%xmm3, (%r13,%rbx,8)
10000563b: 48 ff c3                    	incq	%rbx
10000563e: 49 39 dc                    	cmpq	%rbx, %r12
100005641: 74 bd                       	je	-67 <_naive+0x60>
100005643: c5 eb c2 24 d9 00           	vcmpeqsd	(%rcx,%rbx,8), %xmm2, %xmm4
100005649: c4 e3 71 4b e0 40           	vblendvpd	%xmm4, %xmm0, %xmm1, %xmm4
10000564f: c5 db 58 64 d8 f8           	vaddsd	-8(%rax,%rbx,8), %xmm4, %xmm4
100005655: c5 fb 2c f4                 	vcvttsd2si	%xmm4, %esi
100005659: c5 f3 58 24 d8              	vaddsd	(%rax,%rbx,8), %xmm1, %xmm4
10000565e: c5 fb 2c fc                 	vcvttsd2si	%xmm4, %edi
100005662: c5 e3 58 d9                 	vaddsd	%xmm1, %xmm3, %xmm3
100005666: c5 7b 2c cb                 	vcvttsd2si	%xmm3, %r9d
10000566a: 44 39 ce                    	cmpl	%r9d, %esi
10000566d: 7d 03                       	jge	3 <_naive+0xd2>
10000566f: 44 89 ce                    	movl	%r9d, %esi
100005672: 39 fe                       	cmpl	%edi, %esi
100005674: 7d ba                       	jge	-70 <_naive+0x90>
100005676: 89 fe                       	movl	%edi, %esi
100005678: eb b6                       	jmp	-74 <_naive+0x90>
10000567a: 5b                          	popq	%rbx
10000567b: 41 5c                       	popq	%r12
10000567d: 41 5d                       	popq	%r13
10000567f: 41 5e                       	popq	%r14
100005681: 41 5f                       	popq	%r15
100005683: 5d                          	popq	%rbp
100005684: c3                          	retq
100005685: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
10000568f: 90                          	nop

0000000100005690 _init_matrix:
100005690: 55                          	pushq	%rbp
100005691: 48 89 e5                    	movq	%rsp, %rbp
100005694: 53                          	pushq	%rbx
100005695: 85 f6                       	testl	%esi, %esi
100005697: 0f 8e b6 00 00 00           	jle	182 <_init_matrix+0xc3>
10000569d: 41 89 f0                    	movl	%esi, %r8d
1000056a0: 83 fe 0f                    	cmpl	$15, %esi
1000056a3: 77 07                       	ja	7 <_init_matrix+0x1c>
1000056a5: 31 c9                       	xorl	%ecx, %ecx
1000056a7: e9 8d 00 00 00              	jmp	141 <_init_matrix+0xa9>
1000056ac: 44 89 c1                    	movl	%r8d, %ecx
1000056af: 83 e1 f0                    	andl	$-16, %ecx
1000056b2: c5 f9 6f 05 56 17 00 00     	vmovdqa	5974(%rip), %xmm0
1000056ba: 31 c0                       	xorl	%eax, %eax
1000056bc: c4 41 39 ef c0              	vpxor	%xmm8, %xmm8, %xmm8
1000056c1: c4 62 79 58 0d 66 17 00 00  	vpbroadcastd	5990(%rip), %xmm9
1000056ca: c4 e2 79 58 1d 61 17 00 00  	vpbroadcastd	5985(%rip), %xmm3
1000056d3: c4 e2 79 58 25 5c 17 00 00  	vpbroadcastd	5980(%rip), %xmm4
1000056dc: c4 e2 79 58 2d 57 17 00 00  	vpbroadcastd	5975(%rip), %xmm5
1000056e5: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
1000056ef: 90                          	nop
1000056f0: c5 b9 fa f0                 	vpsubd	%xmm0, %xmm8, %xmm6
1000056f4: c5 b1 fa f8                 	vpsubd	%xmm0, %xmm9, %xmm7
1000056f8: c5 e1 fa c8                 	vpsubd	%xmm0, %xmm3, %xmm1
1000056fc: c5 d9 fa d0                 	vpsubd	%xmm0, %xmm4, %xmm2
100005700: c5 fe e6 f6                 	vcvtdq2pd	%xmm6, %ymm6
100005704: c5 fe e6 ff                 	vcvtdq2pd	%xmm7, %ymm7
100005708: c5 fe e6 c9                 	vcvtdq2pd	%xmm1, %ymm1
10000570c: c5 fe e6 d2                 	vcvtdq2pd	%xmm2, %ymm2
100005710: c5 fc 11 34 c2              	vmovups	%ymm6, (%rdx,%rax,8)
100005715: c5 fc 11 7c c2 20           	vmovups	%ymm7, 32(%rdx,%rax,8)
10000571b: c5 fc 11 4c c2 40           	vmovups	%ymm1, 64(%rdx,%rax,8)
100005721: c5 fc 11 54 c2 60           	vmovups	%ymm2, 96(%rdx,%rax,8)
100005727: 48 83 c0 10                 	addq	$16, %rax
10000572b: c5 f9 fe c5                 	vpaddd	%xmm5, %xmm0, %xmm0
10000572f: 48 39 c1                    	cmpq	%rax, %rcx
100005732: 75 bc                       	jne	-68 <_init_matrix+0x60>
100005734: 4c 39 c1                    	cmpq	%r8, %rcx
100005737: 74 1a                       	je	26 <_init_matrix+0xc3>
100005739: 89 c8                       	movl	%ecx, %eax
10000573b: f7 d8                       	negl	%eax
10000573d: 0f 1f 00                    	nopl	(%rax)
100005740: c5 ab 2a c0                 	vcvtsi2sd	%eax, %xmm10, %xmm0
100005744: c5 f9 d6 04 ca              	vmovq	%xmm0, (%rdx,%rcx,8)
100005749: 48 ff c1                    	incq	%rcx
10000574c: ff c8                       	decl	%eax
10000574e: 49 39 c8                    	cmpq	%rcx, %r8
100005751: 75 ed                       	jne	-19 <_init_matrix+0xb0>
100005753: 85 ff                       	testl	%edi, %edi
100005755: 0f 8e b7 00 00 00           	jle	183 <_init_matrix+0x182>
10000575b: 48 63 c6                    	movslq	%esi, %rax
10000575e: 89 fe                       	movl	%edi, %esi
100005760: 48 8d 7e ff                 	leaq	-1(%rsi), %rdi
100005764: 89 f1                       	movl	%esi, %ecx
100005766: 83 e1 03                    	andl	$3, %ecx
100005769: 48 83 ff 03                 	cmpq	$3, %rdi
10000576d: 73 0c                       	jae	12 <_init_matrix+0xeb>
10000576f: 31 f6                       	xorl	%esi, %esi
100005771: 48 85 c9                    	testq	%rcx, %rcx
100005774: 75 6c                       	jne	108 <_init_matrix+0x152>
100005776: e9 97 00 00 00              	jmp	151 <_init_matrix+0x182>
10000577b: 48 8d 3c c5 00 00 00 00     	leaq	(,%rax,8), %rdi
100005783: 4c 8d 04 7f                 	leaq	(%rdi,%rdi,2), %r8
100005787: 49 89 c1                    	movq	%rax, %r9
10000578a: 49 c1 e1 05                 	shlq	$5, %r9
10000578e: 49 89 c2                    	movq	%rax, %r10
100005791: 49 c1 e2 04                 	shlq	$4, %r10
100005795: 49 89 cb                    	movq	%rcx, %r11
100005798: 49 29 f3                    	subq	%rsi, %r11
10000579b: 31 f6                       	xorl	%esi, %esi
10000579d: 48 89 d7                    	movq	%rdx, %rdi
1000057a0: c5 ab 2a c6                 	vcvtsi2sd	%esi, %xmm10, %xmm0
1000057a4: c5 fb 11 07                 	vmovsd	%xmm0, (%rdi)
1000057a8: 8d 5e ff                    	leal	-1(%rsi), %ebx
1000057ab: c5 ab 2a c3                 	vcvtsi2sd	%ebx, %xmm10, %xmm0
1000057af: c5 fb 11 04 c7              	vmovsd	%xmm0, (%rdi,%rax,8)
1000057b4: 8d 5e fe                    	leal	-2(%rsi), %ebx
1000057b7: c5 ab 2a c3                 	vcvtsi2sd	%ebx, %xmm10, %xmm0
1000057bb: c4 a1 7b 11 04 17           	vmovsd	%xmm0, (%rdi,%r10)
1000057c1: 8d 5e fd                    	leal	-3(%rsi), %ebx
1000057c4: c5 ab 2a c3                 	vcvtsi2sd	%ebx, %xmm10, %xmm0
1000057c8: c4 a1 79 d6 04 07           	vmovq	%xmm0, (%rdi,%r8)
1000057ce: 48 83 c6 fc                 	addq	$-4, %rsi
1000057d2: 4c 01 cf                    	addq	%r9, %rdi
1000057d5: 49 39 f3                    	cmpq	%rsi, %r11
1000057d8: 75 c6                       	jne	-58 <_init_matrix+0x110>
1000057da: 48 f7 de                    	negq	%rsi
1000057dd: 48 85 c9                    	testq	%rcx, %rcx
1000057e0: 74 30                       	je	48 <_init_matrix+0x182>
1000057e2: 48 89 f7                    	movq	%rsi, %rdi
1000057e5: 48 0f af f8                 	imulq	%rax, %rdi
1000057e9: 48 8d 14 fa                 	leaq	(%rdx,%rdi,8), %rdx
1000057ed: 48 c1 e0 03                 	shlq	$3, %rax
1000057f1: f7 de                       	negl	%esi
1000057f3: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
1000057fd: 0f 1f 00                    	nopl	(%rax)
100005800: c5 ab 2a c6                 	vcvtsi2sd	%esi, %xmm10, %xmm0
100005804: c5 f9 d6 02                 	vmovq	%xmm0, (%rdx)
100005808: 48 01 c2                    	addq	%rax, %rdx
10000580b: ff ce                       	decl	%esi
10000580d: 48 ff c9                    	decq	%rcx
100005810: 75 ee                       	jne	-18 <_init_matrix+0x170>
100005812: 5b                          	popq	%rbx
100005813: 5d                          	popq	%rbp
100005814: c5 f8 77                    	vzeroupper
100005817: c3                          	retq
100005818: 0f 1f 84 00 00 00 00 00     	nopl	(%rax,%rax)

0000000100005820 _set_zeros:
100005820: 55                          	pushq	%rbp
100005821: 48 89 e5                    	movq	%rsp, %rbp
100005824: 41 57                       	pushq	%r15
100005826: 41 56                       	pushq	%r14
100005828: 41 55                       	pushq	%r13
10000582a: 41 54                       	pushq	%r12
10000582c: 53                          	pushq	%rbx
10000582d: 48 83 ec 28                 	subq	$40, %rsp
100005831: 85 ff                       	testl	%edi, %edi
100005833: 0f 8e 0a 01 00 00           	jle	266 <_set_zeros+0x123>
100005839: 85 f6                       	testl	%esi, %esi
10000583b: 0f 8e 02 01 00 00           	jle	258 <_set_zeros+0x123>
100005841: 49 89 d4                    	movq	%rdx, %r12
100005844: 48 63 ce                    	movslq	%esi, %rcx
100005847: 41 89 f7                    	movl	%esi, %r15d
10000584a: 49 c1 e7 03                 	shlq	$3, %r15
10000584e: 89 fa                       	movl	%edi, %edx
100005850: 48 8d 42 ff                 	leaq	-1(%rdx), %rax
100005854: 48 89 55 d0                 	movq	%rdx, -48(%rbp)
100005858: 83 e2 07                    	andl	$7, %edx
10000585b: 48 83 f8 07                 	cmpq	$7, %rax
10000585f: 48 89 4d b8                 	movq	%rcx, -72(%rbp)
100005863: 48 89 55 c0                 	movq	%rdx, -64(%rbp)
100005867: 4c 89 65 c8                 	movq	%r12, -56(%rbp)
10000586b: 73 08                       	jae	8 <_set_zeros+0x55>
10000586d: 45 31 ed                    	xorl	%r13d, %r13d
100005870: e9 97 00 00 00              	jmp	151 <_set_zeros+0xec>
100005875: 48 89 c8                    	movq	%rcx, %rax
100005878: 48 c1 e0 06                 	shlq	$6, %rax
10000587c: 48 89 45 b0                 	movq	%rax, -80(%rbp)
100005880: 48 29 55 d0                 	subq	%rdx, -48(%rbp)
100005884: 4c 8d 34 cd 00 00 00 00     	leaq	(,%rcx,8), %r14
10000588c: 45 31 ed                    	xorl	%r13d, %r13d
10000588f: 90                          	nop
100005890: 4c 89 e7                    	movq	%r12, %rdi
100005893: 4c 89 fe                    	movq	%r15, %rsi
100005896: e8 b3 14 00 00              	callq	5299 <dyld_stub_binder+0x100006d4e>
10000589b: 4b 8d 1c 34                 	leaq	(%r12,%r14), %rbx
10000589f: 48 89 df                    	movq	%rbx, %rdi
1000058a2: 4c 89 fe                    	movq	%r15, %rsi
1000058a5: e8 a4 14 00 00              	callq	5284 <dyld_stub_binder+0x100006d4e>
1000058aa: 4c 01 f3                    	addq	%r14, %rbx
1000058ad: 48 89 df                    	movq	%rbx, %rdi
1000058b0: 4c 89 fe                    	movq	%r15, %rsi
1000058b3: e8 96 14 00 00              	callq	5270 <dyld_stub_binder+0x100006d4e>
1000058b8: 4c 01 f3                    	addq	%r14, %rbx
1000058bb: 48 89 df                    	movq	%rbx, %rdi
1000058be: 4c 89 fe                    	movq	%r15, %rsi
1000058c1: e8 88 14 00 00              	callq	5256 <dyld_stub_binder+0x100006d4e>
1000058c6: 4c 01 f3                    	addq	%r14, %rbx
1000058c9: 48 89 df                    	movq	%rbx, %rdi
1000058cc: 4c 89 fe                    	movq	%r15, %rsi
1000058cf: e8 7a 14 00 00              	callq	5242 <dyld_stub_binder+0x100006d4e>
1000058d4: 4c 01 f3                    	addq	%r14, %rbx
1000058d7: 48 89 df                    	movq	%rbx, %rdi
1000058da: 4c 89 fe                    	movq	%r15, %rsi
1000058dd: e8 6c 14 00 00              	callq	5228 <dyld_stub_binder+0x100006d4e>
1000058e2: 4c 01 f3                    	addq	%r14, %rbx
1000058e5: 48 89 df                    	movq	%rbx, %rdi
1000058e8: 4c 89 fe                    	movq	%r15, %rsi
1000058eb: e8 5e 14 00 00              	callq	5214 <dyld_stub_binder+0x100006d4e>
1000058f0: 4c 01 f3                    	addq	%r14, %rbx
1000058f3: 48 89 df                    	movq	%rbx, %rdi
1000058f6: 4c 89 fe                    	movq	%r15, %rsi
1000058f9: e8 50 14 00 00              	callq	5200 <dyld_stub_binder+0x100006d4e>
1000058fe: 49 83 c5 08                 	addq	$8, %r13
100005902: 4c 03 65 b0                 	addq	-80(%rbp), %r12
100005906: 4c 39 6d d0                 	cmpq	%r13, -48(%rbp)
10000590a: 75 84                       	jne	-124 <_set_zeros+0x70>
10000590c: 4c 8b 65 c0                 	movq	-64(%rbp), %r12
100005910: 4d 85 e4                    	testq	%r12, %r12
100005913: 4c 8b 75 b8                 	movq	-72(%rbp), %r14
100005917: 48 8b 45 c8                 	movq	-56(%rbp), %rax
10000591b: 74 26                       	je	38 <_set_zeros+0x123>
10000591d: 4d 0f af ee                 	imulq	%r14, %r13
100005921: 4a 8d 1c e8                 	leaq	(%rax,%r13,8), %rbx
100005925: 49 c1 e6 03                 	shlq	$3, %r14
100005929: 0f 1f 80 00 00 00 00        	nopl	(%rax)
100005930: 48 89 df                    	movq	%rbx, %rdi
100005933: 4c 89 fe                    	movq	%r15, %rsi
100005936: e8 13 14 00 00              	callq	5139 <dyld_stub_binder+0x100006d4e>
10000593b: 4c 01 f3                    	addq	%r14, %rbx
10000593e: 49 ff cc                    	decq	%r12
100005941: 75 ed                       	jne	-19 <_set_zeros+0x110>
100005943: 48 83 c4 28                 	addq	$40, %rsp
100005947: 5b                          	popq	%rbx
100005948: 41 5c                       	popq	%r12
10000594a: 41 5d                       	popq	%r13
10000594c: 41 5e                       	popq	%r14
10000594e: 41 5f                       	popq	%r15
100005950: 5d                          	popq	%rbp
100005951: c3                          	retq
100005952: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
10000595c: 0f 1f 40 00                 	nopl	(%rax)

0000000100005960 _init_matrix_packed:
100005960: 55                          	pushq	%rbp
100005961: 48 89 e5                    	movq	%rsp, %rbp
100005964: 41 57                       	pushq	%r15
100005966: 41 56                       	pushq	%r14
100005968: 41 55                       	pushq	%r13
10000596a: 41 54                       	pushq	%r12
10000596c: 53                          	pushq	%rbx
10000596d: 48 83 ec 48                 	subq	$72, %rsp
100005971: 48 89 55 d0                 	movq	%rdx, -48(%rbp)
100005975: 48 89 7d a8                 	movq	%rdi, -88(%rbp)
100005979: 8d 44 3f ff                 	leal	-1(%rdi,%rdi), %eax
10000597d: 4c 63 fe                    	movslq	%esi, %r15
100005980: 89 75 cc                    	movl	%esi, -52(%rbp)
100005983: 89 f1                       	movl	%esi, %ecx
100005985: 48 89 4d c0                 	movq	%rcx, -64(%rbp)
100005989: 85 c0                       	testl	%eax, %eax
10000598b: 0f 8e 12 01 00 00           	jle	274 <_init_matrix_packed+0x143>
100005991: 83 7d cc 00                 	cmpl	$0, -52(%rbp)
100005995: 0f 8e 8a 01 00 00           	jle	394 <_init_matrix_packed+0x1c5>
10000599b: 48 8b 4d c0                 	movq	-64(%rbp), %rcx
10000599f: 4c 8d 2c cd 00 00 00 00     	leaq	(,%rcx,8), %r13
1000059a7: 41 89 c4                    	movl	%eax, %r12d
1000059aa: 49 8d 44 24 ff              	leaq	-1(%r12), %rax
1000059af: 4c 89 65 b8                 	movq	%r12, -72(%rbp)
1000059b3: 41 83 e4 07                 	andl	$7, %r12d
1000059b7: 48 83 f8 07                 	cmpq	$7, %rax
1000059bb: 4c 89 7d b0                 	movq	%r15, -80(%rbp)
1000059bf: 73 07                       	jae	7 <_init_matrix_packed+0x68>
1000059c1: 31 c9                       	xorl	%ecx, %ecx
1000059c3: e9 b0 00 00 00              	jmp	176 <_init_matrix_packed+0x118>
1000059c8: 4c 89 f8                    	movq	%r15, %rax
1000059cb: 48 c1 e0 06                 	shlq	$6, %rax
1000059cf: 48 89 45 a0                 	movq	%rax, -96(%rbp)
1000059d3: 4c 29 65 b8                 	subq	%r12, -72(%rbp)
1000059d7: 4e 8d 3c fd 00 00 00 00     	leaq	(,%r15,8), %r15
1000059df: 31 c9                       	xorl	%ecx, %ecx
1000059e1: 48 8b 5d d0                 	movq	-48(%rbp), %rbx
1000059e5: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
1000059ef: 90                          	nop
1000059f0: 48 89 4d 98                 	movq	%rcx, -104(%rbp)
1000059f4: 48 89 df                    	movq	%rbx, %rdi
1000059f7: 4c 89 ee                    	movq	%r13, %rsi
1000059fa: e8 4f 13 00 00              	callq	4943 <dyld_stub_binder+0x100006d4e>
1000059ff: 4e 8d 34 3b                 	leaq	(%rbx,%r15), %r14
100005a03: 4c 89 f7                    	movq	%r14, %rdi
100005a06: 4c 89 ee                    	movq	%r13, %rsi
100005a09: e8 40 13 00 00              	callq	4928 <dyld_stub_binder+0x100006d4e>
100005a0e: 4d 01 fe                    	addq	%r15, %r14
100005a11: 4c 89 f7                    	movq	%r14, %rdi
100005a14: 4c 89 ee                    	movq	%r13, %rsi
100005a17: e8 32 13 00 00              	callq	4914 <dyld_stub_binder+0x100006d4e>
100005a1c: 4d 01 fe                    	addq	%r15, %r14
100005a1f: 4c 89 f7                    	movq	%r14, %rdi
100005a22: 4c 89 ee                    	movq	%r13, %rsi
100005a25: e8 24 13 00 00              	callq	4900 <dyld_stub_binder+0x100006d4e>
100005a2a: 4d 01 fe                    	addq	%r15, %r14
100005a2d: 4c 89 f7                    	movq	%r14, %rdi
100005a30: 4c 89 ee                    	movq	%r13, %rsi
100005a33: e8 16 13 00 00              	callq	4886 <dyld_stub_binder+0x100006d4e>
100005a38: 4d 01 fe                    	addq	%r15, %r14
100005a3b: 4c 89 f7                    	movq	%r14, %rdi
100005a3e: 4c 89 ee                    	movq	%r13, %rsi
100005a41: e8 08 13 00 00              	callq	4872 <dyld_stub_binder+0x100006d4e>
100005a46: 4d 01 fe                    	addq	%r15, %r14
100005a49: 4c 89 f7                    	movq	%r14, %rdi
100005a4c: 4c 89 ee                    	movq	%r13, %rsi
100005a4f: e8 fa 12 00 00              	callq	4858 <dyld_stub_binder+0x100006d4e>
100005a54: 4d 01 fe                    	addq	%r15, %r14
100005a57: 4c 89 f7                    	movq	%r14, %rdi
100005a5a: 4c 89 ee                    	movq	%r13, %rsi
100005a5d: e8 ec 12 00 00              	callq	4844 <dyld_stub_binder+0x100006d4e>
100005a62: 48 8b 4d 98                 	movq	-104(%rbp), %rcx
100005a66: 48 83 c1 08                 	addq	$8, %rcx
100005a6a: 48 03 5d a0                 	addq	-96(%rbp), %rbx
100005a6e: 48 39 4d b8                 	cmpq	%rcx, -72(%rbp)
100005a72: 0f 85 78 ff ff ff           	jne	-136 <_init_matrix_packed+0x90>
100005a78: 4c 8b 7d b0                 	movq	-80(%rbp), %r15
100005a7c: 49 0f af cf                 	imulq	%r15, %rcx
100005a80: 48 8b 45 d0                 	movq	-48(%rbp), %rax
100005a84: 48 8d 1c c8                 	leaq	(%rax,%rcx,8), %rbx
100005a88: 4e 8d 34 fd 00 00 00 00     	leaq	(,%r15,8), %r14
100005a90: 48 89 df                    	movq	%rbx, %rdi
100005a93: 4c 89 ee                    	movq	%r13, %rsi
100005a96: e8 b3 12 00 00              	callq	4787 <dyld_stub_binder+0x100006d4e>
100005a9b: 4c 01 f3                    	addq	%r14, %rbx
100005a9e: 49 ff cc                    	decq	%r12
100005aa1: 75 ed                       	jne	-19 <_init_matrix_packed+0x130>
100005aa3: 8b 4d cc                    	movl	-52(%rbp), %ecx
100005aa6: 85 c9                       	testl	%ecx, %ecx
100005aa8: 7e 7b                       	jle	123 <_init_matrix_packed+0x1c5>
100005aaa: 48 8b 45 c0                 	movq	-64(%rbp), %rax
100005aae: 41 89 c0                    	movl	%eax, %r8d
100005ab1: 41 83 e0 01                 	andl	$1, %r8d
100005ab5: 83 f9 01                    	cmpl	$1, %ecx
100005ab8: 75 09                       	jne	9 <_init_matrix_packed+0x163>
100005aba: 31 c9                       	xorl	%ecx, %ecx
100005abc: 4d 85 c0                    	testq	%r8, %r8
100005abf: 75 49                       	jne	73 <_init_matrix_packed+0x1aa>
100005ac1: eb 62                       	jmp	98 <_init_matrix_packed+0x1c5>
100005ac3: 4c 89 fa                    	movq	%r15, %rdx
100005ac6: 48 c1 e2 04                 	shlq	$4, %rdx
100005aca: 48 83 c2 10                 	addq	$16, %rdx
100005ace: 4c 29 c0                    	subq	%r8, %rax
100005ad1: be ff ff ff ff              	movl	$4294967295, %esi
100005ad6: 31 c9                       	xorl	%ecx, %ecx
100005ad8: 48 8b 7d d0                 	movq	-48(%rbp), %rdi
100005adc: 0f 1f 40 00                 	nopl	(%rax)
100005ae0: 8d 5e 01                    	leal	1(%rsi), %ebx
100005ae3: c5 f3 2a c3                 	vcvtsi2sd	%ebx, %xmm1, %xmm0
100005ae7: c5 fb 11 07                 	vmovsd	%xmm0, (%rdi)
100005aeb: c5 f3 2a c6                 	vcvtsi2sd	%esi, %xmm1, %xmm0
100005aef: c4 a1 7b 11 44 ff 08        	vmovsd	%xmm0, 8(%rdi,%r15,8)
100005af6: 48 83 c1 02                 	addq	$2, %rcx
100005afa: 83 c6 fe                    	addl	$-2, %esi
100005afd: 48 01 d7                    	addq	%rdx, %rdi
100005b00: 48 39 c8                    	cmpq	%rcx, %rax
100005b03: 75 db                       	jne	-37 <_init_matrix_packed+0x180>
100005b05: 4d 85 c0                    	testq	%r8, %r8
100005b08: 74 1b                       	je	27 <_init_matrix_packed+0x1c5>
100005b0a: 89 c8                       	movl	%ecx, %eax
100005b0c: f7 d8                       	negl	%eax
100005b0e: c5 f3 2a c0                 	vcvtsi2sd	%eax, %xmm1, %xmm0
100005b12: 48 89 c8                    	movq	%rcx, %rax
100005b15: 49 0f af c7                 	imulq	%r15, %rax
100005b19: 48 01 c8                    	addq	%rcx, %rax
100005b1c: 48 8b 4d d0                 	movq	-48(%rbp), %rcx
100005b20: c5 fb 11 04 c1              	vmovsd	%xmm0, (%rcx,%rax,8)
100005b25: 48 8b 45 a8                 	movq	-88(%rbp), %rax
100005b29: 85 c0                       	testl	%eax, %eax
100005b2b: 0f 8e c1 00 00 00           	jle	193 <_init_matrix_packed+0x292>
100005b31: 89 c1                       	movl	%eax, %ecx
100005b33: 48 8d 51 ff                 	leaq	-1(%rcx), %rdx
100005b37: 89 c8                       	movl	%ecx, %eax
100005b39: 83 e0 03                    	andl	$3, %eax
100005b3c: 48 83 fa 03                 	cmpq	$3, %rdx
100005b40: 73 0c                       	jae	12 <_init_matrix_packed+0x1ee>
100005b42: 31 c9                       	xorl	%ecx, %ecx
100005b44: 48 85 c0                    	testq	%rax, %rax
100005b47: 75 79                       	jne	121 <_init_matrix_packed+0x262>
100005b49: e9 a4 00 00 00              	jmp	164 <_init_matrix_packed+0x292>
100005b4e: 4a 8d 14 fd 00 00 00 00     	leaq	(,%r15,8), %rdx
100005b56: 4c 8d 04 52                 	leaq	(%rdx,%rdx,2), %r8
100005b5a: 4d 89 f9                    	movq	%r15, %r9
100005b5d: 49 c1 e1 05                 	shlq	$5, %r9
100005b61: 4c 89 ff                    	movq	%r15, %rdi
100005b64: 48 c1 e7 04                 	shlq	$4, %rdi
100005b68: 48 89 c3                    	movq	%rax, %rbx
100005b6b: 48 29 cb                    	subq	%rcx, %rbx
100005b6e: 31 c9                       	xorl	%ecx, %ecx
100005b70: 48 8b 55 d0                 	movq	-48(%rbp), %rdx
100005b74: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
100005b7e: 66 90                       	nop
100005b80: c5 f3 2a c1                 	vcvtsi2sd	%ecx, %xmm1, %xmm0
100005b84: c5 fb 11 02                 	vmovsd	%xmm0, (%rdx)
100005b88: 8d 71 ff                    	leal	-1(%rcx), %esi
100005b8b: c5 f3 2a c6                 	vcvtsi2sd	%esi, %xmm1, %xmm0
100005b8f: c4 a1 7b 11 04 fa           	vmovsd	%xmm0, (%rdx,%r15,8)
100005b95: 8d 71 fe                    	leal	-2(%rcx), %esi
100005b98: c5 f3 2a c6                 	vcvtsi2sd	%esi, %xmm1, %xmm0
100005b9c: c5 fb 11 04 3a              	vmovsd	%xmm0, (%rdx,%rdi)
100005ba1: 8d 71 fd                    	leal	-3(%rcx), %esi
100005ba4: c5 f3 2a c6                 	vcvtsi2sd	%esi, %xmm1, %xmm0
100005ba8: c4 a1 7b 11 04 02           	vmovsd	%xmm0, (%rdx,%r8)
100005bae: 48 83 c1 fc                 	addq	$-4, %rcx
100005bb2: 4c 01 ca                    	addq	%r9, %rdx
100005bb5: 48 39 cb                    	cmpq	%rcx, %rbx
100005bb8: 75 c6                       	jne	-58 <_init_matrix_packed+0x220>
100005bba: 48 f7 d9                    	negq	%rcx
100005bbd: 48 85 c0                    	testq	%rax, %rax
100005bc0: 74 30                       	je	48 <_init_matrix_packed+0x292>
100005bc2: 48 89 ca                    	movq	%rcx, %rdx
100005bc5: 49 0f af d7                 	imulq	%r15, %rdx
100005bc9: 48 8b 75 d0                 	movq	-48(%rbp), %rsi
100005bcd: 48 8d 14 d6                 	leaq	(%rsi,%rdx,8), %rdx
100005bd1: 49 c1 e7 03                 	shlq	$3, %r15
100005bd5: f7 d9                       	negl	%ecx
100005bd7: 66 0f 1f 84 00 00 00 00 00  	nopw	(%rax,%rax)
100005be0: c5 f3 2a c1                 	vcvtsi2sd	%ecx, %xmm1, %xmm0
100005be4: c5 fb 11 02                 	vmovsd	%xmm0, (%rdx)
100005be8: 4c 01 fa                    	addq	%r15, %rdx
100005beb: ff c9                       	decl	%ecx
100005bed: 48 ff c8                    	decq	%rax
100005bf0: 75 ee                       	jne	-18 <_init_matrix_packed+0x280>
100005bf2: 48 83 c4 48                 	addq	$72, %rsp
100005bf6: 5b                          	popq	%rbx
100005bf7: 41 5c                       	popq	%r12
100005bf9: 41 5d                       	popq	%r13
100005bfb: 41 5e                       	popq	%r14
100005bfd: 41 5f                       	popq	%r15
100005bff: 5d                          	popq	%rbp
100005c00: c3                          	retq
100005c01: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
100005c0b: 0f 1f 44 00 00              	nopl	(%rax,%rax)

0000000100005c10 _printMatrix:
100005c10: 55                          	pushq	%rbp
100005c11: 48 89 e5                    	movq	%rsp, %rbp
100005c14: 41 57                       	pushq	%r15
100005c16: 41 56                       	pushq	%r14
100005c18: 41 55                       	pushq	%r13
100005c1a: 41 54                       	pushq	%r12
100005c1c: 53                          	pushq	%rbx
100005c1d: 48 83 ec 18                 	subq	$24, %rsp
100005c21: 85 ff                       	testl	%edi, %edi
100005c23: 0f 8e 96 00 00 00           	jle	150 <_printMatrix+0xaf>
100005c29: 41 89 fe                    	movl	%edi, %r14d
100005c2c: 85 f6                       	testl	%esi, %esi
100005c2e: 0f 8e 7c 00 00 00           	jle	124 <_printMatrix+0xa0>
100005c34: 48 89 d3                    	movq	%rdx, %rbx
100005c37: 48 63 c6                    	movslq	%esi, %rax
100005c3a: 41 89 f4                    	movl	%esi, %r12d
100005c3d: 44 89 f1                    	movl	%r14d, %ecx
100005c40: 48 89 4d d0                 	movq	%rcx, -48(%rbp)
100005c44: 48 c1 e0 03                 	shlq	$3, %rax
100005c48: 48 89 45 c8                 	movq	%rax, -56(%rbp)
100005c4c: 4c 8d 35 f1 11 00 00        	leaq	4593(%rip), %r14
100005c53: 45 31 ed                    	xorl	%r13d, %r13d
100005c56: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
100005c60: 45 31 ff                    	xorl	%r15d, %r15d
100005c63: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
100005c6d: 0f 1f 00                    	nopl	(%rax)
100005c70: c4 a1 7b 2c 34 fb           	vcvttsd2si	(%rbx,%r15,8), %esi
100005c76: 4c 89 f7                    	movq	%r14, %rdi
100005c79: 31 c0                       	xorl	%eax, %eax
100005c7b: e8 e6 10 00 00              	callq	4326 <dyld_stub_binder+0x100006d66>
100005c80: 49 ff c7                    	incq	%r15
100005c83: 4d 39 fc                    	cmpq	%r15, %r12
100005c86: 75 e8                       	jne	-24 <_printMatrix+0x60>
100005c88: bf 0a 00 00 00              	movl	$10, %edi
100005c8d: e8 da 10 00 00              	callq	4314 <dyld_stub_binder+0x100006d6c>
100005c92: 49 ff c5                    	incq	%r13
100005c95: 48 03 5d c8                 	addq	-56(%rbp), %rbx
100005c99: 4c 3b 6d d0                 	cmpq	-48(%rbp), %r13
100005c9d: 75 c1                       	jne	-63 <_printMatrix+0x50>
100005c9f: eb 1e                       	jmp	30 <_printMatrix+0xaf>
100005ca1: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
100005cab: 0f 1f 44 00 00              	nopl	(%rax,%rax)
100005cb0: bf 0a 00 00 00              	movl	$10, %edi
100005cb5: e8 b2 10 00 00              	callq	4274 <dyld_stub_binder+0x100006d6c>
100005cba: 41 ff ce                    	decl	%r14d
100005cbd: 75 f1                       	jne	-15 <_printMatrix+0xa0>
100005cbf: 48 83 c4 18                 	addq	$24, %rsp
100005cc3: 5b                          	popq	%rbx
100005cc4: 41 5c                       	popq	%r12
100005cc6: 41 5d                       	popq	%r13
100005cc8: 41 5e                       	popq	%r14
100005cca: 41 5f                       	popq	%r15
100005ccc: 5d                          	popq	%rbp
100005ccd: c3                          	retq
100005cce: 66 90                       	nop

0000000100005cd0 _rand_dna_seq:
100005cd0: 55                          	pushq	%rbp
100005cd1: 48 89 e5                    	movq	%rsp, %rbp
100005cd4: 41 57                       	pushq	%r15
100005cd6: 41 56                       	pushq	%r14
100005cd8: 41 54                       	pushq	%r12
100005cda: 53                          	pushq	%rbx
100005cdb: 48 89 fb                    	movq	%rdi, %rbx
100005cde: 48 85 f6                    	testq	%rsi, %rsi
100005ce1: 74 6a                       	je	106 <_rand_dna_seq+0x7d>
100005ce3: 49 89 f6                    	movq	%rsi, %r14
100005ce6: 49 bf 00 00 00 00 00 00 00 80       	movabsq	$-9223372036854775808, %r15
100005cf0: 4c 8d 25 51 11 00 00        	leaq	4433(%rip), %r12
100005cf7: 66 0f 1f 84 00 00 00 00 00  	nopw	(%rax,%rax)
100005d00: e8 6d 10 00 00              	callq	4205 <dyld_stub_binder+0x100006d72>
100005d05: c5 e3 2a c0                 	vcvtsi2sd	%eax, %xmm3, %xmm0
100005d09: c5 fb 5e 05 d7 10 00 00     	vdivsd	4311(%rip), %xmm0, %xmm0
100005d11: c5 fb 59 05 d7 10 00 00     	vmulsd	4311(%rip), %xmm0, %xmm0
100005d19: c5 fb 10 0d d7 10 00 00     	vmovsd	4311(%rip), %xmm1
100005d21: c5 f9 28 d1                 	vmovapd	%xmm1, %xmm2
100005d25: c5 fb 5c c9                 	vsubsd	%xmm1, %xmm0, %xmm1
100005d29: c4 e1 fb 2c c1              	vcvttsd2si	%xmm1, %rax
100005d2e: c4 e1 fb 2c c8              	vcvttsd2si	%xmm0, %rcx
100005d33: 4c 31 f8                    	xorq	%r15, %rax
100005d36: c5 f9 2e c2                 	vucomisd	%xmm2, %xmm0
100005d3a: 48 0f 43 c8                 	cmovaeq	%rax, %rcx
100005d3e: 42 0f b6 04 21              	movzbl	(%rcx,%r12), %eax
100005d43: 88 03                       	movb	%al, (%rbx)
100005d45: 48 ff c3                    	incq	%rbx
100005d48: 49 ff ce                    	decq	%r14
100005d4b: 75 b3                       	jne	-77 <_rand_dna_seq+0x30>
100005d4d: c6 03 00                    	movb	$0, (%rbx)
100005d50: 5b                          	popq	%rbx
100005d51: 41 5c                       	popq	%r12
100005d53: 41 5e                       	popq	%r14
100005d55: 41 5f                       	popq	%r15
100005d57: 5d                          	popq	%rbp
100005d58: c3                          	retq
100005d59: 0f 1f 80 00 00 00 00        	nopl	(%rax)

0000000100005d60 _main:
100005d60: 55                          	pushq	%rbp
100005d61: 48 89 e5                    	movq	%rsp, %rbp
100005d64: 41 57                       	pushq	%r15
100005d66: 41 56                       	pushq	%r14
100005d68: 41 55                       	pushq	%r13
100005d6a: 41 54                       	pushq	%r12
100005d6c: 53                          	pushq	%rbx
100005d6d: 48 81 ec b8 04 00 00        	subq	$1208, %rsp
100005d74: 48 89 a5 28 fb ff ff        	movq	%rsp, -1240(%rbp)
100005d7b: 48 8b 05 7e 12 00 00        	movq	4734(%rip), %rax
100005d82: 48 8b 00                    	movq	(%rax), %rax
100005d85: 48 89 45 d0                 	movq	%rax, -48(%rbp)
100005d89: 31 db                       	xorl	%ebx, %ebx
100005d8b: 49 bf 00 00 00 00 00 00 00 80       	movabsq	$-9223372036854775808, %r15
100005d95: 4c 8d 25 ac 10 00 00        	leaq	4268(%rip), %r12
100005d9c: 0f 1f 40 00                 	nopl	(%rax)
100005da0: e8 cd 0f 00 00              	callq	4045 <dyld_stub_binder+0x100006d72>
100005da5: c5 fb 10 05 43 10 00 00     	vmovsd	4163(%rip), %xmm0
100005dad: c5 f9 28 d0                 	vmovapd	%xmm0, %xmm2
100005db1: c5 fb 10 05 2f 10 00 00     	vmovsd	4143(%rip), %xmm0
100005db9: c5 f9 28 c8                 	vmovapd	%xmm0, %xmm1
100005dbd: c5 e3 2a c0                 	vcvtsi2sd	%eax, %xmm3, %xmm0
100005dc1: c5 fb 5e c1                 	vdivsd	%xmm1, %xmm0, %xmm0
100005dc5: c5 fb 59 c2                 	vmulsd	%xmm2, %xmm0, %xmm0
100005dc9: c5 fb 10 0d 27 10 00 00     	vmovsd	4135(%rip), %xmm1
100005dd1: c5 f9 28 d1                 	vmovapd	%xmm1, %xmm2
100005dd5: c5 fb 5c c9                 	vsubsd	%xmm1, %xmm0, %xmm1
100005dd9: c4 e1 fb 2c c1              	vcvttsd2si	%xmm1, %rax
100005dde: c4 e1 fb 2c c8              	vcvttsd2si	%xmm0, %rcx
100005de3: 4c 31 f8                    	xorq	%r15, %rax
100005de6: c5 f9 2e c2                 	vucomisd	%xmm2, %xmm0
100005dea: 48 0f 43 c8                 	cmovaeq	%rax, %rcx
100005dee: 42 0f b6 04 21              	movzbl	(%rcx,%r12), %eax
100005df3: 88 84 1d c0 fd ff ff        	movb	%al, -576(%rbp,%rbx)
100005dfa: 48 ff c3                    	incq	%rbx
100005dfd: 48 81 fb 00 02 00 00        	cmpq	$512, %rbx
100005e04: 75 9a                       	jne	-102 <_main+0x40>
100005e06: c6 84 1d c0 fd ff ff 00     	movb	$0, -576(%rbp,%rbx)
100005e0e: 31 db                       	xorl	%ebx, %ebx
100005e10: e8 5d 0f 00 00              	callq	3933 <dyld_stub_binder+0x100006d72>
100005e15: c5 fb 10 05 db 0f 00 00     	vmovsd	4059(%rip), %xmm0
100005e1d: c5 f9 28 d0                 	vmovapd	%xmm0, %xmm2
100005e21: c5 e3 2a c0                 	vcvtsi2sd	%eax, %xmm3, %xmm0
100005e25: c5 fb 5e 05 bb 0f 00 00     	vdivsd	4027(%rip), %xmm0, %xmm0
100005e2d: c5 fb 59 05 bb 0f 00 00     	vmulsd	4027(%rip), %xmm0, %xmm0
100005e35: c5 fb 5c ca                 	vsubsd	%xmm2, %xmm0, %xmm1
100005e39: c4 e1 fb 2c c1              	vcvttsd2si	%xmm1, %rax
100005e3e: c4 e1 fb 2c c8              	vcvttsd2si	%xmm0, %rcx
100005e43: 4c 31 f8                    	xorq	%r15, %rax
100005e46: c5 f9 2e c2                 	vucomisd	%xmm2, %xmm0
100005e4a: 48 0f 43 c8                 	cmovaeq	%rax, %rcx
100005e4e: 42 0f b6 04 21              	movzbl	(%rcx,%r12), %eax
100005e53: 88 84 1d b0 fb ff ff        	movb	%al, -1104(%rbp,%rbx)
100005e5a: 48 ff c3                    	incq	%rbx
100005e5d: 48 81 fb 00 02 00 00        	cmpq	$512, %rbx
100005e64: 75 aa                       	jne	-86 <_main+0xb0>
100005e66: c6 84 1d b0 fb ff ff 00     	movb	$0, -1104(%rbp,%rbx)
100005e6e: 48 8d bd 90 fb ff ff        	leaq	-1136(%rbp), %rdi
100005e75: be 40 00 00 00              	movl	$64, %esi
100005e7a: ba 00 10 00 00              	movl	$4096, %edx
100005e7f: e8 dc 0e 00 00              	callq	3804 <dyld_stub_binder+0x100006d60>
100005e84: 48 8d bd 98 fb ff ff        	leaq	-1128(%rbp), %rdi
100005e8b: be 40 00 00 00              	movl	$64, %esi
100005e90: ba 00 10 00 00              	movl	$4096, %edx
100005e95: e8 c6 0e 00 00              	callq	3782 <dyld_stub_binder+0x100006d60>
100005e9a: 48 8d bd a8 fb ff ff        	leaq	-1112(%rbp), %rdi
100005ea1: be 40 00 00 00              	movl	$64, %esi
100005ea6: ba 08 20 20 00              	movl	$2105352, %edx
100005eab: e8 b0 0e 00 00              	callq	3760 <dyld_stub_binder+0x100006d60>
100005eb0: 48 8d bd a0 fb ff ff        	leaq	-1120(%rbp), %rdi
100005eb7: be 40 00 00 00              	movl	$64, %esi
100005ebc: ba 08 20 20 00              	movl	$2105352, %edx
100005ec1: e8 9a 0e 00 00              	callq	3738 <dyld_stub_binder+0x100006d60>
100005ec6: 48 8d bd 88 fb ff ff        	leaq	-1144(%rbp), %rdi
100005ecd: be 40 00 00 00              	movl	$64, %esi
100005ed2: ba 08 30 40 00              	movl	$4206600, %edx
100005ed7: e8 84 0e 00 00              	callq	3716 <dyld_stub_binder+0x100006d60>
100005edc: 31 c0                       	xorl	%eax, %eax
100005ede: 48 8b 8d 90 fb ff ff        	movq	-1136(%rbp), %rcx
100005ee5: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
100005eef: 90                          	nop
100005ef0: c4 e2 79 21 84 05 c0 fd ff ff       	vpmovsxbd	-576(%rbp,%rax), %xmm0
100005efa: c4 e2 79 21 8c 05 c4 fd ff ff       	vpmovsxbd	-572(%rbp,%rax), %xmm1
100005f04: c4 e2 79 21 94 05 c8 fd ff ff       	vpmovsxbd	-568(%rbp,%rax), %xmm2
100005f0e: c4 e2 79 21 9c 05 cc fd ff ff       	vpmovsxbd	-564(%rbp,%rax), %xmm3
100005f18: c5 fe e6 c0                 	vcvtdq2pd	%xmm0, %ymm0
100005f1c: c5 fe e6 c9                 	vcvtdq2pd	%xmm1, %ymm1
100005f20: c5 fe e6 d2                 	vcvtdq2pd	%xmm2, %ymm2
100005f24: c5 fe e6 db                 	vcvtdq2pd	%xmm3, %ymm3
100005f28: c5 fc 11 04 c1              	vmovups	%ymm0, (%rcx,%rax,8)
100005f2d: c5 fc 11 4c c1 20           	vmovups	%ymm1, 32(%rcx,%rax,8)
100005f33: c5 fc 11 54 c1 40           	vmovups	%ymm2, 64(%rcx,%rax,8)
100005f39: c5 fc 11 5c c1 60           	vmovups	%ymm3, 96(%rcx,%rax,8)
100005f3f: c4 e2 79 21 84 05 d0 fd ff ff       	vpmovsxbd	-560(%rbp,%rax), %xmm0
100005f49: c4 e2 79 21 8c 05 d4 fd ff ff       	vpmovsxbd	-556(%rbp,%rax), %xmm1
100005f53: c4 e2 79 21 94 05 d8 fd ff ff       	vpmovsxbd	-552(%rbp,%rax), %xmm2
100005f5d: c4 e2 79 21 9c 05 dc fd ff ff       	vpmovsxbd	-548(%rbp,%rax), %xmm3
100005f67: c5 fe e6 c0                 	vcvtdq2pd	%xmm0, %ymm0
100005f6b: c5 fe e6 c9                 	vcvtdq2pd	%xmm1, %ymm1
100005f6f: c5 fe e6 d2                 	vcvtdq2pd	%xmm2, %ymm2
100005f73: c5 fe e6 db                 	vcvtdq2pd	%xmm3, %ymm3
100005f77: c5 fd 11 84 c1 80 00 00 00  	vmovupd	%ymm0, 128(%rcx,%rax,8)
100005f80: c5 fd 11 8c c1 a0 00 00 00  	vmovupd	%ymm1, 160(%rcx,%rax,8)
100005f89: c5 fd 11 94 c1 c0 00 00 00  	vmovupd	%ymm2, 192(%rcx,%rax,8)
100005f92: c5 fe 7f 9c c1 e0 00 00 00  	vmovdqu	%ymm3, 224(%rcx,%rax,8)
100005f9b: 48 83 c0 20                 	addq	$32, %rax
100005f9f: 48 3d 00 02 00 00           	cmpq	$512, %rax
100005fa5: 0f 85 45 ff ff ff           	jne	-187 <_main+0x190>
100005fab: 48 8b 85 98 fb ff ff        	movq	-1128(%rbp), %rax
100005fb2: 31 c9                       	xorl	%ecx, %ecx
100005fb4: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
100005fbe: 66 90                       	nop
100005fc0: c4 e2 79 21 84 0d b0 fb ff ff       	vpmovsxbd	-1104(%rbp,%rcx), %xmm0
100005fca: c4 e2 79 21 8c 0d b4 fb ff ff       	vpmovsxbd	-1100(%rbp,%rcx), %xmm1
100005fd4: c4 e2 79 21 94 0d b8 fb ff ff       	vpmovsxbd	-1096(%rbp,%rcx), %xmm2
100005fde: c4 e2 79 21 9c 0d bc fb ff ff       	vpmovsxbd	-1092(%rbp,%rcx), %xmm3
100005fe8: c5 fe e6 c0                 	vcvtdq2pd	%xmm0, %ymm0
100005fec: c5 fe e6 c9                 	vcvtdq2pd	%xmm1, %ymm1
100005ff0: c5 fe e6 d2                 	vcvtdq2pd	%xmm2, %ymm2
100005ff4: c5 fe e6 db                 	vcvtdq2pd	%xmm3, %ymm3
100005ff8: c5 fc 11 04 c8              	vmovups	%ymm0, (%rax,%rcx,8)
100005ffd: c5 fc 11 4c c8 20           	vmovups	%ymm1, 32(%rax,%rcx,8)
100006003: c5 fc 11 54 c8 40           	vmovups	%ymm2, 64(%rax,%rcx,8)
100006009: c5 fc 11 5c c8 60           	vmovups	%ymm3, 96(%rax,%rcx,8)
10000600f: c4 e2 79 21 84 0d c0 fb ff ff       	vpmovsxbd	-1088(%rbp,%rcx), %xmm0
100006019: c4 e2 79 21 8c 0d c4 fb ff ff       	vpmovsxbd	-1084(%rbp,%rcx), %xmm1
100006023: c4 e2 79 21 94 0d c8 fb ff ff       	vpmovsxbd	-1080(%rbp,%rcx), %xmm2
10000602d: c4 e2 79 21 9c 0d cc fb ff ff       	vpmovsxbd	-1076(%rbp,%rcx), %xmm3
100006037: c5 fe e6 c0                 	vcvtdq2pd	%xmm0, %ymm0
10000603b: c5 fe e6 c9                 	vcvtdq2pd	%xmm1, %ymm1
10000603f: c5 fe e6 d2                 	vcvtdq2pd	%xmm2, %ymm2
100006043: c5 fe e6 db                 	vcvtdq2pd	%xmm3, %ymm3
100006047: c5 fd 11 84 c8 80 00 00 00  	vmovupd	%ymm0, 128(%rax,%rcx,8)
100006050: c5 fd 11 8c c8 a0 00 00 00  	vmovupd	%ymm1, 160(%rax,%rcx,8)
100006059: c5 fd 11 94 c8 c0 00 00 00  	vmovupd	%ymm2, 192(%rax,%rcx,8)
100006062: c5 fe 7f 9c c8 e0 00 00 00  	vmovdqu	%ymm3, 224(%rax,%rcx,8)
10000606b: 48 83 c1 20                 	addq	$32, %rcx
10000606f: 48 81 f9 00 02 00 00        	cmpq	$512, %rcx
100006076: 0f 85 44 ff ff ff           	jne	-188 <_main+0x260>
10000607c: 48 8b 9d a0 fb ff ff        	movq	-1120(%rbp), %rbx
100006083: be 08 20 20 00              	movl	$2105352, %esi
100006088: 48 89 df                    	movq	%rbx, %rdi
10000608b: c5 f8 77                    	vzeroupper
10000608e: e8 bb 0c 00 00              	callq	3259 <dyld_stub_binder+0x100006d4e>
100006093: c5 f9 6f 05 75 0d 00 00     	vmovdqa	3445(%rip), %xmm0
10000609b: 31 c0                       	xorl	%eax, %eax
10000609d: c5 f1 57 c9                 	vxorpd	%xmm1, %xmm1, %xmm1
1000060a1: c4 62 79 58 05 86 0d 00 00  	vpbroadcastd	3462(%rip), %xmm8
1000060aa: c4 62 79 58 0d 81 0d 00 00  	vpbroadcastd	3457(%rip), %xmm9
1000060b3: c4 e2 79 58 35 7c 0d 00 00  	vpbroadcastd	3452(%rip), %xmm6
1000060bc: c4 e2 79 58 3d 77 0d 00 00  	vpbroadcastd	3447(%rip), %xmm7
1000060c5: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
1000060cf: 90                          	nop
1000060d0: c5 f1 fa d0                 	vpsubd	%xmm0, %xmm1, %xmm2
1000060d4: c5 b9 fa d8                 	vpsubd	%xmm0, %xmm8, %xmm3
1000060d8: c5 b1 fa e0                 	vpsubd	%xmm0, %xmm9, %xmm4
1000060dc: c5 c9 fa e8                 	vpsubd	%xmm0, %xmm6, %xmm5
1000060e0: c5 fe e6 d2                 	vcvtdq2pd	%xmm2, %ymm2
1000060e4: c5 fe e6 db                 	vcvtdq2pd	%xmm3, %ymm3
1000060e8: c5 fe e6 e4                 	vcvtdq2pd	%xmm4, %ymm4
1000060ec: c5 fe e6 ed                 	vcvtdq2pd	%xmm5, %ymm5
1000060f0: c5 fd 11 14 c3              	vmovupd	%ymm2, (%rbx,%rax,8)
1000060f5: c5 fe 7f 5c c3 20           	vmovdqu	%ymm3, 32(%rbx,%rax,8)
1000060fb: c5 fd 11 64 c3 40           	vmovupd	%ymm4, 64(%rbx,%rax,8)
100006101: c5 fe 7f 6c c3 60           	vmovdqu	%ymm5, 96(%rbx,%rax,8)
100006107: 48 83 c0 10                 	addq	$16, %rax
10000610b: c5 f9 fe c7                 	vpaddd	%xmm7, %xmm0, %xmm0
10000610f: 48 3d 00 02 00 00           	cmpq	$512, %rax
100006115: 75 b9                       	jne	-71 <_main+0x370>
100006117: 48 b8 00 00 00 00 00 00 80 c0       	movabsq	$-4575657221408423936, %rax
100006121: 48 89 83 00 10 00 00        	movq	%rax, 4096(%rbx)
100006128: b8 10 20 00 00              	movl	$8208, %eax
10000612d: b9 fe ff ff ff              	movl	$4294967294, %ecx
100006132: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
10000613c: 0f 1f 40 00                 	nopl	(%rax)
100006140: 8d 51 02                    	leal	2(%rcx), %edx
100006143: c5 ab 2a c2                 	vcvtsi2sd	%edx, %xmm10, %xmm0
100006147: 8d 51 01                    	leal	1(%rcx), %edx
10000614a: c5 ab 2a ca                 	vcvtsi2sd	%edx, %xmm10, %xmm1
10000614e: c5 fb 11 84 03 f0 df ff ff  	vmovsd	%xmm0, -8208(%rbx,%rax)
100006157: c5 fb 11 8c 03 f8 ef ff ff  	vmovsd	%xmm1, -4104(%rbx,%rax)
100006160: c5 ab 2a c1                 	vcvtsi2sd	%ecx, %xmm10, %xmm0
100006164: c5 f9 d6 04 03              	vmovq	%xmm0, (%rbx,%rax)
100006169: 48 05 18 30 00 00           	addq	$12312, %rax
10000616f: 83 c1 fd                    	addl	$-3, %ecx
100006172: 48 3d 18 40 20 00           	cmpq	$2113560, %rax
100006178: 75 c6                       	jne	-58 <_main+0x3e0>
10000617a: c5 f9 7f bd 60 fb ff ff     	vmovdqa	%xmm7, -1184(%rbp)
100006182: c5 f9 7f b5 50 fb ff ff     	vmovdqa	%xmm6, -1200(%rbp)
10000618a: c5 79 7f 8d 40 fb ff ff     	vmovdqa	%xmm9, -1216(%rbp)
100006192: c5 79 7f 85 30 fb ff ff     	vmovdqa	%xmm8, -1232(%rbp)
10000619a: 45 31 c0                    	xorl	%r8d, %r8d
10000619d: c5 fb 10 05 2b 0c 00 00     	vmovsd	3115(%rip), %xmm0
1000061a5: c5 fb 10 0d 2b 0c 00 00     	vmovsd	3115(%rip), %xmm1
1000061ad: 45 31 d2                    	xorl	%r10d, %r10d
1000061b0: eb 31                       	jmp	49 <_main+0x483>
1000061b2: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
1000061bc: 0f 1f 40 00                 	nopl	(%rax)
1000061c0: 89 c0                       	movl	%eax, %eax
1000061c2: 49 09 c1                    	orq	%rax, %r9
1000061c5: 0f 31                       	rdtsc
1000061c7: 89 c0                       	movl	%eax, %eax
1000061c9: 48 c1 e2 20                 	shlq	$32, %rdx
1000061cd: 48 09 c2                    	orq	%rax, %rdx
1000061d0: 4d 29 ca                    	subq	%r9, %r10
1000061d3: 49 01 d2                    	addq	%rdx, %r10
1000061d6: 41 ff c0                    	incl	%r8d
1000061d9: 41 83 f8 64                 	cmpl	$100, %r8d
1000061dd: 0f 84 bf 00 00 00           	je	191 <_main+0x542>
1000061e3: 0f 31                       	rdtsc
1000061e5: 41 89 d1                    	movl	%edx, %r9d
1000061e8: 49 c1 e1 20                 	shlq	$32, %r9
1000061ec: 4c 8b 9d 90 fb ff ff        	movq	-1136(%rbp), %r11
1000061f3: 48 8b 9d 98 fb ff ff        	movq	-1128(%rbp), %rbx
1000061fa: 41 bd 01 00 00 00           	movl	$1, %r13d
100006200: 4c 8b a5 a0 fb ff ff        	movq	-1120(%rbp), %r12
100006207: 4c 89 e1                    	movq	%r12, %rcx
10000620a: 31 d2                       	xorl	%edx, %edx
10000620c: eb 18                       	jmp	24 <_main+0x4c6>
10000620e: 66 90                       	nop
100006210: 49 ff c5                    	incq	%r13
100006213: 48 ff c2                    	incq	%rdx
100006216: 48 81 c1 08 10 00 00        	addq	$4104, %rcx
10000621d: 49 81 fd 01 02 00 00        	cmpq	$513, %r13
100006224: 74 9a                       	je	-102 <_main+0x460>
100006226: 48 89 d6                    	movq	%rdx, %rsi
100006229: 48 c1 e6 0c                 	shlq	$12, %rsi
10000622d: 48 8d 34 d6                 	leaq	(%rsi,%rdx,8), %rsi
100006231: c4 81 7b 10 54 eb f8        	vmovsd	-8(%r11,%r13,8), %xmm2
100006238: c4 c1 7b 10 9c 34 08 10 00 00       	vmovsd	4104(%r12,%rsi), %xmm3
100006242: 31 ff                       	xorl	%edi, %edi
100006244: eb 23                       	jmp	35 <_main+0x509>
100006246: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
100006250: c5 ab 2a de                 	vcvtsi2sd	%esi, %xmm10, %xmm3
100006254: c5 f9 d6 9c f9 10 10 00 00  	vmovq	%xmm3, 4112(%rcx,%rdi,8)
10000625d: 48 ff c7                    	incq	%rdi
100006260: 48 81 ff 00 02 00 00        	cmpq	$512, %rdi
100006267: 74 a7                       	je	-89 <_main+0x4b0>
100006269: c5 eb c2 24 fb 00           	vcmpeqsd	(%rbx,%rdi,8), %xmm2, %xmm4
10000626f: c4 e3 71 4b e0 40           	vblendvpd	%xmm4, %xmm0, %xmm1, %xmm4
100006275: c5 db 58 24 f9              	vaddsd	(%rcx,%rdi,8), %xmm4, %xmm4
10000627a: c5 fb 2c f4                 	vcvttsd2si	%xmm4, %esi
10000627e: c5 f3 58 64 f9 08           	vaddsd	8(%rcx,%rdi,8), %xmm1, %xmm4
100006284: c5 7b 2c f4                 	vcvttsd2si	%xmm4, %r14d
100006288: c5 e3 58 d9                 	vaddsd	%xmm1, %xmm3, %xmm3
10000628c: c5 7b 2c fb                 	vcvttsd2si	%xmm3, %r15d
100006290: 44 39 fe                    	cmpl	%r15d, %esi
100006293: 7d 03                       	jge	3 <_main+0x538>
100006295: 44 89 fe                    	movl	%r15d, %esi
100006298: 44 39 f6                    	cmpl	%r14d, %esi
10000629b: 7d b3                       	jge	-77 <_main+0x4f0>
10000629d: 44 89 f6                    	movl	%r14d, %esi
1000062a0: eb ae                       	jmp	-82 <_main+0x4f0>
1000062a2: c4 c1 ab 2a c2              	vcvtsi2sd	%r10, %xmm10, %xmm0
1000062a7: c5 fb 5e 05 51 0b 00 00     	vdivsd	2897(%rip), %xmm0, %xmm0
1000062af: 48 8d 3d 97 0b 00 00        	leaq	2967(%rip), %rdi
1000062b6: be 01 02 00 00              	movl	$513, %esi
1000062bb: ba 01 02 00 00              	movl	$513, %edx
1000062c0: b0 01                       	movb	$1, %al
1000062c2: c5 f8 77                    	vzeroupper
1000062c5: e8 9c 0a 00 00              	callq	2716 <dyld_stub_binder+0x100006d66>
1000062ca: 48 8b 9d a8 fb ff ff        	movq	-1112(%rbp), %rbx
1000062d1: be 08 20 20 00              	movl	$2105352, %esi
1000062d6: 48 89 df                    	movq	%rbx, %rdi
1000062d9: e8 70 0a 00 00              	callq	2672 <dyld_stub_binder+0x100006d4e>
1000062de: c5 f9 6f 05 2a 0b 00 00     	vmovdqa	2858(%rip), %xmm0
1000062e6: 31 c0                       	xorl	%eax, %eax
1000062e8: c4 41 39 ef c0              	vpxor	%xmm8, %xmm8, %xmm8
1000062ed: c5 79 6f 8d 30 fb ff ff     	vmovdqa	-1232(%rbp), %xmm9
1000062f5: c5 f9 6f bd 40 fb ff ff     	vmovdqa	-1216(%rbp), %xmm7
1000062fd: c5 f9 6f 8d 50 fb ff ff     	vmovdqa	-1200(%rbp), %xmm1
100006305: c5 f9 6f b5 60 fb ff ff     	vmovdqa	-1184(%rbp), %xmm6
10000630d: 0f 1f 00                    	nopl	(%rax)
100006310: c5 b9 fa d0                 	vpsubd	%xmm0, %xmm8, %xmm2
100006314: c5 b1 fa d8                 	vpsubd	%xmm0, %xmm9, %xmm3
100006318: c5 c1 fa e0                 	vpsubd	%xmm0, %xmm7, %xmm4
10000631c: c5 f1 fa e8                 	vpsubd	%xmm0, %xmm1, %xmm5
100006320: c5 fe e6 d2                 	vcvtdq2pd	%xmm2, %ymm2
100006324: c5 fe e6 db                 	vcvtdq2pd	%xmm3, %ymm3
100006328: c5 fe e6 e4                 	vcvtdq2pd	%xmm4, %ymm4
10000632c: c5 fe e6 ed                 	vcvtdq2pd	%xmm5, %ymm5
100006330: c5 fd 11 14 c3              	vmovupd	%ymm2, (%rbx,%rax,8)
100006335: c5 fe 7f 5c c3 20           	vmovdqu	%ymm3, 32(%rbx,%rax,8)
10000633b: c5 fd 11 64 c3 40           	vmovupd	%ymm4, 64(%rbx,%rax,8)
100006341: c5 fe 7f 6c c3 60           	vmovdqu	%ymm5, 96(%rbx,%rax,8)
100006347: 48 83 c0 10                 	addq	$16, %rax
10000634b: c5 f9 fe c6                 	vpaddd	%xmm6, %xmm0, %xmm0
10000634f: 48 3d 00 02 00 00           	cmpq	$512, %rax
100006355: 75 b9                       	jne	-71 <_main+0x5b0>
100006357: 49 be 00 00 00 00 00 00 80 c0       	movabsq	$-4575657221408423936, %r14
100006361: 4c 89 b3 00 10 00 00        	movq	%r14, 4096(%rbx)
100006368: b8 10 20 00 00              	movl	$8208, %eax
10000636d: b9 fe ff ff ff              	movl	$4294967294, %ecx
100006372: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
10000637c: 0f 1f 40 00                 	nopl	(%rax)
100006380: 8d 51 02                    	leal	2(%rcx), %edx
100006383: c5 ab 2a c2                 	vcvtsi2sd	%edx, %xmm10, %xmm0
100006387: 8d 51 01                    	leal	1(%rcx), %edx
10000638a: c5 ab 2a ca                 	vcvtsi2sd	%edx, %xmm10, %xmm1
10000638e: c5 fb 11 84 03 f0 df ff ff  	vmovsd	%xmm0, -8208(%rbx,%rax)
100006397: c5 f9 d6 8c 03 f8 ef ff ff  	vmovq	%xmm1, -4104(%rbx,%rax)
1000063a0: c5 ab 2a c1                 	vcvtsi2sd	%ecx, %xmm10, %xmm0
1000063a4: c5 f9 d6 04 03              	vmovq	%xmm0, (%rbx,%rax)
1000063a9: 48 05 18 30 00 00           	addq	$12312, %rax
1000063af: 83 c1 fd                    	addl	$-3, %ecx
1000063b2: 48 3d 18 40 20 00           	cmpq	$2113560, %rax
1000063b8: 75 c6                       	jne	-58 <_main+0x620>
1000063ba: 41 bd 64 00 00 00           	movl	$100, %r13d
1000063c0: 45 31 e4                    	xorl	%r12d, %r12d
1000063c3: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
1000063cd: 0f 1f 00                    	nopl	(%rax)
1000063d0: 0f 31                       	rdtsc
1000063d2: 89 d3                       	movl	%edx, %ebx
1000063d4: 89 c0                       	movl	%eax, %eax
1000063d6: 48 c1 e3 20                 	shlq	$32, %rbx
1000063da: 48 09 c3                    	orq	%rax, %rbx
1000063dd: 48 8b 95 90 fb ff ff        	movq	-1136(%rbp), %rdx
1000063e4: 48 8b 8d 98 fb ff ff        	movq	-1128(%rbp), %rcx
1000063eb: 4c 8b 85 a8 fb ff ff        	movq	-1112(%rbp), %r8
1000063f2: bf 01 02 00 00              	movl	$513, %edi
1000063f7: be 01 02 00 00              	movl	$513, %esi
1000063fc: c5 f8 77                    	vzeroupper
1000063ff: e8 5c ab ff ff              	callq	-21668 <_kernel>
100006404: 0f 31                       	rdtsc
100006406: 89 c0                       	movl	%eax, %eax
100006408: 48 c1 e2 20                 	shlq	$32, %rdx
10000640c: 48 09 c2                    	orq	%rax, %rdx
10000640f: 49 29 dc                    	subq	%rbx, %r12
100006412: 49 01 d4                    	addq	%rdx, %r12
100006415: 41 ff cd                    	decl	%r13d
100006418: 75 b6                       	jne	-74 <_main+0x670>
10000641a: 48 8b 85 a8 fb ff ff        	movq	-1112(%rbp), %rax
100006421: c4 41 39 76 c0              	vpcmpeqd	%xmm8, %xmm8, %xmm8
100006426: c5 f9 6f 0d f2 09 00 00     	vmovdqa	2546(%rip), %xmm1
10000642e: ba 0c 00 00 00              	movl	$12, %edx
100006433: 48 8b 8d a0 fb ff ff        	movq	-1120(%rbp), %rcx
10000643a: c4 62 79 58 0d fd 09 00 00  	vpbroadcastd	2557(%rip), %xmm9
100006443: c5 e9 76 d2                 	vpcmpeqd	%xmm2, %xmm2, %xmm2
100006447: c5 e1 76 db                 	vpcmpeqd	%xmm3, %xmm3, %xmm3
10000644b: 0f 1f 44 00 00              	nopl	(%rax,%rax)
100006450: c5 fd 10 64 d1 a0           	vmovupd	-96(%rcx,%rdx,8), %ymm4
100006456: c5 fd 10 6c d1 c0           	vmovupd	-64(%rcx,%rdx,8), %ymm5
10000645c: c5 fd 10 74 d1 e0           	vmovupd	-32(%rcx,%rdx,8), %ymm6
100006462: c5 fd 10 3c d1              	vmovupd	(%rcx,%rdx,8), %ymm7
100006467: c5 dd c2 64 d0 a0 00        	vcmpeqpd	-96(%rax,%rdx,8), %ymm4, %ymm4
10000646e: c4 e3 7d 19 e0 01           	vextractf128	$1, %ymm4, %xmm0
100006474: c5 d9 6b c0                 	vpackssdw	%xmm0, %xmm4, %xmm0
100006478: c5 d5 c2 64 d0 c0 00        	vcmpeqpd	-64(%rax,%rdx,8), %ymm5, %ymm4
10000647f: c4 e3 7d 19 e5 01           	vextractf128	$1, %ymm4, %xmm5
100006485: c5 d9 6b e5                 	vpackssdw	%xmm5, %xmm4, %xmm4
100006489: c5 cd c2 6c d0 e0 00        	vcmpeqpd	-32(%rax,%rdx,8), %ymm6, %ymm5
100006490: c4 e3 7d 19 ee 01           	vextractf128	$1, %ymm5, %xmm6
100006496: c5 d1 6b ee                 	vpackssdw	%xmm6, %xmm5, %xmm5
10000649a: c5 c5 c2 34 d0 00           	vcmpeqpd	(%rax,%rdx,8), %ymm7, %ymm6
1000064a0: c4 e3 7d 19 f7 01           	vextractf128	$1, %ymm6, %xmm7
1000064a6: c5 c9 6b f7                 	vpackssdw	%xmm7, %xmm6, %xmm6
1000064aa: c5 b1 db c9                 	vpand	%xmm1, %xmm9, %xmm1
1000064ae: c5 f9 db c9                 	vpand	%xmm1, %xmm0, %xmm1
1000064b2: c4 c1 31 db c0              	vpand	%xmm8, %xmm9, %xmm0
1000064b7: c5 59 db c0                 	vpand	%xmm0, %xmm4, %xmm8
1000064bb: c5 b1 db c2                 	vpand	%xmm2, %xmm9, %xmm0
1000064bf: c5 d1 db d0                 	vpand	%xmm0, %xmm5, %xmm2
1000064c3: c5 b1 db c3                 	vpand	%xmm3, %xmm9, %xmm0
1000064c7: c5 c9 db d8                 	vpand	%xmm0, %xmm6, %xmm3
1000064cb: 48 83 c2 10                 	addq	$16, %rdx
1000064cf: 48 81 fa 0c 04 04 00        	cmpq	$263180, %rdx
1000064d6: 0f 85 74 ff ff ff           	jne	-140 <_main+0x6f0>
1000064dc: c5 79 7f 8d 70 fb ff ff     	vmovdqa	%xmm9, -1168(%rbp)
1000064e4: c5 b9 db c1                 	vpand	%xmm1, %xmm8, %xmm0
1000064e8: c5 e9 db c0                 	vpand	%xmm0, %xmm2, %xmm0
1000064ec: c5 e1 db c0                 	vpand	%xmm0, %xmm3, %xmm0
1000064f0: c5 f9 70 c8 4e              	vpshufd	$78, %xmm0, %xmm1
1000064f5: c5 f9 db c1                 	vpand	%xmm1, %xmm0, %xmm0
1000064f9: c5 f9 70 c8 e5              	vpshufd	$229, %xmm0, %xmm1
1000064fe: c5 f9 db c1                 	vpand	%xmm1, %xmm0, %xmm0
100006502: c5 fb 10 89 00 20 20 00     	vmovsd	2105344(%rcx), %xmm1
10000650a: c5 f3 c2 88 00 20 20 00 00  	vcmpeqsd	2105344(%rax), %xmm1, %xmm1
100006513: c5 f9 7e c0                 	vmovd	%xmm0, %eax
100006517: c4 e1 f9 7e c9              	vmovq	%xmm1, %rcx
10000651c: 21 c1                       	andl	%eax, %ecx
10000651e: 83 e1 01                    	andl	$1, %ecx
100006521: c4 c1 ab 2a c4              	vcvtsi2sd	%r12, %xmm10, %xmm0
100006526: c5 fb 5e 05 d2 08 00 00     	vdivsd	2258(%rip), %xmm0, %xmm0
10000652e: 48 8d 3d 46 09 00 00        	leaq	2374(%rip), %rdi
100006535: be 01 02 00 00              	movl	$513, %esi
10000653a: ba 01 02 00 00              	movl	$513, %edx
10000653f: b0 01                       	movb	$1, %al
100006541: c5 f8 77                    	vzeroupper
100006544: e8 1d 08 00 00              	callq	2077 <dyld_stub_binder+0x100006d66>
100006549: 48 8b bd a8 fb ff ff        	movq	-1112(%rbp), %rdi
100006550: be 08 20 20 00              	movl	$2105352, %esi
100006555: e8 f4 07 00 00              	callq	2036 <dyld_stub_binder+0x100006d4e>
10000655a: 48 8b 9d 88 fb ff ff        	movq	-1144(%rbp), %rbx
100006561: be 08 30 40 00              	movl	$4206600, %esi
100006566: 48 89 df                    	movq	%rbx, %rdi
100006569: e8 e0 07 00 00              	callq	2016 <dyld_stub_binder+0x100006d4e>
10000656e: b8 20 20 00 00              	movl	$8224, %eax
100006573: b9 fe ff ff ff              	movl	$4294967294, %ecx
100006578: 0f 1f 84 00 00 00 00 00     	nopl	(%rax,%rax)
100006580: 8d 51 02                    	leal	2(%rcx), %edx
100006583: c5 ab 2a c2                 	vcvtsi2sd	%edx, %xmm10, %xmm0
100006587: 8d 51 01                    	leal	1(%rcx), %edx
10000658a: c5 ab 2a ca                 	vcvtsi2sd	%edx, %xmm10, %xmm1
10000658e: c5 fb 11 84 03 e0 df ff ff  	vmovsd	%xmm0, -8224(%rbx,%rax)
100006597: c5 fb 11 8c 03 f0 ef ff ff  	vmovsd	%xmm1, -4112(%rbx,%rax)
1000065a0: c5 ab 2a c1                 	vcvtsi2sd	%ecx, %xmm10, %xmm0
1000065a4: c5 fb 11 04 03              	vmovsd	%xmm0, (%rbx,%rax)
1000065a9: 48 05 30 30 00 00           	addq	$12336, %rax
1000065af: 83 c1 fd                    	addl	$-3, %ecx
1000065b2: 48 3d 30 50 20 00           	cmpq	$2117680, %rax
1000065b8: 75 c6                       	jne	-58 <_main+0x820>
1000065ba: b8 10 20 00 00              	movl	$8208, %eax
1000065bf: b9 fe ff ff ff              	movl	$4294967294, %ecx
1000065c4: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
1000065ce: 66 90                       	nop
1000065d0: 8d 51 02                    	leal	2(%rcx), %edx
1000065d3: c5 ab 2a c2                 	vcvtsi2sd	%edx, %xmm10, %xmm0
1000065d7: 8d 51 01                    	leal	1(%rcx), %edx
1000065da: c5 ab 2a ca                 	vcvtsi2sd	%edx, %xmm10, %xmm1
1000065de: c5 fb 11 84 03 f0 df ff ff  	vmovsd	%xmm0, -8208(%rbx,%rax)
1000065e7: c5 fb 11 8c 03 f8 ef ff ff  	vmovsd	%xmm1, -4104(%rbx,%rax)
1000065f0: c5 ab 2a c1                 	vcvtsi2sd	%ecx, %xmm10, %xmm0
1000065f4: c5 fb 11 04 03              	vmovsd	%xmm0, (%rbx,%rax)
1000065f9: 48 05 18 30 00 00           	addq	$12312, %rax
1000065ff: 83 c1 fd                    	addl	$-3, %ecx
100006602: 48 3d 18 40 20 00           	cmpq	$2113560, %rax
100006608: 75 c6                       	jne	-58 <_main+0x870>
10000660a: 41 bd 64 00 00 00           	movl	$100, %r13d
100006610: 45 31 e4                    	xorl	%r12d, %r12d
100006613: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
10000661d: 0f 1f 00                    	nopl	(%rax)
100006620: 0f 31                       	rdtsc
100006622: 89 d3                       	movl	%edx, %ebx
100006624: 89 c0                       	movl	%eax, %eax
100006626: 48 c1 e3 20                 	shlq	$32, %rbx
10000662a: 48 09 c3                    	orq	%rax, %rbx
10000662d: 48 8b 95 90 fb ff ff        	movq	-1136(%rbp), %rdx
100006634: 48 8b 8d 98 fb ff ff        	movq	-1128(%rbp), %rcx
10000663b: 4c 8b 85 88 fb ff ff        	movq	-1144(%rbp), %r8
100006642: bf 01 02 00 00              	movl	$513, %edi
100006647: be 01 02 00 00              	movl	$513, %esi
10000664c: e8 bf b2 ff ff              	callq	-19777 <_SIMDkernel4packed>
100006651: 0f 31                       	rdtsc
100006653: 89 c0                       	movl	%eax, %eax
100006655: 48 c1 e2 20                 	shlq	$32, %rdx
100006659: 48 09 c2                    	orq	%rax, %rdx
10000665c: 49 29 dc                    	subq	%rbx, %r12
10000665f: 49 01 d4                    	addq	%rdx, %r12
100006662: 41 ff cd                    	decl	%r13d
100006665: 75 b9                       	jne	-71 <_main+0x8c0>
100006667: 48 8b 8d 88 fb ff ff        	movq	-1144(%rbp), %rcx
10000666e: 4c 8b 85 a8 fb ff ff        	movq	-1112(%rbp), %r8
100006675: 49 8d 50 10                 	leaq	16(%r8), %rdx
100006679: 31 f6                       	xorl	%esi, %esi
10000667b: c5 79 6f 8d 70 fb ff ff     	vmovdqa	-1168(%rbp), %xmm9
100006683: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
10000668d: 0f 1f 00                    	nopl	(%rax)
100006690: 48 89 cf                    	movq	%rcx, %rdi
100006693: 31 db                       	xorl	%ebx, %ebx
100006695: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
10000669f: 90                          	nop
1000066a0: 48 8b 07                    	movq	(%rdi), %rax
1000066a3: 48 89 44 da f0              	movq	%rax, -16(%rdx,%rbx,8)
1000066a8: 48 8b 87 10 10 00 00        	movq	4112(%rdi), %rax
1000066af: 48 89 44 da f8              	movq	%rax, -8(%rdx,%rbx,8)
1000066b4: 48 8b 87 20 20 00 00        	movq	8224(%rdi), %rax
1000066bb: 48 89 04 da                 	movq	%rax, (%rdx,%rbx,8)
1000066bf: 48 83 c3 03                 	addq	$3, %rbx
1000066c3: 48 81 c7 30 30 00 00        	addq	$12336, %rdi
1000066ca: 48 81 fb 01 02 00 00        	cmpq	$513, %rbx
1000066d1: 75 cd                       	jne	-51 <_main+0x940>
1000066d3: 48 ff c6                    	incq	%rsi
1000066d6: 48 81 c2 08 10 00 00        	addq	$4104, %rdx
1000066dd: 48 81 c1 08 10 00 00        	addq	$4104, %rcx
1000066e4: 48 81 fe 01 02 00 00        	cmpq	$513, %rsi
1000066eb: 75 a3                       	jne	-93 <_main+0x930>
1000066ed: c4 41 39 76 c0              	vpcmpeqd	%xmm8, %xmm8, %xmm8
1000066f2: c5 f9 6f 0d 26 07 00 00     	vmovdqa	1830(%rip), %xmm1
1000066fa: ba 0c 00 00 00              	movl	$12, %edx
1000066ff: 48 8b 8d a0 fb ff ff        	movq	-1120(%rbp), %rcx
100006706: c5 e9 76 d2                 	vpcmpeqd	%xmm2, %xmm2, %xmm2
10000670a: c5 e1 76 db                 	vpcmpeqd	%xmm3, %xmm3, %xmm3
10000670e: 66 90                       	nop
100006710: c5 fd 10 64 d1 a0           	vmovupd	-96(%rcx,%rdx,8), %ymm4
100006716: c5 fd 10 6c d1 c0           	vmovupd	-64(%rcx,%rdx,8), %ymm5
10000671c: c5 fd 10 74 d1 e0           	vmovupd	-32(%rcx,%rdx,8), %ymm6
100006722: c5 fd 10 3c d1              	vmovupd	(%rcx,%rdx,8), %ymm7
100006727: c4 c1 5d c2 64 d0 a0 00     	vcmpeqpd	-96(%r8,%rdx,8), %ymm4, %ymm4
10000672f: c4 e3 7d 19 e0 01           	vextractf128	$1, %ymm4, %xmm0
100006735: c5 d9 6b c0                 	vpackssdw	%xmm0, %xmm4, %xmm0
100006739: c4 c1 55 c2 64 d0 c0 00     	vcmpeqpd	-64(%r8,%rdx,8), %ymm5, %ymm4
100006741: c4 e3 7d 19 e5 01           	vextractf128	$1, %ymm4, %xmm5
100006747: c5 d9 6b e5                 	vpackssdw	%xmm5, %xmm4, %xmm4
10000674b: c4 c1 4d c2 6c d0 e0 00     	vcmpeqpd	-32(%r8,%rdx,8), %ymm6, %ymm5
100006753: c4 e3 7d 19 ee 01           	vextractf128	$1, %ymm5, %xmm6
100006759: c5 d1 6b ee                 	vpackssdw	%xmm6, %xmm5, %xmm5
10000675d: c4 c1 45 c2 34 d0 00        	vcmpeqpd	(%r8,%rdx,8), %ymm7, %ymm6
100006764: c4 e3 7d 19 f7 01           	vextractf128	$1, %ymm6, %xmm7
10000676a: c5 c9 6b f7                 	vpackssdw	%xmm7, %xmm6, %xmm6
10000676e: c5 b1 db c9                 	vpand	%xmm1, %xmm9, %xmm1
100006772: c5 f9 db c9                 	vpand	%xmm1, %xmm0, %xmm1
100006776: c4 c1 31 db c0              	vpand	%xmm8, %xmm9, %xmm0
10000677b: c5 59 db c0                 	vpand	%xmm0, %xmm4, %xmm8
10000677f: c5 b1 db c2                 	vpand	%xmm2, %xmm9, %xmm0
100006783: c5 d1 db d0                 	vpand	%xmm0, %xmm5, %xmm2
100006787: c5 b1 db c3                 	vpand	%xmm3, %xmm9, %xmm0
10000678b: c5 c9 db d8                 	vpand	%xmm0, %xmm6, %xmm3
10000678f: 48 83 c2 10                 	addq	$16, %rdx
100006793: 48 81 fa 0c 04 04 00        	cmpq	$263180, %rdx
10000679a: 0f 85 70 ff ff ff           	jne	-144 <_main+0x9b0>
1000067a0: c5 b9 db c1                 	vpand	%xmm1, %xmm8, %xmm0
1000067a4: c5 e9 db c0                 	vpand	%xmm0, %xmm2, %xmm0
1000067a8: c5 e1 db c0                 	vpand	%xmm0, %xmm3, %xmm0
1000067ac: c5 f9 70 c8 4e              	vpshufd	$78, %xmm0, %xmm1
1000067b1: c5 f9 db c1                 	vpand	%xmm1, %xmm0, %xmm0
1000067b5: c5 f9 70 c8 e5              	vpshufd	$229, %xmm0, %xmm1
1000067ba: c5 f9 db c1                 	vpand	%xmm1, %xmm0, %xmm0
1000067be: c5 fb 10 89 00 20 20 00     	vmovsd	2105344(%rcx), %xmm1
1000067c6: c4 c1 73 c2 88 00 20 20 00 00       	vcmpeqsd	2105344(%r8), %xmm1, %xmm1
1000067d0: c5 f9 7e c0                 	vmovd	%xmm0, %eax
1000067d4: c4 e1 f9 7e c9              	vmovq	%xmm1, %rcx
1000067d9: 21 c1                       	andl	%eax, %ecx
1000067db: 83 e1 01                    	andl	$1, %ecx
1000067de: c4 c1 ab 2a c4              	vcvtsi2sd	%r12, %xmm10, %xmm0
1000067e3: c5 fb 5e 05 15 06 00 00     	vdivsd	1557(%rip), %xmm0, %xmm0
1000067eb: 48 8d 3d d0 06 00 00        	leaq	1744(%rip), %rdi
1000067f2: be 01 02 00 00              	movl	$513, %esi
1000067f7: ba 01 02 00 00              	movl	$513, %edx
1000067fc: b0 01                       	movb	$1, %al
1000067fe: c5 f8 77                    	vzeroupper
100006801: e8 60 05 00 00              	callq	1376 <dyld_stub_binder+0x100006d66>
100006806: 48 8b 9d a8 fb ff ff        	movq	-1112(%rbp), %rbx
10000680d: be 08 20 20 00              	movl	$2105352, %esi
100006812: 48 89 df                    	movq	%rbx, %rdi
100006815: e8 34 05 00 00              	callq	1332 <dyld_stub_binder+0x100006d4e>
10000681a: c5 f9 6f 05 ee 05 00 00     	vmovdqa	1518(%rip), %xmm0
100006822: 31 c0                       	xorl	%eax, %eax
100006824: c4 41 39 ef c0              	vpxor	%xmm8, %xmm8, %xmm8
100006829: c5 79 6f 8d 30 fb ff ff     	vmovdqa	-1232(%rbp), %xmm9
100006831: c5 f9 6f bd 40 fb ff ff     	vmovdqa	-1216(%rbp), %xmm7
100006839: c5 f9 6f 8d 50 fb ff ff     	vmovdqa	-1200(%rbp), %xmm1
100006841: c5 f9 6f b5 60 fb ff ff     	vmovdqa	-1184(%rbp), %xmm6
100006849: 0f 1f 80 00 00 00 00        	nopl	(%rax)
100006850: c5 b9 fa d0                 	vpsubd	%xmm0, %xmm8, %xmm2
100006854: c5 b1 fa d8                 	vpsubd	%xmm0, %xmm9, %xmm3
100006858: c5 c1 fa e0                 	vpsubd	%xmm0, %xmm7, %xmm4
10000685c: c5 f1 fa e8                 	vpsubd	%xmm0, %xmm1, %xmm5
100006860: c5 fe e6 d2                 	vcvtdq2pd	%xmm2, %ymm2
100006864: c5 fe e6 db                 	vcvtdq2pd	%xmm3, %ymm3
100006868: c5 fe e6 e4                 	vcvtdq2pd	%xmm4, %ymm4
10000686c: c5 fe e6 ed                 	vcvtdq2pd	%xmm5, %ymm5
100006870: c5 fe 7f 14 c3              	vmovdqu	%ymm2, (%rbx,%rax,8)
100006875: c5 fe 7f 5c c3 20           	vmovdqu	%ymm3, 32(%rbx,%rax,8)
10000687b: c5 fd 11 64 c3 40           	vmovupd	%ymm4, 64(%rbx,%rax,8)
100006881: c5 fe 7f 6c c3 60           	vmovdqu	%ymm5, 96(%rbx,%rax,8)
100006887: 48 83 c0 10                 	addq	$16, %rax
10000688b: c5 f9 fe c6                 	vpaddd	%xmm6, %xmm0, %xmm0
10000688f: 48 3d 00 02 00 00           	cmpq	$512, %rax
100006895: 75 b9                       	jne	-71 <_main+0xaf0>
100006897: 4c 89 b3 00 10 00 00        	movq	%r14, 4096(%rbx)
10000689e: b8 10 20 00 00              	movl	$8208, %eax
1000068a3: b9 fe ff ff ff              	movl	$4294967294, %ecx
1000068a8: 0f 1f 84 00 00 00 00 00     	nopl	(%rax,%rax)
1000068b0: 8d 51 02                    	leal	2(%rcx), %edx
1000068b3: c5 ab 2a c2                 	vcvtsi2sd	%edx, %xmm10, %xmm0
1000068b7: 8d 51 01                    	leal	1(%rcx), %edx
1000068ba: c5 ab 2a ca                 	vcvtsi2sd	%edx, %xmm10, %xmm1
1000068be: c5 fb 11 84 03 f0 df ff ff  	vmovsd	%xmm0, -8208(%rbx,%rax)
1000068c7: c5 f9 d6 8c 03 f8 ef ff ff  	vmovq	%xmm1, -4104(%rbx,%rax)
1000068d0: c5 ab 2a c1                 	vcvtsi2sd	%ecx, %xmm10, %xmm0
1000068d4: c5 f9 d6 04 03              	vmovq	%xmm0, (%rbx,%rax)
1000068d9: 48 05 18 30 00 00           	addq	$12312, %rax
1000068df: 83 c1 fd                    	addl	$-3, %ecx
1000068e2: 48 3d 18 40 20 00           	cmpq	$2113560, %rax
1000068e8: 75 c6                       	jne	-58 <_main+0xb50>
1000068ea: 41 bd 64 00 00 00           	movl	$100, %r13d
1000068f0: 45 31 e4                    	xorl	%r12d, %r12d
1000068f3: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
1000068fd: 0f 1f 00                    	nopl	(%rax)
100006900: 0f 31                       	rdtsc
100006902: 89 d3                       	movl	%edx, %ebx
100006904: 89 c0                       	movl	%eax, %eax
100006906: 48 c1 e3 20                 	shlq	$32, %rbx
10000690a: 48 09 c3                    	orq	%rax, %rbx
10000690d: 48 8b 95 90 fb ff ff        	movq	-1136(%rbp), %rdx
100006914: 48 8b 8d 98 fb ff ff        	movq	-1128(%rbp), %rcx
10000691b: 4c 8b 85 a8 fb ff ff        	movq	-1112(%rbp), %r8
100006922: bf 01 02 00 00              	movl	$513, %edi
100006927: be 01 02 00 00              	movl	$513, %esi
10000692c: c5 f8 77                    	vzeroupper
10000692f: e8 9c b9 ff ff              	callq	-18020 <_SIMDkernel4>
100006934: 0f 31                       	rdtsc
100006936: 89 c0                       	movl	%eax, %eax
100006938: 48 c1 e2 20                 	shlq	$32, %rdx
10000693c: 48 09 c2                    	orq	%rax, %rdx
10000693f: 49 29 dc                    	subq	%rbx, %r12
100006942: 49 01 d4                    	addq	%rdx, %r12
100006945: 41 ff cd                    	decl	%r13d
100006948: 75 b6                       	jne	-74 <_main+0xba0>
10000694a: 48 8b 85 a8 fb ff ff        	movq	-1112(%rbp), %rax
100006951: c4 41 39 76 c0              	vpcmpeqd	%xmm8, %xmm8, %xmm8
100006956: c5 f9 6f 0d c2 04 00 00     	vmovdqa	1218(%rip), %xmm1
10000695e: ba 0c 00 00 00              	movl	$12, %edx
100006963: 48 8b 8d a0 fb ff ff        	movq	-1120(%rbp), %rcx
10000696a: c4 41 31 76 c9              	vpcmpeqd	%xmm9, %xmm9, %xmm9
10000696f: c5 e1 76 db                 	vpcmpeqd	%xmm3, %xmm3, %xmm3
100006973: c5 f9 6f 95 70 fb ff ff     	vmovdqa	-1168(%rbp), %xmm2
10000697b: 0f 1f 44 00 00              	nopl	(%rax,%rax)
100006980: c5 fd 10 64 d1 a0           	vmovupd	-96(%rcx,%rdx,8), %ymm4
100006986: c5 fd 10 6c d1 c0           	vmovupd	-64(%rcx,%rdx,8), %ymm5
10000698c: c5 fd 10 74 d1 e0           	vmovupd	-32(%rcx,%rdx,8), %ymm6
100006992: c5 fd 10 3c d1              	vmovupd	(%rcx,%rdx,8), %ymm7
100006997: c5 dd c2 64 d0 a0 00        	vcmpeqpd	-96(%rax,%rdx,8), %ymm4, %ymm4
10000699e: c4 e3 7d 19 e0 01           	vextractf128	$1, %ymm4, %xmm0
1000069a4: c5 d9 6b c0                 	vpackssdw	%xmm0, %xmm4, %xmm0
1000069a8: c5 d5 c2 64 d0 c0 00        	vcmpeqpd	-64(%rax,%rdx,8), %ymm5, %ymm4
1000069af: c4 e3 7d 19 e5 01           	vextractf128	$1, %ymm4, %xmm5
1000069b5: c5 d9 6b e5                 	vpackssdw	%xmm5, %xmm4, %xmm4
1000069b9: c5 cd c2 6c d0 e0 00        	vcmpeqpd	-32(%rax,%rdx,8), %ymm6, %ymm5
1000069c0: c4 e3 7d 19 ee 01           	vextractf128	$1, %ymm5, %xmm6
1000069c6: c5 d1 6b ee                 	vpackssdw	%xmm6, %xmm5, %xmm5
1000069ca: c5 c5 c2 34 d0 00           	vcmpeqpd	(%rax,%rdx,8), %ymm7, %ymm6
1000069d0: c4 e3 7d 19 f7 01           	vextractf128	$1, %ymm6, %xmm7
1000069d6: c5 c9 6b f7                 	vpackssdw	%xmm7, %xmm6, %xmm6
1000069da: c5 e9 db c9                 	vpand	%xmm1, %xmm2, %xmm1
1000069de: c5 f9 db c9                 	vpand	%xmm1, %xmm0, %xmm1
1000069e2: c4 c1 69 db c0              	vpand	%xmm8, %xmm2, %xmm0
1000069e7: c5 59 db c0                 	vpand	%xmm0, %xmm4, %xmm8
1000069eb: c4 c1 69 db c1              	vpand	%xmm9, %xmm2, %xmm0
1000069f0: c5 51 db c8                 	vpand	%xmm0, %xmm5, %xmm9
1000069f4: c5 e9 db c3                 	vpand	%xmm3, %xmm2, %xmm0
1000069f8: c5 c9 db d8                 	vpand	%xmm0, %xmm6, %xmm3
1000069fc: 48 83 c2 10                 	addq	$16, %rdx
100006a00: 48 81 fa 0c 04 04 00        	cmpq	$263180, %rdx
100006a07: 0f 85 73 ff ff ff           	jne	-141 <_main+0xc20>
100006a0d: c5 b9 db c1                 	vpand	%xmm1, %xmm8, %xmm0
100006a11: c5 b1 db c0                 	vpand	%xmm0, %xmm9, %xmm0
100006a15: c5 e1 db c0                 	vpand	%xmm0, %xmm3, %xmm0
100006a19: c5 f9 70 c8 4e              	vpshufd	$78, %xmm0, %xmm1
100006a1e: c5 f9 db c1                 	vpand	%xmm1, %xmm0, %xmm0
100006a22: c5 f9 70 c8 e5              	vpshufd	$229, %xmm0, %xmm1
100006a27: c5 f9 db c1                 	vpand	%xmm1, %xmm0, %xmm0
100006a2b: c5 fb 10 89 00 20 20 00     	vmovsd	2105344(%rcx), %xmm1
100006a33: c5 f3 c2 88 00 20 20 00 00  	vcmpeqsd	2105344(%rax), %xmm1, %xmm1
100006a3c: c5 f9 7e c0                 	vmovd	%xmm0, %eax
100006a40: c4 e1 f9 7e c9              	vmovq	%xmm1, %rcx
100006a45: 21 c1                       	andl	%eax, %ecx
100006a47: 83 e1 01                    	andl	$1, %ecx
100006a4a: c4 c1 ab 2a c4              	vcvtsi2sd	%r12, %xmm10, %xmm0
100006a4f: c5 fb 5e 05 a9 03 00 00     	vdivsd	937(%rip), %xmm0, %xmm0
100006a57: 48 8d 3d aa 04 00 00        	leaq	1194(%rip), %rdi
100006a5e: be 01 02 00 00              	movl	$513, %esi
100006a63: ba 01 02 00 00              	movl	$513, %edx
100006a68: b0 01                       	movb	$1, %al
100006a6a: c5 f8 77                    	vzeroupper
100006a6d: e8 f4 02 00 00              	callq	756 <dyld_stub_binder+0x100006d66>
100006a72: 48 8b 9d a8 fb ff ff        	movq	-1112(%rbp), %rbx
100006a79: be 08 20 20 00              	movl	$2105352, %esi
100006a7e: 48 89 df                    	movq	%rbx, %rdi
100006a81: e8 c8 02 00 00              	callq	712 <dyld_stub_binder+0x100006d4e>
100006a86: c5 f9 6f 05 82 03 00 00     	vmovdqa	898(%rip), %xmm0
100006a8e: 31 c0                       	xorl	%eax, %eax
100006a90: c4 41 39 ef c0              	vpxor	%xmm8, %xmm8, %xmm8
100006a95: c5 79 6f 8d 30 fb ff ff     	vmovdqa	-1232(%rbp), %xmm9
100006a9d: c5 f9 6f bd 40 fb ff ff     	vmovdqa	-1216(%rbp), %xmm7
100006aa5: c5 f9 6f 8d 50 fb ff ff     	vmovdqa	-1200(%rbp), %xmm1
100006aad: c5 f9 6f b5 60 fb ff ff     	vmovdqa	-1184(%rbp), %xmm6
100006ab5: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
100006abf: 90                          	nop
100006ac0: c5 b9 fa d0                 	vpsubd	%xmm0, %xmm8, %xmm2
100006ac4: c5 b1 fa d8                 	vpsubd	%xmm0, %xmm9, %xmm3
100006ac8: c5 c1 fa e0                 	vpsubd	%xmm0, %xmm7, %xmm4
100006acc: c5 f1 fa e8                 	vpsubd	%xmm0, %xmm1, %xmm5
100006ad0: c5 fe e6 d2                 	vcvtdq2pd	%xmm2, %ymm2
100006ad4: c5 fe e6 db                 	vcvtdq2pd	%xmm3, %ymm3
100006ad8: c5 fe e6 e4                 	vcvtdq2pd	%xmm4, %ymm4
100006adc: c5 fe e6 ed                 	vcvtdq2pd	%xmm5, %ymm5
100006ae0: c5 fe 7f 14 c3              	vmovdqu	%ymm2, (%rbx,%rax,8)
100006ae5: c5 fe 7f 5c c3 20           	vmovdqu	%ymm3, 32(%rbx,%rax,8)
100006aeb: c5 fd 11 64 c3 40           	vmovupd	%ymm4, 64(%rbx,%rax,8)
100006af1: c5 fe 7f 6c c3 60           	vmovdqu	%ymm5, 96(%rbx,%rax,8)
100006af7: 48 83 c0 10                 	addq	$16, %rax
100006afb: c5 f9 fe c6                 	vpaddd	%xmm6, %xmm0, %xmm0
100006aff: 48 3d 00 02 00 00           	cmpq	$512, %rax
100006b05: 75 b9                       	jne	-71 <_main+0xd60>
100006b07: 4c 89 b3 00 10 00 00        	movq	%r14, 4096(%rbx)
100006b0e: b8 10 20 00 00              	movl	$8208, %eax
100006b13: b9 fe ff ff ff              	movl	$4294967294, %ecx
100006b18: 0f 1f 84 00 00 00 00 00     	nopl	(%rax,%rax)
100006b20: 8d 51 02                    	leal	2(%rcx), %edx
100006b23: c5 ab 2a c2                 	vcvtsi2sd	%edx, %xmm10, %xmm0
100006b27: 8d 51 01                    	leal	1(%rcx), %edx
100006b2a: c5 ab 2a ca                 	vcvtsi2sd	%edx, %xmm10, %xmm1
100006b2e: c5 fb 11 84 03 f0 df ff ff  	vmovsd	%xmm0, -8208(%rbx,%rax)
100006b37: c5 f9 d6 8c 03 f8 ef ff ff  	vmovq	%xmm1, -4104(%rbx,%rax)
100006b40: c5 ab 2a c1                 	vcvtsi2sd	%ecx, %xmm10, %xmm0
100006b44: c5 f9 d6 04 03              	vmovq	%xmm0, (%rbx,%rax)
100006b49: 48 05 18 30 00 00           	addq	$12312, %rax
100006b4f: 83 c1 fd                    	addl	$-3, %ecx
100006b52: 48 3d 18 40 20 00           	cmpq	$2113560, %rax
100006b58: 75 c6                       	jne	-58 <_main+0xdc0>
100006b5a: 41 bc 64 00 00 00           	movl	$100, %r12d
100006b60: 45 31 ff                    	xorl	%r15d, %r15d
100006b63: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
100006b6d: 0f 1f 00                    	nopl	(%rax)
100006b70: 0f 31                       	rdtsc
100006b72: 89 d3                       	movl	%edx, %ebx
100006b74: 89 c0                       	movl	%eax, %eax
100006b76: 48 c1 e3 20                 	shlq	$32, %rbx
100006b7a: 48 09 c3                    	orq	%rax, %rbx
100006b7d: 48 8b 95 90 fb ff ff        	movq	-1136(%rbp), %rdx
100006b84: 48 8b 8d 98 fb ff ff        	movq	-1128(%rbp), %rcx
100006b8b: 4c 8b 85 a8 fb ff ff        	movq	-1112(%rbp), %r8
100006b92: bf 01 02 00 00              	movl	$513, %edi
100006b97: be 01 02 00 00              	movl	$513, %esi
100006b9c: c5 f8 77                    	vzeroupper
100006b9f: e8 0c be ff ff              	callq	-16884 <_SIMDkernel8>
100006ba4: 0f 31                       	rdtsc
100006ba6: 89 c0                       	movl	%eax, %eax
100006ba8: 48 c1 e2 20                 	shlq	$32, %rdx
100006bac: 48 09 c2                    	orq	%rax, %rdx
100006baf: 49 29 df                    	subq	%rbx, %r15
100006bb2: 49 01 d7                    	addq	%rdx, %r15
100006bb5: 41 ff cc                    	decl	%r12d
100006bb8: 75 b6                       	jne	-74 <_main+0xe10>
100006bba: 48 8b 85 a8 fb ff ff        	movq	-1112(%rbp), %rax
100006bc1: c4 41 39 76 c0              	vpcmpeqd	%xmm8, %xmm8, %xmm8
100006bc6: c5 f9 6f 0d 52 02 00 00     	vmovdqa	594(%rip), %xmm1
100006bce: ba 0c 00 00 00              	movl	$12, %edx
100006bd3: 48 8b 8d a0 fb ff ff        	movq	-1120(%rbp), %rcx
100006bda: c4 41 31 76 c9              	vpcmpeqd	%xmm9, %xmm9, %xmm9
100006bdf: c5 e1 76 db                 	vpcmpeqd	%xmm3, %xmm3, %xmm3
100006be3: c5 f9 6f 95 70 fb ff ff     	vmovdqa	-1168(%rbp), %xmm2
100006beb: 0f 1f 44 00 00              	nopl	(%rax,%rax)
100006bf0: c5 fd 10 64 d1 a0           	vmovupd	-96(%rcx,%rdx,8), %ymm4
100006bf6: c5 fd 10 6c d1 c0           	vmovupd	-64(%rcx,%rdx,8), %ymm5
100006bfc: c5 fd 10 74 d1 e0           	vmovupd	-32(%rcx,%rdx,8), %ymm6
100006c02: c5 fd 10 3c d1              	vmovupd	(%rcx,%rdx,8), %ymm7
100006c07: c5 dd c2 64 d0 a0 00        	vcmpeqpd	-96(%rax,%rdx,8), %ymm4, %ymm4
100006c0e: c4 e3 7d 19 e0 01           	vextractf128	$1, %ymm4, %xmm0
100006c14: c5 d9 6b c0                 	vpackssdw	%xmm0, %xmm4, %xmm0
100006c18: c5 d5 c2 64 d0 c0 00        	vcmpeqpd	-64(%rax,%rdx,8), %ymm5, %ymm4
100006c1f: c4 e3 7d 19 e5 01           	vextractf128	$1, %ymm4, %xmm5
100006c25: c5 d9 6b e5                 	vpackssdw	%xmm5, %xmm4, %xmm4
100006c29: c5 cd c2 6c d0 e0 00        	vcmpeqpd	-32(%rax,%rdx,8), %ymm6, %ymm5
100006c30: c4 e3 7d 19 ee 01           	vextractf128	$1, %ymm5, %xmm6
100006c36: c5 d1 6b ee                 	vpackssdw	%xmm6, %xmm5, %xmm5
100006c3a: c5 c5 c2 34 d0 00           	vcmpeqpd	(%rax,%rdx,8), %ymm7, %ymm6
100006c40: c4 e3 7d 19 f7 01           	vextractf128	$1, %ymm6, %xmm7
100006c46: c5 c9 6b f7                 	vpackssdw	%xmm7, %xmm6, %xmm6
100006c4a: c5 e9 db c9                 	vpand	%xmm1, %xmm2, %xmm1
100006c4e: c5 f9 db c9                 	vpand	%xmm1, %xmm0, %xmm1
100006c52: c4 c1 69 db c0              	vpand	%xmm8, %xmm2, %xmm0
100006c57: c5 59 db c0                 	vpand	%xmm0, %xmm4, %xmm8
100006c5b: c4 c1 69 db c1              	vpand	%xmm9, %xmm2, %xmm0
100006c60: c5 51 db c8                 	vpand	%xmm0, %xmm5, %xmm9
100006c64: c5 e9 db c3                 	vpand	%xmm3, %xmm2, %xmm0
100006c68: c5 c9 db d8                 	vpand	%xmm0, %xmm6, %xmm3
100006c6c: 48 83 c2 10                 	addq	$16, %rdx
100006c70: 48 81 fa 0c 04 04 00        	cmpq	$263180, %rdx
100006c77: 0f 85 73 ff ff ff           	jne	-141 <_main+0xe90>
100006c7d: c5 b9 db c1                 	vpand	%xmm1, %xmm8, %xmm0
100006c81: c5 b1 db c0                 	vpand	%xmm0, %xmm9, %xmm0
100006c85: c5 e1 db c0                 	vpand	%xmm0, %xmm3, %xmm0
100006c89: c5 f9 70 c8 4e              	vpshufd	$78, %xmm0, %xmm1
100006c8e: c5 f9 db c1                 	vpand	%xmm1, %xmm0, %xmm0
100006c92: c5 f9 70 c8 e5              	vpshufd	$229, %xmm0, %xmm1
100006c97: c5 f9 db c1                 	vpand	%xmm1, %xmm0, %xmm0
100006c9b: c5 fb 10 89 00 20 20 00     	vmovsd	2105344(%rcx), %xmm1
100006ca3: c5 f3 c2 88 00 20 20 00 00  	vcmpeqsd	2105344(%rax), %xmm1, %xmm1
100006cac: c5 f9 7e c0                 	vmovd	%xmm0, %eax
100006cb0: c4 e1 f9 7e c9              	vmovq	%xmm1, %rcx
100006cb5: 21 c1                       	andl	%eax, %ecx
100006cb7: 83 e1 01                    	andl	$1, %ecx
100006cba: c4 c1 ab 2a c7              	vcvtsi2sd	%r15, %xmm10, %xmm0
100006cbf: c5 fb 5e 05 39 01 00 00     	vdivsd	313(%rip), %xmm0, %xmm0
100006cc7: 48 8d 3d 7e 02 00 00        	leaq	638(%rip), %rdi
100006cce: be 01 02 00 00              	movl	$513, %esi
100006cd3: ba 01 02 00 00              	movl	$513, %edx
100006cd8: b0 01                       	movb	$1, %al
100006cda: c5 f8 77                    	vzeroupper
100006cdd: e8 84 00 00 00              	callq	132 <dyld_stub_binder+0x100006d66>
100006ce2: 48 8b bd 90 fb ff ff        	movq	-1136(%rbp), %rdi
100006ce9: e8 6c 00 00 00              	callq	108 <dyld_stub_binder+0x100006d5a>
100006cee: 48 8b bd 98 fb ff ff        	movq	-1128(%rbp), %rdi
100006cf5: e8 60 00 00 00              	callq	96 <dyld_stub_binder+0x100006d5a>
100006cfa: 48 8b bd a8 fb ff ff        	movq	-1112(%rbp), %rdi
100006d01: e8 54 00 00 00              	callq	84 <dyld_stub_binder+0x100006d5a>
100006d06: 48 8b bd a0 fb ff ff        	movq	-1120(%rbp), %rdi
100006d0d: e8 48 00 00 00              	callq	72 <dyld_stub_binder+0x100006d5a>
100006d12: 48 8b bd 88 fb ff ff        	movq	-1144(%rbp), %rdi
100006d19: e8 3c 00 00 00              	callq	60 <dyld_stub_binder+0x100006d5a>
100006d1e: 48 8b a5 28 fb ff ff        	movq	-1240(%rbp), %rsp
100006d25: 48 8b 05 d4 02 00 00        	movq	724(%rip), %rax
100006d2c: 48 8b 00                    	movq	(%rax), %rax
100006d2f: 48 3b 45 d0                 	cmpq	-48(%rbp), %rax
100006d33: 75 14                       	jne	20 <_main+0xfe9>
100006d35: 31 c0                       	xorl	%eax, %eax
100006d37: 48 81 c4 b8 04 00 00        	addq	$1208, %rsp
100006d3e: 5b                          	popq	%rbx
100006d3f: 41 5c                       	popq	%r12
100006d41: 41 5d                       	popq	%r13
100006d43: 41 5e                       	popq	%r14
100006d45: 41 5f                       	popq	%r15
100006d47: 5d                          	popq	%rbp
100006d48: c3                          	retq
100006d49: e8 06 00 00 00              	callq	6 <dyld_stub_binder+0x100006d54>

Disassembly of section __TEXT,__stubs:

0000000100006d4e __stubs:
100006d4e: ff 25 ac 12 00 00           	jmpq	*4780(%rip)
100006d54: ff 25 ae 12 00 00           	jmpq	*4782(%rip)
100006d5a: ff 25 b0 12 00 00           	jmpq	*4784(%rip)
100006d60: ff 25 b2 12 00 00           	jmpq	*4786(%rip)
100006d66: ff 25 b4 12 00 00           	jmpq	*4788(%rip)
100006d6c: ff 25 b6 12 00 00           	jmpq	*4790(%rip)
100006d72: ff 25 b8 12 00 00           	jmpq	*4792(%rip)

Disassembly of section __TEXT,__stub_helper:

0000000100006d78 __stub_helper:
100006d78: 4c 8d 1d b9 12 00 00        	leaq	4793(%rip), %r11
100006d7f: 41 53                       	pushq	%r11
100006d81: ff 25 81 02 00 00           	jmpq	*641(%rip)
100006d87: 90                          	nop
100006d88: 68 00 00 00 00              	pushq	$0
100006d8d: e9 e6 ff ff ff              	jmp	-26 <__stub_helper>
100006d92: 68 0f 00 00 00              	pushq	$15
100006d97: e9 dc ff ff ff              	jmp	-36 <__stub_helper>
100006d9c: 68 27 00 00 00              	pushq	$39
100006da1: e9 d2 ff ff ff              	jmp	-46 <__stub_helper>
100006da6: 68 33 00 00 00              	pushq	$51
100006dab: e9 c8 ff ff ff              	jmp	-56 <__stub_helper>
100006db0: 68 49 00 00 00              	pushq	$73
100006db5: e9 be ff ff ff              	jmp	-66 <__stub_helper>
100006dba: 68 57 00 00 00              	pushq	$87
100006dbf: e9 b4 ff ff ff              	jmp	-76 <__stub_helper>
100006dc4: 68 66 00 00 00              	pushq	$102
100006dc9: e9 aa ff ff ff              	jmp	-86 <__stub_helper>
