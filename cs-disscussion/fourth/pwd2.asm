
pwd2：     文件格式 elf32-i386


Disassembly of section .init:

00001000 <_init>:
    1000:	f3 0f 1e fb          	endbr32 
    1004:	53                   	push   %ebx
    1005:	83 ec 08             	sub    $0x8,%esp
    1008:	e8 e3 00 00 00       	call   10f0 <__x86.get_pc_thunk.bx>
    100d:	81 c3 b7 2f 00 00    	add    $0x2fb7,%ebx
    1013:	8b 83 30 00 00 00    	mov    0x30(%ebx),%eax
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

00001070 <__stack_chk_fail@plt>:
    1070:	ff a3 18 00 00 00    	jmp    *0x18(%ebx)
    1076:	68 18 00 00 00       	push   $0x18
    107b:	e9 b0 ff ff ff       	jmp    1030 <_init+0x30>

00001080 <strcpy@plt>:
    1080:	ff a3 1c 00 00 00    	jmp    *0x1c(%ebx)
    1086:	68 20 00 00 00       	push   $0x20
    108b:	e9 a0 ff ff ff       	jmp    1030 <_init+0x30>

00001090 <puts@plt>:
    1090:	ff a3 20 00 00 00    	jmp    *0x20(%ebx)
    1096:	68 28 00 00 00       	push   $0x28
    109b:	e9 90 ff ff ff       	jmp    1030 <_init+0x30>

000010a0 <__isoc99_scanf@plt>:
    10a0:	ff a3 24 00 00 00    	jmp    *0x24(%ebx)
    10a6:	68 30 00 00 00       	push   $0x30
    10ab:	e9 80 ff ff ff       	jmp    1030 <_init+0x30>

Disassembly of section .plt.got:

000010b0 <__cxa_finalize@plt>:
    10b0:	ff a3 2c 00 00 00    	jmp    *0x2c(%ebx)
    10b6:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

000010c0 <_start>:
    10c0:	f3 0f 1e fb          	endbr32 
    10c4:	31 ed                	xor    %ebp,%ebp
    10c6:	5e                   	pop    %esi
    10c7:	89 e1                	mov    %esp,%ecx
    10c9:	83 e4 f0             	and    $0xfffffff0,%esp
    10cc:	50                   	push   %eax
    10cd:	54                   	push   %esp
    10ce:	52                   	push   %edx
    10cf:	e8 18 00 00 00       	call   10ec <_start+0x2c>
    10d4:	81 c3 f0 2e 00 00    	add    $0x2ef0,%ebx
    10da:	6a 00                	push   $0x0
    10dc:	6a 00                	push   $0x0
    10de:	51                   	push   %ecx
    10df:	56                   	push   %esi
    10e0:	ff b3 34 00 00 00    	push   0x34(%ebx)
    10e6:	e8 65 ff ff ff       	call   1050 <__libc_start_main@plt>
    10eb:	f4                   	hlt    
    10ec:	8b 1c 24             	mov    (%esp),%ebx
    10ef:	c3                   	ret    

000010f0 <__x86.get_pc_thunk.bx>:
    10f0:	8b 1c 24             	mov    (%esp),%ebx
    10f3:	c3                   	ret    
    10f4:	66 90                	xchg   %ax,%ax
    10f6:	66 90                	xchg   %ax,%ax
    10f8:	66 90                	xchg   %ax,%ax
    10fa:	66 90                	xchg   %ax,%ax
    10fc:	66 90                	xchg   %ax,%ax
    10fe:	66 90                	xchg   %ax,%ax

