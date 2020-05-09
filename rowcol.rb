def column(index)
  index % width
end

def row(index)
  (index/width).floor
end

def coords(index)
  [row(index), column(index)]
end

def width
  11
end

def height
  7
end

def show_values
  77.times do |index|
    puts "#{index} : #{coords(index).to_s}"
  end
end

show_values
