frecuencia = Hash.new(0)
sentencia = "Oga ari Oga ari oi kai oi kai"
sentencia.split.each do |word|
  frecuencia[word.downcase] += 1
end

p frecuencia
  
