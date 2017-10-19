class AnalizadorLinea

  def initialize(line, number)
    #inicializar contet, numero_linea, max_frec_palabras
    @contet=line
    @numero_linea=number
    @max_frec_palabras= []
    #invocar a calcular_frecuencia_palabras (metodo de instancia)
    self.calcular_frecuencia_palabras()
  end

  def calcular_frecuencia_palabras()
    #Por cada palabra que aparece en la linea (content) calcular la cantidad de veces que se repite
    frecuencias = hash.new
    @content.split.each do |palabra|
      frecuencias[palabra.downcase] +=1
    end
    #Ver la maxima frecuencias
    #Almacenar en @max_frec_count
    @max_frec_count = frecuencias.value.max

    #Ademas calcular en @max_frec_palabras las que se repiten el nro. máximo entre las frecuencias.
    frecuencias.each do |k,v|
      @max_frec_palabras << k if max_frec_count ==v
  end

end


class Solution

  def initialize()
    #Inicializar variables: analizadores, max_count_across_lines, max_count_palabras_across_lines
    @analizadores=[]
    @max_count_across_lines=nil
    @max_count_palabras_across_lines=nil
  end

  def analizar_archivo()
    #leer el archivo test.txt linea por linea
    num_linea=0
    File.foreach("test.txt") do { |line|  }
      @analizadores << AnalizadorLinea.new(linea, num_linea +=1)
    end
    #crear analizadores de linea
    
  end

  def calcular_linea_mayor_frecuencia()
    #recorrer los analizadores de línea y buscar cual es el máximo max_frec_count
    maximo= @analizadores.max_by do |analizador|
      analizador.max_frec_count
    end
    @max_count_across_lines=maximo.max_frec_count
    #identificar cuales son las líneas que cuentan con palabras repetidas el máximo nro. de veces.
    #cargar las líneas en la variable @max_count_palabras_across_lines



  end
  def print_palabras_mayor_frecuencia()
    #recorrer @max_count_palabras_across_lines (que tiene analizadores, y los analizadores palabras)
    #puts "#{palabra} (aparece en la línea #{analizador.numero_linea})"
  end
end
