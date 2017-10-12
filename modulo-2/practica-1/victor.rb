variable = "false"
otra_variable = "nil"

case
when variable == "Algún texto"
  puts 'No es igual a algun texto'
when otra_variable.nil?
  puts 'otra variable es nil'
when variable == false
  puts 'al parecer esto se debe generar'
else
  puts '"Nada se ejecutó? Por que?"'
end