00001100 <deregister_tm_clones>:
    1100:	e8 e4 00 00 00       	call   11e9 <__x86.get_pc_thunk.dx>
    1105:	81 c2 bf 2e 00 00    	add    $0x2ebf,%edx
    110b:	8d 8a 44 00 00 00    	lea    0x44(%edx),%ecx
    1111:	8d 82 44 00 00 00    	lea    0x44(%edx),%eax
    1117:	39 c8                	cmp    %ecx,%eax
    1119:	74 1d                	je     1138 <deregister_tm_clones+0x38>
    111b:	8b 82 28 00 00 00    	mov    0x28(%edx),%eax
    1121:	85 c0                	test   %eax,%eax
    1123:	74 13                	je     1138 <deregister_tm_clones+0x38>
    1125:	55                   	push   %ebp
    1126:	89 e5                	mov    %esp,%ebp
    1128:	83 ec 14             	sub    $0x14,%esp
    112b:	51                   	push   %ecx
    112c:	ff d0                	call   *%eax
    112e:	83 c4 10             	add    $0x10,%esp
    1131:	c9                   	leave  
    1132:	c3                   	ret    
    1133:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    1137:	90                   	nop
    1138:	c3                   	ret    
    1139:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00001140 <register_tm_clones>:
    1140:	e8 a4 00 00 00       	call   11e9 <__x86.get_pc_thunk.dx>
    1145:	81 c2 7f 2e 00 00    	add    $0x2e7f,%edx
    114b:	55                   	push   %ebp
    114c:	89 e5                	mov    %esp,%ebp
    114e:	53                   	push   %ebx
    114f:	8d 8a 44 00 00 00    	lea    0x44(%edx),%ecx
    1155:	8d 82 44 00 00 00    	lea    0x44(%edx),%eax
    115b:	83 ec 04             	sub    $0x4,%esp
    115e:	29 c8                	sub    %ecx,%eax
    1160:	89 c3                	mov    %eax,%ebx
    1162:	c1 e8 1f             	shr    $0x1f,%eax
    1165:	c1 fb 02             	sar    $0x2,%ebx
    1168:	01 d8                	add    %ebx,%eax
    116a:	d1 f8                	sar    %eax
    116c:	74 14                	je     1182 <register_tm_clones+0x42>
    116e:	8b 92 38 00 00 00    	mov    0x38(%edx),%edx
    1174:	85 d2                	test   %edx,%edx
    1176:	74 0a                	je     1182 <register_tm_clones+0x42>
    1178:	83 ec 08             	sub    $0x8,%esp
    117b:	50                   	push   %eax
    117c:	51                   	push   %ecx
    117d:	ff d2                	call   *%edx
    117f:	83 c4 10             	add    $0x10,%esp
    1182:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    1185:	c9                   	leave  
    1186:	c3                   	ret    
    1187:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    118e:	66 90                	xchg   %ax,%ax

00001190 <__do_global_dtors_aux>:
    1190:	f3 0f 1e fb          	endbr32 
    1194:	55                   	push   %ebp
    1195:	89 e5                	mov    %esp,%ebp
    1197:	53                   	push   %ebx
    1198:	e8 53 ff ff ff       	call   10f0 <__x86.get_pc_thunk.bx>
    119d:	81 c3 27 2e 00 00    	add    $0x2e27,%ebx
    11a3:	83 ec 04             	sub    $0x4,%esp
    11a6:	80 bb 44 00 00 00 00 	cmpb   $0x0,0x44(%ebx)
    11ad:	75 27                	jne    11d6 <__do_global_dtors_aux+0x46>
    11af:	8b 83 2c 00 00 00    	mov    0x2c(%ebx),%eax
    11b5:	85 c0                	test   %eax,%eax
    11b7:	74 11                	je     11ca <__do_global_dtors_aux+0x3a>
    11b9:	83 ec 0c             	sub    $0xc,%esp
    11bc:	ff b3 40 00 00 00    	push   0x40(%ebx)
    11c2:	e8 e9 fe ff ff       	call   10b0 <__cxa_finalize@plt>
    11c7:	83 c4 10             	add    $0x10,%esp
    11ca:	e8 31 ff ff ff       	call   1100 <deregister_tm_clones>
    11cf:	c6 83 44 00 00 00 01 	movb   $0x1,0x44(%ebx)
    11d6:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    11d9:	c9                   	leave  
    11da:	c3                   	ret    
    11db:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    11df:	90                   	nop

000011e0 <frame_dummy>:
    11e0:	f3 0f 1e fb          	endbr32 
    11e4:	e9 57 ff ff ff       	jmp    1140 <register_tm_clones>

000011e9 <__x86.get_pc_thunk.dx>:
    11e9:	8b 14 24             	mov    (%esp),%edx
    11ec:	c3                   	ret    

