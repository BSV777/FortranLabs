!Задание 2

!Тема: Ряды (циклы, итерации).
!Операторы DO используются для организации циклических расчетов.
!Цикл — это последовательность операторов, которая может автоматически
!выполняться более одного раза. Если количество повторов известно заранее (или
!может быть однозначно вычислено), используется оператор «Цикл с параметром»
!(DO «UNTIL»). Если количество повторов неизвестно, применяется оператор
!«Цикл с предусловием» (DO «WHILE»).

!Вычислить сумму ряда:
!a) с заданной точностью ξ и вывести количество итераций;
!b) для 20-ти членов ряда.
!Σ = 1 – х^2 /2! + х^4 /4! – х^6 /6! + ...
!х= π
!ξ=0.000001
!Ответ: -1 (b)

real function fact(n)
    integer, intent(in) :: n
    integer :: i
    fact = 1.0
    do i = 2, n
    	fact = fact * i
    enddo
end function fact

program var8_zad2
	
implicit none								! Запрет необъявленных переменных.

	x = 3.141592
	S = 1.

	write (*,*) '---=== Вариант a ===---'
	
	i = 1
	e = 1.
	St = S
	
	do while(e > 0.000001)			! Выполняется пока условие истинно

		S = S + (-1)**i * x**(i * 2) / fact(i * 2)
		e = abs(St - S)

		write (*,*) 'S = ', S, ' погрешность = ', e, 'i = ', i	! Отладочный вывод
		i = i + 1
		St = S
	end do
	write (*,*) 'Результат S = ', S

	write (*,*) '---=== Вариант b ===---'

	n = 20
	S = 1.
	do i = 1, 20
		S = S + (-1)**i * x**(i * 2) / fact(i * 2)

		write (*,*) 'i = ', i, 'S = ', S		! Отладочный вывод
		
	end do
	write (*,*) 'Результат S = ', S
end
