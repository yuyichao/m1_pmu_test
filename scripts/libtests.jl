#!/usr/bin/julia

using Random

set_cores(ice, fire) = ccall((:set_cores, "./libpmu_test.so"),
                             Cvoid, (Cint, Cint), ice, fire)

function branch_test!(n, randomize, ice_res, fire_res)
    conds = zeros(Int8, n)
    conds[1:(n ÷ 2)] .= 1
    if randomize
        shuffle!(conds)
    end
    ccall((:branch_test, "./libpmu_test.so"),
          Cvoid, (Ptr{Int8}, Cint, Ptr{Int64}, Ptr{Int64}),
          conds, n, ice_res, fire_res)
end

function branch_target_test!(n, randomize, ice_res, fire_res)
    tgts = Int8[div((i - 1) * 8, n) for i in 1:n]
    if randomize
        shuffle!(tgts)
    end
    ccall((:branch_target_test, "./libpmu_test.so"),
          Cvoid, (Ptr{Int8}, Cint, Ptr{Int64}, Ptr{Int64}),
          tgts, n, ice_res, fire_res)
end

function rand_int_load_buffer(sz)
    # treat each 64 bytes as a whole and only load a single element in each 64bytes block
    # This way, we can maximize the number of cacheline we hit with fixed number of iterations
    @assert sz % 16 == 0
    ncacheline = sz ÷ 16
    order = shuffle(0:(ncacheline - 1))
    buff = Vector{Cint}(undef, sz)
    for i in 1:ncacheline
        cur_ele = order[i]
        next_ele = i == ncacheline ? order[1] : order[i + 1]
        next_offset = next_ele * 16 + rand(0:15)
        for j in 1:16
            buff[j + cur_ele * 16] = next_offset
        end
    end
    return buff
end

function mem_load_test!(sz, n, randomize, ice_res, fire_res)
    if randomize
        buff = rand_int_load_buffer(sz)
    else
        buff = Cint[1:(sz - 1); 0]
    end
    ccall((:mem_load_test, "./libpmu_test.so"),
          Cvoid, (Ptr{Cint}, Cint, Ptr{Int64}, Ptr{Int64}),
          buff, n, ice_res, fire_res)
end

function mem_load_test2!(sz, n, randomize, ice_res, fire_res)
    buff = zeros(Cint, sz)
    ccall((:mem_load_test2, "./libpmu_test.so"),
          Cvoid, (Ptr{Cint}, UInt64, UInt32, Cint, Ptr{Int64}, Ptr{Int64}),
          buff, randomize ? rand(1:typemax(UInt64)) : UInt64(0), sz, n, ice_res, fire_res)
end

function mem_store_test2!(sz, n, randomize, ice_res, fire_res)
    buff = zeros(Cint, sz)
    ccall((:mem_store_test2, "./libpmu_test.so"),
          Cvoid, (Ptr{Cint}, UInt64, UInt32, Cint, Ptr{Int64}, Ptr{Int64}),
          buff, randomize ? rand(1:typemax(UInt64)) : UInt64(0), sz, n, ice_res, fire_res)
end

function mem_load_test3!(sz, stride, n, randomize, ice_res, fire_res)
    buff = zeros(Cint, sz * stride)
    ccall((:mem_load_test3, "./libpmu_test.so"),
          Cvoid, (Ptr{Cint}, UInt64, UInt32, UInt64, Cint, Ptr{Int64}, Ptr{Int64}),
          buff, randomize ? rand(1:typemax(UInt64)) : UInt64(0), sz, stride, n, ice_res, fire_res)
end

function mem_store_test3!(sz, stride, n, randomize, ice_res, fire_res)
    buff = zeros(Cint, sz * stride)
    ccall((:mem_store_test3, "./libpmu_test.so"),
          Cvoid, (Ptr{Cint}, UInt64, UInt32, UInt64, Cint, Ptr{Int64}, Ptr{Int64}),
          buff, randomize ? rand(1:typemax(UInt64)) : UInt64(0), sz, stride, n, ice_res, fire_res)
end

function mem_load_test4!(sz, stride, n, randomize, ice_res, fire_res)
    buff = zeros(Cint, sz * stride)
    ccall((:mem_load_test4, "./libpmu_test.so"),
          Cvoid, (Ptr{Cint}, UInt64, UInt32, UInt64, Cint, Ptr{Int64}, Ptr{Int64}),
          buff, randomize ? rand(1:typemax(UInt64)) : UInt64(0), sz, stride, n, ice_res, fire_res)
end

function mem_store_test4!(sz, stride, n, randomize, ice_res, fire_res)
    buff = zeros(Cint, sz * stride)
    ccall((:mem_store_test4, "./libpmu_test.so"),
          Cvoid, (Ptr{Cint}, UInt64, UInt32, UInt64, Cint, Ptr{Int64}, Ptr{Int64}),
          buff, randomize ? rand(1:typemax(UInt64)) : UInt64(0), sz, stride, n, ice_res, fire_res)
end
