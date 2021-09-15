program chisla

implicit none

! Variables

integer n,i,s

! Body of chisla

s=0         
write (*,*) 'Введите n' 
read (*,*) n
if (n.le.0) then
     write (*,*) 'Отрицательное или ноль'
else
     do i=1,n
          s=s+i
     end do
     write (*,*) 'Сумма=', s
end if          
end 
