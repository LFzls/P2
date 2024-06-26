
;.CPU  TM56F1522


.code  

	BCF     $a,$3    ; 0000, 118A
	GOTO    _L11     ; 0001, 2811
	NOP              ; 0002,   --
	NOP              ; 0003,   --
	MOVWF   $7e      ; 0004, 00FE
	SWAPF   $3,$0    ; 0005, 0E03
	MOVWF   $7a      ; 0006, 00FA
	MOVF    $4,$0    ; 0007, 0804
	MOVWF   $7b      ; 0008, 00FB
	MOVF    $a,$0    ; 0009, 080A
	MOVWF   $7c      ; 000A, 00FC
	BCF     $3,$5    ; 000B, 1283
	BCF     $3,$6    ; 000C, 1303
	MOVF    $7f,$0   ; 000D, 087F
	MOVWF   $7d      ; 000E, 00FD
	BSF     $a,$3    ; 000F, 158A
	GOTO    _LE53    ; 0010, 2E53

.org 0x11 
_L11:
	BSF     $a,$3    ; 0011, 158A
	GOTO    _LAB8    ; 0012, 2AB8

.org 0x13 
_L13:
	BTFSS   $2e,$0   ; 0013, 1C2E
	GOTO    _L87     ; 0014, 2887
	BCF     $2e,$0   ; 0015, 102E
	BTFSS   $2d,$7   ; 0016, 1FAD
	BTFSC   $2e,$7   ; 0017, 1BAE
	RET              ; 0018, 0008
	MOVF    $44,$0   ; 0019, 0844
	BTFSS   $3,$2    ; 001A, 1D03
	BTFSC   $2e,$3   ; 001B, 19AE
	GOTO    _L1E     ; 001C, 281E
	GOTO    _L22     ; 001D, 2822

.org 0x1E 
_L1E:
	MOVLW   $b       ; 001E, 300B
	CALL    _L2FB    ; 001F, 22FB
	CLRF    $44      ; 0020, 01C4
	RET              ; 0021, 0008

.org 0x22 
_L22:
	BTFSS   $5,$3    ; 0022, 1D85
	GOTO    _L26     ; 0023, 2826
	MOVLW   $a       ; 0024, 300A
	GOTO    _L2FB    ; 0025, 2AFB

.org 0x26 
_L26:
	MOVLW   $5a      ; 0026, 305A
	BSF     $3,$6    ; 0027, 1703
	MOVWF   $64      ; 0028, 00E4
	MOVLW   $a5      ; 0029, 30A5
	MOVWF   $65      ; 002A, 00E5
	BCF     $3,$6    ; 002B, 1303
	BCF     $e,$0    ; 002C, 100E
	BSF     $d,$0    ; 002D, 140D
	BSF     $3,$5    ; 002E, 1683
	MOVF    $7,$0    ; 002F, 0807
	ANDLW   $f       ; 0030, 390F
	IORLW   $30      ; 0031, 3830
	MOVWF   $7       ; 0032, 0087
	MOVF    $6,$0    ; 0033, 0806
	ANDLW   $f       ; 0034, 390F
	IORLW   $30      ; 0035, 3830
	MOVWF   $6       ; 0036, 0086
	CLRF    $20      ; 0037, 01A0
	BCF     $3,$5    ; 0038, 1283
	BSF     $3,$6    ; 0039, 1703
	CLRF    $5a      ; 003A, 01DA
	CLRF    $5b      ; 003B, 01DB
	BCF     $3,$6    ; 003C, 1303
	MOVF    $3b,$0   ; 003D, 083B
	MOVWF   $3f      ; 003E, 00BF
	MOVF    $3a,$0   ; 003F, 083A
	MOVWF   $3e      ; 0040, 00BE
	BTFSS   $2d,$1   ; 0041, 1CAD
	GOTO    _L48     ; 0042, 2848
	MOVF    $3b,$0   ; 0043, 083B
	MOVWF   $4a      ; 0044, 00CA
	MOVF    $3a,$0   ; 0045, 083A
	MOVWF   $49      ; 0046, 00C9
	BCF     $2d,$1   ; 0047, 10AD

.org 0x48 
_L48:
	MOVF    $39,$0   ; 0048, 0839
	XORLW   $80      ; 0049, 3A80
	BTFSS   $3,$2    ; 004A, 1D03
	GOTO    _L56     ; 004B, 2856
	MOVLW   $80      ; 004C, 3080
	MOVWF   $27      ; 004D, 00A7
	MOVLW   $c       ; 004E, 300C

.org 0x4F 
_L4F:
	MOVWF   $28      ; 004F, 00A8
	MOVLW   $c8      ; 0050, 30C8
	BCF     $5,$4    ; 0051, 1205
	BCF     $5,$2    ; 0052, 1105
	MOVWF   $22      ; 0053, 00A2
	MOVWF   $21      ; 0054, 00A1
	GOTO    _L75     ; 0055, 2875

.org 0x56 
_L56:
	MOVF    $39,$0   ; 0056, 0839
	XORLW   $40      ; 0057, 3A40
	BTFSS   $3,$2    ; 0058, 1D03
	GOTO    _L5E     ; 0059, 285E
	MOVLW   $8c      ; 005A, 308C
	MOVWF   $27      ; 005B, 00A7
	MOVLW   $a       ; 005C, 300A
	GOTO    _L4F     ; 005D, 284F

.org 0x5E 
_L5E:
	DECFSZ  $39,$0   ; 005E, 0B39
	GOTO    _L6C     ; 005F, 286C
	MOVLW   $80      ; 0060, 3080
	MOVWF   $27      ; 0061, 00A7
	MOVLW   $c       ; 0062, 300C
	MOVWF   $28      ; 0063, 00A8
	MOVLW   $c8      ; 0064, 30C8
	BSF     $5,$2    ; 0065, 1505
	BCF     $5,$4    ; 0066, 1205
	MOVWF   $22      ; 0067, 00A2
	MOVWF   $21      ; 0068, 00A1
	CLRF    $24      ; 0069, 01A4
	CLRF    $23      ; 006A, 01A3
	GOTO    _L77     ; 006B, 2877

.org 0x6C 
_L6C:
	MOVLW   $80      ; 006C, 3080
	MOVWF   $27      ; 006D, 00A7
	MOVLW   $c       ; 006E, 300C
	MOVWF   $28      ; 006F, 00A8
	MOVLW   $c8      ; 0070, 30C8
	BCF     $5,$2    ; 0071, 1105
	BSF     $5,$4    ; 0072, 1605
	CLRF    $22      ; 0073, 01A2
	CLRF    $21      ; 0074, 01A1

.org 0x75 
_L75:
	MOVWF   $24      ; 0075, 00A4
	MOVWF   $23      ; 0076, 00A3

.org 0x77 
_L77:
	MOVLW   $32      ; 0077, 3032
	CLRF    $20      ; 0078, 01A0
	CLRF    $35      ; 0079, 01B5
	CLRF    $3c      ; 007A, 01BC
	CLRF    $3d      ; 007B, 01BD
	BCF     $2e,$5   ; 007C, 12AE
	BCF     $2e,$1   ; 007D, 10AE
	BCF     $b,$4    ; 007E, 120B
	BSF     $3,$6    ; 007F, 1703
	CLRF    $5e      ; 0080, 01DE
	CLRF    $5f      ; 0081, 01DF
	MOVWF   $59      ; 0082, 00D9
	BSF     $b,$4    ; 0083, 160B
	BCF     $3,$6    ; 0084, 1303
	BSF     $2e,$7   ; 0085, 17AE
	RET              ; 0086, 0008

.org 0x87 
_L87:
	BTFSS   $2e,$7   ; 0087, 1FAE
	RET              ; 0088, 0008
	BTFSS   $2e,$6   ; 0089, 1F2E
	GOTO    _L8F     ; 008A, 288F
	CALL    _L221    ; 008B, 2221
	BCF     $a,$3    ; 008C, 118A
	MOVLW   $a       ; 008D, 300A
	GOTO    _L2FB    ; 008E, 2AFB

.org 0x8F 
_L8F:
	MOVLW   $a       ; 008F, 300A
	SUBWF   $35,$0   ; 0090, 0235
	BTFSS   $3,$0    ; 0091, 1C03
	GOTO    _L96     ; 0092, 2896
	CALL    _L221    ; 0093, 2221
	BCF     $a,$3    ; 0094, 118A
	GOTO    _L1E     ; 0095, 281E

.org 0x96 
_L96:
	MOVLW   $3       ; 0096, 3003
	BSF     $3,$6    ; 0097, 1703
	SUBWF   $5f,$0   ; 0098, 025F
	MOVLW   $e8      ; 0099, 30E8
	BTFSC   $3,$2    ; 009A, 1903
	SUBWF   $5e,$0   ; 009B, 025E
	BTFSS   $3,$0    ; 009C, 1C03
	GOTO    _LA6     ; 009D, 28A6
	BSF     $3,$5    ; 009E, 1683
	BCF     $3,$6    ; 009F, 1303
	BTFSC   $24,$7   ; 00A0, 1BA4
	GOTO    _LA6     ; 00A1, 28A6
	CALL    _L221    ; 00A2, 2221
	BCF     $a,$3    ; 00A3, 118A
	MOVLW   $9       ; 00A4, 3009
	GOTO    _L2FB    ; 00A5, 2AFB

.org 0xA6 
_LA6:
	BCF     $3,$5    ; 00A6, 1283
	BCF     $3,$6    ; 00A7, 1303
	BTFSC   $5,$4    ; 00A8, 1A05
	GOTO    _LB9     ; 00A9, 28B9
	MOVF    $20,$0   ; 00AA, 0820
	BTFSC   $3,$2    ; 00AB, 1903
	GOTO    _LB9     ; 00AC, 28B9
	MOVLW   $3       ; 00AD, 3003
	CLRF    $4b      ; 00AE, 01CB
	CALL    _L1B7    ; 00AF, 21B7
	BCF     $a,$3    ; 00B0, 118A
	MOVF    $4c,$0   ; 00B1, 084C
	MOVWF   $41      ; 00B2, 00C1
	MOVF    $4b,$0   ; 00B3, 084B
	MOVWF   $40      ; 00B4, 00C0
	BTFSC   $5,$4    ; 00B5, 1A05
	GOTO    _LB9     ; 00B6, 28B9
	BSF     $2e,$1   ; 00B7, 14AE
	GOTO    _LBA     ; 00B8, 28BA

.org 0xB9 
_LB9:
	BCF     $2e,$1   ; 00B9, 10AE

.org 0xBA 
_LBA:
	BTFSC   $5,$2    ; 00BA, 1905
	GOTO    _LCB     ; 00BB, 28CB
	MOVF    $20,$0   ; 00BC, 0820
	BTFSC   $3,$2    ; 00BD, 1903
	GOTO    _LCB     ; 00BE, 28CB
	MOVLW   $5       ; 00BF, 3005
	CLRF    $4b      ; 00C0, 01CB
	CALL    _L1B7    ; 00C1, 21B7
	BCF     $a,$3    ; 00C2, 118A
	MOVF    $4c,$0   ; 00C3, 084C
	MOVWF   $43      ; 00C4, 00C3
	MOVF    $4b,$0   ; 00C5, 084B
	MOVWF   $42      ; 00C6, 00C2
	BTFSC   $5,$2    ; 00C7, 1905
	GOTO    _LCB     ; 00C8, 28CB
	BSF     $2e,$2   ; 00C9, 152E
	GOTO    _LCC     ; 00CA, 28CC

.org 0xCB 
_LCB:
	BCF     $2e,$2   ; 00CB, 112E

.org 0xCC 
_LCC:
	BTFSS   $2e,$1   ; 00CC, 1CAE
	GOTO    _LD5     ; 00CD, 28D5
	MOVLW   $8       ; 00CE, 3008
	SUBWF   $41,$0   ; 00CF, 0241
	MOVLW   $2       ; 00D0, 3002
	BTFSC   $3,$2    ; 00D1, 1903
	SUBWF   $40,$0   ; 00D2, 0240
	BTFSS   $3,$0    ; 00D3, 1C03
	GOTO    _LDE     ; 00D4, 28DE

.org 0xD5 
_LD5:
	BTFSS   $2e,$2   ; 00D5, 1D2E
	GOTO    _LE7     ; 00D6, 28E7
	MOVLW   $8       ; 00D7, 3008
	SUBWF   $43,$0   ; 00D8, 0243
	MOVLW   $2       ; 00D9, 3002
	BTFSC   $3,$2    ; 00DA, 1903
	SUBWF   $42,$0   ; 00DB, 0242
	BTFSC   $3,$0    ; 00DC, 1803
	GOTO    _LE7     ; 00DD, 28E7

.org 0xDE 
_LDE:
	INCF    $2c,$1   ; 00DE, 0AAC
	MOVLW   $a       ; 00DF, 300A
	SUBWF   $2c,$0   ; 00E0, 022C
	BTFSS   $3,$0    ; 00E1, 1C03
	RET              ; 00E2, 0008
	BSF     $2e,$6   ; 00E3, 172E
	BSF     $5,$4    ; 00E4, 1605
	BSF     $5,$2    ; 00E5, 1505
	RET              ; 00E6, 0008

.org 0xE7 
_LE7:
	CLRF    $2c      ; 00E7, 01AC
	BTFSS   $2e,$5   ; 00E8, 1EAE
	GOTO    _L170    ; 00E9, 2970
	BTFSS   $2e,$4   ; 00EA, 1E2E
	RET              ; 00EB, 0008
	MOVLW   $e       ; 00EC, 300E
	CLRF    $4b      ; 00ED, 01CB
	CALL    _L1B7    ; 00EE, 21B7
	MOVF    $4c,$0   ; 00EF, 084C
	MOVWF   $3d      ; 00F0, 00BD
	MOVF    $4b,$0   ; 00F1, 084B
	MOVWF   $3c      ; 00F2, 00BC
	MOVWF   $4b      ; 00F3, 00CB
	MOVF    $3d,$0   ; 00F4, 083D
	MOVWF   $4c      ; 00F5, 00CC
	MOVLW   $4c      ; 00F6, 304C
	CLRF    $4d      ; 00F7, 01CD
	CLRF    $4e      ; 00F8, 01CE
	CLRF    $52      ; 00F9, 01D2
	MOVWF   $51      ; 00FA, 00D1
	MOVLW   $40      ; 00FB, 3040
	MOVWF   $50      ; 00FC, 00D0
	CLRF    $4f      ; 00FD, 01CF
	BSF     $a,$3    ; 00FE, 158A
	CALL    _LB63    ; 00FF, 2363
	BCF     $a,$3    ; 0100, 118A
	MOVF    $4c,$0   ; 0101, 084C
	MOVWF   $3d      ; 0102, 00BD
	MOVF    $4b,$0   ; 0103, 084B
	MOVWF   $3c      ; 0104, 00BC
	ADDLW   $f       ; 0105, 3E0F
	MOVWF   $3c      ; 0106, 00BC
	MOVF    $3d,$0   ; 0107, 083D
	BTFSC   $3,$0    ; 0108, 1803
	ADDLW   $1       ; 0109, 3E01
	ADDLW   $0       ; 010A, 3E00
	MOVWF   $3d      ; 010B, 00BD
	BCF     $2e,$4   ; 010C, 122E
	BTFSS   $2e,$1   ; 010D, 1CAE
	GOTO    _L13D    ; 010E, 293D
	MOVF    $3c,$0   ; 010F, 083C
	CALL    _L3B8    ; 0110, 23B8
	BCF     $a,$3    ; 0111, 118A
	MOVF    $40,$0   ; 0112, 0840
	MOVWF   $4f      ; 0113, 00CF
	MOVF    $41,$0   ; 0114, 0841
	MOVWF   $50      ; 0115, 00D0
	CLRF    $51      ; 0116, 01D1
	CLRF    $52      ; 0117, 01D2
	CALL    _L184    ; 0118, 2184
	BCF     $a,$3    ; 0119, 118A
	CALL    _L368    ; 011A, 2368
	BCF     $a,$3    ; 011B, 118A
	CALL    _L184    ; 011C, 2184
	BCF     $a,$3    ; 011D, 118A
	CALL    _L389    ; 011E, 2389
	BCF     $a,$3    ; 011F, 118A
	CALL    _L184    ; 0120, 2184
	BCF     $a,$3    ; 0121, 118A
	CALL    _L3BE    ; 0122, 23BE
	BCF     $a,$3    ; 0123, 118A
	CALL    _L184    ; 0124, 2184
	BCF     $a,$3    ; 0125, 118A
	CALL    _L39E    ; 0126, 239E
	BCF     $a,$3    ; 0127, 118A
	CALL    _L307    ; 0128, 2307
	BCF     $a,$3    ; 0129, 118A
	CALL    _L3B1    ; 012A, 23B1
	BCF     $a,$3    ; 012B, 118A
	BTFSC   $3,$2    ; 012C, 1903
	SUBWF   $6c,$0   ; 012D, 026C
	BTFSS   $3,$0    ; 012E, 1C03
	GOTO    _L132    ; 012F, 2932
	MOVLW   $c8      ; 0130, 30C8
	GOTO    _L13C    ; 0131, 293C

.org 0x132 
_L132:
	MOVLW   $0       ; 0132, 3000
	SUBWF   $6d,$0   ; 0133, 026D
	MOVLW   $1e      ; 0134, 301E
	BTFSC   $3,$2    ; 0135, 1903
	SUBWF   $6c,$0   ; 0136, 026C
	BTFSC   $3,$0    ; 0137, 1803
	GOTO    _L13B    ; 0138, 293B
	MOVLW   $1e      ; 0139, 301E
	GOTO    _L13C    ; 013A, 293C

.org 0x13B 
_L13B:
	MOVF    $6c,$0   ; 013B, 086C

.org 0x13C 
_L13C:
	MOVWF   $22      ; 013C, 00A2

.org 0x13D 
_L13D:
	BTFSS   $2e,$2   ; 013D, 1D2E
	RET              ; 013E, 0008
	MOVF    $3c,$0   ; 013F, 083C
	CALL    _L3B8    ; 0140, 23B8
	BCF     $a,$3    ; 0141, 118A
	MOVF    $42,$0   ; 0142, 0842
	MOVWF   $4f      ; 0143, 00CF
	MOVF    $43,$0   ; 0144, 0843
	MOVWF   $50      ; 0145, 00D0
	CLRF    $51      ; 0146, 01D1
	CLRF    $52      ; 0147, 01D2
	CALL    _L184    ; 0148, 2184
	BCF     $a,$3    ; 0149, 118A
	CALL    _L368    ; 014A, 2368
	BCF     $a,$3    ; 014B, 118A
	CALL    _L184    ; 014C, 2184
	BCF     $a,$3    ; 014D, 118A
	CALL    _L389    ; 014E, 2389
	BCF     $a,$3    ; 014F, 118A
	CALL    _L184    ; 0150, 2184
	BCF     $a,$3    ; 0151, 118A
	CALL    _L3BE    ; 0152, 23BE
	BCF     $a,$3    ; 0153, 118A
	CALL    _L184    ; 0154, 2184
	BCF     $a,$3    ; 0155, 118A
	CALL    _L39E    ; 0156, 239E
	BCF     $a,$3    ; 0157, 118A
	CALL    _L307    ; 0158, 2307
	BCF     $a,$3    ; 0159, 118A
	CALL    _L3B1    ; 015A, 23B1
	BCF     $a,$3    ; 015B, 118A
	BTFSC   $3,$2    ; 015C, 1903
	SUBWF   $6c,$0   ; 015D, 026C
	BTFSS   $3,$0    ; 015E, 1C03
	GOTO    _L163    ; 015F, 2963
	MOVLW   $c8      ; 0160, 30C8
	MOVWF   $24      ; 0161, 00A4
	RET              ; 0162, 0008

.org 0x163 
_L163:
	MOVLW   $0       ; 0163, 3000
	SUBWF   $6d,$0   ; 0164, 026D
	MOVLW   $1e      ; 0165, 301E
	BTFSC   $3,$2    ; 0166, 1903
	SUBWF   $6c,$0   ; 0167, 026C
	BTFSC   $3,$0    ; 0168, 1803
	GOTO    _L16D    ; 0169, 296D
	MOVLW   $1e      ; 016A, 301E
	MOVWF   $24      ; 016B, 00A4
	RET              ; 016C, 0008

.org 0x16D 
_L16D:
	MOVF    $6c,$0   ; 016D, 086C
	MOVWF   $24      ; 016E, 00A4
	RET              ; 016F, 0008

.org 0x170 
_L170:
	BTFSS   $2e,$1   ; 0170, 1CAE
	GOTO    _L175    ; 0171, 2975
	MOVF    $39,$0   ; 0172, 0839
	BTFSC   $3,$2    ; 0173, 1903
	GOTO    _L181    ; 0174, 2981

.org 0x175 
_L175:
	BTFSS   $2e,$2   ; 0175, 1D2E
	GOTO    _L17A    ; 0176, 297A
	DECF    $39,$0   ; 0177, 0339
	BTFSC   $3,$2    ; 0178, 1903
	GOTO    _L181    ; 0179, 2981

.org 0x17A 
_L17A:
	BTFSC   $2e,$1   ; 017A, 18AE
	BTFSS   $2e,$2   ; 017B, 1D2E
	RET              ; 017C, 0008
	MOVF    $39,$0   ; 017D, 0839
	XORLW   $80      ; 017E, 3A80
	BTFSS   $3,$2    ; 017F, 1D03
	RET              ; 0180, 0008

.org 0x181 
_L181:
	MOVLW   $8       ; 0181, 3008
	BSF     $2e,$5   ; 0182, 16AE
	GOTO    _L2FB    ; 0183, 2AFB

.org 0x184 
_L184:
	CLRF    $53      ; 0184, 01D3
	CLRF    $54      ; 0185, 01D4
	CLRF    $55      ; 0186, 01D5
	CLRF    $56      ; 0187, 01D6

.org 0x188 
_L188:
	BTFSS   $4b,$0   ; 0188, 1C4B
	GOTO    _L19E    ; 0189, 299E
	MOVF    $4f,$0   ; 018A, 084F
	ADDWF   $53,$1   ; 018B, 07D3
	MOVF    $50,$0   ; 018C, 0850
	BCF     $3,$2    ; 018D, 1103
	BTFSC   $3,$0    ; 018E, 1803
	ADDLW   $1       ; 018F, 3E01
	BTFSS   $3,$2    ; 0190, 1D03
	ADDWF   $54,$1   ; 0191, 07D4
	MOVF    $51,$0   ; 0192, 0851
	BCF     $3,$2    ; 0193, 1103
	BTFSC   $3,$0    ; 0194, 1803
	ADDLW   $1       ; 0195, 3E01
	BTFSS   $3,$2    ; 0196, 1D03
	ADDWF   $55,$1   ; 0197, 07D5
	MOVF    $52,$0   ; 0198, 0852
	BCF     $3,$2    ; 0199, 1103
	BTFSC   $3,$0    ; 019A, 1803
	ADDLW   $1       ; 019B, 3E01
	BTFSS   $3,$2    ; 019C, 1D03
	ADDWF   $56,$1   ; 019D, 07D6

.org 0x19E 
_L19E:
	BCF     $3,$0    ; 019E, 1003
	RLF     $4f,$1   ; 019F, 0DCF
	RLF     $50,$1   ; 01A0, 0DD0
	RLF     $51,$1   ; 01A1, 0DD1
	RLF     $52,$1   ; 01A2, 0DD2
	BCF     $3,$0    ; 01A3, 1003
	RRF     $4e,$1   ; 01A4, 0CCE
	RRF     $4d,$1   ; 01A5, 0CCD
	RRF     $4c,$1   ; 01A6, 0CCC
	RRF     $4b,$1   ; 01A7, 0CCB
	MOVF    $4e,$0   ; 01A8, 084E
	IORWF   $4d,$0   ; 01A9, 044D
	IORWF   $4c,$0   ; 01AA, 044C
	IORWF   $4b,$0   ; 01AB, 044B
	BTFSS   $3,$2    ; 01AC, 1D03
	GOTO    _L188    ; 01AD, 2988
	MOVF    $56,$0   ; 01AE, 0856
	MOVWF   $4e      ; 01AF, 00CE
	MOVF    $55,$0   ; 01B0, 0855
	MOVWF   $4d      ; 01B1, 00CD
	MOVF    $54,$0   ; 01B2, 0854
	MOVWF   $4c      ; 01B3, 00CC
	MOVF    $53,$0   ; 01B4, 0853
	MOVWF   $4b      ; 01B5, 00CB
	RET              ; 01B6, 0008

.org 0x1B7 
_L1B7:
	MOVWF   $4f      ; 01B7, 00CF
	MOVLW   $10      ; 01B8, 3010
	CLRF    $53      ; 01B9, 01D3
	MOVWF   $54      ; 01BA, 00D4
	MOVLW   $e0      ; 01BB, 30E0
	CLRF    $55      ; 01BC, 01D5
	CLRF    $56      ; 01BD, 01D6
	CLRF    $50      ; 01BE, 01D0
	CLRF    $51      ; 01BF, 01D1
	CLRF    $52      ; 01C0, 01D2
	ANDWF   $19,$1   ; 01C1, 0599
	MOVF    $4f,$0   ; 01C2, 084F
	IORWF   $19,$1   ; 01C3, 0499

.org 0x1C4 
_L1C4:
	BSF     $18,$3   ; 01C4, 1598

