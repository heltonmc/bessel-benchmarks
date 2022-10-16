# Speed comparison of Bessel Functions

This project pulls together benchmarks of different algorithms to compute Bessel and other special functions in any programming language. Contributions are very welcome to improve benchmarks or add additional ones.

This is very experimental right now. Please don't take this as any indication that something is "better". Especially because I do not yet report accuracy over the interval.

# Unsorted array

|               | Bessels.jl (v1.8.2) CPU #1 | Bessels.jl (v1.8.2) CPU #2 |
| ------------- | :---:                      | :---:                      |
| besselj0      | 26.0 ns                    | 29.9 ns                    |
| besselj1      | 26.7 ns                    | 29.9 ns                    |
| bessely0      | 28.1 ns                    | 30.9 ns                    |
| bessely1      | 27.6 ns                    | 30.3 ns                    |

# Sorted array

|               | Bessels.jl (v1.8.2) CPU #1 | Bessels.jl (v1.8.2) CPU #2 |
| ------------- | :---:                      | :---:                      |
| besselj0      | 16.4 ns                    | 12.2 ns                    |
| besselj1      | 17.2 ns                    | 12.5 ns                    |
| bessely0      | 17.8 ns                    | 11.2 ns                    |
| bessely1      | 17.4 ns                    | 11.4 ns                    |


# CPU Information
|               | CPU                        | OS              |
| ------------- | :---:                      | :---:                      |
| CPU #1      | 12 × Intel(R) Core(TM) i7-8700K CPU @ 3.70GHz                    | Linux (x86_64-linux-gnu)                   |
| CPU #2      | macOS (arm64-apple-darwin21.3.0)                    | 8 x Apple M1                   |

