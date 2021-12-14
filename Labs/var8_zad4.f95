!Задание 4

!Тема: Сложные типы данных.
!Многомерные массивы.
!У заданной матрицы размером NxM (конкретное значение N и М для каждого
!студента индивидуально задается преподавателем) поменять местами строки и
!столбцы (транспонировать). Вывести на экран дисплея исходную и транспонированную
!матрицы. Обмен осуществляется без помощи дополнительного массива.

program var8_zad4

  integer, allocatable, dimension(:,:) :: matrixA
  integer, allocatable, dimension(:,:) :: matrixB
  integer i, j, N, M, c

  print*, "Введите размерность матрицы"
  read*, N, M

  allocate(matrixA(N, M))
  allocate(matrixB(M, N))

  do i = 1, N
	print*, "Введите элемент массива по строкам"
	read*, (matrixA(i, j), j = 1, M)
  enddo

  print*, 'Исходная матрица'
  do c = 1, N
    print*, (matrixA(c, j), j = 1, M)
  enddo
  

  do i = 1, N
  	do j  =1, M
    	matrixB(j, i) = matrixA(i, j)
    enddo
  enddo


  print*, 'Транспонированная матрица'
  do c = 1, M
    print*, (matrixB(c, j), j = 1, N)
  enddo


end