.org 0x1C5 
_L1C5:
	BTFSC   $18,$3   ; 01C5, 1998
	GOTO    _L1C5    ; 01C6, 29C5
	MOVF    $17,$0   ; 01C7, 0817
	MOVWF   $57      ; 01C8, 00D7
	MOVLW   $f0      ; 01C9, 30F0
	CLRF    $58      ; 01CA, 01D8
	SWAPF   $57,$1   ; 01CB, 0ED7
	SWAPF   $58,$1   ; 01CC, 0ED8
	ANDWF   $58,$1   ; 01CD, 05D8
	MOVF    $57,$0   ; 01CE, 0857
	ANDLW   $f       ; 01CF, 390F
	IORWF   $58,$1   ; 01D0, 04D8
	MOVLW   $f0      ; 01D1, 30F0
	ANDWF   $57,$1   ; 01D2, 05D7
	SWAPF   $18,$0   ; 01D3, 0E18
	ANDLW   $f       ; 01D4, 390F
	IORWF   $57,$1   ; 01D5, 04D7
	MOVF    $54,$0   ; 01D6, 0854
	SUBWF   $58,$0   ; 01D7, 0258
	BTFSS   $3,$2    ; 01D8, 1D03
	GOTO    _L1DC    ; 01D9, 29DC
	MOVF    $53,$0   ; 01DA, 0853
	SUBWF   $57,$0   ; 01DB, 0257

.org 0x1DC 
_L1DC:
	BTFSC   $3,$0    ; 01DC, 1803
	GOTO    _L1E2    ; 01DD, 29E2
	MOVF    $58,$0   ; 01DE, 0858
	MOVWF   $54      ; 01DF, 00D4
	MOVF    $57,$0   ; 01E0, 0857
	MOVWF   $53      ; 01E1, 00D3

.org 0x1E2 
_L1E2:
	MOVF    $56,$0   ; 01E2, 0856
	SUBWF   $58,$0   ; 01E3, 0258
	BTFSS   $3,$2    ; 01E4, 1D03
	GOTO    _L1E8    ; 01E5, 29E8
	MOVF    $55,$0   ; 01E6, 0855
	SUBWF   $57,$0   ; 01E7, 0257

.org 0x1E8 
_L1E8:
	BTFSS   $3,$0    ; 01E8, 1C03
	GOTO    _L1EE    ; 01E9, 29EE
	MOVF    $58,$0   ; 01EA, 0858
	MOVWF   $56      ; 01EB, 00D6
	MOVF    $57,$0   ; 01EC, 0857
	MOVWF   $55      ; 01ED, 00D5

.org 0x1EE 
_L1EE:
	MOVF    $57,$0   ; 01EE, 0857
	ADDWF   $50,$1   ; 01EF, 07D0
	BTFSC   $3,$0    ; 01F0, 1803
	INCF    $51,$1   ; 01F1, 0AD1
	MOVF    $58,$0   ; 01F2, 0858
	ADDWF   $51,$1   ; 01F3, 07D1
	MOVF    $4b,$0   ; 01F4, 084B
	BTFSC   $3,$2    ; 01F5, 1903
	GOTO    _L1FC    ; 01F6, 29FC
	MOVLW   $6       ; 01F7, 3006
	INCF    $52,$1   ; 01F8, 0AD2
	SUBWF   $52,$0   ; 01F9, 0252
	BTFSS   $3,$0    ; 01FA, 1C03
	GOTO    _L1C4    ; 01FB, 29C4

.org 0x1FC 
_L1FC:
	MOVF    $4b,$0   ; 01FC, 084B
	BTFSC   $3,$2    ; 01FD, 1903
	GOTO    _L21C    ; 01FE, 2A1C
	MOVF    $55,$0   ; 01FF, 0855
	ADDWF   $53,$0   ; 0200, 0753
	MOVWF   $4d      ; 0201, 00CD
	MOVF    $56,$0   ; 0202, 0856
	BTFSC   $3,$0    ; 0203, 1803
	INCF    $56,$0   ; 0204, 0A56
	ADDWF   $54,$0   ; 0205, 0754
	MOVWF   $4e      ; 0206, 00CE
	COMF    $4d,$1   ; 0207, 09CD
	COMF    $4e,$1   ; 0208, 09CE
	INCF    $4d,$1   ; 0209, 0ACD
	BTFSC   $3,$2    ; 020A, 1903
	INCF    $4e,$1   ; 020B, 0ACE
	MOVF    $4d,$0   ; 020C, 084D
	MOVWF   $57      ; 020D, 00D7
	MOVF    $4e,$0   ; 020E, 084E
	MOVWF   $58      ; 020F, 00D8
	MOVF    $50,$0   ; 0210, 0850
	ADDWF   $57,$1   ; 0211, 07D7
	BTFSC   $3,$0    ; 0212, 1803
	INCF    $58,$1   ; 0213, 0AD8
	MOVF    $51,$0   ; 0214, 0851
	ADDWF   $58,$1   ; 0215, 07D8
	BCF     $3,$0    ; 0216, 1003
	RRF     $58,$1   ; 0217, 0CD8
	RRF     $57,$1   ; 0218, 0CD7
	BCF     $3,$0    ; 0219, 1003
	RRF     $58,$1   ; 021A, 0CD8
	RRF     $57,$1   ; 021B, 0CD7

.org 0x21C 
_L21C:
	MOVF    $58,$0   ; 021C, 0858
	MOVWF   $4c      ; 021D, 00CC
	MOVF    $57,$0   ; 021E, 0857
	MOVWF   $4b      ; 021F, 00CB
	RET              ; 0220, 0008

.org 0x221 
_L221:
	BCF     $3,$5    ; 0221, 1283
	BTFSS   $2e,$7   ; 0222, 1FAE
	RET              ; 0223, 0008
	BCF     $2e,$7   ; 0224, 13AE
	BCF     $d,$0    ; 0225, 100D
	BCF     $2e,$6   ; 0226, 132E
	BSF     $5,$4    ; 0227, 1605
	BSF     $3,$6    ; 0228, 1703
	CLRF    $64      ; 0229, 01E4
	CLRF    $65      ; 022A, 01E5
	MOVLW   $4f      ; 022B, 304F
	BSF     $3,$5    ; 022C, 1683
	BCF     $3,$6    ; 022D, 1303
	ANDWF   $24,$1   ; 022E, 05A4
	MOVF    $6,$0    ; 022F, 0806
	ANDLW   $f       ; 0230, 390F
	IORLW   $90      ; 0231, 3890
	MOVWF   $6       ; 0232, 0086
	BCF     $3,$5    ; 0233, 1283
	BSF     $5,$3    ; 0234, 1585
	BSF     $3,$5    ; 0235, 1683
	MOVF    $7,$0    ; 0236, 0807
	ANDLW   $f       ; 0237, 390F
	IORLW   $90      ; 0238, 3890
	MOVWF   $7       ; 0239, 0087
	BCF     $3,$5    ; 023A, 1283
	BSF     $5,$5    ; 023B, 1685
	MOVF    $39,$0   ; 023C, 0839
	ANDLW   $c0      ; 023D, 39C0
	BTFSS   $3,$2    ; 023E, 1D03
	GOTO    _L249    ; 023F, 2A49
	MOVLW   $6       ; 0240, 3006
	INCF    $37,$1   ; 0241, 0AB7
	SUBWF   $37,$0   ; 0242, 0237
	BTFSS   $3,$0    ; 0243, 1C03
	GOTO    _L283    ; 0244, 2A83
	MOVLW   $1       ; 0245, 3001
	CLRF    $37      ; 0246, 01B7
	XORWF   $39,$1   ; 0247, 06B9
	GOTO    _L283    ; 0248, 2A83

.org 0x249 
_L249:
	CLRF    $37      ; 0249, 01B7
	GOTO    _L283    ; 024A, 2A83

.org 0x24B 
_L24B:
	MOVLW   $a       ; 024B, 300A
	MOVWF   $51      ; 024C, 00D1
	MOVLW   $5       ; 024D, 3005
	CLRF    $52      ; 024E, 01D2
	ADDLW   $59      ; 024F, 3E59
	MOVWF   $4       ; 0250, 0084
	BSF     $3,$7    ; 0251, 1783
	MOVF    $0,$0    ; 0252, 0800
	MOVWF   $64      ; 0253, 00E4
	INCF    $4,$1    ; 0254, 0A84
	MOVF    $0,$0    ; 0255, 0800
	MOVWF   $65      ; 0256, 00E5
	MOVLW   $f0      ; 0257, 30F0
	SWAPF   $64,$1   ; 0258, 0EE4
	SWAPF   $65,$1   ; 0259, 0EE5
	ANDWF   $65,$1   ; 025A, 05E5
	MOVF    $64,$0   ; 025B, 0864
	ANDLW   $f       ; 025C, 390F
	IORWF   $65,$1   ; 025D, 04E5
	MOVLW   $f0      ; 025E, 30F0
	ANDWF   $64,$1   ; 025F, 05E4
	MOVF    $64,$0   ; 0260, 0864
	MOVWF   $53      ; 0261, 00D3
	MOVF    $65,$0   ; 0262, 0865
	MOVWF   $54      ; 0263, 00D4
	GOTO    _L279    ; 0264, 2A79

.org 0x265 
_L265:
	MOVLW   $a       ; 0265, 300A
	MOVWF   $51      ; 0266, 00D1
	CLRF    $52      ; 0267, 01D2
	BSF     $3,$6    ; 0268, 1703
	MOVF    $5f,$0   ; 0269, 085F
	BCF     $3,$6    ; 026A, 1303
	MOVWF   $4c      ; 026B, 00CC
	BSF     $3,$6    ; 026C, 1703
	MOVF    $5e,$0   ; 026D, 085E
	BCF     $3,$6    ; 026E, 1303
	MOVWF   $4b      ; 026F, 00CB
	MOVLW   $f       ; 0270, 300F
	MOVWF   $4d      ; 0271, 00CD
	CLRF    $4e      ; 0272, 01CE
	CALL    _L34F    ; 0273, 234F
	BCF     $a,$3    ; 0274, 118A
	MOVF    $4c,$0   ; 0275, 084C
	MOVWF   $54      ; 0276, 00D4
	MOVF    $4b,$0   ; 0277, 084B
	MOVWF   $53      ; 0278, 00D3

.org 0x279 
_L279:
	CALL    _L3C4    ; 0279, 23C4
	BCF     $a,$3    ; 027A, 118A
	MOVF    $52,$0   ; 027B, 0852
	BSF     $3,$6    ; 027C, 1703
	MOVWF   $5f      ; 027D, 00DF
	BCF     $3,$6    ; 027E, 1303
	MOVF    $51,$0   ; 027F, 0851
	BSF     $3,$6    ; 0280, 1703
	MOVWF   $5e      ; 0281, 00DE
	GOTO    _L28E    ; 0282, 2A8E

.org 0x283 
_L283:
	MOVF    $39,$0   ; 0283, 0839
	XORLW   $0       ; 0284, 3A00
	BTFSC   $3,$2    ; 0285, 1903
	GOTO    _L28E    ; 0286, 2A8E
	XORLW   $40      ; 0287, 3A40
	BTFSC   $3,$2    ; 0288, 1903
	GOTO    _L24B    ; 0289, 2A4B
	XORLW   $c0      ; 028A, 3AC0
	BTFSC   $3,$2    ; 028B, 1903
	GOTO    _L265    ; 028C, 2A65
	GOTO    _L28E    ; 028D, 2A8E

.org 0x28E 
_L28E:
	BSF     $3,$6    ; 028E, 1703
	CALL    _L3A7    ; 028F, 23A7
	BCF     $a,$3    ; 0290, 118A
	BSF     $3,$6    ; 0291, 1703
	MOVF    $63,$0   ; 0292, 0863
	BCF     $3,$6    ; 0293, 1303
	SUBWF   $67,$0   ; 0294, 0267
	BTFSS   $3,$2    ; 0295, 1D03
	GOTO    _L2A7    ; 0296, 2AA7
	BSF     $3,$6    ; 0297, 1703
	MOVF    $62,$0   ; 0298, 0862
	BCF     $3,$6    ; 0299, 1303
	SUBWF   $66,$0   ; 029A, 0266
	BTFSS   $3,$2    ; 029B, 1D03
	GOTO    _L2A7    ; 029C, 2AA7
	BSF     $3,$6    ; 029D, 1703
	MOVF    $61,$0   ; 029E, 0861
	BCF     $3,$6    ; 029F, 1303
	SUBWF   $65,$0   ; 02A0, 0265
	BTFSS   $3,$2    ; 02A1, 1D03
	GOTO    _L2A7    ; 02A2, 2AA7
	BSF     $3,$6    ; 02A3, 1703
	MOVF    $60,$0   ; 02A4, 0860
	BCF     $3,$6    ; 02A5, 1303
	SUBWF   $64,$0   ; 02A6, 0264

.org 0x2A7 
_L2A7:
	BTFSC   $3,$0    ; 02A7, 1803
	GOTO    _L2CA    ; 02A8, 2ACA
	BSF     $3,$6    ; 02A9, 1703
	CALL    _L3A7    ; 02AA, 23A7
	BCF     $a,$3    ; 02AB, 118A
	MOVF    $64,$0   ; 02AC, 0864
	BSF     $3,$6    ; 02AD, 1703
	SUBWF   $60,$1   ; 02AE, 02E0
	BCF     $3,$6    ; 02AF, 1303
	MOVF    $65,$0   ; 02B0, 0865
	BTFSS   $3,$0    ; 02B1, 1C03
	INCFSZ  $65,$0   ; 02B2, 0F65
	GOTO    _L2B5    ; 02B3, 2AB5
	GOTO    _L2B7    ; 02B4, 2AB7

.org 0x2B5 
_L2B5:
	BSF     $3,$6    ; 02B5, 1703
	SUBWF   $61,$1   ; 02B6, 02E1

.org 0x2B7 
_L2B7:
	BCF     $3,$6    ; 02B7, 1303
	MOVF    $66,$0   ; 02B8, 0866
	BTFSS   $3,$0    ; 02B9, 1C03
	INCFSZ  $66,$0   ; 02BA, 0F66
	GOTO    _L2BD    ; 02BB, 2ABD
	GOTO    _L2BF    ; 02BC, 2ABF

.org 0x2BD 
_L2BD:
	BSF     $3,$6    ; 02BD, 1703
	SUBWF   $62,$1   ; 02BE, 02E2

.org 0x2BF 
_L2BF:
	BCF     $3,$6    ; 02BF, 1303
	MOVF    $67,$0   ; 02C0, 0867
	BTFSS   $3,$0    ; 02C1, 1C03
	INCFSZ  $67,$0   ; 02C2, 0F67
	GOTO    _L2C5    ; 02C3, 2AC5
	GOTO    _L2C7    ; 02C4, 2AC7

.org 0x2C5 
_L2C5:
	BSF     $3,$6    ; 02C5, 1703
	SUBWF   $63,$1   ; 02C6, 02E3

.org 0x2C7 
_L2C7:
	BCF     $3,$6    ; 02C7, 1303
	BSF     $3,$6    ; 02C8, 1703
	GOTO    _L2D4    ; 02C9, 2AD4

.org 0x2CA 
_L2CA:
	MOVLW   $60      ; 02CA, 3060
	MOVWF   $4       ; 02CB, 0084
	BSF     $3,$7    ; 02CC, 1783
	CLRF    $0       ; 02CD, 0180
	INCF    $4,$1    ; 02CE, 0A84
	CLRF    $0       ; 02CF, 0180
	INCF    $4,$1    ; 02D0, 0A84
	CLRF    $0       ; 02D1, 0180
	INCF    $4,$1    ; 02D2, 0A84
	CLRF    $0       ; 02D3, 0180

.org 0x2D4 
_L2D4:
	MOVLW   $3       ; 02D4, 3003
	BSF     $3,$6    ; 02D5, 1703
	CLRF    $5e      ; 02D6, 01DE
	CLRF    $5f      ; 02D7, 01DF
	BCF     $3,$6    ; 02D8, 1303
	CLRF    $5a      ; 02D9, 01DA
	MOVWF   $59      ; 02DA, 00D9
	MOVLW   $e4      ; 02DB, 30E4
	MOVWF   $58      ; 02DC, 00D8
	MOVLW   $18      ; 02DD, 3018
	MOVWF   $57      ; 02DE, 00D7
	MOVLW   $7       ; 02DF, 3007
	ADDLW   $59      ; 02E0, 3E59
	MOVWF   $4       ; 02E1, 0084
	BSF     $3,$7    ; 02E2, 1783
	MOVF    $0,$0    ; 02E3, 0800
	MOVWF   $4b      ; 02E4, 00CB
	INCF    $4,$1    ; 02E5, 0A84
	MOVF    $0,$0    ; 02E6, 0800
	MOVWF   $4c      ; 02E7, 00CC
	INCF    $4,$1    ; 02E8, 0A84
	MOVF    $0,$0    ; 02E9, 0800
	MOVWF   $4d      ; 02EA, 00CD
	INCF    $4,$1    ; 02EB, 0A84
	MOVF    $0,$0    ; 02EC, 0800
	MOVWF   $4e      ; 02ED, 00CE
	MOVLW   $64      ; 02EE, 3064
	MOVWF   $4f      ; 02EF, 00CF
	CLRF    $50      ; 02F0, 01D0
	CLRF    $51      ; 02F1, 01D1
	CLRF    $52      ; 02F2, 01D2
	CALL    _L184    ; 02F3, 2184
	BCF     $a,$3    ; 02F4, 118A
	CALL    _L39E    ; 02F5, 239E
	BCF     $a,$3    ; 02F6, 118A
	CALL    _L307    ; 02F7, 2307
	MOVF    $57,$0   ; 02F8, 0857
	MOVWF   $2f      ; 02F9, 00AF
	RET              ; 02FA, 0008

.org 0x2FB 
_L2FB:
	BCF     $3,$5    ; 02FB, 1283
	BCF     $3,$6    ; 02FC, 1303
	MOVWF   $4b      ; 02FD, 00CB
	XORWF   $2a,$0   ; 02FE, 062A
	BTFSC   $3,$2    ; 02FF, 1903
	RET              ; 0300, 0008
	MOVLW   $5       ; 0301, 3005
	CLRF    $30      ; 0302, 01B0
	MOVWF   $29      ; 0303, 00A9
	MOVF    $4b,$0   ; 0304, 084B
	MOVWF   $2a      ; 0305, 00AA
	RET              ; 0306, 0008

.org 0x307 
_L307:
	CLRF    $5f      ; 0307, 01DF
	CLRF    $60      ; 0308, 01E0
	CLRF    $61      ; 0309, 01E1
	CLRF    $62      ; 030A, 01E2
	MOVF    $5a,$0   ; 030B, 085A
	IORWF   $59,$0   ; 030C, 0459
	IORWF   $58,$0   ; 030D, 0458
	IORWF   $57,$0   ; 030E, 0457
	BTFSC   $3,$2    ; 030F, 1903
	GOTO    _L346    ; 0310, 2B46
	CLRF    $63      ; 0311, 01E3

.org 0x312 
_L312:
	INCF    $63,$1   ; 0312, 0AE3
	BTFSC   $5a,$7   ; 0313, 1BDA
	GOTO    _L31B    ; 0314, 2B1B
	BCF     $3,$0    ; 0315, 1003
	RLF     $57,$1   ; 0316, 0DD7
	RLF     $58,$1   ; 0317, 0DD8
	RLF     $59,$1   ; 0318, 0DD9
	RLF     $5a,$1   ; 0319, 0DDA
	GOTO    _L312    ; 031A, 2B12

.org 0x31B 
_L31B:
	BCF     $3,$0    ; 031B, 1003
	RLF     $5f,$1   ; 031C, 0DDF
	RLF     $60,$1   ; 031D, 0DE0
	RLF     $61,$1   ; 031E, 0DE1
	RLF     $62,$1   ; 031F, 0DE2
	MOVF    $5a,$0   ; 0320, 085A
	SUBWF   $5e,$0   ; 0321, 025E
	BTFSS   $3,$2    ; 0322, 1D03
	GOTO    _L32E    ; 0323, 2B2E
	MOVF    $59,$0   ; 0324, 0859
	SUBWF   $5d,$0   ; 0325, 025D
	BTFSS   $3,$2    ; 0326, 1D03
	GOTO    _L32E    ; 0327, 2B2E
	MOVF    $58,$0   ; 0328, 0858
	SUBWF   $5c,$0   ; 0329, 025C
	BTFSS   $3,$2    ; 032A, 1D03
	GOTO    _L32E    ; 032B, 2B2E
	MOVF    $57,$0   ; 032C, 0857
	SUBWF   $5b,$0   ; 032D, 025B

.org 0x32E 
_L32E:
	BTFSS   $3,$0    ; 032E, 1C03
	GOTO    _L340    ; 032F, 2B40
	MOVF    $57,$0   ; 0330, 0857
	SUBWF   $5b,$1   ; 0331, 02DB
	MOVF    $58,$0   ; 0332, 0858
	BTFSS   $3,$0    ; 0333, 1C03
	INCFSZ  $58,$0   ; 0334, 0F58
	SUBWF   $5c,$1   ; 0335, 02DC
	MOVF    $59,$0   ; 0336, 0859
	BTFSS   $3,$0    ; 0337, 1C03
	INCFSZ  $59,$0   ; 0338, 0F59
	SUBWF   $5d,$1   ; 0339, 02DD
	MOVF    $5a,$0   ; 033A, 085A
	BTFSS   $3,$0    ; 033B, 1C03
	INCFSZ  $5a,$0   ; 033C, 0F5A
	SUBWF   $5e,$1   ; 033D, 02DE
	BSF     $5f,$0   ; 033E, 145F
	BCF     $3,$0    ; 033F, 1003

.org 0x340 
_L340:
	RRF     $5a,$1   ; 0340, 0CDA
	RRF     $59,$1   ; 0341, 0CD9
	RRF     $58,$1   ; 0342, 0CD8
	RRF     $57,$1   ; 0343, 0CD7
	DECFSZ  $63,$1   ; 0344, 0BE3
	GOTO    _L31B    ; 0345, 2B1B

.org 0x346 
_L346:
	MOVF    $62,$0   ; 0346, 0862
	MOVWF   $5a      ; 0347, 00DA
	MOVF    $61,$0   ; 0348, 0861
	MOVWF   $59      ; 0349, 00D9
	MOVF    $60,$0   ; 034A, 0860
	MOVWF   $58      ; 034B, 00D8
	MOVF    $5f,$0   ; 034C, 085F
	MOVWF   $57      ; 034D, 00D7
	RET              ; 034E, 0008

.org 0x34F 
_L34F:
	CLRF    $4f      ; 034F, 01CF
	CLRF    $50      ; 0350, 01D0

.org 0x351 
_L351:
	BTFSS   $4b,$0   ; 0351, 1C4B
	GOTO    _L359    ; 0352, 2B59
	MOVF    $4d,$0   ; 0353, 084D
	ADDWF   $4f,$1   ; 0354, 07CF
	BTFSC   $3,$0    ; 0355, 1803
	INCF    $50,$1   ; 0356, 0AD0
	MOVF    $4e,$0   ; 0357, 084E
	ADDWF   $50,$1   ; 0358, 07D0

.org 0x359 
_L359:
	BCF     $3,$0    ; 0359, 1003
	RLF     $4d,$1   ; 035A, 0DCD
	RLF     $4e,$1   ; 035B, 0DCE
	BCF     $3,$0    ; 035C, 1003
	RRF     $4c,$1   ; 035D, 0CCC
	RRF     $4b,$1   ; 035E, 0CCB
	MOVF    $4c,$0   ; 035F, 084C
	IORWF   $4b,$0   ; 0360, 044B
	BTFSS   $3,$2    ; 0361, 1D03
	GOTO    _L351    ; 0362, 2B51
	MOVF    $50,$0   ; 0363, 0850
	MOVWF   $4c      ; 0364, 00CC
	MOVF    $4f,$0   ; 0365, 084F
	MOVWF   $4b      ; 0366, 00CB
	RET              ; 0367, 0008

.org 0x368 
_L368:
	MOVF    $4b,$0   ; 0368, 084B
	MOVWF   $68      ; 0369, 00E8
	MOVF    $4c,$0   ; 036A, 084C
	MOVWF   $69      ; 036B, 00E9
	MOVF    $4d,$0   ; 036C, 084D
	MOVWF   $6a      ; 036D, 00EA
	MOVF    $4e,$0   ; 036E, 084E
	MOVWF   $6b      ; 036F, 00EB
	MOVLW   $c       ; 0370, 300C

.org 0x371 
_L371:
	BCF     $3,$0    ; 0371, 1003
	RRF     $6b,$1   ; 0372, 0CEB
	RRF     $6a,$1   ; 0373, 0CEA
	RRF     $69,$1   ; 0374, 0CE9
	RRF     $68,$1   ; 0375, 0CE8
	ADDLW   $ff      ; 0376, 3EFF
	BTFSS   $3,$2    ; 0377, 1D03
	GOTO    _L371    ; 0378, 2B71
	MOVF    $69,$0   ; 0379, 0869
	MOVWF   $26      ; 037A, 00A6
	MOVF    $68,$0   ; 037B, 0868
	MOVWF   $25      ; 037C, 00A5
	MOVWF   $4b      ; 037D, 00CB
	MOVF    $26,$0   ; 037E, 0826
	MOVWF   $4c      ; 037F, 00CC
	CLRF    $4d      ; 0380, 01CD
	CLRF    $4e      ; 0381, 01CE
	MOVF    $25,$0   ; 0382, 0825
	MOVWF   $4f      ; 0383, 00CF
	MOVF    $26,$0   ; 0384, 0826
	MOVWF   $50      ; 0385, 00D0
	CLRF    $51      ; 0386, 01D1
	CLRF    $52      ; 0387, 01D2
	RET              ; 0388, 0008

