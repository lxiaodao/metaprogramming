module Printable
   def print

    'this is printable'
   end

   def prepare_cover
   end
end

module Document
   def print_to_screen
     prepare_cover
     format_for_screen
     print
   end

   def format_for_screen

   end

   def print
       'this is print from document'
   end

end

class Book
   #include Document
   include Printable
   include Document

end

#b1=Book.new
#puts b1.print_to_screen
#puts Book.ancestors
