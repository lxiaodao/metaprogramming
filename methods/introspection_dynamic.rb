##
##内省方式，加上部动态方法
require_relative "datasource"
class ComputerIn

   def initialize(id,datasource)
     @id= id
     @datasource= datasource
      #
    
     datasource.methods.grep(/^get_(.*)_info$/) { 
        puts "this is arg:#{$1}"
       ComputerIn.define_component $1 
       }
     
   end

   def self.define_component(name)
     #puts "===invoke define_component==="
     define_method(name) {
         puts "this is:#{name}"
         info=@datasource.send "get_#{name}_info",@id 
         
         price=@datasource.send "get_#{name}_price",@id
         result="#{name.to_s.capitalize}: #{info} ($#{price})"
         result
     }   
  end
 

end

computer=ComputerIn.new(10,DS.new)
puts computer.keyboard