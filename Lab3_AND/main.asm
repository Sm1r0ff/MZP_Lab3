reset:
	rjmp main

main:
	;	�������� �������� � ��������
	ldi r18, 0xFF
	ldi r19, 0xFF
	;	����� ������ �� ��� � IO ������� ��� �����������
	out	OCR0A, r18
	out OCR0B, r19
	nop
loop:
	;	���� ������ �� IO ��������� � ��� ��� ���������
	;	��� ��� ����� � ���������� ���������� �������� � ���
	in r18, OCR0A
	in r19, OCR0B
	;	���������� ��������
	and r18, r19
	;	����� ������ �� ��� � IO ������� ��� �����������
	out	OCR0A, r18
	out OCR0B, r19 

	rjmp loop