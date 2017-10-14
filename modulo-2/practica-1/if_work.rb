variable = "false"
otra_variable = "nill"


case variable
	when "Algún texto" then puts "No es igual a Algún texto"
	when otra_variable.nil? then puts "otra variable es nil!"
	when false then puts "Al parecer esto es lo que se debe ejecutar!"
	else puts "Nada se ejecutó? Por que?"
end