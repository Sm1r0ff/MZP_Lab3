reset:
	rjmp main

main:
	;	�������� �������� � ��������
	ldi r25, 0xFF
	ldi r24, 0xFF
	;	����� ������ �� ��� � IO ������� ��� �����������
	out	OCR0A, r25
	out OCR0B, r24

	nop
loop:
	;	���� ������ �� IO ��������� � ��� ��� ���������
	;	��� ��� ����� � ���������� ���������� �������� � ���
	in r25, OCR0A
	in r24, OCR0B
	;	���������� ��������
	sbiw r24, 33
	;	����� ������ �� ��� � IO ������� ��� �����������
	out	OCR0A, r25
	out OCR0B, r24 

	rjmp loop