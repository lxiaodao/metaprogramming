##
##¶¯Ì¬·½·¨
class Computer

   def initialize(id,datasource)
     @id= id
     @datasource= datasource
    
   end

   def self.define_component(name)
     define_method(name) {
         info=@datasource.send "get_#{name}_info",@id 
         
         price=@datasource.send "get_#{name}_price",@id
         result="#{name.to_s.capitalize}: #{info} ($#{price})"
         result
     }   
  end
  ##
  define_component :cpu
  define_component :mouse
  define_component :keyboard


end
