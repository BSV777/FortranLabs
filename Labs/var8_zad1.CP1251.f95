!������� 1

!����: �������� ���������. ������� �������. ����������� �������� ��������.
!�������� � ���������� ����� �������� �.
!���������� �������� Y �� ����� �� 3-� ������ � ����������� �� ���������� �������� �.
!1) ���� 1 ? x ? 99, �� Y = v(x - 1)/(x + 30)
!2) ���� x < 1, �� Y = (-x - 2)/(x + 2)
!3) � ��������� ������� Y = v(x - 100)/(x + 10)

program var8_zad1

implicit none								! ������ ������������� ����������.

real x, y									! ���������� ���������� x � y

write (*,*) '������� x' 					! ������ ����������� � ����� x
read (*,*) x								! ���� ���������� x

if (x .ge. 1. .and. x .le. 99.) then		! ������� 1
	write (*,*) '��������� ��������� 1'		! ���������� �����
	y = sqrt(x - 1.) / (x + 30.)			! ��������� 1	

else
	if (x .lt. 1.) then						! ������� 2
		write (*,*) '��������� ��������� 2'	! ���������� �����
		y = (-x - 2.)/(x + 2.)				! ��������� 2

	else
		write (*,*) '��������� ��������� 3'	! ���������� �����
		y = sqrt(x - 100.)/(x + 10.)		! ��������� 3
	end if

end if										! ����� �������

write (*,*) 'y =', y						! ����� ����������

end