000011ed <verify>:
    11ed:	55                   	push   %ebp                              压栈
    11ee:	89 e5                	mov    %esp,%ebp                         栈帧
    11f0:	53                   	push   %ebx                              压函数栈
    11f1:	83 ec 24             	sub    $0x24,%esp                        开辟空间
    11f4:	e8 f7 fe ff ff       	call   10f0 <__x86.get_pc_thunk.bx>      PASSWORD
    11f9:	81 c3 cb 2d 00 00    	add    $0x2dcb,%ebx                      ebx+0x2dcb
    11ff:	8b 45 08             	mov    0x8(%ebp),%eax                    以0x8(%ebp)为地址的值给eax          
    1202:	89 45 e4             	mov    %eax,-0x1c(%ebp)                  eax的值给到-0x1c(%ebp)
    1205:	65 a1 14 00 00 00    	mov    %gs:0x14,%eax                     %gs是段寄存器，可以看到这时已经不一样了
    120b:	89 45 f4             	mov    %eax,-0xc(%ebp)                   eax的值给到-0xc(%ebp)
    120e:	31 c0                	xor    %eax,%eax                         eax自我抑或，相当于eax=0
    1210:	83 ec 08             	sub    $0x8,%esp                         esp-8开辟空间，buffer[8]
    1213:	8d 83 44 e0 ff ff    	lea    -0x1fbc(%ebx),%eax                以-0x1fbc(%ebx)为地址的值加载到eax
    1219:	50                   	push   %eax                              压函数strcmp栈
    121a:	ff 75 e4             	push   -0x1c(%ebp)                       password
    121d:	e8 1e fe ff ff       	call   1040 <strcmp@plt>                 调用strcmp
    1222:	83 c4 10             	add    $0x10,%esp                        esp+16
    1225:	89 45 e8             	mov    %eax,-0x18(%ebp)                  eax的值给到-0x18(%ebp)，auth存到-0x18(%ebp),即距离ebp有24.ebp esp距离24
    1228:	83 ec 08             	sub    $0x8,%esp                         esp-8开辟空间 36+8-16+8=36
    122b:	ff 75 e4             	push   -0x1c(%ebp)                       压栈
    122e:	8d 45 ec             	lea    -0x14(%ebp),%eax                  以-0x14(%ebp)为地址的值给到eax
    1231:	50                   	push   %eax                              压栈
    1232:	e8 49 fe ff ff       	call   1080 <strcpy@plt>                 调用strcpy函数
    1237:	83 c4 10             	add    $0x10,%esp                        esp+16,此时buffer[8]占用到auth的地址(ebp与esp相差36+8-16+8-16=20)，而刚刚auth存到距离ebp有24的位置，此时出现栈溢出
    123a:	8b 45 e8             	mov    -0x18(%ebp),%eax                  以-0x18(%ebp)给到eax,auth没了
    123d:	8b 55 f4             	mov    -0xc(%ebp),%edx                   以-0xc(%ebp)给到edx
    1240:	65 2b 15 14 00 00 00 	sub    %gs:0x14,%edx                     刚刚的段寄存器，不太清楚是在干什么，目测和溢出有关所以调用段寄存器
    1247:	74 05                	je     124e <verify+0x61>                跳转
    1249:	e8 d2 00 00 00       	call   1320 <__stack_chk_fail_local>     调用stack相关函数，处理栈溢出问题
    124e:	8b 5d fc             	mov    -0x4(%ebp),%ebx                   以-0x4(%ebp)给到ebx,此时经stack相关函数处理后auth正常
    1251:	c9                   	leave  
    1252:	c3                   	ret    

