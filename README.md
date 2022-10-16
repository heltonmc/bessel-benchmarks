# Speed comparison of Bessel Functions

This project pulls together benchmarks of different algorithms to compute Bessel and other special functions in any programming language. Contributions are very welcome to improve benchmarks or add additional ones.

This is very experimental right now. Please don't take this as any indication that something is "better". Especially because I do not yet report accuracy over the interval.

So far, we are only comparing the implementation provided by [Bessels.jl](https://github.com/JuliaMath/Bessels.jl) and those provided by The [GNU Fortran Compiler](https://gcc.gnu.org/onlinedocs/gcc-4.9.4/gfortran/BESSEL_005fJN.html) (which only supports integer orders).

The benchmark measures the total time to sum an array of N random values where we report the time per iteration (total time / N).

# Unsorted array

|               | Bessels.jl (v1.8.2) CPU #1 |      gfortran -O3 (CPU #1)  | Bessels.jl (v1.8.2) CPU #2 | gfortran -O3 (CPU #2) |
| ------------- | :---:                      |   :---:                     | :---:                      |   :---:               |
| besselj0      | 26.0 ns                    |      50.5 ns                | 29.9 ns                    |  37.3 ns              |
| besselj1      | 26.7 ns                    |      50.5 ns                | 29.9 ns                    |  37.2 ns              |
| bessely0      | 28.1 ns                    |      50.7 ns                | 30.9 ns                    |  29.1 ns              |
| bessely1      | 27.6 ns                    |      50.6 ns                | 30.3 ns                    |  29.2 ns              |
| besselj(10, x) | 97.8 ns                   |      124.0 ns               | 103.6 ns                   |  70.2 ns              |
| bessely(10, x) | 92.3 ns                   |      122.0 ns               | 54.0 ns                    |  59.1 ns              |
| besselj(100, x) | 172.1 ns                 |      527.0 ns               | 220.1 ns                   |  445.0 ns             |
| bessely(100, x) | 229.7 ns                 |      304.0 ns               | 158.2 ns                   |  254.0 ns              |


# Sorted array

|                   | Bessels.jl (v1.8.2) CPU #1 | Bessels.jl (v1.8.2) CPU #2 |
| -------------     | :---:                      | :---:                      |
| besselj0          | 16.4 ns                    | 12.2 ns                    |
| besselj1          | 17.2 ns                    | 12.5 ns                    |
| bessely0          | 17.8 ns                    | 11.2 ns                    |
| bessely1          | 17.4 ns                    | 11.4 ns                    |
| besselj(10, x)    | 82.0 ns                    | 80.5 ns                    | 
| bessely(10, x)    | 62.48 ns                   | 38.8 ns                    |
| besselj(100, x)   | 159.6 ns                   | 183.8 ns                   | 
| bessely(100, x)   | 215.3 ns                   | 146.3 ns                   | 


# CPU Information
|               | CPU                        | OS              |
| ------------- | :---:                      | :---:                      |
| CPU #1      | 12 × Intel(R) Core(TM) i7-8700K CPU @ 3.70GHz                    | Linux (x86_64-linux-gnu)                   |
| CPU #2      | macOS (arm64-apple-darwin21.3.0)                    | 8 x Apple M1                   |

