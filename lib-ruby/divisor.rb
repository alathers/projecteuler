
## Must figure out how to bound this by sqrt
#   http://stackoverflow.com/questions/3398159/all-factors-of-a-given-number
def factor (val)
    divisors=Array.new
    (1..val).each do |tester|
        if val%tester == 0 
            divisors.push tester
        end
    end
    return divisors
end