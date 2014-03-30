def isPalandrome (testString)
    if testString.to_s == testString.to_s.reverse then return true
    else return false
    end
end

def maxPalendrome (max, x, y,upper,lower)
    # I think this is my first attempt at recurssion since college
        # This is so grossly non-optimal that I have to set export RUBY_THREAD_VM_STACK_SIZE=200000000 before it'll work
            ## Addendum...set a lower bound to limit depth travesal waste
    if isPalandrome(x*y)
        if (x*y) > max 
            lower=max
            max=x*y
        end
        if x > 2  && (x*y) > lower # stop decreasing y, and move onto next x
            #puts "invoked2:  #{max}  #{x}  #{y} #{upper}" 
            lower=max
            max=maxPalendrome(max,x-1,upper,upper,lower)
        else
            #puts "invoked3:  #{max}  #{x}  #{y} #{upper}"
            return max
        end
    else
        if y > 2 && (x*y) > lower   # Set a lower bound limit to avoid wasting traversing into the depths of lo
            lower=max
            max=maxPalendrome(max,x,y-1,upper,lower)
        else
            if x > 2 
                lower=max
                max=maxPalendrome(max,x-1,upper,upper,lower)
            else 
                return max
            end
        end        
    end
    return max
end