require 'benchmark'


def prime?(int)
    if int < 2
        return false
    else
        n = 2
        while n < int
            return false if int % n == 0
            n += 1
        end
        true
    end
end

# def prime2?(int)
#     if int < 2
#         return false
#     else
#         n = 2
#         until n == int
#             return false if int % n == 0
#             n += 1
#         end
#         true
#     end
# end

# def prime3?(int)
#     if int < 2
#         return false
#     else
#         n = 2
#         (2..int-1).each do
#             return false if int % n == 0
#             n += 1
#         end
#         true
#     end
# end


# Benchmark.bm do |benchmark|
#     benchmark.report("Test 1") do
#         50_000.times do
#             prime?(675)
#         end
#     end
#     benchmark.report("Test 2") do
#         50_000.times do
#             prime2?(675)
#         end
#     end
#     benchmark.report("Test 3") do
#         50_000.times do
#             prime3?(675)
#         end
#     end
# end

# Results of benchmark
# user     system      total        real
# Test 1  0.008712   0.000065   0.008777 (  0.009067)
# Test 2  0.008938   0.000129   0.009067 (  0.009544)
# Test 3  0.025377   0.000221   0.025598 (  0.026123)

# test 1 is faster so I will leave that test uncommented to pass this lab
