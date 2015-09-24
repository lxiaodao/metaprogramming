def jisuan(x,y)
   puts yield(5,6) if block_given?
   puts "after block_given."
   x+yield(x,y)
  
end

puts jisuan(1,2) {|a,b|(a+b)*4}