.org 0x389 
_L389:
	MOVF    $4e,$0   ; 0389, 084E
	MOVWF   $5a      ; 038A, 00DA
	MOVF    $4d,$0   ; 038B, 084D
	MOVWF   $59      ; 038C, 00D9
	MOVF    $4c,$0   ; 038D, 084C
	MOVWF   $58      ; 038E, 00D8
	MOVF    $4b,$0   ; 038F, 084B
	MOVWF   $57      ; 0390, 00D7
	MOVF    $27,$0   ; 0391, 0827
	MOVWF   $4b      ; 0392, 00CB
	MOVF    $28,$0   ; 0393, 0828
	MOVWF   $4c      ; 0394, 00CC
	CLRF    $4d      ; 0395, 01CD
	CLRF    $4e      ; 0396, 01CE
	MOVF    $27,$0   ; 0397, 0827
	MOVWF   $4f      ; 0398, 00CF
	MOVF    $28,$0   ; 0399, 0828
	MOVWF   $50      ; 039A, 00D0
	CLRF    $51      ; 039B, 01D1
	CLRF    $52      ; 039C, 01D2
	RET              ; 039D, 0008

.org 0x39E 
_L39E:
	MOVF    $4e,$0   ; 039E, 084E
	MOVWF   $5e      ; 039F, 00DE
	MOVF    $4d,$0   ; 03A0, 084D
	MOVWF   $5d      ; 03A1, 00DD
	MOVF    $4c,$0   ; 03A2, 084C
	MOVWF   $5c      ; 03A3, 00DC
	MOVF    $4b,$0   ; 03A4, 084B
	MOVWF   $5b      ; 03A5, 00DB
	RET              ; 03A6, 0008

.org 0x3A7 
_L3A7:
	MOVF    $5e,$0   ; 03A7, 085E
	BCF     $3,$6    ; 03A8, 1303
	MOVWF   $64      ; 03A9, 00E4
	BSF     $3,$6    ; 03AA, 1703
	MOVF    $5f,$0   ; 03AB, 085F
	BCF     $3,$6    ; 03AC, 1303
	MOVWF   $65      ; 03AD, 00E5
	CLRF    $66      ; 03AE, 01E6
	CLRF    $67      ; 03AF, 01E7
	RET              ; 03B0, 0008

.org 0x3B1 
_L3B1:
	MOVF    $58,$0   ; 03B1, 0858
	MOVWF   $6d      ; 03B2, 00ED
	MOVF    $57,$0   ; 03B3, 0857
	MOVWF   $6c      ; 03B4, 00EC
	MOVLW   $0       ; 03B5, 3000
	SUBWF   $6d,$0   ; 03B6, 026D
	RETLW   $c8      ; 03B7, 34C8

.org 0x3B8 
_L3B8:
	MOVWF   $4b      ; 03B8, 00CB
	MOVF    $3d,$0   ; 03B9, 083D
	MOVWF   $4c      ; 03BA, 00CC
	CLRF    $4d      ; 03BB, 01CD
	CLRF    $4e      ; 03BC, 01CE
	RET              ; 03BD, 0008

.org 0x3BE 
_L3BE:
	MOVLW   $c8      ; 03BE, 30C8
	MOVWF   $4f      ; 03BF, 00CF
	CLRF    $50      ; 03C0, 01D0
	CLRF    $51      ; 03C1, 01D1
	CLRF    $52      ; 03C2, 01D2
	RET              ; 03C3, 0008

.org 0x3C4 
_L3C4:
	CLRF    $55      ; 03C4, 01D5
	CLRF    $56      ; 03C5, 01D6
	MOVF    $52,$0   ; 03C6, 0852
	IORWF   $51,$0   ; 03C7, 0451
	BTFSC   $3,$2    ; 03C8, 1903
	GOTO    _L3E9    ; 03C9, 2BE9
	CLRF    $57      ; 03CA, 01D7

.org 0x3CB 
_L3CB:
	INCF    $57,$1   ; 03CB, 0AD7
	BTFSC   $52,$7   ; 03CC, 1BD2
	GOTO    _L3D2    ; 03CD, 2BD2
	BCF     $3,$0    ; 03CE, 1003
	RLF     $51,$1   ; 03CF, 0DD1
	RLF     $52,$1   ; 03D0, 0DD2
	GOTO    _L3CB    ; 03D1, 2BCB

.org 0x3D2 
_L3D2:
	BCF     $3,$0    ; 03D2, 1003
	RLF     $55,$1   ; 03D3, 0DD5
	RLF     $56,$1   ; 03D4, 0DD6
	MOVF    $52,$0   ; 03D5, 0852
	SUBWF   $54,$0   ; 03D6, 0254
	BTFSS   $3,$2    ; 03D7, 1D03
	GOTO    _L3DB    ; 03D8, 2BDB
	MOVF    $51,$0   ; 03D9, 0851
	SUBWF   $53,$0   ; 03DA, 0253

.org 0x3DB 
_L3DB:
	BTFSS   $3,$0    ; 03DB, 1C03
	GOTO    _L3E5    ; 03DC, 2BE5
	MOVF    $51,$0   ; 03DD, 0851
	SUBWF   $53,$1   ; 03DE, 02D3
	MOVF    $52,$0   ; 03DF, 0852
	BTFSS   $3,$0    ; 03E0, 1C03
	DECF    $54,$1   ; 03E1, 03D4
	SUBWF   $54,$1   ; 03E2, 02D4
	BSF     $55,$0   ; 03E3, 1455
	BCF     $3,$0    ; 03E4, 1003

.org 0x3E5 
_L3E5:
	RRF     $52,$1   ; 03E5, 0CD2
	RRF     $51,$1   ; 03E6, 0CD1
	DECFSZ  $57,$1   ; 03E7, 0BD7
	GOTO    _L3D2    ; 03E8, 2BD2

.org 0x3E9 
_L3E9:
	MOVF    $56,$0   ; 03E9, 0856
	MOVWF   $52      ; 03EA, 00D2
	MOVF    $55,$0   ; 03EB, 0855
	MOVWF   $51      ; 03EC, 00D1
	RET              ; 03ED, 0008

.org 0x3EE 
_L3EE:
	MOVWF   $63      ; 03EE, 00E3
	DECFSZ  $63,$0   ; 03EF, 0B63
	GOTO    _L3F7    ; 03F0, 2BF7
	MOVLW   $3       ; 03F1, 3003
	MOVWF   $29      ; 03F2, 00A9
	CALL    _L652    ; 03F3, 2652
	BCF     $a,$3    ; 03F4, 118A
	CALL    _L3F8    ; 03F5, 23F8
	BCF     $a,$3    ; 03F6, 118A

.org 0x3F7 
_L3F7:
	GOTO    _L5BA    ; 03F7, 2DBA

.org 0x3F8 
_L3F8:
	MOVLW   $64      ; 03F8, 3064
	MOVWF   $44      ; 03F9, 00C4
	CALL    _L401    ; 03FA, 2401
	BCF     $a,$3    ; 03FB, 118A
	BCF     $3,$5    ; 03FC, 1283
	MOVF    $2f,$0   ; 03FD, 082F
	CALL    _L461    ; 03FE, 2461
	BCF     $a,$3    ; 03FF, 118A
	GOTO    _L5BA    ; 0400, 2DBA

.org 0x401 
_L401:
	MOVWF   $5e      ; 0401, 00DE
	MOVLW   $63      ; 0402, 3063
	CLRF    $5d      ; 0403, 01DD
	CLRF    $60      ; 0404, 01E0
	SUBWF   $5e,$0   ; 0405, 025E
	BTFSS   $3,$0    ; 0406, 1C03
	GOTO    _L41C    ; 0407, 2C1C
	MOVLW   $10      ; 0408, 3010
	BSF     $3,$5    ; 0409, 1683
	MOVWF   $2e      ; 040A, 00AE
	MOVWF   $36      ; 040B, 00B6
	MOVWF   $3e      ; 040C, 00BE
	MOVWF   $46      ; 040D, 00C6
	MOVWF   $4e      ; 040E, 00CE
	MOVWF   $5e      ; 040F, 00DE
	MOVLW   $9       ; 0410, 3009
	BCF     $3,$5    ; 0411, 1283
	MOVWF   $4e      ; 0412, 00CE
	MOVLW   $2       ; 0413, 3002
	CALL    _L4CF    ; 0414, 24CF
	BCF     $a,$3    ; 0415, 118A
	MOVLW   $9       ; 0416, 3009
	MOVWF   $4e      ; 0417, 00CE
	MOVLW   $3       ; 0418, 3003
	CALL    _L4CF    ; 0419, 24CF
	BCF     $a,$3    ; 041A, 118A
	GOTO    _L43A    ; 041B, 2C3A

.org 0x41C 
_L41C:
	MOVF    $5e,$0   ; 041C, 085E
	MOVWF   $5d      ; 041D, 00DD
	CLRF    $5f      ; 041E, 01DF

.org 0x41F 
_L41F:
	MOVLW   $a       ; 041F, 300A
	SUBWF   $5d,$0   ; 0420, 025D
	BTFSS   $3,$0    ; 0421, 1C03
	GOTO    _L42A    ; 0422, 2C2A
	MOVLW   $f6      ; 0423, 30F6
	ADDWF   $5d,$1   ; 0424, 07DD
	MOVLW   $a       ; 0425, 300A
	INCF    $5f,$1   ; 0426, 0ADF
	SUBWF   $5f,$0   ; 0427, 025F
	BTFSS   $3,$0    ; 0428, 1C03
	GOTO    _L41F    ; 0429, 2C1F

.org 0x42A 
_L42A:
	MOVF    $5f,$0   ; 042A, 085F
	MOVWF   $4e      ; 042B, 00CE
	MOVLW   $2       ; 042C, 3002
	CALL    _L4CF    ; 042D, 24CF
	BCF     $a,$3    ; 042E, 118A
	MOVF    $5d,$0   ; 042F, 085D
	MOVWF   $4e      ; 0430, 00CE
	MOVLW   $3       ; 0431, 3003
	CALL    _L4CF    ; 0432, 24CF
	BSF     $3,$5    ; 0433, 1683
	CLRF    $2e      ; 0434, 01AE
	CLRF    $36      ; 0435, 01B6
	CLRF    $3e      ; 0436, 01BE
	CLRF    $46      ; 0437, 01C6
	CLRF    $4e      ; 0438, 01CE
	CLRF    $5e      ; 0439, 01DE

.org 0x43A 
_L43A:
	BCF     $3,$5    ; 043A, 1283
	CLRF    $60      ; 043B, 01E0

.org 0x43C 
_L43C:
	MOVF    $60,$0   ; 043C, 0860
	ADDLW   $8a      ; 043D, 3E8A
	MOVWF   $4       ; 043E, 0084
	MOVLW   $88      ; 043F, 3088
	BTFSC   $3,$0    ; 0440, 1803
	ADDLW   $1       ; 0441, 3E01
	MOVWF   $7f      ; 0442, 00FF
	BCF     $a,$3    ; 0443, 118A
	CALL    _L700    ; 0444, 2700
	BCF     $a,$3    ; 0445, 118A
	SUBWF   $5e,$0   ; 0446, 025E
	MOVLW   $7       ; 0447, 3007
	BTFSS   $3,$0    ; 0448, 1C03
	GOTO    _L44F    ; 0449, 2C4F
	INCF    $60,$1   ; 044A, 0AE0
	SUBWF   $60,$0   ; 044B, 0260
	BTFSS   $3,$0    ; 044C, 1C03
	GOTO    _L43C    ; 044D, 2C3C
	MOVLW   $7       ; 044E, 3007

.org 0x44F 
_L44F:
	SUBWF   $60,$0   ; 044F, 0260
	BTFSS   $3,$0    ; 0450, 1C03
	GOTO    _L454    ; 0451, 2C54
	MOVLW   $6       ; 0452, 3006
	MOVWF   $60      ; 0453, 00E0

.org 0x454 
_L454:
	MOVF    $60,$0   ; 0454, 0860
	CALL    _L57E    ; 0455, 257E
	BCF     $a,$3    ; 0456, 118A
	BCF     $3,$5    ; 0457, 1283
	BTFSS   $2d,$2   ; 0458, 1D2D
	GOTO    _L45E    ; 0459, 2C5E
	MOVLW   $10      ; 045A, 3010
	BSF     $3,$5    ; 045B, 1683
	MOVWF   $66      ; 045C, 00E6
	RET              ; 045D, 0008

.org 0x45E 
_L45E:
	BSF     $3,$5    ; 045E, 1683
	CLRF    $66      ; 045F, 01E6
	RET              ; 0460, 0008

.org 0x461 
_L461:
	MOVWF   $5f      ; 0461, 00DF
	MOVLW   $63      ; 0462, 3063
	CLRF    $5e      ; 0463, 01DE
	CLRF    $62      ; 0464, 01E2
	CLRF    $61      ; 0465, 01E1
	SUBWF   $5f,$0   ; 0466, 025F
	BTFSS   $3,$0    ; 0467, 1C03
	GOTO    _L486    ; 0468, 2C86
	CLRF    $62      ; 0469, 01E2

.org 0x46A 
_L46A:
	MOVF    $62,$0   ; 046A, 0862
	MOVWF   $5d      ; 046B, 00DD
	BCF     $3,$0    ; 046C, 1003
	RLF     $5d,$1   ; 046D, 0DDD
	BCF     $3,$0    ; 046E, 1003
	RLF     $5d,$1   ; 046F, 0DDD
	BCF     $3,$0    ; 0470, 1003
	RLF     $5d,$0   ; 0471, 0D5D
	ADDLW   $ad      ; 0472, 3EAD
	MOVWF   $4       ; 0473, 0084
	MOVLW   $10      ; 0474, 3010
	MOVWF   $0       ; 0475, 0080
	MOVLW   $7       ; 0476, 3007
	INCF    $62,$1   ; 0477, 0AE2
	SUBWF   $62,$0   ; 0478, 0262
	BTFSS   $3,$0    ; 0479, 1C03
	GOTO    _L46A    ; 047A, 2C6A
	MOVLW   $9       ; 047B, 3009
	MOVWF   $4e      ; 047C, 00CE
	MOVLW   $0       ; 047D, 3000
	CALL    _L4CF    ; 047E, 24CF
	BCF     $a,$3    ; 047F, 118A
	MOVLW   $9       ; 0480, 3009
	MOVWF   $4e      ; 0481, 00CE
	MOVLW   $1       ; 0482, 3001
	CALL    _L4CF    ; 0483, 24CF
	BCF     $a,$3    ; 0484, 118A
	GOTO    _L4B0    ; 0485, 2CB0

.org 0x486 
_L486:
	MOVF    $5f,$0   ; 0486, 085F
	MOVWF   $5e      ; 0487, 00DE
	CLRF    $60      ; 0488, 01E0

.org 0x489 
_L489:
	MOVLW   $a       ; 0489, 300A
	SUBWF   $5e,$0   ; 048A, 025E
	BTFSS   $3,$0    ; 048B, 1C03
	GOTO    _L494    ; 048C, 2C94
	MOVLW   $f6      ; 048D, 30F6
	ADDWF   $5e,$1   ; 048E, 07DE
	MOVLW   $a       ; 048F, 300A
	INCF    $60,$1   ; 0490, 0AE0
	SUBWF   $60,$0   ; 0491, 0260
	BTFSS   $3,$0    ; 0492, 1C03
	GOTO    _L489    ; 0493, 2C89

.org 0x494 
_L494:
	MOVF    $60,$0   ; 0494, 0860
	MOVWF   $4e      ; 0495, 00CE
	MOVLW   $0       ; 0496, 3000
	CALL    _L4CF    ; 0497, 24CF
	BCF     $a,$3    ; 0498, 118A
	MOVF    $5e,$0   ; 0499, 085E
	MOVWF   $4e      ; 049A, 00CE
	MOVLW   $1       ; 049B, 3001
	CALL    _L4CF    ; 049C, 24CF
	BCF     $a,$3    ; 049D, 118A
	CLRF    $62      ; 049E, 01E2

.org 0x49F 
_L49F:
	MOVF    $62,$0   ; 049F, 0862
	MOVWF   $5d      ; 04A0, 00DD
	BCF     $3,$0    ; 04A1, 1003
	RLF     $5d,$1   ; 04A2, 0DDD
	BCF     $3,$0    ; 04A3, 1003
	RLF     $5d,$1   ; 04A4, 0DDD
	BCF     $3,$0    ; 04A5, 1003
	RLF     $5d,$0   ; 04A6, 0D5D
	ADDLW   $ad      ; 04A7, 3EAD
	MOVWF   $4       ; 04A8, 0084
	MOVLW   $7       ; 04A9, 3007
	BCF     $3,$7    ; 04AA, 1383
	CLRF    $0       ; 04AB, 0180
	INCF    $62,$1   ; 04AC, 0AE2
	SUBWF   $62,$0   ; 04AD, 0262
	BTFSS   $3,$0    ; 04AE, 1C03
	GOTO    _L49F    ; 04AF, 2C9F

.org 0x4B0 
_L4B0:
	CLRF    $61      ; 04B0, 01E1

.org 0x4B1 
_L4B1:
	MOVF    $61,$0   ; 04B1, 0861
	ADDLW   $8a      ; 04B2, 3E8A
	MOVWF   $4       ; 04B3, 0084
	MOVLW   $88      ; 04B4, 3088
	BTFSC   $3,$0    ; 04B5, 1803
	ADDLW   $1       ; 04B6, 3E01
	MOVWF   $7f      ; 04B7, 00FF
	BCF     $a,$3    ; 04B8, 118A
	CALL    _L700    ; 04B9, 2700
	BCF     $a,$3    ; 04BA, 118A
	SUBWF   $5f,$0   ; 04BB, 025F
	MOVLW   $7       ; 04BC, 3007
	BTFSS   $3,$0    ; 04BD, 1C03
	GOTO    _L4C4    ; 04BE, 2CC4
	INCF    $61,$1   ; 04BF, 0AE1
	SUBWF   $61,$0   ; 04C0, 0261
	BTFSS   $3,$0    ; 04C1, 1C03
	GOTO    _L4B1    ; 04C2, 2CB1
	MOVLW   $7       ; 04C3, 3007

.org 0x4C4 
_L4C4:
	SUBWF   $61,$0   ; 04C4, 0261
	BTFSS   $3,$0    ; 04C5, 1C03
	GOTO    _L4C9    ; 04C6, 2CC9
	MOVLW   $6       ; 04C7, 3006
	MOVWF   $61      ; 04C8, 00E1

.org 0x4C9 
_L4C9:
	MOVF    $61,$0   ; 04C9, 0861
	CALL    _L542    ; 04CA, 2542
	MOVLW   $10      ; 04CB, 3010
	BSF     $3,$5    ; 04CC, 1683
	MOVWF   $65      ; 04CD, 00E5
	RET              ; 04CE, 0008

.org 0x4CF 
_L4CF:
	MOVWF   $5b      ; 04CF, 00DB
	MOVLW   $a       ; 04D0, 300A
	SUBWF   $4e,$0   ; 04D1, 024E
	BTFSC   $3,$0    ; 04D2, 1803
	RET              ; 04D3, 0008
	MOVLW   $5       ; 04D4, 3005
	SUBWF   $5b,$0   ; 04D5, 025B
	BTFSC   $3,$0    ; 04D6, 1803
	RET              ; 04D7, 0008
	MOVF    $4e,$0   ; 04D8, 084E
	ADDLW   $80      ; 04D9, 3E80
	MOVWF   $4       ; 04DA, 0084
	MOVLW   $88      ; 04DB, 3088
	BTFSC   $3,$0    ; 04DC, 1803
	ADDLW   $1       ; 04DD, 3E01
	MOVWF   $7f      ; 04DE, 00FF
	BCF     $a,$3    ; 04DF, 118A
	CALL    _L700    ; 04E0, 2700
	BCF     $a,$3    ; 04E1, 118A
	MOVWF   $5a      ; 04E2, 00DA
	CLRF    $5c      ; 04E3, 01DC

.org 0x4E4 
_L4E4:
	BTFSC   $5a,$0   ; 04E4, 185A
	GOTO    _L4E8    ; 04E5, 2CE8
	CLRF    $58      ; 04E6, 01D8
	GOTO    _L4EA    ; 04E7, 2CEA

.org 0x4E8 
_L4E8:
	MOVLW   $10      ; 04E8, 3010
	MOVWF   $58      ; 04E9, 00D8

.org 0x4EA 
_L4EA:
	MOVLW   $e       ; 04EA, 300E
	CLRF    $59      ; 04EB, 01D9
	MOVWF   $4b      ; 04EC, 00CB
	MOVF    $5b,$0   ; 04ED, 085B
	CALL    _L534    ; 04EE, 2534
	ADDLW   $48      ; 04EF, 3E48
	MOVWF   $4f      ; 04F0, 00CF
	MOVLW   $88      ; 04F1, 3088
	BTFSC   $3,$0    ; 04F2, 1803
	ADDLW   $1       ; 04F3, 3E01
	MOVWF   $50      ; 04F4, 00D0
	BCF     $3,$0    ; 04F5, 1003
	RLF     $5c,$0   ; 04F6, 0D5C
	ADDWF   $4f,$0   ; 04F7, 074F
	MOVWF   $4       ; 04F8, 0084
	MOVF    $50,$0   ; 04F9, 0850
	BTFSC   $3,$0    ; 04FA, 1803
	INCF    $50,$0   ; 04FB, 0A50
	MOVWF   $7f      ; 04FC, 00FF
	BCF     $a,$3    ; 04FD, 118A
	CALL    _L700    ; 04FE, 2700
	BCF     $a,$3    ; 04FF, 118A
	MOVWF   $51      ; 0500, 00D1
	MOVLW   $a9      ; 0501, 30A9
	BCF     $3,$0    ; 0502, 1003
	RLF     $51,$1   ; 0503, 0DD1
	BCF     $3,$0    ; 0504, 1003
	RLF     $51,$1   ; 0505, 0DD1
	BCF     $3,$0    ; 0506, 1003
	RLF     $51,$1   ; 0507, 0DD1
	ADDWF   $51,$0   ; 0508, 0751
	MOVWF   $52      ; 0509, 00D2
	MOVLW   $e       ; 050A, 300E
	MOVWF   $4b      ; 050B, 00CB
	MOVF    $5b,$0   ; 050C, 085B
	CALL    _L534    ; 050D, 2534
	ADDLW   $48      ; 050E, 3E48
	MOVWF   $53      ; 050F, 00D3
	MOVLW   $88      ; 0510, 3088
	BTFSC   $3,$0    ; 0511, 1803
	ADDLW   $1       ; 0512, 3E01
	MOVWF   $54      ; 0513, 00D4
	BCF     $3,$0    ; 0514, 1003
	RLF     $5c,$0   ; 0515, 0D5C
	ADDWF   $53,$0   ; 0516, 0753
	MOVWF   $55      ; 0517, 00D5
	MOVF    $54,$0   ; 0518, 0854
	BTFSC   $3,$0    ; 0519, 1803
	ADDLW   $1       ; 051A, 3E01
	MOVWF   $56      ; 051B, 00D6
	MOVLW   $1       ; 051C, 3001
	ADDWF   $55,$0   ; 051D, 0755
	MOVWF   $4       ; 051E, 0084
	MOVF    $56,$0   ; 051F, 0856
	BTFSC   $3,$0    ; 0520, 1803
	INCF    $56,$0   ; 0521, 0A56
	MOVWF   $7f      ; 0522, 00FF
	BCF     $a,$3    ; 0523, 118A
	CALL    _L700    ; 0524, 2700
	BCF     $a,$3    ; 0525, 118A
	ADDWF   $52,$0   ; 0526, 0752
	MOVWF   $57      ; 0527, 00D7
	MOVWF   $4       ; 0528, 0084
	MOVF    $58,$0   ; 0529, 0858
	BCF     $3,$7    ; 052A, 1383
	MOVWF   $0       ; 052B, 0080
	MOVLW   $7       ; 052C, 3007
	BCF     $3,$0    ; 052D, 1003
	RRF     $5a,$1   ; 052E, 0CDA
	INCF    $5c,$1   ; 052F, 0ADC
	SUBWF   $5c,$0   ; 0530, 025C
	BTFSC   $3,$0    ; 0531, 1803
	RET              ; 0532, 0008
	GOTO    _L4E4    ; 0533, 2CE4

.org 0x534 
_L534:
	MOVWF   $4d      ; 0534, 00CD
	CLRF    $4c      ; 0535, 01CC

.org 0x536 
_L536:
	MOVF    $4b,$0   ; 0536, 084B
	BTFSC   $4d,$0   ; 0537, 184D
	ADDWF   $4c,$1   ; 0538, 07CC
	BCF     $3,$0    ; 0539, 1003
	RLF     $4b,$1   ; 053A, 0DCB
	BCF     $3,$0    ; 053B, 1003
	RRF     $4d,$1   ; 053C, 0CCD
	MOVF    $4d,$1   ; 053D, 08CD
	BTFSS   $3,$2    ; 053E, 1D03
	GOTO    _L536    ; 053F, 2D36
	MOVF    $4c,$0   ; 0540, 084C
	RET              ; 0541, 0008

.org 0x542 
_L542:
	MOVWF   $4c      ; 0542, 00CC
	CLRF    $4d      ; 0543, 01CD

.org 0x544 
_L544:
	MOVF    $4d,$0   ; 0544, 084D
	MOVWF   $4b      ; 0545, 00CB
	BCF     $3,$0    ; 0546, 1003
	RLF     $4b,$1   ; 0547, 0DCB
	BCF     $3,$0    ; 0548, 1003
	RLF     $4b,$1   ; 0549, 0DCB
	BCF     $3,$0    ; 054A, 1003
	RLF     $4b,$0   ; 054B, 0D4B
	ADDLW   $ad      ; 054C, 3EAD
	MOVWF   $4       ; 054D, 0084
	MOVLW   $7       ; 054E, 3007
	BCF     $3,$7    ; 054F, 1383
	CLRF    $0       ; 0550, 0180
	INCF    $4d,$1   ; 0551, 0ACD
	SUBWF   $4d,$0   ; 0552, 024D
	BTFSC   $3,$0    ; 0553, 1803
	GOTO    _L569    ; 0554, 2D69
	GOTO    _L544    ; 0555, 2D44

