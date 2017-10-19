text = "Oga ari Oga ari oi ka'i oi ka'i".split(" ")                       
hash = Hash.new(0)                                                                                  
text.each { |clave| hash[clave]+=1 }      
p hash
