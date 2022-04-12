
pwd：     文件格式 elf32-i386


Disassembly of section .init:

00001000 <_init>:
    1000:	f3 0f 1e fb          	endbr32 
    1004:	53                   	push   %ebx
    1005:	83 ec 08             	sub    $0x8,%esp
    1008:	e8 d3 00 00 00       	call   10e0 <__x86.get_pc_thunk.bx>
    100d:	81 c3 bb 2f 00 00    	add    $0x2fbb,%ebx
    1013:	8b 83 2c 00 00 00    	mov    0x2c(%ebx),%eax
    1019:	85 c0                	test   %eax,%eax
    101b:	74 02                	je     101f <_init+0x1f>
    101d:	ff d0                	call   *%eax
    101f:	83 c4 08             	add    $0x8,%esp
    1022:	5b                   	pop    %ebx
    1023:	c3                   	ret    

Disassembly of section .plt:

00001030 <strcmp@plt-0x10>:
    1030:	ff b3 04 00 00 00    	push   0x4(%ebx)
    1036:	ff a3 08 00 00 00    	jmp    *0x8(%ebx)
    103c:	00 00                	add    %al,(%eax)
	...

00001040 <strcmp@plt>:
    1040:	ff a3 0c 00 00 00    	jmp    *0xc(%ebx)
    1046:	68 00 00 00 00       	push   $0x0
    104b:	e9 e0 ff ff ff       	jmp    1030 <_init+0x30>

00001050 <__libc_start_main@plt>:
    1050:	ff a3 10 00 00 00    	jmp    *0x10(%ebx)
    1056:	68 08 00 00 00       	push   $0x8
    105b:	e9 d0 ff ff ff       	jmp    1030 <_init+0x30>

00001060 <printf@plt>:
    1060:	ff a3 14 00 00 00    	jmp    *0x14(%ebx)
    1066:	68 10 00 00 00       	push   $0x10
    106b:	e9 c0 ff ff ff       	jmp    1030 <_init+0x30>

00001070 <strcpy@plt>:
    1070:	ff a3 18 00 00 00    	jmp    *0x18(%ebx)
    1076:	68 18 00 00 00       	push   $0x18
    107b:	e9 b0 ff ff ff       	jmp    1030 <_init+0x30>

00001080 <puts@plt>:
    1080:	ff a3 1c 00 00 00    	jmp    *0x1c(%ebx)
    1086:	68 20 00 00 00       	push   $0x20
    108b:	e9 a0 ff ff ff       	jmp    1030 <_init+0x30>

00001090 <__isoc99_scanf@plt>:
    1090:	ff a3 20 00 00 00    	jmp    *0x20(%ebx)
    1096:	68 28 00 00 00       	push   $0x28
    109b:	e9 90 ff ff ff       	jmp    1030 <_init+0x30>

Disassembly of section .plt.got:

000010a0 <__cxa_finalize@plt>:
    10a0:	ff a3 28 00 00 00    	jmp    *0x28(%ebx)
    10a6:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

000010b0 <_start>:
    10b0:	f3 0f 1e fb          	endbr32 
    10b4:	31 ed                	xor    %ebp,%ebp
    10b6:	5e                   	pop    %esi
    10b7:	89 e1                	mov    %esp,%ecx
    10b9:	83 e4 f0             	and    $0xfffffff0,%esp
    10bc:	50                   	push   %eax
    10bd:	54                   	push   %esp
    10be:	52                   	push   %edx
    10bf:	e8 18 00 00 00       	call   10dc <_start+0x2c>
    10c4:	81 c3 04 2f 00 00    	add    $0x2f04,%ebx
    10ca:	6a 00                	push   $0x0
    10cc:	6a 00                	push   $0x0
    10ce:	51                   	push   %ecx
    10cf:	56                   	push   %esi
    10d0:	ff b3 30 00 00 00    	push   0x30(%ebx)
    10d6:	e8 75 ff ff ff       	call   1050 <__libc_start_main@plt>
    10db:	f4                   	hlt    
    10dc:	8b 1c 24             	mov    (%esp),%ebx
    10df:	c3                   	ret    