.org 0x556 
_L556:
	MOVLW   $10      ; 0556, 3010
	BSF     $3,$5    ; 0557, 1683
	MOVWF   $5d      ; 0558, 00DD

.org 0x559 
_L559:
	MOVLW   $10      ; 0559, 3010
	BSF     $3,$5    ; 055A, 1683
	MOVWF   $4d      ; 055B, 00CD

.org 0x55C 
_L55C:
	MOVLW   $10      ; 055C, 3010
	BSF     $3,$5    ; 055D, 1683
	MOVWF   $45      ; 055E, 00C5

.org 0x55F 
_L55F:
	MOVLW   $10      ; 055F, 3010
	BSF     $3,$5    ; 0560, 1683
	MOVWF   $3d      ; 0561, 00BD

.org 0x562 
_L562:
	MOVLW   $10      ; 0562, 3010
	BSF     $3,$5    ; 0563, 1683
	MOVWF   $35      ; 0564, 00B5

.org 0x565 
_L565:
	MOVLW   $10      ; 0565, 3010
	BSF     $3,$5    ; 0566, 1683
	MOVWF   $2d      ; 0567, 00AD
	RET              ; 0568, 0008

.org 0x569 
_L569:
	MOVF    $4c,$0   ; 0569, 084C
	XORLW   $1       ; 056A, 3A01
	BTFSC   $3,$2    ; 056B, 1903
	GOTO    _L565    ; 056C, 2D65
	XORLW   $3       ; 056D, 3A03
	BTFSC   $3,$2    ; 056E, 1903
	GOTO    _L562    ; 056F, 2D62
	XORLW   $1       ; 0570, 3A01
	BTFSC   $3,$2    ; 0571, 1903
	GOTO    _L55F    ; 0572, 2D5F
	XORLW   $7       ; 0573, 3A07
	BTFSC   $3,$2    ; 0574, 1903
	GOTO    _L55C    ; 0575, 2D5C
	XORLW   $1       ; 0576, 3A01
	BTFSC   $3,$2    ; 0577, 1903
	GOTO    _L559    ; 0578, 2D59
	XORLW   $3       ; 0579, 3A03
	BTFSC   $3,$2    ; 057A, 1903
	GOTO    _L556    ; 057B, 2D56
	GOTO    _L57D    ; 057C, 2D7D

.org 0x57D 
_L57D:
	RET              ; 057D, 0008

.org 0x57E 
_L57E:
	MOVWF   $4c      ; 057E, 00CC
	CLRF    $4d      ; 057F, 01CD

.org 0x580 
_L580:
	MOVF    $4d,$0   ; 0580, 084D
	MOVWF   $4b      ; 0581, 00CB
	BCF     $3,$0    ; 0582, 1003
	RLF     $4b,$1   ; 0583, 0DCB
	BCF     $3,$0    ; 0584, 1003
	RLF     $4b,$1   ; 0585, 0DCB
	BCF     $3,$0    ; 0586, 1003
	RLF     $4b,$0   ; 0587, 0D4B
	ADDLW   $ae      ; 0588, 3EAE
	MOVWF   $4       ; 0589, 0084
	MOVLW   $7       ; 058A, 3007
	BCF     $3,$7    ; 058B, 1383
	CLRF    $0       ; 058C, 0180
	INCF    $4d,$1   ; 058D, 0ACD
	SUBWF   $4d,$0   ; 058E, 024D
	BTFSC   $3,$0    ; 058F, 1803
	GOTO    _L5A5    ; 0590, 2DA5
	GOTO    _L580    ; 0591, 2D80

.org 0x592 
_L592:
	MOVLW   $10      ; 0592, 3010
	BSF     $3,$5    ; 0593, 1683
	MOVWF   $5e      ; 0594, 00DE

.org 0x595 
_L595:
	MOVLW   $10      ; 0595, 3010
	BSF     $3,$5    ; 0596, 1683
	MOVWF   $4e      ; 0597, 00CE

.org 0x598 
_L598:
	MOVLW   $10      ; 0598, 3010
	BSF     $3,$5    ; 0599, 1683
	MOVWF   $46      ; 059A, 00C6

.org 0x59B 
_L59B:
	MOVLW   $10      ; 059B, 3010
	BSF     $3,$5    ; 059C, 1683
	MOVWF   $3e      ; 059D, 00BE

.org 0x59E 
_L59E:
	MOVLW   $10      ; 059E, 3010
	BSF     $3,$5    ; 059F, 1683
	MOVWF   $36      ; 05A0, 00B6

.org 0x5A1 
_L5A1:
	MOVLW   $10      ; 05A1, 3010
	BSF     $3,$5    ; 05A2, 1683
	MOVWF   $2e      ; 05A3, 00AE
	RET              ; 05A4, 0008

.org 0x5A5 
_L5A5:
	MOVF    $4c,$0   ; 05A5, 084C
	XORLW   $1       ; 05A6, 3A01
	BTFSC   $3,$2    ; 05A7, 1903
	GOTO    _L5A1    ; 05A8, 2DA1
	XORLW   $3       ; 05A9, 3A03
	BTFSC   $3,$2    ; 05AA, 1903
	GOTO    _L59E    ; 05AB, 2D9E
	XORLW   $1       ; 05AC, 3A01
	BTFSC   $3,$2    ; 05AD, 1903
	GOTO    _L59B    ; 05AE, 2D9B
	XORLW   $7       ; 05AF, 3A07
	BTFSC   $3,$2    ; 05B0, 1903
	GOTO    _L598    ; 05B1, 2D98
	XORLW   $1       ; 05B2, 3A01
	BTFSC   $3,$2    ; 05B3, 1903
	GOTO    _L595    ; 05B4, 2D95
	XORLW   $3       ; 05B5, 3A03
	BTFSC   $3,$2    ; 05B6, 1903
	GOTO    _L592    ; 05B7, 2D92
	GOTO    _L5B9    ; 05B8, 2DB9

.org 0x5B9 
_L5B9:
	RET              ; 05B9, 0008

.org 0x5BA 
_L5BA:
	BCF     $3,$5    ; 05BA, 1283
	CLRF    $4b      ; 05BB, 01CB
	GOTO    _L5C5    ; 05BC, 2DC5

.org 0x5BD 
_L5BD:
	CLRF    $4b      ; 05BD, 01CB
	GOTO    _L5D0    ; 05BE, 2DD0

.org 0x5BF 
_L5BF:
	CLRF    $4b      ; 05BF, 01CB
	INCF    $4b,$1   ; 05C0, 0ACB
	GOTO    _L5D0    ; 05C1, 2DD0

.org 0x5C2 
_L5C2:
	MOVLW   $2       ; 05C2, 3002
	MOVWF   $4b      ; 05C3, 00CB
	GOTO    _L5D0    ; 05C4, 2DD0

.org 0x5C5 
_L5C5:
	MOVF    $39,$0   ; 05C5, 0839
	XORLW   $0       ; 05C6, 3A00
	BTFSC   $3,$2    ; 05C7, 1903
	GOTO    _L5BD    ; 05C8, 2DBD
	XORLW   $40      ; 05C9, 3A40
	BTFSC   $3,$2    ; 05CA, 1903
	GOTO    _L5BF    ; 05CB, 2DBF
	XORLW   $c0      ; 05CC, 3AC0
	BTFSC   $3,$2    ; 05CD, 1903
	GOTO    _L5C2    ; 05CE, 2DC2
	GOTO    _L5D0    ; 05CF, 2DD0

.org 0x5D0 
_L5D0:
	MOVF    $34,$0   ; 05D0, 0834
	XORWF   $4b,$0   ; 05D1, 064B
	BTFSC   $3,$2    ; 05D2, 1903
	GOTO    _L5F4    ; 05D3, 2DF4
	BSF     $3,$5    ; 05D4, 1683
	CLRF    $2f      ; 05D5, 01AF
	CLRF    $37      ; 05D6, 01B7
	CLRF    $3f      ; 05D7, 01BF
	CLRF    $47      ; 05D8, 01C7
	CLRF    $4f      ; 05D9, 01CF
	CLRF    $57      ; 05DA, 01D7
	CLRF    $67      ; 05DB, 01E7
	CLRF    $30      ; 05DC, 01B0
	CLRF    $38      ; 05DD, 01B8
	BCF     $3,$5    ; 05DE, 1283
	MOVF    $4b,$0   ; 05DF, 084B
	MOVWF   $34      ; 05E0, 00B4
	GOTO    _L5F4    ; 05E1, 2DF4

.org 0x5E2 
_L5E2:
	MOVLW   $10      ; 05E2, 3010
	BSF     $3,$5    ; 05E3, 1683
	MOVWF   $2f      ; 05E4, 00AF
	MOVWF   $37      ; 05E5, 00B7
	MOVWF   $3f      ; 05E6, 00BF
	RET              ; 05E7, 0008

.org 0x5E8 
_L5E8:
	MOVLW   $10      ; 05E8, 3010
	BSF     $3,$5    ; 05E9, 1683
	MOVWF   $47      ; 05EA, 00C7
	MOVWF   $4f      ; 05EB, 00CF
	MOVWF   $57      ; 05EC, 00D7
	RET              ; 05ED, 0008

.org 0x5EE 
_L5EE:
	MOVLW   $10      ; 05EE, 3010
	BSF     $3,$5    ; 05EF, 1683
	MOVWF   $67      ; 05F0, 00E7
	MOVWF   $30      ; 05F1, 00B0
	MOVWF   $38      ; 05F2, 00B8
	RET              ; 05F3, 0008

.org 0x5F4 
_L5F4:
	MOVF    $4b,$0   ; 05F4, 084B
	XORLW   $0       ; 05F5, 3A00
	BTFSC   $3,$2    ; 05F6, 1903
	GOTO    _L5E2    ; 05F7, 2DE2
	XORLW   $1       ; 05F8, 3A01
	BTFSC   $3,$2    ; 05F9, 1903
	GOTO    _L5E8    ; 05FA, 2DE8
	XORLW   $3       ; 05FB, 3A03
	BTFSC   $3,$2    ; 05FC, 1903
	GOTO    _L5EE    ; 05FD, 2DEE
	GOTO    _L5FF    ; 05FE, 2DFF

.org 0x5FF 
_L5FF:
	RET              ; 05FF, 0008

.org 0x600 
_L600:
	BCF     $3,$5    ; 0600, 1283
	MOVLW   $64      ; 0601, 3064
	BCF     $3,$6    ; 0602, 1303
	CLRF    $64      ; 0603, 01E4
	INCF    $32,$1   ; 0604, 0AB2
	SUBWF   $32,$0   ; 0605, 0232
	BTFSS   $3,$0    ; 0606, 1C03
	GOTO    _L60B    ; 0607, 2E0B
	CLRF    $32      ; 0608, 01B2
	CALL    _L63C    ; 0609, 263C
	BCF     $a,$3    ; 060A, 118A

.org 0x60B 
_L60B:
	BTFSS   $2d,$2   ; 060B, 1D2D
	GOTO    _L612    ; 060C, 2E12
	DECF    $2a,$0   ; 060D, 032A
	BTFSC   $3,$2    ; 060E, 1903
	GOTO    _L612    ; 060F, 2E12
	MOVLW   $5       ; 0610, 3005
	MOVWF   $2a      ; 0611, 00AA

.org 0x612 
_L612:
	MOVF    $30,$0   ; 0612, 0830
	XORWF   $2a,$0   ; 0613, 062A
	BTFSC   $3,$2    ; 0614, 1903
	GOTO    _L61A    ; 0615, 2E1A
	CLRF    $64      ; 0616, 01E4
	INCF    $64,$1   ; 0617, 0AE4
	MOVF    $2a,$0   ; 0618, 082A
	MOVWF   $30      ; 0619, 00B0

.org 0x61A 
_L61A:
	MOVF    $2a,$0   ; 061A, 082A
	XORLW   $0       ; 061B, 3A00
	BTFSC   $3,$2    ; 061C, 1903
	GOTO    _L63B    ; 061D, 2E3B
	XORLW   $1       ; 061E, 3A01
	BTFSC   $3,$2    ; 061F, 1903
	GOTO    _L62B    ; 0620, 2E2B
	XORLW   $5       ; 0621, 3A05
	BTFSC   $3,$2    ; 0622, 1903
	GOTO    _L62D    ; 0623, 2E2D
	XORLW   $c       ; 0624, 3A0C
	BTFSC   $3,$2    ; 0625, 1903
	GOTO    _L62F    ; 0626, 2E2F
	XORLW   $4       ; 0627, 3A04
	BTFSC   $3,$2    ; 0628, 1903
	GOTO    _L631    ; 0629, 2E31
	GOTO    _L63B    ; 062A, 2E3B

.org 0x62B 
_L62B:
	MOVF    $64,$0   ; 062B, 0864
	GOTO    _L64A    ; 062C, 2E4A

.org 0x62D 
_L62D:
	MOVF    $64,$0   ; 062D, 0864
	GOTO    _L3EE    ; 062E, 2BEE

.org 0x62F 
_L62F:
	MOVF    $64,$0   ; 062F, 0864
	GOTO    _L64A    ; 0630, 2E4A

.org 0x631 
_L631:
	BTFSS   $2d,$2   ; 0631, 1D2D
	GOTO    _L636    ; 0632, 2E36
	MOVLW   $5       ; 0633, 3005
	MOVWF   $2a      ; 0634, 00AA
	RET              ; 0635, 0008

.org 0x636 
_L636:
	CLRF    $29      ; 0636, 01A9
	CLRF    $2a      ; 0637, 01AA
	MOVF    $2a,$0   ; 0638, 082A
	MOVWF   $30      ; 0639, 00B0
	GOTO    _L652    ; 063A, 2E52

.org 0x63B 
_L63B:
	RET              ; 063B, 0008

.org 0x63C 
_L63C:
	MOVLW   $b       ; 063C, 300B
	SUBWF   $29,$0   ; 063D, 0229
	BTFSS   $3,$0    ; 063E, 1C03
	GOTO    _L642    ; 063F, 2E42
	MOVLW   $a       ; 0640, 300A
	MOVWF   $29      ; 0641, 00A9

.org 0x642 
_L642:
	MOVF    $29,$0   ; 0642, 0829
	BTFSS   $3,$2    ; 0643, 1D03
	DECFSZ  $29,$1   ; 0644, 0BA9
	RET              ; 0645, 0008
	MOVLW   $c       ; 0646, 300C
	MOVWF   $2a      ; 0647, 00AA
	MOVWF   $30      ; 0648, 00B0
	RET              ; 0649, 0008

.org 0x64A 
_L64A:
	MOVWF   $63      ; 064A, 00E3
	DECFSZ  $63,$0   ; 064B, 0B63
	RET              ; 064C, 0008
	MOVLW   $b       ; 064D, 300B
	MOVWF   $29      ; 064E, 00A9
	CALL    _L652    ; 064F, 2652
	BCF     $a,$3    ; 0650, 118A
	GOTO    _L3F8    ; 0651, 2BF8

.org 0x652 
_L652:
	MOVLW   $40      ; 0652, 3040
	CLRF    $4b      ; 0653, 01CB
	MOVWF   $4c      ; 0654, 00CC
	MOVLW   $a9      ; 0655, 30A9
	GOTO    _L657    ; 0656, 2E57

.org 0x657 
_L657:
	MOVWF   $4e      ; 0657, 00CE
	MOVWF   $4f      ; 0658, 00CF
	CLRF    $50      ; 0659, 01D0

.org 0x65A 
_L65A:
	MOVF    $4c,$0   ; 065A, 084C
	SUBWF   $50,$0   ; 065B, 0250
	BTFSC   $3,$0    ; 065C, 1803
	RET              ; 065D, 0008
	MOVF    $50,$0   ; 065E, 0850
	ADDWF   $4f,$0   ; 065F, 074F
	MOVWF   $4d      ; 0660, 00CD
	MOVWF   $4       ; 0661, 0084
	MOVF    $4b,$0   ; 0662, 084B
	BCF     $3,$7    ; 0663, 1383
	MOVWF   $0       ; 0664, 0080
	INCF    $50,$1   ; 0665, 0AD0
	GOTO    _L65A    ; 0666, 2E5A

.org 0x667 
_L667:
	BCF     $3,$6    ; 0667, 1303
	BTFSS   $6,$2    ; 0668, 1D06
	GOTO    _L66D    ; 0669, 2E6D
	BSF     $3,$5    ; 066A, 1683
	BSF     $21,$0   ; 066B, 1421
	GOTO    _L66F    ; 066C, 2E6F

.org 0x66D 
_L66D:
	BSF     $3,$5    ; 066D, 1683
	BCF     $21,$0   ; 066E, 1021

.org 0x66F 
_L66F:
	BCF     $3,$5    ; 066F, 1283
	BTFSC   $5,$7    ; 0670, 1B85
	GOTO    _L675    ; 0671, 2E75
	BSF     $3,$5    ; 0672, 1683
	BSF     $21,$1   ; 0673, 14A1
	GOTO    _L677    ; 0674, 2E77

.org 0x675 
_L675:
	BSF     $3,$5    ; 0675, 1683
	BCF     $21,$1   ; 0676, 10A1

.org 0x677 
_L677:
	MOVF    $21,$0   ; 0677, 0821
	XORWF   $22,$0   ; 0678, 0622
	BTFSC   $3,$2    ; 0679, 1903
	GOTO    _L6B1    ; 067A, 2EB1
	MOVLW   $2       ; 067B, 3002
	INCF    $23,$1   ; 067C, 0AA3
	SUBWF   $23,$0   ; 067D, 0223
	BTFSS   $3,$0    ; 067E, 1C03
	GOTO    _L6B2    ; 067F, 2EB2
	BTFSS   $22,$1   ; 0680, 1CA2
	BTFSS   $21,$1   ; 0681, 1CA1
	GOTO    _L68C    ; 0682, 2E8C
	MOVLW   $32      ; 0683, 3032
	INCF    $25,$1   ; 0684, 0AA5
	MOVWF   $26      ; 0685, 00A6
	BSF     $24,$0   ; 0686, 1424
	CLRF    $27      ; 0687, 01A7
	CLRF    $28      ; 0688, 01A8
	CALL    _L6E7    ; 0689, 26E7
	BCF     $a,$3    ; 068A, 118A
	GOTO    _L690    ; 068B, 2E90

.org 0x68C 
_L68C:
	BTFSC   $22,$1   ; 068C, 18A2
	BTFSC   $21,$1   ; 068D, 18A1
	GOTO    _L690    ; 068E, 2E90
	BCF     $24,$0   ; 068F, 1024

.org 0x690 
_L690:
	BSF     $3,$5    ; 0690, 1683
	BTFSS   $22,$0   ; 0691, 1C22
	BTFSS   $21,$0   ; 0692, 1C21
	GOTO    _L69C    ; 0693, 2E9C
	BTFSC   $24,$4   ; 0694, 1A24
	GOTO    _L6A7    ; 0695, 2EA7
	BSF     $24,$5   ; 0696, 16A4
	BCF     $3,$5    ; 0697, 1283
	BSF     $2e,$0   ; 0698, 142E
	BSF     $3,$5    ; 0699, 1683
	BCF     $24,$7   ; 069A, 13A4
	GOTO    _L6A7    ; 069B, 2EA7

.org 0x69C 
_L69C:
	BTFSC   $22,$0   ; 069C, 1822
	BTFSC   $21,$0   ; 069D, 1821
	GOTO    _L6A7    ; 069E, 2EA7
	BTFSS   $24,$5   ; 069F, 1EA4
	GOTO    _L6A7    ; 06A0, 2EA7
	BCF     $a,$3    ; 06A1, 118A
	CALL    _L221    ; 06A2, 2221
	BCF     $a,$3    ; 06A3, 118A
	BCF     $2e,$0   ; 06A4, 102E
	BSF     $3,$5    ; 06A5, 1683
	BCF     $24,$5   ; 06A6, 12A4

.org 0x6A7 
_L6A7:
	BCF     $3,$5    ; 06A7, 1283
	BSF     $3,$6    ; 06A8, 1703
	CLRF    $5c      ; 06A9, 01DC
	CLRF    $5d      ; 06AA, 01DD
	BSF     $3,$5    ; 06AB, 1683
	BCF     $3,$6    ; 06AC, 1303
	CLRF    $23      ; 06AD, 01A3
	MOVF    $21,$0   ; 06AE, 0821
	MOVWF   $22      ; 06AF, 00A2
	GOTO    _L6B2    ; 06B0, 2EB2

.org 0x6B1 
_L6B1:
	CLRF    $23      ; 06B1, 01A3

.org 0x6B2 
_L6B2:
	MOVF    $26,$0   ; 06B2, 0826
	BTFSC   $3,$2    ; 06B3, 1903
	GOTO    _L6B7    ; 06B4, 2EB7
	DECF    $26,$1   ; 06B5, 03A6
	GOTO    _L6B8    ; 06B6, 2EB8

.org 0x6B7 
_L6B7:
	CLRF    $25      ; 06B7, 01A5

.org 0x6B8 
_L6B8:
	BTFSS   $24,$0   ; 06B8, 1C24
	GOTO    _L6D9    ; 06B9, 2ED9
	MOVLW   $0       ; 06BA, 3000
	SUBWF   $28,$0   ; 06BB, 0228
	MOVLW   $96      ; 06BC, 3096
	BTFSC   $3,$2    ; 06BD, 1903
	SUBWF   $27,$0   ; 06BE, 0227
	BTFSC   $3,$0    ; 06BF, 1803
	GOTO    _L6C9    ; 06C0, 2EC9
	INCF    $27,$1   ; 06C1, 0AA7
	BTFSC   $3,$2    ; 06C2, 1903
	INCF    $28,$1   ; 06C3, 0AA8
	BCF     $3,$5    ; 06C4, 1283
	BSF     $3,$6    ; 06C5, 1703
	CLRF    $5c      ; 06C6, 01DC
	CLRF    $5d      ; 06C7, 01DD
	GOTO    _L6D9    ; 06C8, 2ED9

.org 0x6C9 
_L6C9:
	BCF     $24,$0   ; 06C9, 1024
	CLRF    $25      ; 06CA, 01A5
	BCF     $a,$3    ; 06CB, 118A
	CALL    _L221    ; 06CC, 2221
	BCF     $a,$3    ; 06CD, 118A
	BCF     $2e,$0   ; 06CE, 102E
	BTFSS   $2d,$7   ; 06CF, 1FAD
	GOTO    _L6D4    ; 06D0, 2ED4
	MOVLW   $3       ; 06D1, 3003
	BCF     $2d,$7   ; 06D2, 13AD
	GOTO    _L6D6    ; 06D3, 2ED6

.org 0x6D4 
_L6D4:
	MOVLW   $2       ; 06D4, 3002
	BSF     $2d,$7   ; 06D5, 17AD

.org 0x6D6 
_L6D6:
	BCF     $a,$3    ; 06D6, 118A
	CALL    _L2FB    ; 06D7, 22FB
	BCF     $a,$3    ; 06D8, 118A

.org 0x6D9 
_L6D9:
	BSF     $3,$5    ; 06D9, 1683
	BCF     $3,$6    ; 06DA, 1303
	MOVF    $25,$1   ; 06DB, 08A5
	BTFSS   $3,$2    ; 06DC, 1D03
	GOTO    _L6E2    ; 06DD, 2EE2
	MOVF    $21,$0   ; 06DE, 0821
	ANDLW   $5       ; 06DF, 3905
	BTFSC   $3,$2    ; 06E0, 1903
	RET              ; 06E1, 0008

.org 0x6E2 
_L6E2:
	BCF     $3,$5    ; 06E2, 1283
	BSF     $3,$6    ; 06E3, 1703
	CLRF    $5c      ; 06E4, 01DC
	CLRF    $5d      ; 06E5, 01DD
	RET              ; 06E6, 0008

.org 0x6E7 
_L6E7:
	GOTO    _L6EF    ; 06E7, 2EEF

.org 0x6E8 
_L6E8:
	MOVLW   $40      ; 06E8, 3040
	GOTO    _L6EB    ; 06E9, 2EEB

.org 0x6EA 
_L6EA:
	MOVLW   $80      ; 06EA, 3080

.org 0x6EB 
_L6EB:
	MOVWF   $39      ; 06EB, 00B9
	GOTO    _L6FB    ; 06EC, 2EFB

.org 0x6ED 
_L6ED:
	CLRF    $39      ; 06ED, 01B9
	GOTO    _L6FB    ; 06EE, 2EFB

.org 0x6EF 
_L6EF:
	BCF     $3,$5    ; 06EF, 1283
	MOVF    $39,$0   ; 06F0, 0839
	XORLW   $0       ; 06F1, 3A00
	BTFSC   $3,$2    ; 06F2, 1903
	GOTO    _L6E8    ; 06F3, 2EE8
	XORLW   $40      ; 06F4, 3A40
	BTFSC   $3,$2    ; 06F5, 1903
	GOTO    _L6EA    ; 06F6, 2EEA
	XORLW   $c0      ; 06F7, 3AC0
	BTFSC   $3,$2    ; 06F8, 1903
	GOTO    _L6ED    ; 06F9, 2EED
	GOTO    _L6FB    ; 06FA, 2EFB

.org 0x6FB 
_L6FB:
	MOVLW   $4       ; 06FB, 3004
	BSF     $2d,$1   ; 06FC, 14AD
	BCF     $a,$3    ; 06FD, 118A
	GOTO    _L2FB    ; 06FE, 2AFB
	NOP              ; 06FF,   --

