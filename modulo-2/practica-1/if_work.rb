puts "#############"
puts "Ejemplo en if"
puts "#############"

variable = "false"
otra_variable = "nil"

if variable == "Algún texto"
  puts "No es igual a Algún texto"

elsif otra_variable.nil?
  puts "otra_variable es nil!"

elsif variable == false
  puts "Al parecer esto es lo que se debe ejecutar!"

else
  puts "Nada se ejecutó? Por que?"
end


puts "###############"
puts "Ejemplo en case"
puts "###############"

variable = "false"
otra_variable = "nil"

case
  when variable == "Algún texto" then puts "No es igual a Algún texto"
  when otra_variable.nil? then puts "otra_variable es nil!"
  when variable == false then puts "Al parecer esto es lo que se debe ejecutar!"
  when variable == false then puts "Al parecer esto es lo que se debe ejecutar!"
  else
    puts "Nada se ejecutó? Por que?"
end
