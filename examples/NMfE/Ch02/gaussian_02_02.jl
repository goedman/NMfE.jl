using NMfE

a = [2. -3. 1.; 1. -1. -2.; 3. 1. -1.]
b = [7., -2., 0.]

c = a\b

@show round(c, 14)
@show round(a * c, 14) == b
println()

println("Julia lufact(a):")
f = lufact(a);
println(f[:L])
println()
println(f[:U])
println()

(lower, upper) = lufac(a)
println("NMfE lufac(a) - lower:")
println(lower)
println()
println("NMfE lufac(a) - upper:")
println(upper)
println()

println(b)
println()
subfor!(lower, b)
println(b)
println()
subbac!(upper, b)
println(b)
println()
