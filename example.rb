
array = Array.new()
(0...ARGV.size-1).each { |i| array << ARGV[i] }
pieces = ARGV.last.to_i
piece_size = (array.size/pieces.to_f).ceil
result = Array.new(pieces)
(0...pieces).each do |piece|
    result[piece] = array.slice(piece_size*piece, piece_size)
end
last_size=result.last.size
(last_size...piece_size).each do |n|
    if last_size < piece_size
        result.last[n] = "nil"
    end
end


puts result.inspect