00001253 <main>:
    1253:	8d 4c 24 04          	lea    0x4(%esp),%ecx
    1257:	83 e4 f0             	and    $0xfffffff0,%esp
    125a:	ff 71 fc             	push   -0x4(%ecx)
    125d:	55                   	push   %ebp
    125e:	89 e5                	mov    %esp,%ebp
    1260:	53                   	push   %ebx
    1261:	51                   	push   %ecx
    1262:	81 ec 10 04 00 00    	sub    $0x410,%esp
    1268:	e8 83 fe ff ff       	call   10f0 <__x86.get_pc_thunk.bx>
    126d:	81 c3 57 2d 00 00    	add    $0x2d57,%ebx
    1273:	65 a1 14 00 00 00    	mov    %gs:0x14,%eax
    1279:	89 45 f4             	mov    %eax,-0xc(%ebp)
    127c:	31 c0                	xor    %eax,%eax
    127e:	c7 85 f0 fb ff ff 00 	movl   $0x0,-0x410(%ebp)
    1285:	00 00 00 
    1288:	83 ec 0c             	sub    $0xc,%esp
    128b:	8d 83 4c e0 ff ff    	lea    -0x1fb4(%ebx),%eax
    1291:	50                   	push   %eax
    1292:	e8 c9 fd ff ff       	call   1060 <printf@plt>
    1297:	83 c4 10             	add    $0x10,%esp
    129a:	83 ec 08             	sub    $0x8,%esp
    129d:	8d 85 f4 fb ff ff    	lea    -0x40c(%ebp),%eax
    12a3:	50                   	push   %eax
    12a4:	8d 83 61 e0 ff ff    	lea    -0x1f9f(%ebx),%eax
    12aa:	50                   	push   %eax
    12ab:	e8 f0 fd ff ff       	call   10a0 <__isoc99_scanf@plt>
    12b0:	83 c4 10             	add    $0x10,%esp
    12b3:	83 ec 0c             	sub    $0xc,%esp
    12b6:	8d 85 f4 fb ff ff    	lea    -0x40c(%ebp),%eax
    12bc:	50                   	push   %eax
    12bd:	e8 2b ff ff ff       	call   11ed <verify>
    12c2:	83 c4 10             	add    $0x10,%esp
    12c5:	89 85 f0 fb ff ff    	mov    %eax,-0x410(%ebp)
    12cb:	83 bd f0 fb ff ff 00 	cmpl   $0x0,-0x410(%ebp)
    12d2:	74 14                	je     12e8 <main+0x95>
    12d4:	83 ec 0c             	sub    $0xc,%esp
    12d7:	8d 83 64 e0 ff ff    	lea    -0x1f9c(%ebx),%eax
    12dd:	50                   	push   %eax
    12de:	e8 ad fd ff ff       	call   1090 <puts@plt>
    12e3:	83 c4 10             	add    $0x10,%esp
    12e6:	eb a0                	jmp    1288 <main+0x35>
    12e8:	83 ec 0c             	sub    $0xc,%esp
    12eb:	8d 83 77 e0 ff ff    	lea    -0x1f89(%ebx),%eax
    12f1:	50                   	push   %eax
    12f2:	e8 99 fd ff ff       	call   1090 <puts@plt>
    12f7:	83 c4 10             	add    $0x10,%esp
    12fa:	90                   	nop
    12fb:	b8 00 00 00 00       	mov    $0x0,%eax
    1300:	8b 55 f4             	mov    -0xc(%ebp),%edx
    1303:	65 2b 15 14 00 00 00 	sub    %gs:0x14,%edx
    130a:	74 05                	je     1311 <main+0xbe>
    130c:	e8 0f 00 00 00       	call   1320 <__stack_chk_fail_local>
    1311:	8d 65 f8             	lea    -0x8(%ebp),%esp
    1314:	59                   	pop    %ecx
    1315:	5b                   	pop    %ebx
    1316:	5d                   	pop    %ebp
    1317:	8d 61 fc             	lea    -0x4(%ecx),%esp
    131a:	c3                   	ret    
    131b:	66 90                	xchg   %ax,%ax
    131d:	66 90                	xchg   %ax,%ax
    131f:	90                   	nop

00001320 <__stack_chk_fail_local>:
    1320:	f3 0f 1e fb          	endbr32 
    1324:	53                   	push   %ebx
    1325:	e8 c6 fd ff ff       	call   10f0 <__x86.get_pc_thunk.bx>
    132a:	81 c3 9a 2c 00 00    	add    $0x2c9a,%ebx
    1330:	83 ec 08             	sub    $0x8,%esp
    1333:	e8 38 fd ff ff       	call   1070 <__stack_chk_fail@plt>

Disassembly of section .fini:

00001338 <_fini>:
    1338:	f3 0f 1e fb          	endbr32 
    133c:	53                   	push   %ebx
    133d:	83 ec 08             	sub    $0x8,%esp
    1340:	e8 ab fd ff ff       	call   10f0 <__x86.get_pc_thunk.bx>
    1345:	81 c3 7f 2c 00 00    	add    $0x2c7f,%ebx
    134b:	83 c4 08             	add    $0x8,%esp
    134e:	5b                   	pop    %ebx
    134f:	c3                   	ret    
