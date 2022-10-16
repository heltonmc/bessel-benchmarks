using Bessels
function bessel(f)
    N = 50000000
    v = rand(N)*200
    v = sort(v)
    a = 0.0

    tstart = time()
    for _x in v
        a += f(_x)
    end
    tend = time()
    t = (tend-tstart) / N * 1e9
    return t, a
end
function bessel(f, nu)
    N = 50000000
    v = rand(N)*200
    v = sort(v)
    a = 0.0

    tstart = time()
    for _x in v
        a += f(nu, _x)
    end
    tend = time()
    t = (tend-tstart) / N * 1e9
    return t, a
end
bessel(besselj0)
bessel(besselj, 0)

