!Вычислить сумму ряда: 
 
!a) с заданной точностью ξ и вывести количество итераций; 
!b) для 20-ти членов ряда. 
 
!Σ  = 1 – х 2 /2! + х 4 /4! – х 6 /6! + …         х= π     ξ=0.000001 

real function fact(n)               !Обьявим функцию для вычисления факториала
    integer n
    integer i
    fact = 1.0
    do i = 2, n
    	fact = fact * i
    enddo
end function fact
program GR113_Abdoldin_var8_zad2

!Вычисляем пунскт б
integer i,n                      !Обьявляем тип переменных 
real S,x,t,e
write(*,*) "Вычисляем пункт б" !Выводим натпись на экран 'Вычисляем пунскт б'
  x=3.141592                         !присваеваем значения переменным
  n=20
  S=1
    do i=1, n                    !Цыкл вычисляющий сумму последовательности 
    S=S+(-1)**i * x**(i*2)/fact(i*2)
    !write (*,*) 'i = ', i, 'S = ', S    ! Отладочный вывод
    end do
     write(*,*) S, "Сумма последовательсти при n равное 20"! выведение суммы последовательности на экран 

!Вычисляем пункт а
write(*,*) "Вычисляем пункт а"! Выводим надпись'Вычисляем пункт а'
S=1.
e=1.
St=S
i=1
do while(e .gt. 0.000001)
  
  S=S+(-1)**i * x**(i*2)/fact(i*2)
  
  e= abs(St-S)
  write (*,*) 'S = ', S, ' погрешность = ', e, 'i = ', i  ! Отладочный вывод
  i=i+1
  St=S
end do
write(*,*) "Сумма равна ", S
end

