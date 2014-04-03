
def isPrimeBruterForce (testPrime)
    #basically iterate from 2 upward, testing squares
        # Either the number is divisible by the testFactor (return array or false,facter)
        # or once the square of testFactor exceeds the testPrime
        # the testPrime is perceived as truly prime (return array of true,0)
    testFactor=2
    until testFactor**2 > testPrime
        if testPrime % testFactor == 0 
            return [false, testFactor]
        else testFactor+=1
        end
    end
    return [true,0]
end

    ### This needs to be rethought
    ## I could consider bounding with the set of already discovered primes maybe?
    ## Basically all numbers are either divisible by a prime, or are a prime.
    ## So if I seed with the set of discovered primes, then I could reduce this to something closer to O(n)-ish, or less

def isPrimeBruterForceSeeded (testPrime,knownPrimes)
    #basically iterate from 2 upward, testing squares
        # Either the number is divisible by the testFactor (return array or false,facter)
        # or once the square of testFactor exceeds the testPrime
        # the testPrime is perceived as truly prime (return array of true,0)

        # Maybe it's also possible to "knock out" multiples of known primes?
    knownPrimes.each do |testFactor|
        if testPrime % testFactor == 0 
            #puts " #{testFactor} is a factor of #{testPrime}"
            return [false, testFactor]
        end
    end

    testFactor=knownPrimes.max.to_i + 1
    until testFactor**2 > testPrime
        if testPrime % testFactor == 0 
            return [false, testFactor]
        else testFactor+=1
        end
    end
    #puts "prime found " + testPrime.to_s
    return [true,0]
end