.org 0x700 
_L700:
	BTFSC   $7f,$7   ; 0700, 1BFF
	GOTO    _L70A    ; 0701, 2F0A
	BCF     $3,$7    ; 0702, 1383
	BTFSC   $7f,$0   ; 0703, 187F
	BSF     $3,$7    ; 0704, 1783
	MOVF    $0,$0    ; 0705, 0800
	INCF    $4,$1    ; 0706, 0A84
	BTFSC   $3,$2    ; 0707, 1903
	INCF    $7f,$1   ; 0708, 0AFF
	RET              ; 0709, 0008

.org 0x70A 
_L70A:
	MOVF    $7f,$0   ; 070A, 087F
	ANDLW   $7f      ; 070B, 397F
	MOVWF   $a       ; 070C, 008A
	MOVF    $4,$0    ; 070D, 0804
	INCF    $4,$1    ; 070E, 0A84
	BTFSC   $3,$2    ; 070F, 1903
	INCF    $7f,$1   ; 0710, 0AFF
	MOVWF   $2       ; 0711, 0082
	RETLW   $e4      ; 0712, 34E4
	RETLW   $c       ; 0713, 340C
	RETLW   $f2      ; 0714, 34F2
	RETLW   $c       ; 0715, 340C
	RETLW   $0       ; 0716, 3400
	RETLW   $d       ; 0717, 340D
	RETLW   $e       ; 0718, 340E
	RETLW   $d       ; 0719, 340D
	RETLW   $1c      ; 071A, 341C
	RETLW   $d       ; 071B, 340D
	RETLW   $2a      ; 071C, 342A
	RETLW   $d       ; 071D, 340D
	RETLW   $38      ; 071E, 3438
	RETLW   $d       ; 071F, 340D
	RETLW   $46      ; 0720, 3446
	RETLW   $d       ; 0721, 340D
	RETLW   $54      ; 0722, 3454
	RETLW   $d       ; 0723, 340D
	RETLW   $62      ; 0724, 3462
	RETLW   $d       ; 0725, 340D
	RETLW   $70      ; 0726, 3470
	RETLW   $d       ; 0727, 340D
	RETLW   $7a      ; 0728, 347A
	RETLW   $d       ; 0729, 340D
	RETLW   $84      ; 072A, 3484
	RETLW   $d       ; 072B, 340D
	RETLW   $8e      ; 072C, 348E
	RETLW   $d       ; 072D, 340D
	RETLW   $98      ; 072E, 3498
	RETLW   $d       ; 072F, 340D
	RETLW   $a2      ; 0730, 34A2
	RETLW   $d       ; 0731, 340D
	RETLW   $ac      ; 0732, 34AC
	RETLW   $d       ; 0733, 340D
	RETLW   $b6      ; 0734, 34B6
	RETLW   $d       ; 0735, 340D
	RETLW   $c0      ; 0736, 34C0
	RETLW   $d       ; 0737, 340D
	RETLW   $ca      ; 0738, 34CA
	RETLW   $d       ; 0739, 340D
	RETLW   $d4      ; 073A, 34D4
	RETLW   $d       ; 073B, 340D
	RETLW   $de      ; 073C, 34DE
	RETLW   $d       ; 073D, 340D
	RETLW   $e8      ; 073E, 34E8
	RETLW   $d       ; 073F, 340D
	RETLW   $f2      ; 0740, 34F2
	RETLW   $d       ; 0741, 340D
	RETLW   $fc      ; 0742, 34FC
	RETLW   $d       ; 0743, 340D
	RETLW   $6       ; 0744, 3406
	RETLW   $e       ; 0745, 340E
	RETLW   $10      ; 0746, 3410
	RETLW   $e       ; 0747, 340E
	RETLW   $1a      ; 0748, 341A
	RETLW   $e       ; 0749, 340E
	RETLW   $24      ; 074A, 3424
	RETLW   $e       ; 074B, 340E
	RETLW   $2e      ; 074C, 342E
	RETLW   $e       ; 074D, 340E
	RETLW   $38      ; 074E, 3438
	RETLW   $e       ; 074F, 340E
	RETLW   $3c      ; 0750, 343C
	RETLW   $e       ; 0751, 340E
	RETLW   $40      ; 0752, 3440
	RETLW   $e       ; 0753, 340E
	RETLW   $44      ; 0754, 3444
	RETLW   $e       ; 0755, 340E
	RETLW   $48      ; 0756, 3448
	RETLW   $e       ; 0757, 340E
	RETLW   $4c      ; 0758, 344C
	RETLW   $e       ; 0759, 340E
	RETLW   $50      ; 075A, 3450
	RETLW   $e       ; 075B, 340E
	RETLW   $54      ; 075C, 3454
	RETLW   $e       ; 075D, 340E
	RETLW   $58      ; 075E, 3458
	RETLW   $e       ; 075F, 340E
	RETLW   $5c      ; 0760, 345C
	RETLW   $e       ; 0761, 340E
	RETLW   $60      ; 0762, 3460
	RETLW   $e       ; 0763, 340E
	RETLW   $64      ; 0764, 3464
	RETLW   $e       ; 0765, 340E
	RETLW   $68      ; 0766, 3468
	RETLW   $e       ; 0767, 340E
	RETLW   $6c      ; 0768, 346C
	RETLW   $e       ; 0769, 340E
	RETLW   $70      ; 076A, 3470
	RETLW   $e       ; 076B, 340E
	RETLW   $74      ; 076C, 3474
	RETLW   $e       ; 076D, 340E
	RETLW   $78      ; 076E, 3478
	RETLW   $e       ; 076F, 340E
	RETLW   $7c      ; 0770, 347C
	RETLW   $e       ; 0771, 340E
	RETLW   $80      ; 0772, 3480
	RETLW   $e       ; 0773, 340E
	RETLW   $84      ; 0774, 3484
	RETLW   $e       ; 0775, 340E
	RETLW   $88      ; 0776, 3488
	RETLW   $e       ; 0777, 340E
	RETLW   $8c      ; 0778, 348C
	RETLW   $e       ; 0779, 340E
	RETLW   $90      ; 077A, 3490
	RETLW   $e       ; 077B, 340E
	RETLW   $94      ; 077C, 3494
	RETLW   $e       ; 077D, 340E
	RETLW   $98      ; 077E, 3498
	RETLW   $e       ; 077F, 340E
	RETLW   $9c      ; 0780, 349C
	RETLW   $e       ; 0781, 340E
	RETLW   $a0      ; 0782, 34A0
	RETLW   $e       ; 0783, 340E
	RETLW   $a4      ; 0784, 34A4
	RETLW   $e       ; 0785, 340E
	RETLW   $a8      ; 0786, 34A8
	RETLW   $e       ; 0787, 340E
	RETLW   $ac      ; 0788, 34AC
	RETLW   $e       ; 0789, 340E
	RETLW   $b0      ; 078A, 34B0
	RETLW   $e       ; 078B, 340E
	RETLW   $b4      ; 078C, 34B4
	RETLW   $e       ; 078D, 340E
	RETLW   $b8      ; 078E, 34B8
	RETLW   $e       ; 078F, 340E
	RETLW   $bc      ; 0790, 34BC
	RETLW   $e       ; 0791, 340E
	RETLW   $c0      ; 0792, 34C0
	RETLW   $e       ; 0793, 340E
	RETLW   $c4      ; 0794, 34C4
	RETLW   $e       ; 0795, 340E
	RETLW   $c8      ; 0796, 34C8
	RETLW   $e       ; 0797, 340E
	RETLW   $cc      ; 0798, 34CC
	RETLW   $e       ; 0799, 340E
	RETLW   $d0      ; 079A, 34D0
	RETLW   $e       ; 079B, 340E
	RETLW   $d4      ; 079C, 34D4
	RETLW   $e       ; 079D, 340E
	RETLW   $d8      ; 079E, 34D8
	RETLW   $e       ; 079F, 340E
	RETLW   $e2      ; 07A0, 34E2
	RETLW   $e       ; 07A1, 340E
	RETLW   $ec      ; 07A2, 34EC
	RETLW   $e       ; 07A3, 340E
	RETLW   $f6      ; 07A4, 34F6
	RETLW   $e       ; 07A5, 340E
	RETLW   $0       ; 07A6, 3400
	RETLW   $f       ; 07A7, 340F
	RETLW   $a       ; 07A8, 340A
	RETLW   $f       ; 07A9, 340F
	RETLW   $14      ; 07AA, 3414
	RETLW   $f       ; 07AB, 340F
	RETLW   $1e      ; 07AC, 341E
	RETLW   $f       ; 07AD, 340F
	RETLW   $28      ; 07AE, 3428
	RETLW   $f       ; 07AF, 340F
	RETLW   $32      ; 07B0, 3432
	RETLW   $f       ; 07B1, 340F
	RETLW   $3c      ; 07B2, 343C
	RETLW   $f       ; 07B3, 340F
	RETLW   $46      ; 07B4, 3446
	RETLW   $f       ; 07B5, 340F
	RETLW   $50      ; 07B6, 3450
	RETLW   $f       ; 07B7, 340F
	RETLW   $5a      ; 07B8, 345A
	RETLW   $f       ; 07B9, 340F
	RETLW   $64      ; 07BA, 3464
	RETLW   $f       ; 07BB, 340F
	RETLW   $6e      ; 07BC, 346E
	RETLW   $f       ; 07BD, 340F
	RETLW   $78      ; 07BE, 3478
	RETLW   $f       ; 07BF, 340F
	RETLW   $82      ; 07C0, 3482
	RETLW   $f       ; 07C1, 340F
	RETLW   $8c      ; 07C2, 348C
	RETLW   $f       ; 07C3, 340F
	RETLW   $96      ; 07C4, 3496
	RETLW   $f       ; 07C5, 340F
	RETLW   $a0      ; 07C6, 34A0
	RETLW   $f       ; 07C7, 340F
	RETLW   $a5      ; 07C8, 34A5
	RETLW   $f       ; 07C9, 340F
	RETLW   $aa      ; 07CA, 34AA
	RETLW   $f       ; 07CB, 340F
	RETLW   $af      ; 07CC, 34AF
	RETLW   $f       ; 07CD, 340F
	RETLW   $b4      ; 07CE, 34B4
	RETLW   $f       ; 07CF, 340F
	RETLW   $b9      ; 07D0, 34B9
	RETLW   $f       ; 07D1, 340F
	RETLW   $be      ; 07D2, 34BE
	RETLW   $f       ; 07D3, 340F
	RETLW   $c3      ; 07D4, 34C3
	RETLW   $f       ; 07D5, 340F
	RETLW   $c8      ; 07D6, 34C8
	RETLW   $f       ; 07D7, 340F
	RETLW   $cd      ; 07D8, 34CD
	RETLW   $f       ; 07D9, 340F
	RETLW   $2c      ; 07DA, 342C
	RETLW   $10      ; 07DB, 3410
	RETLW   $1       ; 07DC, 3401
	RETLW   $2       ; 07DD, 3402
	RETLW   $1       ; 07DE, 3401
	RETLW   $3       ; 07DF, 3403
	RETLW   $1       ; 07E0, 3401
	RETLW   $4       ; 07E1, 3404
	RETLW   $1       ; 07E2, 3401
	RETLW   $5       ; 07E3, 3405
	RETLW   $1       ; 07E4, 3401
	RETLW   $6       ; 07E5, 3406
	RETLW   $1       ; 07E6, 3401
	RETLW   $7       ; 07E7, 3407
	RETLW   $2       ; 07E8, 3402
	RETLW   $1       ; 07E9, 3401
	RETLW   $2       ; 07EA, 3402
	RETLW   $3       ; 07EB, 3403
	RETLW   $2       ; 07EC, 3402
	RETLW   $4       ; 07ED, 3404
	RETLW   $2       ; 07EE, 3402
	RETLW   $5       ; 07EF, 3405
	RETLW   $2       ; 07F0, 3402
	RETLW   $6       ; 07F1, 3406
	RETLW   $2       ; 07F2, 3402
	RETLW   $7       ; 07F3, 3407
	RETLW   $3       ; 07F4, 3403
	RETLW   $1       ; 07F5, 3401
	RETLW   $3       ; 07F6, 3403
	RETLW   $2       ; 07F7, 3402
	RETLW   $3       ; 07F8, 3403
	RETLW   $4       ; 07F9, 3404
	RETLW   $3       ; 07FA, 3403
	RETLW   $5       ; 07FB, 3405
	RETLW   $3       ; 07FC, 3403
	RETLW   $6       ; 07FD, 3406
	RETLW   $3       ; 07FE, 3403
	RETLW   $7       ; 07FF, 3407
	RETLW   $4       ; 0800, 3404
	RETLW   $1       ; 0801, 3401
	RETLW   $4       ; 0802, 3404
	RETLW   $2       ; 0803, 3402
	RETLW   $4       ; 0804, 3404
	RETLW   $3       ; 0805, 3403
	RETLW   $4       ; 0806, 3404
	RETLW   $5       ; 0807, 3405
	RETLW   $4       ; 0808, 3404
	RETLW   $6       ; 0809, 3406
	RETLW   $4       ; 080A, 3404
	RETLW   $7       ; 080B, 3407
	RETLW   $5       ; 080C, 3405
	RETLW   $1       ; 080D, 3401
	RETLW   $5       ; 080E, 3405
	RETLW   $2       ; 080F, 3402
	RETLW   $5       ; 0810, 3405
	RETLW   $3       ; 0811, 3403
	RETLW   $5       ; 0812, 3405
	RETLW   $4       ; 0813, 3404
	RETLW   $5       ; 0814, 3405
	RETLW   $6       ; 0815, 3406
	RETLW   $5       ; 0816, 3405
	RETLW   $7       ; 0817, 3407
	RETLW   $6       ; 0818, 3406
	RETLW   $1       ; 0819, 3401
	RETLW   $6       ; 081A, 3406
	RETLW   $2       ; 081B, 3402
	RETLW   $6       ; 081C, 3406
	RETLW   $3       ; 081D, 3403
	RETLW   $6       ; 081E, 3406
	RETLW   $4       ; 081F, 3404
	RETLW   $6       ; 0820, 3406
	RETLW   $5       ; 0821, 3405
	RETLW   $6       ; 0822, 3406
	RETLW   $7       ; 0823, 3407
	RETLW   $7       ; 0824, 3407
	RETLW   $1       ; 0825, 3401
	RETLW   $7       ; 0826, 3407
	RETLW   $2       ; 0827, 3402
	RETLW   $7       ; 0828, 3407
	RETLW   $3       ; 0829, 3403
	RETLW   $7       ; 082A, 3407
	RETLW   $4       ; 082B, 3404
	RETLW   $7       ; 082C, 3407
	RETLW   $5       ; 082D, 3405
	RETLW   $7       ; 082E, 3407
	RETLW   $6       ; 082F, 3406
	RETLW   $8       ; 0830, 3408
	RETLW   $1       ; 0831, 3401
	RETLW   $8       ; 0832, 3408
	RETLW   $2       ; 0833, 3402
	RETLW   $8       ; 0834, 3408
	RETLW   $3       ; 0835, 3403
	RETLW   $8       ; 0836, 3408
	RETLW   $4       ; 0837, 3404
	RETLW   $8       ; 0838, 3408
	RETLW   $5       ; 0839, 3405
	RETLW   $8       ; 083A, 3408
	RETLW   $6       ; 083B, 3406
	RETLW   $1       ; 083C, 3401
	RETLW   $8       ; 083D, 3408
	RETLW   $2       ; 083E, 3402
	RETLW   $8       ; 083F, 3408
	RETLW   $0       ; 0840, 3400
	RETLW   $0       ; 0841, 3400
	RETLW   $8       ; 0842, 3408
	RETLW   $7       ; 0843, 3407
	RETLW   $0       ; 0844, 3400
	RETLW   $0       ; 0845, 3400
	RETLW   $0       ; 0846, 3400
	RETLW   $0       ; 0847, 3400
	RETLW   $1       ; 0848, 3401
	RETLW   $0       ; 0849, 3400
	RETLW   $2       ; 084A, 3402
	RETLW   $0       ; 084B, 3400
	RETLW   $3       ; 084C, 3403
	RETLW   $0       ; 084D, 3400
	RETLW   $4       ; 084E, 3404
	RETLW   $0       ; 084F, 3400
	RETLW   $5       ; 0850, 3405
	RETLW   $0       ; 0851, 3400
	RETLW   $6       ; 0852, 3406
	RETLW   $0       ; 0853, 3400
	RETLW   $7       ; 0854, 3407
	RETLW   $0       ; 0855, 3400
	RETLW   $0       ; 0856, 3400
	RETLW   $1       ; 0857, 3401
	RETLW   $2       ; 0858, 3402
	RETLW   $1       ; 0859, 3401
	RETLW   $3       ; 085A, 3403
	RETLW   $1       ; 085B, 3401
	RETLW   $4       ; 085C, 3404
	RETLW   $1       ; 085D, 3401
	RETLW   $5       ; 085E, 3405
	RETLW   $1       ; 085F, 3401
	RETLW   $6       ; 0860, 3406
	RETLW   $1       ; 0861, 3401
	RETLW   $7       ; 0862, 3407
	RETLW   $1       ; 0863, 3401
	RETLW   $0       ; 0864, 3400
	RETLW   $2       ; 0865, 3402
	RETLW   $1       ; 0866, 3401
	RETLW   $2       ; 0867, 3402
	RETLW   $3       ; 0868, 3403
	RETLW   $2       ; 0869, 3402
	RETLW   $4       ; 086A, 3404
	RETLW   $2       ; 086B, 3402
	RETLW   $5       ; 086C, 3405
	RETLW   $2       ; 086D, 3402
	RETLW   $6       ; 086E, 3406
	RETLW   $2       ; 086F, 3402
	RETLW   $7       ; 0870, 3407
	RETLW   $2       ; 0871, 3402
	RETLW   $0       ; 0872, 3400
	RETLW   $3       ; 0873, 3403
	RETLW   $1       ; 0874, 3401
	RETLW   $3       ; 0875, 3403
	RETLW   $2       ; 0876, 3402
	RETLW   $3       ; 0877, 3403
	RETLW   $4       ; 0878, 3404
	RETLW   $3       ; 0879, 3403
	RETLW   $5       ; 087A, 3405
	RETLW   $3       ; 087B, 3403
	RETLW   $6       ; 087C, 3406
	RETLW   $3       ; 087D, 3403
	RETLW   $7       ; 087E, 3407
	RETLW   $3       ; 087F, 3403
	RETLW   $3f      ; 0880, 343F
	RETLW   $6       ; 0881, 3406
	RETLW   $5b      ; 0882, 345B
	RETLW   $4f      ; 0883, 344F
	RETLW   $66      ; 0884, 3466
	RETLW   $6d      ; 0885, 346D
	RETLW   $7d      ; 0886, 347D
	RETLW   $7       ; 0887, 3407
	RETLW   $7f      ; 0888, 347F
	RETLW   $6f      ; 0889, 346F
	RETLW   $10      ; 088A, 3410
	RETLW   $1e      ; 088B, 341E
	RETLW   $2c      ; 088C, 342C
	RETLW   $3a      ; 088D, 343A
	RETLW   $48      ; 088E, 3448
	RETLW   $56      ; 088F, 3456
	RETLW   $64      ; 0890, 3464
	BSF     $a,$3    ; 0891, 158A
	GOTO    _LF81    ; 0892, 2F81
	BSF     $a,$3    ; 0893, 158A
	GOTO    _LF8F    ; 0894, 2F8F
	BSF     $a,$3    ; 0895, 158A
	GOTO    _LF9D    ; 0896, 2F9D
	BSF     $a,$3    ; 0897, 158A
	GOTO    _LFAB    ; 0898, 2FAB
	BSF     $a,$3    ; 0899, 158A
	GOTO    _LFB9    ; 089A, 2FB9
	BSF     $a,$3    ; 089B, 158A
	GOTO    _LFC7    ; 089C, 2FC7
	BSF     $a,$3    ; 089D, 158A
	GOTO    _LFD5    ; 089E, 2FD5
	BSF     $a,$3    ; 089F, 158A
	GOTO    _LFE3    ; 08A0, 2FE3
	BSF     $a,$3    ; 08A1, 158A
	GOTO    _LF2A    ; 08A2, 2F2A
	BSF     $a,$3    ; 08A3, 158A
	GOTO    _LF33    ; 08A4, 2F33
	BSF     $a,$3    ; 08A5, 158A
	GOTO    _LF3C    ; 08A6, 2F3C
	BSF     $a,$3    ; 08A7, 158A
	GOTO    _LF45    ; 08A8, 2F45
	BSF     $a,$3    ; 08A9, 158A
	GOTO    _LF4E    ; 08AA, 2F4E
	BSF     $a,$3    ; 08AB, 158A
	GOTO    _LF57    ; 08AC, 2F57
	BSF     $a,$3    ; 08AD, 158A
	GOTO    _LF60    ; 08AE, 2F60
	BSF     $a,$3    ; 08AF, 158A
	GOTO    _LF69    ; 08B0, 2F69
	NOP              ; 08B1,   --
	NOP              ; 08B2,   --
	NOP              ; 08B3,   --
	NOP              ; 08B4,   --
	NOP              ; 08B5,   --
	NOP              ; 08B6,   --
	NOP              ; 08B7,   --
	NOP              ; 08B8,   --
	NOP              ; 08B9,   --
	NOP              ; 08BA,   --
	NOP              ; 08BB,   --
	NOP              ; 08BC,   --
	NOP              ; 08BD,   --
	NOP              ; 08BE,   --
	NOP              ; 08BF,   --

.org 0xAA0 
_LAA0:
	NOP              ; 0AA0,   --
	NOP              ; 0AA1,   --
	NOP              ; 0AA2,   --
	NOP              ; 0AA3,   --
	NOP              ; 0AA4,   --
	NOP              ; 0AA5,   --
	NOP              ; 0AA6,   --
	NOP              ; 0AA7,   --
	NOP              ; 0AA8,   --
	NOP              ; 0AA9,   --
	NOP              ; 0AAA,   --
	NOP              ; 0AAB,   --
	NOP              ; 0AAC,   --
	NOP              ; 0AAD,   --
	NOP              ; 0AAE,   --
	NOP              ; 0AAF,   --

.org 0xAB0 
_LAB0:
	CLRWDT           ; 0AB0, 0064

.org 0xAB1 
_LAB1:
	CLRF    $0       ; 0AB1, 0180
	INCF    $4,$1    ; 0AB2, 0A84
	XORWF   $4,$0    ; 0AB3, 0604
	BTFSC   $3,$2    ; 0AB4, 1903
	RETLW   $0       ; 0AB5, 3400
	XORWF   $4,$0    ; 0AB6, 0604
	GOTO    _LAB1    ; 0AB7, 2AB1

.org 0xAB8 
_LAB8:
	MOVLW   $20      ; 0AB8, 3020
	BCF     $3,$7    ; 0AB9, 1383
	MOVWF   $4       ; 0ABA, 0084
	MOVLW   $4b      ; 0ABB, 304B
	BSF     $a,$3    ; 0ABC, 158A
	CALL    _LAB0    ; 0ABD, 22B0
	BSF     $a,$3    ; 0ABE, 158A
	MOVLW   $a0      ; 0ABF, 30A0
	MOVWF   $4       ; 0AC0, 0084
	MOVLW   $e9      ; 0AC1, 30E9
	BSF     $a,$3    ; 0AC2, 158A
	CALL    _LAB0    ; 0AC3, 22B0
	CLRF    $3       ; 0AC4, 0183
	BSF     $a,$3    ; 0AC5, 158A
	GOTO    _LBD8    ; 0AC6, 2BD8

.org 0xAC7 
_LAC7:
	MOVLW   $20      ; 0AC7, 3020
	BCF     $3,$7    ; 0AC8, 1383
	MOVWF   $4       ; 0AC9, 0084

.org 0xACA 
_LACA:
	MOVLW   $80      ; 0ACA, 3080
	SUBWF   $4,$0    ; 0ACB, 0204
	BTFSC   $3,$0    ; 0ACC, 1803
	GOTO    _LAD2    ; 0ACD, 2AD2
	BCF     $3,$6    ; 0ACE, 1303
	CLRF    $0       ; 0ACF, 0180
	INCF    $4,$1    ; 0AD0, 0A84
	GOTO    _LACA    ; 0AD1, 2ACA

.org 0xAD2 
_LAD2:
	MOVLW   $a0      ; 0AD2, 30A0
	MOVWF   $4       ; 0AD3, 0084

.org 0xAD4 
_LAD4:
	MOVLW   $f0      ; 0AD4, 30F0
	SUBWF   $4,$0    ; 0AD5, 0204
	BTFSC   $3,$0    ; 0AD6, 1803
	GOTO    _LADC    ; 0AD7, 2ADC
	BCF     $3,$6    ; 0AD8, 1303
	CLRF    $0       ; 0AD9, 0180
	INCF    $4,$1    ; 0ADA, 0A84
	GOTO    _LAD4    ; 0ADB, 2AD4

.org 0xADC 
_LADC:
	MOVLW   $20      ; 0ADC, 3020
	BSF     $3,$7    ; 0ADD, 1783
	MOVWF   $4       ; 0ADE, 0084

.org 0xADF 
_LADF:
	MOVLW   $60      ; 0ADF, 3060
	SUBWF   $4,$0    ; 0AE0, 0204
	BTFSC   $3,$0    ; 0AE1, 1803
	GOTO    _LAE7    ; 0AE2, 2AE7
	BCF     $3,$6    ; 0AE3, 1303
	CLRF    $0       ; 0AE4, 0180
	INCF    $4,$1    ; 0AE5, 0A84
	GOTO    _LADF    ; 0AE6, 2ADF

.org 0xAE7 
_LAE7:
	BCF     $3,$7    ; 0AE7, 1383
	BCF     $3,$5    ; 0AE8, 1283
	BCF     $3,$6    ; 0AE9, 1303
	RET              ; 0AEA, 0008

