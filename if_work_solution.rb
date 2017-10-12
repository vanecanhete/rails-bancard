variable ="false"
otra_variable ="nil"
case variable
when "Algún texto" then puts "no es igual a algun texto"
when otra_variable.nil? then puts "otra_variable es nil"
when false then puts "Al parecer esto es lo que se debe ejecutar"
else puts "Nada se ejecuto? Por que?"
end
