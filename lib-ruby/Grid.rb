def symmetricSubsetGrid (inGrid, x, y, width)
    newGrid=Array.new(width) {(Array.new(width))}
    #puts "#{x} #{y} #{width} #{rownum} #{colnum}"
    (0..3).each do |colnum|
        (0..3).each do |rownum|
            if y+colnum < inGrid.length && x+rownum < inGrid.length
                newGrid[colnum][rownum] = inGrid[y+colnum][x+rownum]
            else
                newGrid[colnum][rownum] = 1
            end
        end
    end
    return newGrid
end


def rightMaxProduct (inGrid, width)    #assume symmetrical grids, test for 0 value to abort
    products=Array.new(width,1)   # Each element index correlates to the column index
    (0..width-1).each do |col|
        (0..width-1).each do |row|
            #puts "Multiplying #{inGrid[col][row].to_i} into  #{products[col].to_i}"
            products[col] *= inGrid[col][row].to_i
        end
    end
    return products.max
end

def downMaxProduct (inGrid, width)
    products=Array.new(width,1)   # Each element index correlates to the column index
    (0..width-1).each do |row|
        (0..width-1).each do |col|
            #puts "Multiplying #{inGrid[col][row].to_i} into  #{products[row].to_i} at #{row}"
            products[row] *= inGrid[col][row].to_i
        end
    end
    return products.max
end

def downDiagMaxProduct (inGrid, width)    #assume symmetrical grids, test for 0 value to abort
    product=1
    (0..width-1).each do |val|
        product *= inGrid[val][val].to_i
    end
    return product
end

def upDiagMaxProduct (inGrid, width)    #assume symmetrical grids, test for 0 value to abort
    product=1
    (0..width-1).each do |val|
   #     puts inGrid[val][width-val-1].to_i
        product *= inGrid[val][width-val-1].to_i
    end
    return product
end