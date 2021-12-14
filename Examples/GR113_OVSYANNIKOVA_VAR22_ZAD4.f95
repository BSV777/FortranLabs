program GR113_OVSYANNIKOVA_VAR22_ZAD4
  
  integer, allocatable, dimension(:,:) :: matrixA
  integer, allocatable, dimension(:) :: min
  integer, allocatable, dimension(:) :: max
  integer, allocatable, dimension(:) :: interval
  
  integer i, j, a, b, c, N 
  
  print*, "Введите N - размерность квадратной матрицы"
  read*, N
  
  allocate(matrixA(N, N))
  allocate(min(N))
  allocate(max(N))
  allocate(interval(N))

  do i = 1, N
    print*, "Введите элемент массива по строкам"
    read*, (matrixA(i, j), j = 1, N)

    min(i) = matrixA(i, 1) 
    max(i) = matrixA(i, 1)

    do a = 1, N

      IF (min(i) > matrixA(i,a)) THEN 
        min(i) = matrixA(i, a)
      ENDIF

      IF (max(i) < matrixA(i, a)) THEN 
        max(i) = matrixA(i, a)
      ENDIF

    ENDDO

    interval(i) = max(i) - min(i) 
  ENDDO
  
  print*, 'Матрица'
  do c = 1, N
    print*, (matrixA(c, j), j = 1, N)
  ENDDO
  
  print*, 'Диапазон изменения элементов каждой строки матрицы'
  do b = 1, N
    print*, interval(b) 
  ENDDO
END program