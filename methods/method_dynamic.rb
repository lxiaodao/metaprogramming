
require_relative "datasource"
class Computer

   def initialize(id,datasource)
     @id= id
     @datasource= datasource
   end

  
  ##
  define_method :getResult do |name_arg|
  
       info=@datasource.send "get_#{name_arg}_info",@id 
         
         price=@datasource.send "get_#{name_arg}_price",@id
         result="#{name_arg.to_s.capitalize}: #{info} ($#{price})"
         result
  end



end

computer=Computer.new(10,DS.new)
puts computer.getResult('mouse')
