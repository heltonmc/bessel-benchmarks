using Bessels
function bessel(f; N=50000000, Order=false)
    v = rand(N)*200
    if Order
        v = sort(v)
    end
    a = 0.0

    tstart = time()
    for _x in v
        a += f(_x)
    end
    tend = time()
    t = (tend-tstart) / N * 1e9
    return t, a
end
function bessel(f, nu; N=50000000, Order=false)
    v = rand(N)*200
    if Order
        v = sort(v)
    end
    a = 0.0

    tstart = time()
    for _x in v
        a += f(nu, _x)
    end
    tend = time()
    t = (tend-tstart) / N * 1e9
    return t, a
end
[bessel(func) for func in [besselj0, besselj1, bessely0, bessely1]]
[bessel(func; Order=true) for func in [besselj0, besselj1, bessely0, bessely1]]
