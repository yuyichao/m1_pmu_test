#!/usr/bin/julia

using Random

set_scores(ice, fire) = ccall((:set_cores, "./libpmu_test.so"),
                              Cvoid, (Cint, Cint), ice, fire)

function branch_test!(n, randomize, ice_res, fire_res)
    conds = zeros(Int8, n)
    conds[1:(n ÷ 2)] = 1
    if randomize
        randcycle!(conds)
    end
    ccall((:branch_test, "./libpmu_test.so"),
          Cvoid, (Ptr{Int8}, Cint, Ptr{Int64}, Ptr{Int64}),
          conds, n, ice_res, fire_res)
end

function branch_target_test!(n, randomize, ice_res, fire_res)
    tgts = Int8[div((i - 1) * 8, n) for i in 1:n]
    if randomize
        randcycle!(tgts)
    end
    ccall((:branch_target_test, "./libpmu_test.so"),
          Cvoid, (Ptr{Int8}, Cint, Ptr{Int64}, Ptr{Int64}),
          tgts, n, ice_res, fire_res)
end

function mem_load_test!(sz, n, randomize, ice_res, fire_res)
    buff = Cint[1:(sz - 1); 0]
    if randomize
        randcycle!(buff)
    end
    ccall((:mem_load_test, "./libpmu_test.so"),
          Cvoid, (Ptr{Cint}, Cint, Ptr{Int64}, Ptr{Int64}),
          buff, n, ice_res, fire_res)
end
