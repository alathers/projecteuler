
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