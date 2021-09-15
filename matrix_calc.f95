program matrix

implicit none

integer, allocatable, dimension(:,:) :: matrix_A
integer, allocatable, dimension(:,:) :: matrix_B
integer, allocatable, dimension(:,:) :: matrix_C
integer, allocatable, dimension(:,:) :: matrix_E

integer  mA, nA, mB, nB, i, j

allocate(matrix_E(3, 3))
matrix_E = 0

do i=1, 3, 1
  matrix_E(i, i) = 1
enddo


write(*, *)'Введите размерность матрицы A (строк, столбцов)'
read (*, *) nA, mA

allocate(matrix_A(nA, mA))

open(1, File = 'matrix_A.txt', status = 'old')
do i = 1, nA, 1
  read(1, *) (matrix_A(i, j), j = 1, mA)
enddo
close(1)

write(*, 11) ((matrix_A(i, j), j = 1, mA), i = 1, nA)
11 format (2x, 'Матрица A'/3(2x, I3))


write(*, *)'Введите размерность матрицы B (строк, столбцов)'
read (*, *) nB, mB

allocate(matrix_B(nB, mB))

open(2, File = 'matrix_B.txt', status = 'old')
do i=1, nB, 1
  read(2, *) (matrix_B(i, j), j=1, mB)
enddo
close(2)

write(*, 12) ((matrix_B(i, j), j = 1, mB), i = 1, nB)
12 format (2x, 'Матрица B'/4(2x, I3))


allocate(matrix_C(nA, mB)) 
matrix_C = matmul (matrix_A, matrix_B)


write(*, 10) ((matrix_C(i, j), j=1, mB), i=1, nA)
10 format (2x, 'Произведение матриц'/3(2x, I3))


end

