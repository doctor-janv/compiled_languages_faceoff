program test
  ! use utils, only : initVector, operation
  implicit none 

  integer(kind=8) N
  integer(kind=8) :: t1, t2, rate
  
  real(kind=8), allocatable :: vec1(:)
  real(kind=8), allocatable :: vec2(:)

  real(kind=8) :: sum
  character(len=32) :: arg_str

  call get_command_argument(1, arg_str)

  read(arg_str, *) N

  allocate(vec1(N))
  allocate(vec2(N))

  call initVector(vec1, N)
  call initVector(vec2, N)
  
  call system_clock(t1, rate)

  call operation1(vec1,vec2,N, sum)
  
  call system_clock(t2)

  write(*,'(a,e13.6,a,e13.6)') &
  'Elapsed Time = ', &
  real(t2 - t1) / real(rate), ' seconds ', &
  sum

  deallocate(vec1)
  deallocate(vec2)

contains

  subroutine initVector(vec, N)
    implicit none 

    real(kind=8), target, intent(inout) :: vec(:)
    integer(kind=8), intent(in) :: N 

    integer(kind=8) :: i 

    do i=1,N 
      vec(i) = real(i, kind=8)
    end do

  end subroutine

  subroutine operation1(vec1, vec2, N, sum)
    implicit none 

    integer(kind=8), parameter :: LUF = 2 ! Loop unrolling factor

    real(kind=8), intent(inout) :: vec1(:)
    real(kind=8), intent(inout) :: vec2(:)
    real(kind=8), intent(out)   :: sum
    integer(kind=8), intent(in) :: N 

    integer(kind=8) :: i, mod_N_LUF
    sum = 0.0
    mod_N_LUF = mod(N,LUF)

    do i=1,mod_N_LUF
      sum = sum + vec1(i) * vec2(i)
    enddo

    do i=mod_N_LUF+1, N, LUF
      sum = sum + vec1(i + 0) * vec2(i + 0)
      sum = sum + vec1(i + 1) * vec2(i + 1)
    enddo
  end subroutine

end program test