.org 0xAEB 
_LAEB:
	BTFSS   $2d,$2   ; 0AEB, 1D2D
	GOTO    _LB04    ; 0AEC, 2B04
	BTFSC   $5,$6    ; 0AED, 1B05
	GOTO    _LB01    ; 0AEE, 2B01
	BSF     $3,$5    ; 0AEF, 1683
	MOVLW   $3       ; 0AF0, 3003
	INCF    $20,$1   ; 0AF1, 0AA0
	SUBWF   $20,$0   ; 0AF2, 0220
	BTFSS   $3,$0    ; 0AF3, 1C03
	RET              ; 0AF4, 0008
	BCF     $3,$5    ; 0AF5, 1283
	BCF     $2d,$2   ; 0AF6, 112D
	BCF     $2d,$3   ; 0AF7, 11AD
	BSF     $3,$5    ; 0AF8, 1683
	CLRF    $20      ; 0AF9, 01A0
	BCF     $3,$5    ; 0AFA, 1283
	MOVLW   $7       ; 0AFB, 3007
	BSF     $3,$6    ; 0AFC, 1703
	CLRF    $5c      ; 0AFD, 01DC
	CLRF    $5d      ; 0AFE, 01DD
	BCF     $a,$3    ; 0AFF, 118A
	GOTO    _L2FB    ; 0B00, 2AFB

.org 0xB01 
_LB01:
	BSF     $3,$5    ; 0B01, 1683
	CLRF    $20      ; 0B02, 01A0
	RET              ; 0B03, 0008

.org 0xB04 
_LB04:
	BTFSS   $5,$6    ; 0B04, 1F05
	GOTO    _LB01    ; 0B05, 2B01
	BSF     $3,$5    ; 0B06, 1683
	MOVLW   $3       ; 0B07, 3003
	INCF    $20,$1   ; 0B08, 0AA0
	SUBWF   $20,$0   ; 0B09, 0220
	BTFSS   $3,$0    ; 0B0A, 1C03
	RET              ; 0B0B, 0008
	MOVLW   $6       ; 0B0C, 3006
	BCF     $a,$3    ; 0B0D, 118A
	CALL    _L2FB    ; 0B0E, 22FB
	BSF     $2d,$2   ; 0B0F, 152D
	BCF     $2d,$3   ; 0B10, 11AD
	BSF     $3,$5    ; 0B11, 1683
	CLRF    $20      ; 0B12, 01A0
	BCF     $3,$5    ; 0B13, 1283
	BSF     $3,$6    ; 0B14, 1703
	CLRF    $5a      ; 0B15, 01DA
	CLRF    $5b      ; 0B16, 01DB
	RET              ; 0B17, 0008

.org 0xB18 
_LB18:
	BCF     $3,$5    ; 0B18, 1283
	BCF     $3,$6    ; 0B19, 1303
	BTFSS   $2d,$2   ; 0B1A, 1D2D
	GOTO    _LB51    ; 0B1B, 2B51
	BTFSC   $2d,$3   ; 0B1C, 19AD
	GOTO    _LB46    ; 0B1D, 2B46
	MOVLW   $f       ; 0B1E, 300F
	SUBWF   $3b,$0   ; 0B1F, 023B
	MOVLW   $6e      ; 0B20, 306E
	BTFSC   $3,$2    ; 0B21, 1903
	SUBWF   $3a,$0   ; 0B22, 023A
	BTFSS   $3,$0    ; 0B23, 1C03
	GOTO    _LB42    ; 0B24, 2B42
	MOVLW   $10      ; 0B25, 3010
	SUBWF   $3b,$0   ; 0B26, 023B
	MOVLW   $7c      ; 0B27, 307C
	BTFSC   $3,$2    ; 0B28, 1903
	SUBWF   $3a,$0   ; 0B29, 023A
	BTFSS   $3,$0    ; 0B2A, 1C03
	BTFSC   $5,$6    ; 0B2B, 1B05
	GOTO    _LB31    ; 0B2C, 2B31
	MOVLW   $64      ; 0B2D, 3064
	SUBWF   $44,$0   ; 0B2E, 0244
	BTFSS   $3,$0    ; 0B2F, 1C03
	GOTO    _LB42    ; 0B30, 2B42

.org 0xB31 
_LB31:
	MOVLW   $0       ; 0B31, 3000
	BSF     $3,$6    ; 0B32, 1703
	SUBWF   $5b,$0   ; 0B33, 025B
	MOVLW   $14      ; 0B34, 3014
	BTFSC   $3,$2    ; 0B35, 1903
	SUBWF   $5a,$0   ; 0B36, 025A
	BTFSC   $3,$0    ; 0B37, 1803
	GOTO    _LB3D    ; 0B38, 2B3D
	INCF    $5a,$1   ; 0B39, 0ADA
	BTFSC   $3,$2    ; 0B3A, 1903
	INCF    $5b,$1   ; 0B3B, 0ADB
	RET              ; 0B3C, 0008

.org 0xB3D 
_LB3D:
	CLRF    $5a      ; 0B3D, 01DA
	CLRF    $5b      ; 0B3E, 01DB
	BCF     $3,$6    ; 0B3F, 1303
	BSF     $2d,$3   ; 0B40, 15AD
	RET              ; 0B41, 0008

.org 0xB42 
_LB42:
	BSF     $3,$6    ; 0B42, 1703
	CLRF    $5a      ; 0B43, 01DA
	CLRF    $5b      ; 0B44, 01DB
	RET              ; 0B45, 0008

.org 0xB46 
_LB46:
	MOVF    $2a,$0   ; 0B46, 082A
	XORLW   $5       ; 0B47, 3A05
	BTFSS   $3,$2    ; 0B48, 1D03
	RET              ; 0B49, 0008
	MOVF    $44,$0   ; 0B4A, 0844
	XORLW   $64      ; 0B4B, 3A64
	BTFSS   $3,$2    ; 0B4C, 1D03
	RET              ; 0B4D, 0008
	MOVF    $44,$0   ; 0B4E, 0844
	MOVWF   $36      ; 0B4F, 00B6
	GOTO    _LB42    ; 0B50, 2B42

.org 0xB51 
_LB51:
	MOVF    $29,$1   ; 0B51, 08A9
	BTFSS   $3,$2    ; 0B52, 1D03
	RET              ; 0B53, 0008
	MOVLW   $1       ; 0B54, 3001
	BSF     $3,$6    ; 0B55, 1703
	SUBWF   $5d,$0   ; 0B56, 025D
	MOVLW   $2c      ; 0B57, 302C
	BTFSC   $3,$2    ; 0B58, 1903
	SUBWF   $5c,$0   ; 0B59, 025C
	BTFSC   $3,$0    ; 0B5A, 1803
	GOTO    _LB60    ; 0B5B, 2B60
	INCF    $5c,$1   ; 0B5C, 0ADC
	BTFSC   $3,$2    ; 0B5D, 1903
	INCF    $5d,$1   ; 0B5E, 0ADD
	RET              ; 0B5F, 0008

.org 0xB60 
_LB60:
	BCF     $3,$6    ; 0B60, 1303
	BCF     $2d,$0   ; 0B61, 102D
	RET              ; 0B62, 0008

.org 0xB63 
_LB63:
	CLRF    $54      ; 0B63, 01D4
	BTFSS   $4e,$7   ; 0B64, 1FCE
	GOTO    _LB73    ; 0B65, 2B73
	COMF    $4b,$1   ; 0B66, 09CB
	COMF    $4c,$1   ; 0B67, 09CC
	COMF    $4d,$1   ; 0B68, 09CD
	COMF    $4e,$1   ; 0B69, 09CE
	INCF    $4b,$1   ; 0B6A, 0ACB
	BTFSC   $3,$2    ; 0B6B, 1903
	INCF    $4c,$1   ; 0B6C, 0ACC
	BTFSC   $3,$2    ; 0B6D, 1903
	INCF    $4d,$1   ; 0B6E, 0ACD
	BTFSC   $3,$2    ; 0B6F, 1903
	INCF    $4e,$1   ; 0B70, 0ACE
	CLRF    $54      ; 0B71, 01D4
	INCF    $54,$1   ; 0B72, 0AD4

.org 0xB73 
_LB73:
	BTFSS   $52,$7   ; 0B73, 1FD2
	GOTO    _LB82    ; 0B74, 2B82
	COMF    $4f,$1   ; 0B75, 09CF
	COMF    $50,$1   ; 0B76, 09D0
	COMF    $51,$1   ; 0B77, 09D1
	COMF    $52,$1   ; 0B78, 09D2
	INCF    $4f,$1   ; 0B79, 0ACF
	BTFSC   $3,$2    ; 0B7A, 1903
	INCF    $50,$1   ; 0B7B, 0AD0
	BTFSC   $3,$2    ; 0B7C, 1903
	INCF    $51,$1   ; 0B7D, 0AD1
	BTFSC   $3,$2    ; 0B7E, 1903
	INCF    $52,$1   ; 0B7F, 0AD2
	MOVLW   $1       ; 0B80, 3001
	XORWF   $54,$1   ; 0B81, 06D4

.org 0xB82 
_LB82:
	CLRF    $55      ; 0B82, 01D5
	CLRF    $56      ; 0B83, 01D6
	CLRF    $57      ; 0B84, 01D7
	CLRF    $58      ; 0B85, 01D8
	MOVF    $4e,$0   ; 0B86, 084E
	IORWF   $4d,$0   ; 0B87, 044D
	IORWF   $4c,$0   ; 0B88, 044C
	IORWF   $4b,$0   ; 0B89, 044B
	BTFSC   $3,$2    ; 0B8A, 1903
	GOTO    _LBC1    ; 0B8B, 2BC1
	CLRF    $53      ; 0B8C, 01D3

.org 0xB8D 
_LB8D:
	INCF    $53,$1   ; 0B8D, 0AD3
	BTFSC   $4e,$7   ; 0B8E, 1BCE
	GOTO    _LB96    ; 0B8F, 2B96
	BCF     $3,$0    ; 0B90, 1003
	RLF     $4b,$1   ; 0B91, 0DCB
	RLF     $4c,$1   ; 0B92, 0DCC
	RLF     $4d,$1   ; 0B93, 0DCD
	RLF     $4e,$1   ; 0B94, 0DCE
	GOTO    _LB8D    ; 0B95, 2B8D

.org 0xB96 
_LB96:
	BCF     $3,$0    ; 0B96, 1003
	RLF     $55,$1   ; 0B97, 0DD5
	RLF     $56,$1   ; 0B98, 0DD6
	RLF     $57,$1   ; 0B99, 0DD7
	RLF     $58,$1   ; 0B9A, 0DD8
	MOVF    $4e,$0   ; 0B9B, 084E
	SUBWF   $52,$0   ; 0B9C, 0252
	BTFSS   $3,$2    ; 0B9D, 1D03
	GOTO    _LBA9    ; 0B9E, 2BA9
	MOVF    $4d,$0   ; 0B9F, 084D
	SUBWF   $51,$0   ; 0BA0, 0251
	BTFSS   $3,$2    ; 0BA1, 1D03
	GOTO    _LBA9    ; 0BA2, 2BA9
	MOVF    $4c,$0   ; 0BA3, 084C
	SUBWF   $50,$0   ; 0BA4, 0250
	BTFSS   $3,$2    ; 0BA5, 1D03
	GOTO    _LBA9    ; 0BA6, 2BA9
	MOVF    $4b,$0   ; 0BA7, 084B
	SUBWF   $4f,$0   ; 0BA8, 024F

.org 0xBA9 
_LBA9:
	BTFSS   $3,$0    ; 0BA9, 1C03
	GOTO    _LBBB    ; 0BAA, 2BBB
	MOVF    $4b,$0   ; 0BAB, 084B
	SUBWF   $4f,$1   ; 0BAC, 02CF
	MOVF    $4c,$0   ; 0BAD, 084C
	BTFSS   $3,$0    ; 0BAE, 1C03
	INCFSZ  $4c,$0   ; 0BAF, 0F4C
	SUBWF   $50,$1   ; 0BB0, 02D0
	MOVF    $4d,$0   ; 0BB1, 084D
	BTFSS   $3,$0    ; 0BB2, 1C03
	INCFSZ  $4d,$0   ; 0BB3, 0F4D
	SUBWF   $51,$1   ; 0BB4, 02D1
	MOVF    $4e,$0   ; 0BB5, 084E
	BTFSS   $3,$0    ; 0BB6, 1C03
	INCFSZ  $4e,$0   ; 0BB7, 0F4E
	SUBWF   $52,$1   ; 0BB8, 02D2
	BSF     $55,$0   ; 0BB9, 1455
	BCF     $3,$0    ; 0BBA, 1003

.org 0xBBB 
_LBBB:
	RRF     $4e,$1   ; 0BBB, 0CCE
	RRF     $4d,$1   ; 0BBC, 0CCD
	RRF     $4c,$1   ; 0BBD, 0CCC
	RRF     $4b,$1   ; 0BBE, 0CCB
	DECFSZ  $53,$1   ; 0BBF, 0BD3
	GOTO    _LB96    ; 0BC0, 2B96

.org 0xBC1 
_LBC1:
	MOVF    $54,$0   ; 0BC1, 0854
	BTFSC   $3,$2    ; 0BC2, 1903
	GOTO    _LBCF    ; 0BC3, 2BCF
	COMF    $55,$1   ; 0BC4, 09D5
	COMF    $56,$1   ; 0BC5, 09D6
	COMF    $57,$1   ; 0BC6, 09D7
	COMF    $58,$1   ; 0BC7, 09D8
	INCF    $55,$1   ; 0BC8, 0AD5
	BTFSC   $3,$2    ; 0BC9, 1903
	INCF    $56,$1   ; 0BCA, 0AD6
	BTFSC   $3,$2    ; 0BCB, 1903
	INCF    $57,$1   ; 0BCC, 0AD7
	BTFSC   $3,$2    ; 0BCD, 1903
	INCF    $58,$1   ; 0BCE, 0AD8

.org 0xBCF 
_LBCF:
	MOVF    $58,$0   ; 0BCF, 0858
	MOVWF   $4e      ; 0BD0, 00CE
	MOVF    $57,$0   ; 0BD1, 0857
	MOVWF   $4d      ; 0BD2, 00CD
	MOVF    $56,$0   ; 0BD3, 0856
	MOVWF   $4c      ; 0BD4, 00CC
	MOVF    $55,$0   ; 0BD5, 0855
	MOVWF   $4b      ; 0BD6, 00CB
	RET              ; 0BD7, 0008

.org 0xBD8 
_LBD8:
	CLRWDT           ; 0BD8, 0064
	CLRF    $b       ; 0BD9, 018B
	BCF     $3,$5    ; 0BDA, 1283
	BCF     $3,$6    ; 0BDB, 1303
	CLRF    $d       ; 0BDC, 018D
	BSF     $a,$3    ; 0BDD, 158A
	CALL    _LCA8    ; 0BDE, 24A8
	BSF     $a,$3    ; 0BDF, 158A
	BSF     $a,$3    ; 0BE0, 158A
	CALL    _LCE1    ; 0BE1, 24E1
	BSF     $a,$3    ; 0BE2, 158A
	BSF     $a,$3    ; 0BE3, 158A
	CALL    _LD08    ; 0BE4, 2508
	BSF     $a,$3    ; 0BE5, 158A
	BSF     $a,$3    ; 0BE6, 158A
	CALL    _LD23    ; 0BE7, 2523
	BSF     $a,$3    ; 0BE8, 158A
	BSF     $3,$6    ; 0BE9, 1703
	MOVF    $65,$0   ; 0BEA, 0865
	XORLW   $a5      ; 0BEB, 3AA5
	MOVLW   $5a      ; 0BEC, 305A
	BTFSC   $3,$2    ; 0BED, 1903
	XORWF   $64,$0   ; 0BEE, 0664
	BTFSS   $3,$2    ; 0BEF, 1D03
	GOTO    _LC0C    ; 0BF0, 2C0C
	BCF     $3,$6    ; 0BF1, 1303
	BSF     $2e,$7   ; 0BF2, 17AE
	BCF     $2e,$0   ; 0BF3, 102E
	BCF     $a,$3    ; 0BF4, 118A
	CALL    _L221    ; 0BF5, 2221
	BSF     $a,$3    ; 0BF6, 158A
	MOVLW   $a       ; 0BF7, 300A
	BCF     $a,$3    ; 0BF8, 118A
	CALL    _L2FB    ; 0BF9, 22FB
	BSF     $a,$3    ; 0BFA, 158A
	BTFSC   $5,$6    ; 0BFB, 1B05
	BSF     $2d,$2   ; 0BFC, 152D
	BTFSS   $6,$2    ; 0BFD, 1D06
	GOTO    _LC01    ; 0BFE, 2C01
	BSF     $3,$5    ; 0BFF, 1683
	BSF     $22,$0   ; 0C00, 1422

.org 0xC01 
_LC01:
	BSF     $3,$5    ; 0C01, 1683
	CLRF    $24      ; 0C02, 01A4
	CLRF    $25      ; 0C03, 01A5
	BCF     $3,$5    ; 0C04, 1283
	BCF     $2d,$4   ; 0C05, 122D
	BSF     $3,$6    ; 0C06, 1703
	CLRF    $5c      ; 0C07, 01DC
	CLRF    $5d      ; 0C08, 01DD
	BCF     $3,$6    ; 0C09, 1303
	BSF     $2d,$0   ; 0C0A, 142D
	GOTO    _LC22    ; 0C0B, 2C22

.org 0xC0C 
_LC0C:
	BSF     $a,$3    ; 0C0C, 158A
	CALL    _LAC7    ; 0C0D, 22C7
	BSF     $a,$3    ; 0C0E, 158A
	MOVLW   $0       ; 0C0F, 3000
	BCF     $3,$6    ; 0C10, 1303
	CLRF    $39      ; 0C11, 01B9
	BSF     $3,$6    ; 0C12, 1703
	MOVWF   $63      ; 0C13, 00E3
	MOVLW   $3       ; 0C14, 3003
	MOVWF   $62      ; 0C15, 00E2
	MOVLW   $e4      ; 0C16, 30E4
	MOVWF   $61      ; 0C17, 00E1
	MOVLW   $18      ; 0C18, 3018
	MOVWF   $60      ; 0C19, 00E0
	MOVLW   $64      ; 0C1A, 3064
	BCF     $3,$6    ; 0C1B, 1303
	MOVWF   $2f      ; 0C1C, 00AF
	MOVLW   $1       ; 0C1D, 3001
	BCF     $a,$3    ; 0C1E, 118A
	CALL    _L2FB    ; 0C1F, 22FB
	BSF     $a,$3    ; 0C20, 158A
	BSF     $2d,$4   ; 0C21, 162D

.org 0xC22 
_LC22:
	BTFSS   $2d,$6   ; 0C22, 1F2D
	GOTO    _LC7C    ; 0C23, 2C7C
	BCF     $2d,$6   ; 0C24, 132D
	CLRWDT           ; 0C25, 0064
	BCF     $3,$5    ; 0C26, 1283
	MOVLW   $e       ; 0C27, 300E
	BCF     $3,$6    ; 0C28, 1303
	CLRF    $4b      ; 0C29, 01CB
	INCF    $4b,$1   ; 0C2A, 0ACB
	BCF     $a,$3    ; 0C2B, 118A
	CALL    _L1B7    ; 0C2C, 21B7
	BSF     $a,$3    ; 0C2D, 158A
	MOVF    $4c,$0   ; 0C2E, 084C
	MOVWF   $3b      ; 0C2F, 00BB
	MOVF    $4b,$0   ; 0C30, 084B
	MOVWF   $3a      ; 0C31, 00BA
	MOVWF   $4b      ; 0C32, 00CB
	MOVF    $3b,$0   ; 0C33, 083B
	MOVWF   $4c      ; 0C34, 00CC
	MOVLW   $4b      ; 0C35, 304B
	CLRF    $4d      ; 0C36, 01CD
	CLRF    $4e      ; 0C37, 01CE
	CLRF    $52      ; 0C38, 01D2
	MOVWF   $51      ; 0C39, 00D1
	CLRF    $50      ; 0C3A, 01D0
	CLRF    $4f      ; 0C3B, 01CF
	BSF     $a,$3    ; 0C3C, 158A
	CALL    _LB63    ; 0C3D, 2363
	BSF     $a,$3    ; 0C3E, 158A
	MOVF    $4c,$0   ; 0C3F, 084C
	MOVWF   $3b      ; 0C40, 00BB
	MOVF    $4b,$0   ; 0C41, 084B
	MOVWF   $3a      ; 0C42, 00BA
	BSF     $a,$3    ; 0C43, 158A
	CALL    _LD40    ; 0C44, 2540
	BSF     $a,$3    ; 0C45, 158A
	BCF     $3,$5    ; 0C46, 1283
	BCF     $3,$6    ; 0C47, 1303
	BTFSC   $2d,$4   ; 0C48, 1A2D
	GOTO    _LC79    ; 0C49, 2C79
	BTFSS   $2e,$7   ; 0C4A, 1FAE
	GOTO    _LC70    ; 0C4B, 2C70
	MOVLW   $a       ; 0C4C, 300A
	SUBWF   $3b,$0   ; 0C4D, 023B
	MOVLW   $f0      ; 0C4E, 30F0
	BTFSC   $3,$2    ; 0C4F, 1903
	SUBWF   $3a,$0   ; 0C50, 023A
	BTFSC   $3,$0    ; 0C51, 1803
	GOTO    _LC55    ; 0C52, 2C55
	INCF    $35,$1   ; 0C53, 0AB5
	GOTO    _LC56    ; 0C54, 2C56

.org 0xC55 
_LC55:
	CLRF    $35      ; 0C55, 01B5

.org 0xC56 
_LC56:
	MOVLW   $ea      ; 0C56, 30EA
	BSF     $3,$6    ; 0C57, 1703
	SUBWF   $5f,$0   ; 0C58, 025F
	MOVLW   $60      ; 0C59, 3060
	BTFSC   $3,$2    ; 0C5A, 1903
	SUBWF   $5e,$0   ; 0C5B, 025E
	BTFSC   $3,$0    ; 0C5C, 1803
	GOTO    _LC76    ; 0C5D, 2C76
	INCF    $5e,$1   ; 0C5E, 0ADE
	BTFSC   $3,$2    ; 0C5F, 1903
	INCF    $5f,$1   ; 0C60, 0ADF
	MOVLW   $0       ; 0C61, 3000
	SUBWF   $5f,$0   ; 0C62, 025F
	MOVLW   $2       ; 0C63, 3002
	BTFSC   $3,$2    ; 0C64, 1903
	SUBWF   $5e,$0   ; 0C65, 025E
	BTFSS   $3,$0    ; 0C66, 1C03
	GOTO    _LC76    ; 0C67, 2C76
	BCF     $3,$6    ; 0C68, 1303
	BTFSS   $2e,$1   ; 0C69, 1CAE
	GOTO    _LC76    ; 0C6A, 2C76
	MOVF    $3b,$0   ; 0C6B, 083B
	MOVWF   $3d      ; 0C6C, 00BD
	MOVF    $3a,$0   ; 0C6D, 083A
	MOVWF   $3c      ; 0C6E, 00BC
	GOTO    _LC76    ; 0C6F, 2C76

.org 0xC70 
_LC70:
	BSF     $a,$3    ; 0C70, 158A
	CALL    _LAEB    ; 0C71, 22EB
	BSF     $a,$3    ; 0C72, 158A
	BSF     $a,$3    ; 0C73, 158A
	CALL    _LB18    ; 0C74, 2318
	BSF     $a,$3    ; 0C75, 158A

.org 0xC76 
_LC76:
	BCF     $a,$3    ; 0C76, 118A
	CALL    _L667    ; 0C77, 2667
	BSF     $a,$3    ; 0C78, 158A

.org 0xC79 
_LC79:
	BCF     $a,$3    ; 0C79, 118A
	CALL    _L600    ; 0C7A, 2600
	BSF     $a,$3    ; 0C7B, 158A

.org 0xC7C 
_LC7C:
	BCF     $3,$5    ; 0C7C, 1283
	BTFSS   $2d,$0   ; 0C7D, 1C2D
	GOTO    _LC83    ; 0C7E, 2C83
	BCF     $a,$3    ; 0C7F, 118A
	CALL    _L13     ; 0C80, 2013
	BSF     $a,$3    ; 0C81, 158A
	GOTO    _LC22    ; 0C82, 2C22

.org 0xC83 
_LC83:
	BSF     $a,$3    ; 0C83, 158A
	CALL    _LC87    ; 0C84, 2487
	BSF     $a,$3    ; 0C85, 158A
	GOTO    _LC22    ; 0C86, 2C22

.org 0xC87 
_LC87:
	MOVF    $29,$1   ; 0C87, 08A9
	BTFSC   $3,$2    ; 0C88, 1903
	BTFSS   $2b,$5   ; 0C89, 1EAB
	RET              ; 0C8A, 0008
	BTFSS   $2d,$5   ; 0C8B, 1EAD
	RET              ; 0C8C, 0008
	CALL    _LCB7    ; 0C8D, 24B7
	BSF     $a,$3    ; 0C8E, 158A
	MOVLW   $2       ; 0C8F, 3002
	BSF     $3,$6    ; 0C90, 1703
	MOVWF   $5c      ; 0C91, 00DC
	CLRF    $5d      ; 0C92, 01DD

