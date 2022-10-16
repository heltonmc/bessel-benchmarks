! This program was helped by many in the Fortran discourse community https://fortran-lang.discourse.group/t/comparing-fortran-and-julias-bessel-function-performance/4541
! Particularly acknowledgement to members urbanjost, Beliavsky, rgba who helped in compiling my first Fortran program
program bess
    integer, parameter :: p = selected_real_kind(15, 307)
    integer, parameter :: n = 50000000
    real(p) :: startT, endT, execTime
    real(p) :: v(n)
    real(p) :: a

    a = 0.0_p
    call random_number(v)
    v = 200*v

    call cpu_time(startT)
    do i=1,n
        a = a + BESSEL_J0(v(i))
    enddo
    call cpu_time(endT)

    execTime = (endT - startT)
    print '("Time = ",f6.3," seconds.")', execTime  / n
    print *, a
    print *, execTime / n
 end program bess