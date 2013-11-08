#!/usr/bin/ruby


(1..1000).each do |a|
    (1..1000).each do |b|
        csqr=(a**2)+(b**2)
        c=Math.sqrt(csqr)
        if c.is_a? Integer
            #puts "#{a} #{b} #{c}"
        elsif c.to_s.match(/\.0$/)
            if (a+b+c).to_i == 1000
                puts"#{a} #{b} #{c}"
                puts (a+b+c)
                puts (a*b*c)
            end
        end
    end
end