.org 0xC93 
_LC93:
	BSF     $3,$6    ; 0C93, 1703
	MOVF    $5d,$0   ; 0C94, 085D
	IORWF   $5c,$0   ; 0C95, 045C
	BCF     $3,$6    ; 0C96, 1303
	BTFSC   $3,$2    ; 0C97, 1903
	GOTO    _LCA6    ; 0C98, 2CA6
	BTFSS   $2d,$6   ; 0C99, 1F2D
	GOTO    _LC93    ; 0C9A, 2C93
	BCF     $2d,$6   ; 0C9B, 132D
	CLRWDT           ; 0C9C, 0064
	MOVLW   $1       ; 0C9D, 3001
	BCF     $3,$5    ; 0C9E, 1283
	BSF     $3,$6    ; 0C9F, 1703
	SUBWF   $5c,$1   ; 0CA0, 02DC
	MOVLW   $0       ; 0CA1, 3000
	BTFSS   $3,$0    ; 0CA2, 1C03
	DECF    $5d,$1   ; 0CA3, 03DD
	SUBWF   $5d,$1   ; 0CA4, 02DD
	GOTO    _LC93    ; 0CA5, 2C93

.org 0xCA6 
_LCA6:
	BSF     $2d,$0   ; 0CA6, 142D
	RET              ; 0CA7, 0008

.org 0xCA8 
_LCA8:
	MOVF    $f,$0    ; 0CA8, 080F
	ANDLW   $fc      ; 0CA9, 39FC
	IORLW   $3       ; 0CAA, 3803
	MOVWF   $f       ; 0CAB, 008F
	CALL    _LCD0    ; 0CAC, 24D0
	BSF     $a,$3    ; 0CAD, 158A
	BCF     $3,$5    ; 0CAE, 1283
	BCF     $3,$6    ; 0CAF, 1303
	BCF     $f,$3    ; 0CB0, 118F
	CALL    _LCD0    ; 0CB1, 24D0
	BSF     $a,$3    ; 0CB2, 158A
	BCF     $3,$5    ; 0CB3, 1283
	BCF     $3,$6    ; 0CB4, 1303
	BSF     $f,$2    ; 0CB5, 150F
	GOTO    _LCD0    ; 0CB6, 2CD0

.org 0xCB7 
_LCB7:
	BTFSC   $2d,$4   ; 0CB7, 1A2D
	BCF     $2d,$4   ; 0CB8, 122D
	BTFSC   $5,$6    ; 0CB9, 1B05
	RET              ; 0CBA, 0008
	BSF     $11,$6   ; 0CBB, 1711
	BSF     $14,$6   ; 0CBC, 1714
	BSF     $15,$4   ; 0CBD, 1615
	CALL    _LCE1    ; 0CBE, 24E1
	BSF     $a,$3    ; 0CBF, 158A
	CLRF    $b       ; 0CC0, 018B
	CLRF    $d       ; 0CC1, 018D
	BSF     $f,$4    ; 0CC2, 160F
	CALL    _LCD0    ; 0CC3, 24D0
	BSF     $a,$3    ; 0CC4, 158A
	SLEEP            ; 0CC5, 0063
	BCF     $3,$5    ; 0CC6, 1283
	BCF     $3,$6    ; 0CC7, 1303
	BCF     $f,$4    ; 0CC8, 120F
	CALL    _LCD0    ; 0CC9, 24D0
	BSF     $a,$3    ; 0CCA, 158A
	CALL    _LD08    ; 0CCB, 2508
	BSF     $a,$3    ; 0CCC, 158A
	CALL    _LCE1    ; 0CCD, 24E1
	BSF     $a,$3    ; 0CCE, 158A
	GOTO    _LD23    ; 0CCF, 2D23

.org 0xCD0 
_LCD0:
	NOP              ; 0CD0, 0000
	NOP              ; 0CD1, 0000
	NOP              ; 0CD2, 0000
	NOP              ; 0CD3, 0000
	NOP              ; 0CD4, 0000
	NOP              ; 0CD5, 0000
	NOP              ; 0CD6, 0000
	NOP              ; 0CD7, 0000
	NOP              ; 0CD8, 0000
	NOP              ; 0CD9, 0000
	NOP              ; 0CDA, 0000
	NOP              ; 0CDB, 0000
	NOP              ; 0CDC, 0000
	NOP              ; 0CDD, 0000
	NOP              ; 0CDE, 0000
	NOP              ; 0CDF, 0000
	RET              ; 0CE0, 0008

.org 0xCE1 
_LCE1:
	MOVLW   $fc      ; 0CE1, 30FC
	BCF     $3,$5    ; 0CE2, 1283
	BCF     $3,$6    ; 0CE3, 1303
	MOVWF   $5       ; 0CE4, 0085
	MOVLW   $89      ; 0CE5, 3089
	BSF     $3,$5    ; 0CE6, 1683
	MOVWF   $8       ; 0CE7, 0088
	MOVLW   $36      ; 0CE8, 3036
	MOVWF   $7       ; 0CE9, 0087
	MOVWF   $6       ; 0CEA, 0086
	MOVLW   $11      ; 0CEB, 3011
	MOVWF   $5       ; 0CEC, 0085
	MOVLW   $4       ; 0CED, 3004
	BCF     $3,$5    ; 0CEE, 1283
	MOVWF   $6       ; 0CEF, 0086
	MOVLW   $66      ; 0CF0, 3066
	BSF     $3,$5    ; 0CF1, 1683
	MOVWF   $f       ; 0CF2, 008F
	MOVWF   $e       ; 0CF3, 008E
	MOVLW   $f0      ; 0CF4, 30F0
	MOVWF   $d       ; 0CF5, 008D
	MOVLW   $66      ; 0CF6, 3066
	MOVWF   $c       ; 0CF7, 008C
	BCF     $3,$5    ; 0CF8, 1283
	CLRF    $7       ; 0CF9, 0187
	BSF     $3,$5    ; 0CFA, 1683
	MOVWF   $10      ; 0CFB, 0090
	MOVLW   $d8      ; 0CFC, 30D8
	BCF     $3,$5    ; 0CFD, 1283
	BSF     $3,$6    ; 0CFE, 1703
	ANDWF   $5,$1    ; 0CFF, 0585
	MOVLW   $f8      ; 0D00, 30F8
	BCF     $3,$6    ; 0D01, 1303
	ANDWF   $18,$1   ; 0D02, 0598
	MOVLW   $5       ; 0D03, 3005
	IORWF   $18,$1   ; 0D04, 0498
	MOVLW   $3f      ; 0D05, 303F
	ANDWF   $19,$1   ; 0D06, 0599
	RET              ; 0D07, 0008

.org 0xD08 
_LD08:
	BCF     $3,$5    ; 0D08, 1283
	MOVLW   $f0      ; 0D09, 30F0
	BCF     $3,$6    ; 0D0A, 1303
	BCF     $d,$0    ; 0D0B, 100D
	BCF     $e,$0    ; 0D0C, 100E
	ANDWF   $16,$1   ; 0D0D, 0596
	MOVLW   $3       ; 0D0E, 3003
	IORWF   $16,$1   ; 0D0F, 0496
	BSF     $16,$6   ; 0D10, 1716
	BSF     $16,$5   ; 0D11, 1696
	BSF     $16,$4   ; 0D12, 1616
	MOVLW   $f3      ; 0D13, 30F3
	BSF     $3,$5    ; 0D14, 1683
	ANDWF   $1,$1    ; 0D15, 0581
	MOVLW   $c       ; 0D16, 300C
	IORWF   $1,$1    ; 0D17, 0481
	CLRWDT           ; 0D18, 0064
	BCF     $b,$3    ; 0D19, 118B
	BCF     $3,$5    ; 0D1A, 1283
	MOVLW   $fc      ; 0D1B, 30FC
	BCF     $3,$6    ; 0D1C, 1303
	BCF     $c,$3    ; 0D1D, 118C
	BSF     $3,$5    ; 0D1E, 1683
	ANDWF   $1,$1    ; 0D1F, 0581
	MOVLW   $3       ; 0D20, 3003
	IORWF   $1,$1    ; 0D21, 0481
	RET              ; 0D22, 0008

.org 0xD23 
_LD23:
	BCF     $3,$5    ; 0D23, 1283
	BSF     $11,$6   ; 0D24, 1711
	BCF     $b,$4    ; 0D25, 120B
	BCF     $c,$4    ; 0D26, 120C
	BCF     $11,$4   ; 0D27, 1211
	MOVLW   $f0      ; 0D28, 30F0
	ANDWF   $11,$1   ; 0D29, 0591
	BSF     $11,$0   ; 0D2A, 1411
	MOVLW   $9c      ; 0D2B, 309C
	MOVWF   $1       ; 0D2C, 0081
	MOVWF   $10      ; 0D2D, 0090
	BSF     $14,$6   ; 0D2E, 1714
	MOVLW   $f0      ; 0D2F, 30F0
	BCF     $b,$5    ; 0D30, 128B
	BCF     $c,$5    ; 0D31, 128C
	ANDWF   $14,$1   ; 0D32, 0594
	MOVLW   $5       ; 0D33, 3005
	IORWF   $14,$1   ; 0D34, 0494
	MOVLW   $83      ; 0D35, 3083
	MOVWF   $12      ; 0D36, 0092
	MOVWF   $13      ; 0D37, 0093
	BSF     $15,$4   ; 0D38, 1615
	MOVLW   $fc      ; 0D39, 30FC
	BCF     $b,$6    ; 0D3A, 130B
	BCF     $c,$6    ; 0D3B, 130C
	ANDWF   $15,$1   ; 0D3C, 0595
	BSF     $b,$4    ; 0D3D, 160B
	BCF     $11,$6   ; 0D3E, 1311
	RET              ; 0D3F, 0008

.org 0xD40 
_LD40:
	BTFSS   $2d,$5   ; 0D40, 1EAD
	GOTO    _LE1C    ; 0D41, 2E1C
	BTFSS   $2e,$7   ; 0D42, 1FAE
	GOTO    _LD49    ; 0D43, 2D49
	CLRF    $45      ; 0D44, 01C5
	CLRF    $46      ; 0D45, 01C6
	CLRF    $47      ; 0D46, 01C7
	CLRF    $48      ; 0D47, 01C8
	RET              ; 0D48, 0008

.org 0xD49 
_LD49:
	BTFSS   $2d,$2   ; 0D49, 1D2D
	GOTO    _LDAB    ; 0D4A, 2DAB
	MOVF    $3a,$0   ; 0D4B, 083A
	ADDLW   $14      ; 0D4C, 3E14
	MOVWF   $4b      ; 0D4D, 00CB
	MOVF    $3b,$0   ; 0D4E, 083B
	BTFSC   $3,$0    ; 0D4F, 1803
	ADDLW   $1       ; 0D50, 3E01
	MOVWF   $4c      ; 0D51, 00CC
	MOVF    $4a,$0   ; 0D52, 084A
	SUBWF   $4c,$0   ; 0D53, 024C
	BTFSS   $3,$2    ; 0D54, 1D03
	GOTO    _LD58    ; 0D55, 2D58
	MOVF    $49,$0   ; 0D56, 0849
	SUBWF   $4b,$0   ; 0D57, 024B

.org 0xD58 
_LD58:
	BTFSS   $3,$0    ; 0D58, 1C03
	BTFSC   $2d,$1   ; 0D59, 18AD
	GOTO    _LD66    ; 0D5A, 2D66
	CLRF    $45      ; 0D5B, 01C5
	CLRF    $46      ; 0D5C, 01C6
	CALL    _LE4D    ; 0D5D, 264D
	BSF     $a,$3    ; 0D5E, 158A
	BTFSC   $3,$2    ; 0D5F, 1903
	SUBWF   $47,$0   ; 0D60, 0247
	BTFSS   $3,$0    ; 0D61, 1C03
	GOTO    _LD8A    ; 0D62, 2D8A
	CLRF    $47      ; 0D63, 01C7
	CLRF    $48      ; 0D64, 01C8
	GOTO    _LD8A    ; 0D65, 2D8A

.org 0xD66 
_LD66:
	CLRF    $47      ; 0D66, 01C7
	CLRF    $48      ; 0D67, 01C8
	BSF     $2d,$1   ; 0D68, 14AD
	BTFSC   $2d,$3   ; 0D69, 19AD
	GOTO    _LD84    ; 0D6A, 2D84
	MOVLW   $f       ; 0D6B, 300F
	SUBWF   $3b,$0   ; 0D6C, 023B
	MOVLW   $b4      ; 0D6D, 30B4
	BTFSC   $3,$2    ; 0D6E, 1903
	SUBWF   $3a,$0   ; 0D6F, 023A
	BTFSC   $3,$0    ; 0D70, 1803
	GOTO    _LD84    ; 0D71, 2D84
	BCF     $3,$0    ; 0D72, 1003
	RLF     $44,$0   ; 0D73, 0D44
	CALL    _LE46    ; 0D74, 2646
	BCF     $a,$3    ; 0D75, 118A
	CALL    _L700    ; 0D76, 2700
	BSF     $a,$3    ; 0D77, 158A
	MOVWF   $4b      ; 0D78, 00CB
	BCF     $a,$3    ; 0D79, 118A
	CALL    _L700    ; 0D7A, 2700
	BSF     $a,$3    ; 0D7B, 158A
	MOVWF   $4c      ; 0D7C, 00CC
	SUBWF   $3b,$0   ; 0D7D, 023B
	BTFSS   $3,$2    ; 0D7E, 1D03
	GOTO    _LD82    ; 0D7F, 2D82
	MOVF    $4b,$0   ; 0D80, 084B
	SUBWF   $3a,$0   ; 0D81, 023A

.org 0xD82 
_LD82:
	BTFSS   $3,$0    ; 0D82, 1C03
	GOTO    _LD88    ; 0D83, 2D88

.org 0xD84 
_LD84:
	INCF    $45,$1   ; 0D84, 0AC5
	BTFSC   $3,$2    ; 0D85, 1903
	INCF    $46,$1   ; 0D86, 0AC6
	GOTO    _LD8A    ; 0D87, 2D8A

.org 0xD88 
_LD88:
	CLRF    $45      ; 0D88, 01C5
	CLRF    $46      ; 0D89, 01C6

.org 0xD8A 
_LD8A:
	MOVLW   $a       ; 0D8A, 300A
	SUBWF   $44,$0   ; 0D8B, 0244
	BTFSS   $3,$0    ; 0D8C, 1C03
	GOTO    _LD96    ; 0D8D, 2D96
	MOVLW   $5a      ; 0D8E, 305A
	SUBWF   $44,$0   ; 0D8F, 0244
	BTFSC   $3,$0    ; 0D90, 1803
	GOTO    _LD96    ; 0D91, 2D96
	MOVLW   $b8      ; 0D92, 30B8
	MOVWF   $4e      ; 0D93, 00CE
	MOVLW   $b       ; 0D94, 300B
	GOTO    _LD99    ; 0D95, 2D99

.org 0xD96 
_LD96:
	MOVLW   $a0      ; 0D96, 30A0
	MOVWF   $4e      ; 0D97, 00CE
	MOVLW   $f       ; 0D98, 300F

.org 0xD99 
_LD99:
	MOVWF   $4f      ; 0D99, 00CF
	SUBWF   $46,$0   ; 0D9A, 0246
	BTFSS   $3,$2    ; 0D9B, 1D03
	GOTO    _LD9F    ; 0D9C, 2D9F
	MOVF    $4e,$0   ; 0D9D, 084E
	SUBWF   $45,$0   ; 0D9E, 0245

.org 0xD9F 
_LD9F:
	BTFSS   $3,$0    ; 0D9F, 1C03
	RET              ; 0DA0, 0008
	MOVLW   $64      ; 0DA1, 3064
	CLRF    $45      ; 0DA2, 01C5
	CLRF    $46      ; 0DA3, 01C6
	SUBWF   $44,$0   ; 0DA4, 0244
	BTFSS   $3,$0    ; 0DA5, 1C03
	INCF    $44,$1   ; 0DA6, 0AC4
	MOVF    $44,$0   ; 0DA7, 0844
	BTFSS   $3,$2    ; 0DA8, 1D03
	BCF     $2e,$3   ; 0DA9, 11AE
	RET              ; 0DAA, 0008

.org 0xDAB 
_LDAB:
	MOVLW   $2       ; 0DAB, 3002
	CLRF    $45      ; 0DAC, 01C5
	CLRF    $46      ; 0DAD, 01C6
	SUBWF   $44,$0   ; 0DAE, 0244
	BTFSS   $3,$0    ; 0DAF, 1C03
	GOTO    _LE0B    ; 0DB0, 2E0B
	BCF     $3,$0    ; 0DB1, 1003
	RLF     $44,$0   ; 0DB2, 0D44
	CALL    _LE46    ; 0DB3, 2646
	BCF     $a,$3    ; 0DB4, 118A
	CALL    _L700    ; 0DB5, 2700
	BSF     $a,$3    ; 0DB6, 158A
	MOVWF   $4b      ; 0DB7, 00CB
	BCF     $a,$3    ; 0DB8, 118A
	CALL    _L700    ; 0DB9, 2700
	BSF     $a,$3    ; 0DBA, 158A
	MOVWF   $4c      ; 0DBB, 00CC
	SUBWF   $3b,$0   ; 0DBC, 023B
	BTFSS   $3,$2    ; 0DBD, 1D03
	GOTO    _LDC1    ; 0DBE, 2DC1
	MOVF    $4b,$0   ; 0DBF, 084B
	SUBWF   $3a,$0   ; 0DC0, 023A

.org 0xDC1 
_LDC1:
	BTFSC   $3,$0    ; 0DC1, 1803
	GOTO    _LDC7    ; 0DC2, 2DC7
	INCF    $47,$1   ; 0DC3, 0AC7
	BTFSC   $3,$2    ; 0DC4, 1903
	INCF    $48,$1   ; 0DC5, 0AC8
	GOTO    _LDC9    ; 0DC6, 2DC9

.org 0xDC7 
_LDC7:
	CLRF    $47      ; 0DC7, 01C7
	CLRF    $48      ; 0DC8, 01C8

.org 0xDC9 
_LDC9:
	MOVLW   $0       ; 0DC9, 3000
	SUBWF   $48,$0   ; 0DCA, 0248
	MOVLW   $64      ; 0DCB, 3064
	BTFSC   $3,$2    ; 0DCC, 1903
	SUBWF   $47,$0   ; 0DCD, 0247
	BTFSS   $3,$0    ; 0DCE, 1C03
	RET              ; 0DCF, 0008
	CLRF    $47      ; 0DD0, 01C7
	CLRF    $48      ; 0DD1, 01C8
	MOVF    $44,$0   ; 0DD2, 0844
	MOVWF   $50      ; 0DD3, 00D0

.org 0xDD4 
_LDD4:
	MOVF    $50,$1   ; 0DD4, 08D0
	BTFSC   $3,$2    ; 0DD5, 1903
	GOTO    _LDEA    ; 0DD6, 2DEA
	DECF    $50,$1   ; 0DD7, 03D0
	BCF     $3,$0    ; 0DD8, 1003
	RLF     $50,$0   ; 0DD9, 0D50
	CALL    _LE46    ; 0DDA, 2646
	BCF     $a,$3    ; 0DDB, 118A
	CALL    _L700    ; 0DDC, 2700
	BSF     $a,$3    ; 0DDD, 158A
	MOVWF   $4b      ; 0DDE, 00CB
	BCF     $a,$3    ; 0DDF, 118A
	CALL    _L700    ; 0DE0, 2700
	BSF     $a,$3    ; 0DE1, 158A
	MOVWF   $4c      ; 0DE2, 00CC
	SUBWF   $3b,$0   ; 0DE3, 023B
	BTFSS   $3,$2    ; 0DE4, 1D03
	GOTO    _LDE8    ; 0DE5, 2DE8
	MOVF    $4b,$0   ; 0DE6, 084B
	SUBWF   $3a,$0   ; 0DE7, 023A

.org 0xDE8 
_LDE8:
	BTFSS   $3,$0    ; 0DE8, 1C03
	GOTO    _LDD4    ; 0DE9, 2DD4

.org 0xDEA 
_LDEA:
	MOVF    $50,$0   ; 0DEA, 0850
	ADDLW   $1e      ; 0DEB, 3E1E
	MOVWF   $4b      ; 0DEC, 00CB
	MOVLW   $0       ; 0DED, 3000
	BTFSC   $3,$0    ; 0DEE, 1803
	MOVLW   $1       ; 0DEF, 3001
	MOVWF   $4c      ; 0DF0, 00CC
	XORLW   $80      ; 0DF1, 3A80
	MOVWF   $4d      ; 0DF2, 00CD
	MOVLW   $80      ; 0DF3, 3080
	SUBWF   $4d,$0   ; 0DF4, 024D
	BTFSS   $3,$2    ; 0DF5, 1D03
	GOTO    _LDF9    ; 0DF6, 2DF9
	MOVF    $44,$0   ; 0DF7, 0844
	SUBWF   $4b,$0   ; 0DF8, 024B

.org 0xDF9 
_LDF9:
	BTFSC   $3,$0    ; 0DF9, 1803
	RET              ; 0DFA, 0008
	BCF     $3,$5    ; 0DFB, 1283
	BCF     $3,$6    ; 0DFC, 1303
	MOVF    $50,$0   ; 0DFD, 0850
	MOVWF   $44      ; 0DFE, 00C4
	GOTO    _LE09    ; 0DFF, 2E09

.org 0xE00 
_LE00:
	CALL    _LE4D    ; 0E00, 264D
	BSF     $a,$3    ; 0E01, 158A
	BTFSC   $3,$2    ; 0E02, 1903
	SUBWF   $47,$0   ; 0E03, 0247
	BTFSS   $3,$0    ; 0E04, 1C03
	RET              ; 0E05, 0008
	CLRF    $47      ; 0E06, 01C7
	CLRF    $48      ; 0E07, 01C8

.org 0xE08 
_LE08:
	CLRF    $44      ; 0E08, 01C4

.org 0xE09 
_LE09:
	BSF     $2d,$1   ; 0E09, 14AD
	RET              ; 0E0A, 0008

.org 0xE0B 
_LE0B:
	MOVLW   $c       ; 0E0B, 300C
	SUBWF   $3b,$0   ; 0E0C, 023B
	MOVLW   $b2      ; 0E0D, 30B2
	BTFSC   $3,$2    ; 0E0E, 1903
	SUBWF   $3a,$0   ; 0E0F, 023A
	BTFSS   $3,$0    ; 0E10, 1C03
	GOTO    _LE00    ; 0E11, 2E00
	MOVLW   $c       ; 0E12, 300C
	CLRF    $47      ; 0E13, 01C7
	CLRF    $48      ; 0E14, 01C8
	SUBWF   $3b,$0   ; 0E15, 023B
	MOVLW   $e4      ; 0E16, 30E4
	BTFSC   $3,$2    ; 0E17, 1903
	SUBWF   $3a,$0   ; 0E18, 023A
	BTFSC   $3,$0    ; 0E19, 1803
	RET              ; 0E1A, 0008
	GOTO    _LE08    ; 0E1B, 2E08

.org 0xE1C 
_LE1C:
	DECF    $2a,$0   ; 0E1C, 032A
	BTFSC   $3,$2    ; 0E1D, 1903
	GOTO    _LE41    ; 0E1E, 2E41
	BSF     $2d,$5   ; 0E1F, 16AD
	CLRF    $45      ; 0E20, 01C5
	CLRF    $46      ; 0E21, 01C6
	CLRF    $47      ; 0E22, 01C7
	CLRF    $48      ; 0E23, 01C8
	BSF     $2d,$1   ; 0E24, 14AD
	CLRF    $44      ; 0E25, 01C4

.org 0xE26 
_LE26:
	MOVLW   $64      ; 0E26, 3064
	SUBWF   $44,$0   ; 0E27, 0244
	BTFSC   $3,$0    ; 0E28, 1803
	GOTO    _LE3E    ; 0E29, 2E3E
	BCF     $3,$0    ; 0E2A, 1003
	RLF     $44,$0   ; 0E2B, 0D44
	CALL    _LE46    ; 0E2C, 2646
	BCF     $a,$3    ; 0E2D, 118A
	CALL    _L700    ; 0E2E, 2700
	BSF     $a,$3    ; 0E2F, 158A
	MOVWF   $4b      ; 0E30, 00CB
	BCF     $a,$3    ; 0E31, 118A
	CALL    _L700    ; 0E32, 2700
	BSF     $a,$3    ; 0E33, 158A
	MOVWF   $4c      ; 0E34, 00CC
	SUBWF   $4a,$0   ; 0E35, 024A
	BTFSS   $3,$2    ; 0E36, 1D03
	GOTO    _LE3A    ; 0E37, 2E3A
	MOVF    $4b,$0   ; 0E38, 084B
	SUBWF   $49,$0   ; 0E39, 0249

.org 0xE3A 
_LE3A:
	BTFSS   $3,$0    ; 0E3A, 1C03
	GOTO    _LE3E    ; 0E3B, 2E3E
	INCF    $44,$1   ; 0E3C, 0AC4
	GOTO    _LE26    ; 0E3D, 2E26

.org 0xE3E 
_LE3E:
	MOVF    $44,$0   ; 0E3E, 0844
	MOVWF   $36      ; 0E3F, 00B6
	RET              ; 0E40, 0008

.org 0xE41 
_LE41:
	MOVF    $3b,$0   ; 0E41, 083B
	MOVWF   $4a      ; 0E42, 00CA
	MOVF    $3a,$0   ; 0E43, 083A
	MOVWF   $49      ; 0E44, 00C9
	RET              ; 0E45, 0008

.org 0xE46 
_LE46:
	ADDLW   $12      ; 0E46, 3E12
	MOVWF   $4       ; 0E47, 0084
	MOVLW   $87      ; 0E48, 3087
	BTFSC   $3,$0    ; 0E49, 1803
	ADDLW   $1       ; 0E4A, 3E01
	MOVWF   $7f      ; 0E4B, 00FF
	RET              ; 0E4C, 0008

.org 0xE4D 
_LE4D:
	INCF    $47,$1   ; 0E4D, 0AC7
	BTFSC   $3,$2    ; 0E4E, 1903
	INCF    $48,$1   ; 0E4F, 0AC8
	MOVLW   $0       ; 0E50, 3000
	SUBWF   $48,$0   ; 0E51, 0248
	RETLW   $64      ; 0E52, 3464

