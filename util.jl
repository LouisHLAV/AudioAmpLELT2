function db2linear(db)
    return 10^(db/20)
end

function linear2db(lin)
    return 20*log(10, lin)
end

function cmrr_open(Acm_mf, Ad, r1=470, r2=4700)
    num = 2 * (Ad * r1 + 1) * Acm_mf
    den = (2 * r2) + (r1 * Acm_mf)
    return linear2db(num/den)
end

function input_imp_open(Rif, Ad, B=1/11)
    return Rif / (1 + Ad * B)
end

function output_imp_open(Rof, Ad, B=1/11)
    return Rof * (1 + Ad * B)
end

function slew_rate(dv, dt)
    return dv / (dt * 1e-3)
end