000010e0 <__x86.get_pc_thunk.bx>:
    10e0:	8b 1c 24             	mov    (%esp),%ebx
    10e3:	c3                   	ret    
    10e4:	66 90                	xchg   %ax,%ax
    10e6:	66 90                	xchg   %ax,%ax
    10e8:	66 90                	xchg   %ax,%ax
    10ea:	66 90                	xchg   %ax,%ax
    10ec:	66 90                	xchg   %ax,%ax
    10ee:	66 90                	xchg   %ax,%ax

000010f0 <deregister_tm_clones>:
    10f0:	e8 e4 00 00 00       	call   11d9 <__x86.get_pc_thunk.dx>
    10f5:	81 c2 d3 2e 00 00    	add    $0x2ed3,%edx
    10fb:	8d 8a 40 00 00 00    	lea    0x40(%edx),%ecx
    1101:	8d 82 40 00 00 00    	lea    0x40(%edx),%eax
    1107:	39 c8                	cmp    %ecx,%eax
    1109:	74 1d                	je     1128 <deregister_tm_clones+0x38>
    110b:	8b 82 24 00 00 00    	mov    0x24(%edx),%eax
    1111:	85 c0                	test   %eax,%eax
    1113:	74 13                	je     1128 <deregister_tm_clones+0x38>
    1115:	55                   	push   %ebp
    1116:	89 e5                	mov    %esp,%ebp
    1118:	83 ec 14             	sub    $0x14,%esp
    111b:	51                   	push   %ecx
    111c:	ff d0                	call   *%eax
    111e:	83 c4 10             	add    $0x10,%esp
    1121:	c9                   	leave  
    1122:	c3                   	ret    
    1123:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    1127:	90                   	nop
    1128:	c3                   	ret    
    1129:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00001130 <register_tm_clones>:
    1130:	e8 a4 00 00 00       	call   11d9 <__x86.get_pc_thunk.dx>
    1135:	81 c2 93 2e 00 00    	add    $0x2e93,%edx
    113b:	55                   	push   %ebp
    113c:	89 e5                	mov    %esp,%ebp
    113e:	53                   	push   %ebx
    113f:	8d 8a 40 00 00 00    	lea    0x40(%edx),%ecx
    1145:	8d 82 40 00 00 00    	lea    0x40(%edx),%eax
    114b:	83 ec 04             	sub    $0x4,%esp
    114e:	29 c8                	sub    %ecx,%eax
    1150:	89 c3                	mov    %eax,%ebx
    1152:	c1 e8 1f             	shr    $0x1f,%eax
    1155:	c1 fb 02             	sar    $0x2,%ebx
    1158:	01 d8                	add    %ebx,%eax
    115a:	d1 f8                	sar    %eax
    115c:	74 14                	je     1172 <register_tm_clones+0x42>
    115e:	8b 92 34 00 00 00    	mov    0x34(%edx),%edx
    1164:	85 d2                	test   %edx,%edx
    1166:	74 0a                	je     1172 <register_tm_clones+0x42>
    1168:	83 ec 08             	sub    $0x8,%esp
    116b:	50                   	push   %eax
    116c:	51                   	push   %ecx
    116d:	ff d2                	call   *%edx
    116f:	83 c4 10             	add    $0x10,%esp
    1172:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    1175:	c9                   	leave  
    1176:	c3                   	ret    
    1177:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    117e:	66 90                	xchg   %ax,%ax

