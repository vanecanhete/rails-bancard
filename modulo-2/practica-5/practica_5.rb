class AnalizadorLinea
  attr_reader :numero_linea, :max_frec_count, :max_frec_palabras, :content

  def initialize(content, numero_linea)
    #inicializar contet, numero_linea, max_frec_palabras
    #invocar a calcular_frecuencia_palabras (metodo de instancia)
    @content = content
    @numero_linea = numero_linea
    @max_frec_palabras = []
    @max_frec_count = 0
    calcular_frecuencia_palabras()
  end

  def calcular_frecuencia_palabras()
    #Por cada palabra que aparece en la linea (content) calcular la cantidad de veces que se repite
    #Almacenar este contador en @max_frec_palabras
    #Ademas calcular en @max_frec_count el nro. máximo entre las frecuencias.
    frecuencia = Hash.new(0)
    @content.split.each do |word|
    	frecuencia[word.downcase] += 1
    end

    @max_frec_count = frecuencia.values.max
    frecuencia.each do |key, value|
    	if (@max_frec_count == value)
    		@max_frec_palabras.push(key)
    	end
    end

    def to_s
       "AnalizadorLinea [numero_linea #{@numero_linea}, contet #{@contet}, max_frec_count #{@max_frec_count}, max_frec_palabras #{@max_frec_palabras}]"
  	end
  end

end


class Solution
	attr_reader :analizadores, :max_count_across_lines, :max_count_palabras_across_lines

	def initialize()
		#Inicializar variables: analizadores, max_count_across_lines, max_count_palabras_across_lines
		@analizadores = []
	end

	def analizar_archivo()
		#leer el archivo test.txt linea por linea
    	#crear analizadores de linea
		if not File.exist? 'test.txt'
			puts "No existe el archivo"
		else
            contador = 0
			File.foreach ('test.txt') do |line|
				contador += 1
				analizador = AnalizadorLinea.new(line.chomp, contador)
				@analizadores.push(analizador)
				
			end
		end
	end

	def calcular_linea_mayor_frecuencia()
    	#recorrer los analizadores de línea y buscar cual es el máximo max_frec_count
    	#identificar cuales son las líneas que cuentan con palabras repetidas el máximo nro. de veces.
    	#cargar las líneas en la variable @max_count_palabras_across_lines
    	@max_count_across_lines = 0
		@max_count_palabras_across_lines = []

    	@analizadores.each do | analizador |
    		if (analizador.max_frec_count > @max_count_across_lines)
    			@max_count_across_lines = analizador.max_frec_count
    		end
    	end

    	@analizadores.each do | analizador |
    		if (analizador.max_frec_count == @max_count_across_lines)
    			#puts analizador
    			@max_count_palabras_across_lines.push(analizador)
    		end
    	end
    	#puts max_frec_count_aux
    	#puts max_count_palabras_across_lines
  	end
  	
  	def print_palabras_mayor_frecuencia()
    	#recorrer @max_count_palabras_across_lines (que tiene analizadores, y los analizadores palabras)
    	#puts "#{palabra} (aparece en la línea #{analizador.numero_linea})"

    	@max_count_palabras_across_lines.each do |analizador|
    		analizador.max_frec_palabras.each do | palabra |
    			#puts analizador
    			puts "#{palabra} aparece en la linea #{analizador.numero_linea}"
    		end
    	end
  	end

  	def to_s
       "Solution [ analizadores #{@analizadores}, max_count_across_lines #{@analizadores}, max_count_palabras_across_lines #{@max_count_palabras_across_lines}]" 
  	end
end
