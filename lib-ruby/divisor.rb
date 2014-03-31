
## Must figure out how to bound this by sqrt
#   http://stackoverflow.com/questions/3398159/all-factors-of-a-given-number
##   Should really learn more about graphs
##  Could do recursive traversal of neighbors
def factor (val)
    divisors=Array.new
    (1..val).each do |tester|
        if val%tester == 0 
            divisors.push tester
        end
    end
    return divisors
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