.org 0xE53 
_LE53:
	BTFSS   $e,$4    ; 0E53, 1E0E
	GOTO    _LE5D    ; 0E54, 2E5D
	BTFSC   $2e,$7   ; 0E55, 1BAE
	BTFSC   $2e,$6   ; 0E56, 1B2E
	GOTO    _LE5B    ; 0E57, 2E5B
	BSF     $5,$4    ; 0E58, 1605
	BSF     $5,$2    ; 0E59, 1505
	BSF     $2e,$6   ; 0E5A, 172E

.org 0xE5B 
_LE5B:
	BCF     $e,$4    ; 0E5B, 120E
	GOTO    _LE91    ; 0E5C, 2E91

.org 0xE5D 
_LE5D:
	BTFSS   $e,$0    ; 0E5D, 1C0E
	GOTO    _LE6A    ; 0E5E, 2E6A
	BTFSC   $2e,$7   ; 0E5F, 1BAE
	GOTO    _LE63    ; 0E60, 2E63
	BTFSS   $d,$0    ; 0E61, 1C0D
	GOTO    _LE68    ; 0E62, 2E68

.org 0xE63 
_LE63:
	BTFSC   $2e,$6   ; 0E63, 1B2E
	GOTO    _LE68    ; 0E64, 2E68
	BSF     $5,$4    ; 0E65, 1605
	BSF     $5,$2    ; 0E66, 1505
	BSF     $2e,$6   ; 0E67, 172E

.org 0xE68 
_LE68:
	BCF     $e,$0    ; 0E68, 100E
	GOTO    _LE91    ; 0E69, 2E91

.org 0xE6A 
_LE6A:
	BTFSS   $c,$4    ; 0E6A, 1E0C
	GOTO    _LE82    ; 0E6B, 2E82
	MOVLW   $64      ; 0E6C, 3064
	BSF     $3,$6    ; 0E6D, 1703
	INCF    $59,$1   ; 0E6E, 0AD9
	SUBWF   $59,$0   ; 0E6F, 0259
	BTFSS   $3,$0    ; 0E70, 1C03
	GOTO    _LE75    ; 0E71, 2E75
	CLRF    $59      ; 0E72, 01D9
	BCF     $3,$6    ; 0E73, 1303
	BSF     $2d,$6   ; 0E74, 172D

.org 0xE75 
_LE75:
	CALL    _LE9C    ; 0E75, 269C
	BSF     $a,$3    ; 0E76, 158A
	MOVF    $31,$0   ; 0E77, 0831
	BTFSC   $3,$2    ; 0E78, 1903
	GOTO    _LE7D    ; 0E79, 2E7D
	BCF     $6,$1    ; 0E7A, 1086
	CLRF    $31      ; 0E7B, 01B1
	GOTO    _LE80    ; 0E7C, 2E80

.org 0xE7D 
_LE7D:
	BSF     $6,$1    ; 0E7D, 1486
	CLRF    $31      ; 0E7E, 01B1
	INCF    $31,$1   ; 0E7F, 0AB1

.org 0xE80 
_LE80:
	BCF     $c,$4    ; 0E80, 120C
	GOTO    _LE91    ; 0E81, 2E91

.org 0xE82 
_LE82:
	BTFSS   $c,$0    ; 0E82, 1C0C
	GOTO    _LE86    ; 0E83, 2E86
	BCF     $c,$0    ; 0E84, 100C
	GOTO    _LE91    ; 0E85, 2E91

.org 0xE86 
_LE86:
	BTFSS   $c,$1    ; 0E86, 1C8C
	GOTO    _LE8A    ; 0E87, 2E8A
	BCF     $c,$1    ; 0E88, 108C
	GOTO    _LE91    ; 0E89, 2E91

.org 0xE8A 
_LE8A:
	BTFSS   $c,$2    ; 0E8A, 1D0C
	GOTO    _LE8E    ; 0E8B, 2E8E
	BCF     $c,$2    ; 0E8C, 110C
	GOTO    _LE91    ; 0E8D, 2E91

.org 0xE8E 
_LE8E:
	BTFSS   $c,$3    ; 0E8E, 1D8C
	GOTO    _LE91    ; 0E8F, 2E91
	BCF     $c,$3    ; 0E90, 118C

.org 0xE91 
_LE91:
	MOVF    $7d,$0   ; 0E91, 087D
	MOVWF   $7f      ; 0E92, 00FF
	MOVF    $7c,$0   ; 0E93, 087C
	MOVWF   $a       ; 0E94, 008A
	MOVF    $7b,$0   ; 0E95, 087B
	MOVWF   $4       ; 0E96, 0084
	SWAPF   $7a,$0   ; 0E97, 0E7A
	MOVWF   $3       ; 0E98, 0083
	SWAPF   $7e,$1   ; 0E99, 0EFE
	SWAPF   $7e,$0   ; 0E9A, 0E7E
	RETI             ; 0E9B, 0009

.org 0xE9C 
_LE9C:
	CLRF    $78      ; 0E9C, 01F8
	CLRF    $79      ; 0E9D, 01F9
	CLRF    $79      ; 0E9E, 01F9

.org 0xE9F 
_LE9F:
	MOVF    $79,$0   ; 0E9F, 0879
	CALL    _LF28    ; 0EA0, 2728
	BSF     $a,$3    ; 0EA1, 158A
	MOVLW   $8       ; 0EA2, 3008
	INCF    $79,$1   ; 0EA3, 0AF9
	SUBWF   $79,$0   ; 0EA4, 0279
	BTFSS   $3,$0    ; 0EA5, 1C03
	GOTO    _LE9F    ; 0EA6, 2E9F
	CLRF    $79      ; 0EA7, 01F9

.org 0xEA8 
_LEA8:
	MOVLW   $6       ; 0EA8, 3006
	MOVWF   $70      ; 0EA9, 00F0
	BCF     $3,$5    ; 0EAA, 1283
	BCF     $3,$6    ; 0EAB, 1303
	MOVF    $33,$0   ; 0EAC, 0833
	CALL    _LF1A    ; 0EAD, 271A
	ADDLW   $dc      ; 0EAE, 3EDC
	MOVWF   $73      ; 0EAF, 00F3
	MOVLW   $87      ; 0EB0, 3087
	BTFSC   $3,$0    ; 0EB1, 1803
	ADDLW   $1       ; 0EB2, 3E01
	MOVWF   $74      ; 0EB3, 00F4
	BCF     $3,$0    ; 0EB4, 1003
	RLF     $79,$0   ; 0EB5, 0D79
	ADDWF   $73,$0   ; 0EB6, 0773
	MOVWF   $4       ; 0EB7, 0084
	MOVF    $74,$0   ; 0EB8, 0874
	BTFSC   $3,$0    ; 0EB9, 1803
	INCF    $74,$0   ; 0EBA, 0A74
	MOVWF   $7f      ; 0EBB, 00FF
	BCF     $a,$3    ; 0EBC, 118A
	CALL    _L700    ; 0EBD, 2700
	BSF     $a,$3    ; 0EBE, 158A
	IORLW   $0       ; 0EBF, 3800
	BTFSC   $3,$2    ; 0EC0, 1903
	GOTO    _LF14    ; 0EC1, 2F14
	MOVLW   $6       ; 0EC2, 3006
	MOVWF   $70      ; 0EC3, 00F0
	MOVF    $33,$0   ; 0EC4, 0833
	CALL    _LF1A    ; 0EC5, 271A
	ADDLW   $dc      ; 0EC6, 3EDC
	MOVWF   $73      ; 0EC7, 00F3
	MOVLW   $87      ; 0EC8, 3087
	BTFSC   $3,$0    ; 0EC9, 1803
	ADDLW   $1       ; 0ECA, 3E01
	MOVWF   $74      ; 0ECB, 00F4
	BCF     $3,$0    ; 0ECC, 1003
	RLF     $79,$0   ; 0ECD, 0D79
	ADDWF   $73,$0   ; 0ECE, 0773
	MOVWF   $4       ; 0ECF, 0084
	MOVF    $74,$0   ; 0ED0, 0874
	BTFSC   $3,$0    ; 0ED1, 1803
	INCF    $74,$0   ; 0ED2, 0A74
	MOVWF   $7f      ; 0ED3, 00FF
	BCF     $a,$3    ; 0ED4, 118A
	CALL    _L700    ; 0ED5, 2700
	BSF     $a,$3    ; 0ED6, 158A
	ADDLW   $ff      ; 0ED7, 3EFF
	MOVWF   $77      ; 0ED8, 00F7
	MOVLW   $6       ; 0ED9, 3006
	MOVWF   $70      ; 0EDA, 00F0
	MOVF    $33,$0   ; 0EDB, 0833
	CALL    _LF1A    ; 0EDC, 271A
	ADDLW   $dc      ; 0EDD, 3EDC
	MOVWF   $73      ; 0EDE, 00F3
	MOVLW   $87      ; 0EDF, 3087
	BTFSC   $3,$0    ; 0EE0, 1803
	ADDLW   $1       ; 0EE1, 3E01
	MOVWF   $74      ; 0EE2, 00F4
	BCF     $3,$0    ; 0EE3, 1003
	RLF     $79,$0   ; 0EE4, 0D79
	ADDWF   $73,$0   ; 0EE5, 0773
	MOVWF   $75      ; 0EE6, 00F5
	MOVF    $74,$0   ; 0EE7, 0874
	BTFSC   $3,$0    ; 0EE8, 1803
	ADDLW   $1       ; 0EE9, 3E01
	MOVWF   $76      ; 0EEA, 00F6
	MOVLW   $1       ; 0EEB, 3001
	ADDWF   $75,$0   ; 0EEC, 0775
	MOVWF   $4       ; 0EED, 0084
	MOVF    $76,$0   ; 0EEE, 0876
	BTFSC   $3,$0    ; 0EEF, 1803
	INCF    $76,$0   ; 0EF0, 0A76
	MOVWF   $7f      ; 0EF1, 00FF
	BCF     $a,$3    ; 0EF2, 118A
	CALL    _L700    ; 0EF3, 2700
	BSF     $a,$3    ; 0EF4, 158A
	ADDLW   $ff      ; 0EF5, 3EFF
	MOVWF   $78      ; 0EF6, 00F8
	MOVF    $77,$0   ; 0EF7, 0877
	MOVWF   $73      ; 0EF8, 00F3
	MOVLW   $a9      ; 0EF9, 30A9
	BCF     $3,$0    ; 0EFA, 1003
	RLF     $73,$1   ; 0EFB, 0DF3
	BCF     $3,$0    ; 0EFC, 1003
	RLF     $73,$1   ; 0EFD, 0DF3
	BCF     $3,$0    ; 0EFE, 1003
	RLF     $73,$1   ; 0EFF, 0DF3
	ADDWF   $73,$0   ; 0F00, 0773
	MOVWF   $74      ; 0F01, 00F4
	MOVF    $78,$0   ; 0F02, 0878
	ADDWF   $74,$0   ; 0F03, 0774
	MOVWF   $75      ; 0F04, 00F5
	MOVWF   $4       ; 0F05, 0084
	BCF     $3,$7    ; 0F06, 1383
	MOVF    $0,$1    ; 0F07, 0880
	BTFSC   $3,$2    ; 0F08, 1903
	GOTO    _LF0F    ; 0F09, 2F0F
	CLRF    $70      ; 0F0A, 01F0
	INCF    $70,$1   ; 0F0B, 0AF0
	MOVF    $78,$0   ; 0F0C, 0878
	CALL    _LF7F    ; 0F0D, 277F
	BSF     $a,$3    ; 0F0E, 158A

.org 0xF0F 
_LF0F:
	MOVLW   $3       ; 0F0F, 3003
	INCF    $79,$1   ; 0F10, 0AF9
	SUBWF   $79,$0   ; 0F11, 0279
	BTFSS   $3,$0    ; 0F12, 1C03
	GOTO    _LEA8    ; 0F13, 2EA8

.org 0xF14 
_LF14:
	INCF    $33,$1   ; 0F14, 0AB3
	MOVF    $33,$0   ; 0F15, 0833
	XORLW   $12      ; 0F16, 3A12
	BTFSC   $3,$2    ; 0F17, 1903
	CLRF    $33      ; 0F18, 01B3
	RET              ; 0F19, 0008

.org 0xF1A 
_LF1A:
	MOVWF   $71      ; 0F1A, 00F1
	CLRF    $72      ; 0F1B, 01F2

.org 0xF1C 
_LF1C:
	MOVF    $70,$0   ; 0F1C, 0870
	BTFSC   $71,$0   ; 0F1D, 1871
	ADDWF   $72,$1   ; 0F1E, 07F2
	BCF     $3,$0    ; 0F1F, 1003
	RLF     $70,$1   ; 0F20, 0DF0
	BCF     $3,$0    ; 0F21, 1003
	RRF     $71,$1   ; 0F22, 0CF1
	MOVF    $71,$1   ; 0F23, 08F1
	BTFSS   $3,$2    ; 0F24, 1D03
	GOTO    _LF1C    ; 0F25, 2F1C
	MOVF    $72,$0   ; 0F26, 0872
	RET              ; 0F27, 0008

.org 0xF28 
_LF28:
	MOVWF   $70      ; 0F28, 00F0
	GOTO    _LF72    ; 0F29, 2F72

.org 0xF2A 
_LF2A:
	BCF     $3,$5    ; 0F2A, 1283
	BCF     $3,$6    ; 0F2B, 1303
	BSF     $6,$3    ; 0F2C, 1586
	BSF     $3,$5    ; 0F2D, 1683
	MOVF    $d,$0    ; 0F2E, 080D
	ANDLW   $f       ; 0F2F, 390F
	IORLW   $10      ; 0F30, 3810
	MOVWF   $d       ; 0F31, 008D
	RET              ; 0F32, 0008

.org 0xF33 
_LF33:
	BCF     $3,$5    ; 0F33, 1283
	BCF     $3,$6    ; 0F34, 1303
	BSF     $7,$0    ; 0F35, 1407
	BSF     $3,$5    ; 0F36, 1683
	MOVF    $10,$0   ; 0F37, 0810
	ANDLW   $f0      ; 0F38, 39F0
	IORLW   $1       ; 0F39, 3801
	MOVWF   $10      ; 0F3A, 0090
	RET              ; 0F3B, 0008

.org 0xF3C 
_LF3C:
	BCF     $3,$5    ; 0F3C, 1283
	BCF     $3,$6    ; 0F3D, 1303
	BSF     $7,$1    ; 0F3E, 1487
	BSF     $3,$5    ; 0F3F, 1683
	MOVF    $10,$0   ; 0F40, 0810
	ANDLW   $f       ; 0F41, 390F
	IORLW   $10      ; 0F42, 3810
	MOVWF   $10      ; 0F43, 0090
	RET              ; 0F44, 0008

.org 0xF45 
_LF45:
	BCF     $3,$5    ; 0F45, 1283
	BCF     $3,$6    ; 0F46, 1303
	BSF     $6,$4    ; 0F47, 1606
	BSF     $3,$5    ; 0F48, 1683
	MOVF    $e,$0    ; 0F49, 080E
	ANDLW   $f0      ; 0F4A, 39F0
	IORLW   $1       ; 0F4B, 3801
	MOVWF   $e       ; 0F4C, 008E
	RET              ; 0F4D, 0008

.org 0xF4E 
_LF4E:
	BCF     $3,$5    ; 0F4E, 1283
	BCF     $3,$6    ; 0F4F, 1303
	BSF     $6,$5    ; 0F50, 1686
	BSF     $3,$5    ; 0F51, 1683
	MOVF    $e,$0    ; 0F52, 080E
	ANDLW   $f       ; 0F53, 390F
	IORLW   $10      ; 0F54, 3810
	MOVWF   $e       ; 0F55, 008E
	RET              ; 0F56, 0008

.org 0xF57 
_LF57:
	BCF     $3,$5    ; 0F57, 1283
	BCF     $3,$6    ; 0F58, 1303
	BSF     $6,$6    ; 0F59, 1706
	BSF     $3,$5    ; 0F5A, 1683
	MOVF    $f,$0    ; 0F5B, 080F
	ANDLW   $f0      ; 0F5C, 39F0
	IORLW   $1       ; 0F5D, 3801
	MOVWF   $f       ; 0F5E, 008F
	RET              ; 0F5F, 0008

.org 0xF60 
_LF60:
	BCF     $3,$5    ; 0F60, 1283
	BCF     $3,$6    ; 0F61, 1303
	BSF     $6,$7    ; 0F62, 1786
	BSF     $3,$5    ; 0F63, 1683
	MOVF    $f,$0    ; 0F64, 080F
	ANDLW   $f       ; 0F65, 390F
	IORLW   $10      ; 0F66, 3810
	MOVWF   $f       ; 0F67, 008F
	RET              ; 0F68, 0008

.org 0xF69 
_LF69:
	BCF     $3,$5    ; 0F69, 1283
	BCF     $3,$6    ; 0F6A, 1303
	BSF     $6,$0    ; 0F6B, 1406
	BSF     $3,$5    ; 0F6C, 1683
	MOVF    $c,$0    ; 0F6D, 080C
	ANDLW   $f0      ; 0F6E, 39F0
	IORLW   $1       ; 0F6F, 3801
	MOVWF   $c       ; 0F70, 008C
	RET              ; 0F71, 0008

.org 0xF72 
_LF72:
	MOVF    $70,$0   ; 0F72, 0870
	MOVWF   $4       ; 0F73, 0084
	MOVLW   $8       ; 0F74, 3008
	SUBWF   $4,$0    ; 0F75, 0204
	BTFSC   $3,$0    ; 0F76, 1803
	RET              ; 0F77, 0008
	MOVLW   $8       ; 0F78, 3008
	MOVWF   $a       ; 0F79, 008A
	BCF     $3,$0    ; 0F7A, 1003
	RLF     $4,$0    ; 0F7B, 0D04
	ADDLW   $a1      ; 0F7C, 3EA1
	MOVWF   $2       ; 0F7D, 0082
	RET              ; 0F7E, 0008

.org 0xF7F 
_LF7F:
	MOVWF   $71      ; 0F7F, 00F1
	GOTO    _LFF1    ; 0F80, 2FF1

.org 0xF81 
_LF81:
	BSF     $3,$5    ; 0F81, 1683
	MOVF    $d,$0    ; 0F82, 080D
	ANDLW   $f       ; 0F83, 390F
	IORLW   $60      ; 0F84, 3860
	MOVWF   $d       ; 0F85, 008D
	MOVF    $70,$0   ; 0F86, 0870
	BTFSC   $3,$2    ; 0F87, 1903
	GOTO    _LF8C    ; 0F88, 2F8C
	BCF     $3,$5    ; 0F89, 1283
	BSF     $6,$3    ; 0F8A, 1586
	RET              ; 0F8B, 0008

.org 0xF8C 
_LF8C:
	BCF     $3,$5    ; 0F8C, 1283
	BCF     $6,$3    ; 0F8D, 1186
	RET              ; 0F8E, 0008

.org 0xF8F 
_LF8F:
	BSF     $3,$5    ; 0F8F, 1683
	MOVF    $10,$0   ; 0F90, 0810
	ANDLW   $f0      ; 0F91, 39F0
	IORLW   $6       ; 0F92, 3806
	MOVWF   $10      ; 0F93, 0090
	MOVF    $70,$0   ; 0F94, 0870
	BTFSC   $3,$2    ; 0F95, 1903
	GOTO    _LF9A    ; 0F96, 2F9A
	BCF     $3,$5    ; 0F97, 1283
	BSF     $7,$0    ; 0F98, 1407
	RET              ; 0F99, 0008

.org 0xF9A 
_LF9A:
	BCF     $3,$5    ; 0F9A, 1283
	BCF     $7,$0    ; 0F9B, 1007
	RET              ; 0F9C, 0008

.org 0xF9D 
_LF9D:
	BSF     $3,$5    ; 0F9D, 1683
	MOVF    $10,$0   ; 0F9E, 0810
	ANDLW   $f       ; 0F9F, 390F
	IORLW   $60      ; 0FA0, 3860
	MOVWF   $10      ; 0FA1, 0090
	MOVF    $70,$0   ; 0FA2, 0870
	BTFSC   $3,$2    ; 0FA3, 1903
	GOTO    _LFA8    ; 0FA4, 2FA8
	BCF     $3,$5    ; 0FA5, 1283
	BSF     $7,$1    ; 0FA6, 1487
	RET              ; 0FA7, 0008

.org 0xFA8 
_LFA8:
	BCF     $3,$5    ; 0FA8, 1283
	BCF     $7,$1    ; 0FA9, 1087
	RET              ; 0FAA, 0008

.org 0xFAB 
_LFAB:
	BSF     $3,$5    ; 0FAB, 1683
	MOVF    $e,$0    ; 0FAC, 080E
	ANDLW   $f0      ; 0FAD, 39F0
	IORLW   $6       ; 0FAE, 3806
	MOVWF   $e       ; 0FAF, 008E
	MOVF    $70,$0   ; 0FB0, 0870
	BTFSC   $3,$2    ; 0FB1, 1903
	GOTO    _LFB6    ; 0FB2, 2FB6
	BCF     $3,$5    ; 0FB3, 1283
	BSF     $6,$4    ; 0FB4, 1606
	RET              ; 0FB5, 0008

.org 0xFB6 
_LFB6:
	BCF     $3,$5    ; 0FB6, 1283
	BCF     $6,$4    ; 0FB7, 1206
	RET              ; 0FB8, 0008

.org 0xFB9 
_LFB9:
	BSF     $3,$5    ; 0FB9, 1683
	MOVF    $e,$0    ; 0FBA, 080E
	ANDLW   $f       ; 0FBB, 390F
	IORLW   $60      ; 0FBC, 3860
	MOVWF   $e       ; 0FBD, 008E
	MOVF    $70,$0   ; 0FBE, 0870
	BTFSC   $3,$2    ; 0FBF, 1903
	GOTO    _LFC4    ; 0FC0, 2FC4
	BCF     $3,$5    ; 0FC1, 1283
	BSF     $6,$5    ; 0FC2, 1686
	RET              ; 0FC3, 0008

.org 0xFC4 
_LFC4:
	BCF     $3,$5    ; 0FC4, 1283
	BCF     $6,$5    ; 0FC5, 1286
	RET              ; 0FC6, 0008

.org 0xFC7 
_LFC7:
	BSF     $3,$5    ; 0FC7, 1683
	MOVF    $f,$0    ; 0FC8, 080F
	ANDLW   $f0      ; 0FC9, 39F0
	IORLW   $6       ; 0FCA, 3806
	MOVWF   $f       ; 0FCB, 008F
	MOVF    $70,$0   ; 0FCC, 0870
	BTFSC   $3,$2    ; 0FCD, 1903
	GOTO    _LFD2    ; 0FCE, 2FD2
	BCF     $3,$5    ; 0FCF, 1283
	BSF     $6,$6    ; 0FD0, 1706
	RET              ; 0FD1, 0008

.org 0xFD2 
_LFD2:
	BCF     $3,$5    ; 0FD2, 1283
	BCF     $6,$6    ; 0FD3, 1306
	RET              ; 0FD4, 0008

.org 0xFD5 
_LFD5:
	BSF     $3,$5    ; 0FD5, 1683
	MOVF    $f,$0    ; 0FD6, 080F
	ANDLW   $f       ; 0FD7, 390F
	IORLW   $60      ; 0FD8, 3860
	MOVWF   $f       ; 0FD9, 008F
	MOVF    $70,$0   ; 0FDA, 0870
	BTFSC   $3,$2    ; 0FDB, 1903
	GOTO    _LFE0    ; 0FDC, 2FE0
	BCF     $3,$5    ; 0FDD, 1283
	BSF     $6,$7    ; 0FDE, 1786
	RET              ; 0FDF, 0008

.org 0xFE0 
_LFE0:
	BCF     $3,$5    ; 0FE0, 1283
	BCF     $6,$7    ; 0FE1, 1386
	RET              ; 0FE2, 0008

.org 0xFE3 
_LFE3:
	BSF     $3,$5    ; 0FE3, 1683
	MOVF    $c,$0    ; 0FE4, 080C
	ANDLW   $f0      ; 0FE5, 39F0
	IORLW   $6       ; 0FE6, 3806
	MOVWF   $c       ; 0FE7, 008C
	MOVF    $70,$0   ; 0FE8, 0870
	BTFSC   $3,$2    ; 0FE9, 1903
	GOTO    _LFEE    ; 0FEA, 2FEE
	BCF     $3,$5    ; 0FEB, 1283
	BSF     $6,$0    ; 0FEC, 1406
	RET              ; 0FED, 0008

.org 0xFEE 
_LFEE:
	BCF     $3,$5    ; 0FEE, 1283
	BCF     $6,$0    ; 0FEF, 1006
	RET              ; 0FF0, 0008

.org 0xFF1 
_LFF1:
	MOVF    $71,$0   ; 0FF1, 0871
	MOVWF   $4       ; 0FF2, 0084
	MOVLW   $8       ; 0FF3, 3008
	SUBWF   $4,$0    ; 0FF4, 0204
	BTFSC   $3,$0    ; 0FF5, 1803
	RET              ; 0FF6, 0008
	MOVLW   $8       ; 0FF7, 3008
	MOVWF   $a       ; 0FF8, 008A
	BCF     $3,$0    ; 0FF9, 1003
	RLF     $4,$0    ; 0FFA, 0D04
	ADDLW   $91      ; 0FFB, 3E91
	MOVWF   $2       ; 0FFC, 0082
	RET              ; 0FFD, 0008
	RETLW   $0       ; 0FFE, 3400
	RETLW   $0       ; 0FFF, 3400

.end  

