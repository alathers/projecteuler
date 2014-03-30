#!/usr/bin/ruby

=begin
Adam Lathers
alathers@gmail.com


Largest palindrome product
Problem 4

A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.

Find the largest palindrome made from the product of two 3-digit numbers.


Honestly, this is where I start to fall down.  My algorithm design/implementation has never been exceptional
    I imagine I could leverage a tree of some kind (google/stacktrace suggests a suffix tree)
    I could also semi-brute force by bounding the solution set on 999*999, and then stripping values since sorting an array of size 998001 would suck
    Also, a great chance for recursion, which I used to have a hard time with as well

=end

require '../lib-ruby/StringNumbers.rb'

#ENV['RUBY_THREAD_VM_STACK_SIZE']=200000000


upper=ARGV[0].to_i || 999
## Removing the recursive solution as primary because it's so grossly non-optimal at this size that it's pointless
puts maxPalendrome(0,upper,upper,upper,999)




=begin

time ./4.rb
906609

real    0m0.775s
user    0m0.761s
sys 0m0.013s

YAY exponential runtimes!


y=999
max=0
while y > 0
    x=999
while x > 0
    prod=x*y
    if prod.to_s == prod.to_s.reverse
        #puts prod
        #puts x
        #puts y
        if prod > max
            max = prod
        end
    end
    x=x-1
end
y=y-1
end
puts max



=========Solution 2
The same solution, slightly more gracefully:

palandromes=Array.new
(1..999).each do |x|
    (1..999).each do |y|
        if (x*y).to_s == (x*y).to_s.reverse
            palandromes.push (x*y)
        end
    end
end

puts palandromes.max


at scale of limit = 999, runtime = .857s
at scale of limit = 9999 runtime = ....very long (killed after 1:28.356)


=========Solution 3

#upper=999
## Removing the recursive solution as primary because it's so grossly non-optimal at this size that it's pointless
#puts maxPalendrome(0,upper,upper,upper)
##############
##
#   OK, I refactored and now see remarkable improvement.
river:4 alathers$ for h in 99 999 9999 99999 ; do echo "bound = $h: " ; time ./4.rb $h;done
bound = 99:
9009

real    0m0.047s
user    0m0.033s
sys 0m0.012s
bound = 999:
906609

real    0m0.057s
user    0m0.043s
sys 0m0.013s
bound = 9999:
99000099

real    0m0.054s
user    0m0.040s
sys 0m0.013s
bound = 99999:
9966006699

real    0m12.188s
user    0m12.086s
sys 0m0.101s






=end