00001180 <__do_global_dtors_aux>:
    1180:	f3 0f 1e fb          	endbr32 
    1184:	55                   	push   %ebp
    1185:	89 e5                	mov    %esp,%ebp
    1187:	53                   	push   %ebx
    1188:	e8 53 ff ff ff       	call   10e0 <__x86.get_pc_thunk.bx>
    118d:	81 c3 3b 2e 00 00    	add    $0x2e3b,%ebx
    1193:	83 ec 04             	sub    $0x4,%esp
    1196:	80 bb 40 00 00 00 00 	cmpb   $0x0,0x40(%ebx)
    119d:	75 27                	jne    11c6 <__do_global_dtors_aux+0x46>
    119f:	8b 83 28 00 00 00    	mov    0x28(%ebx),%eax
    11a5:	85 c0                	test   %eax,%eax
    11a7:	74 11                	je     11ba <__do_global_dtors_aux+0x3a>
    11a9:	83 ec 0c             	sub    $0xc,%esp
    11ac:	ff b3 3c 00 00 00    	push   0x3c(%ebx)
    11b2:	e8 e9 fe ff ff       	call   10a0 <__cxa_finalize@plt>
    11b7:	83 c4 10             	add    $0x10,%esp
    11ba:	e8 31 ff ff ff       	call   10f0 <deregister_tm_clones>
    11bf:	c6 83 40 00 00 00 01 	movb   $0x1,0x40(%ebx)
    11c6:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    11c9:	c9                   	leave  
    11ca:	c3                   	ret    
    11cb:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    11cf:	90                   	nop

000011d0 <frame_dummy>:
    11d0:	f3 0f 1e fb          	endbr32 
    11d4:	e9 57 ff ff ff       	jmp    1130 <register_tm_clones>

000011d9 <__x86.get_pc_thunk.dx>:
    11d9:	8b 14 24             	mov    (%esp),%edx
    11dc:	c3                   	ret    

000011dd <verify>:
    11dd:	55                   	push   %ebp                             压栈 
    11de:	89 e5                	mov    %esp,%ebp                        栈帧
    11e0:	53                   	push   %ebx                             压函数栈
    11e1:	83 ec 14             	sub    $0x14,%esp                       esp-20开辟空间
    11e4:	e8 f7 fe ff ff       	call   10e0 <__x86.get_pc_thunk.bx>     调用这个函数，目测是PASSWORD,详见参考3
    11e9:	81 c3 df 2d 00 00    	add    $0x2ddf,%ebx                     ebx+2ddf
    11ef:	83 ec 08             	sub    $0x8,%esp                        esp-8开辟buffer空间
    11f2:	8d 83 40 e0 ff ff    	lea    -0x1fc0(%ebx),%eax               以-0x1fc0(%ebx)为地址加载到eax
    11f8:	50                   	push   %eax                             压函数strcmp的栈
    11f9:	ff 75 08             	push   0x8(%ebp)                        password
    11fc:	e8 3f fe ff ff       	call   1040 <strcmp@plt>                调用strcmp
    1201:	83 c4 10             	add    $0x10,%esp                       esp指针加16
    1204:	89 45 f4             	mov    %eax,-0xc(%ebp)                  -0xc(%ebp)以eax的值为地址，auth存到了距离ebp有12的地方,此时ebp esp距离12
    1207:	83 ec 08             	sub    $0x8,%esp                        esp-8继续开辟空间
    120a:	ff 75 08             	push   0x8(%ebp)                        password
    120d:	8d 45 ec             	lea    -0x14(%ebp),%eax                 以-0x14(%ebp)为地址加载到eax，buffer[8]数组
    1210:	50                   	push   %eax                             压strcpy的栈
    1211:	e8 5a fe ff ff       	call   1070 <strcpy@plt>                调用strcpy
    1216:	83 c4 10             	add    $0x10,%esp                       esp+16,此时ebp与esp 距离为20+8-16+8-16=4,出现栈溢出
    1219:	8b 45 f4             	mov    -0xc(%ebp),%eax                  auth给到eax
    121c:	8b 5d fc             	mov    -0x4(%ebp),%ebx                  程序认为的auth给到寄存器ebx
    121f:	c9                   	leave  
    1220:	c3                   	ret    

