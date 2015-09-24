
#require 'using'

def sim
  
   begin
    puts "this is test for ensure."
    raise "something wrong."

   ensure

     puts "---THIS IS ENSURE---"

   end

  
end


sim
