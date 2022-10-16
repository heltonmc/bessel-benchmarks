! This program was helped by many in the Fortran discourse community https://fortran-lang.discourse.group/t/comparing-fortran-and-julias-bessel-function-performance/4541
! Particular acknowledgement to members urbanjost, Beliavsky, rgba who helped in compiling my first Fortran program and constructing this benchmark.
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
    print '("Time = ",g0.3," nanoseconds per value.")',execTime/n * 1.0d9
    print '("Time = ",g0.3," total seconds.")',execTime
    print *, a
 end program bess