00001221 <main>:
    1221:	8d 4c 24 04          	lea    0x4(%esp),%ecx
    1225:	83 e4 f0             	and    $0xfffffff0,%esp
    1228:	ff 71 fc             	push   -0x4(%ecx)
    122b:	55                   	push   %ebp
    122c:	89 e5                	mov    %esp,%ebp
    122e:	53                   	push   %ebx
    122f:	51                   	push   %ecx
    1230:	81 ec 10 04 00 00    	sub    $0x410,%esp
    1236:	e8 a5 fe ff ff       	call   10e0 <__x86.get_pc_thunk.bx>
    123b:	81 c3 8d 2d 00 00    	add    $0x2d8d,%ebx
    1241:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
    1248:	83 ec 0c             	sub    $0xc,%esp
    124b:	8d 83 48 e0 ff ff    	lea    -0x1fb8(%ebx),%eax
    1251:	50                   	push   %eax
    1252:	e8 09 fe ff ff       	call   1060 <printf@plt>
    1257:	83 c4 10             	add    $0x10,%esp
    125a:	83 ec 08             	sub    $0x8,%esp
    125d:	8d 85 f4 fb ff ff    	lea    -0x40c(%ebp),%eax
    1263:	50                   	push   %eax
    1264:	8d 83 5d e0 ff ff    	lea    -0x1fa3(%ebx),%eax
    126a:	50                   	push   %eax
    126b:	e8 20 fe ff ff       	call   1090 <__isoc99_scanf@plt>
    1270:	83 c4 10             	add    $0x10,%esp
    1273:	83 ec 0c             	sub    $0xc,%esp
    1276:	8d 85 f4 fb ff ff    	lea    -0x40c(%ebp),%eax
    127c:	50                   	push   %eax
    127d:	e8 5b ff ff ff       	call   11dd <verify>
    1282:	83 c4 10             	add    $0x10,%esp
    1285:	89 45 f4             	mov    %eax,-0xc(%ebp)
    1288:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
    128c:	74 14                	je     12a2 <main+0x81>
    128e:	83 ec 0c             	sub    $0xc,%esp
    1291:	8d 83 60 e0 ff ff    	lea    -0x1fa0(%ebx),%eax
    1297:	50                   	push   %eax
    1298:	e8 e3 fd ff ff       	call   1080 <puts@plt>
    129d:	83 c4 10             	add    $0x10,%esp
    12a0:	eb a6                	jmp    1248 <main+0x27>
    12a2:	83 ec 0c             	sub    $0xc,%esp
    12a5:	8d 83 73 e0 ff ff    	lea    -0x1f8d(%ebx),%eax
    12ab:	50                   	push   %eax
    12ac:	e8 cf fd ff ff       	call   1080 <puts@plt>
    12b1:	83 c4 10             	add    $0x10,%esp
    12b4:	90                   	nop
    12b5:	b8 00 00 00 00       	mov    $0x0,%eax
    12ba:	8d 65 f8             	lea    -0x8(%ebp),%esp
    12bd:	59                   	pop    %ecx
    12be:	5b                   	pop    %ebx
    12bf:	5d                   	pop    %ebp
    12c0:	8d 61 fc             	lea    -0x4(%ecx),%esp
    12c3:	c3                   	ret    

Disassembly of section .fini:

000012c4 <_fini>:
    12c4:	f3 0f 1e fb          	endbr32 
    12c8:	53                   	push   %ebx
    12c9:	83 ec 08             	sub    $0x8,%esp
    12cc:	e8 0f fe ff ff       	call   10e0 <__x86.get_pc_thunk.bx>
    12d1:	81 c3 f7 2c 00 00    	add    $0x2cf7,%ebx
    12d7:	83 c4 08             	add    $0x8,%esp
    12da:	5b                   	pop    %ebx
    12db:	c3                   	ret    
