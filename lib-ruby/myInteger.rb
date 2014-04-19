
## Must figure out how to bound this by sqrt
#   http://stackoverflow.com/questions/3398159/all-factors-of-a-given-number
##   Should really learn more about graphs
##  Could do recursive traversal of neighbors

# from Rosetta code, to give me perspective on elegant solutions
#class Integer
#  def factors()
    # for every i in 1..self.sqrt, select if self % i == 0
#    1.upto(Math.sqrt(self)).select {|i| (self % i).zero?}.inject([]) do |f, i| 
        ## push into the array both i and the divident of self / i unless i is sqrt self
#      f << i
#      f << self/i unless i == self/i
#      f
#    end.sort
#  end
#end


class Integer

    # My interpretation of the rosetta code algorithm, so it remains understandable by me
    def factor()
        factors=Array.new
        1.upto(Math.sqrt(self)) do |testval|
            if (self % testval).zero?
                factors << testval
                if ! (self/testval == testval)
                    factors << (self/testval)
                end
            end
        end
        factors.sort
    end

    def triangle ()
        1.upto(self).inject { |sum,i| sum+i } 
    end

    def collatzNext ()
        if self.odd? 
            return (3*self)+1
        elsif self.even?
            return (self/2)
        else 
            return 0
        end
    end

    def collatzChain ()
        chain=Array.new
        lastval=self
        val=self
        until val == 1
            chain << val
            lastval=val
            val=val.collatzNext
            break if val == lastval # make sure we don't infinite loop on reproducing the same value
        end 
        return chain
    end

end











=begin
    
The basic operations provided by a graph data structure G usually include:

    adjacent(G, x, y): tests whether there is an edge from node x to node y.
    neighbors(G, x): lists all nodes y such that there is an edge from x to y.
    add(G, x, y): adds to G the edge from x to y, if it is not there.
    delete(G, x, y): removes the edge from x to y, if it is there.
    get_node_value(G, x): returns the value associated with the node x.
    set_node_value(G, x, a): sets the value associated with the node x to a.

Structures that associate values to the edges usually also provide:

    get_edge_value(G, x, y): returns the value associated to the edge (x,y).
    set_edge_value(G, x, y, v): sets the value associated to the edge (x,y) to v.

    
=end