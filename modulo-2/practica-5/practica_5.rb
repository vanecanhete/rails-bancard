class AnalizadorLinea

  attr_reader :max_frec_count, :max_frec_palabras, :content, :numero_linea

  def initialize(line, number)
    #inicializar contet, numero_linea, max_frec_palabras
    @content = line
    @numero_linea = number
    @max_frec_palabras = []
    self.calcular_frecuencia_palabras
    #invocar a calcular_frecuencia_palabras (metodo de instancia)
  end

  def calcular_frecuencia_palabras()
    #Por cada palabra que aparece en la linea (content) calcular la cantidad de veces que se repite
    frecuencia = Hash.new(0)

    @content.split.each do |palabra|
      frecuencia[palabra.downcase] += 1
    end
    @max_frec_count = frecuencia.values.max

    frecuencia.each do |k,v|
      @max_frec_palabras << k if @max_frec_count == v
    end
    #Ver la maxima frecuencias
    #Almacenar en @max_frec_count

    #Ademas calcular en @max_frec_palabras las que se repiten el nro. máximo entre las frecuencias.
  end

end


class Solution
  attr_reader :analizadores, max_count_across_lines, max_count_palabras_across_lines

  def initialize()
    #Inicializar variables: analizadores, max_count_across_lines, max_count_palabras_across_lines
    analizadores = []
    max_count_across_lines = 0
    max_count_palabras_across_lines = []
  end

  def analizar_archivo()
    #leer el archivo test.txt linea por linea
    number = 0
    File.foreach('test.txt') do |linea|
      @analizadores << AnalizadorLinea.new(linea.chomp, number+=1)
    end
    #crear analizadores de linea
  end

  def calcular_linea_mayor_frecuencia()
    #recorrer los analizadores de línea y buscar cual es el máximo max_frec_count
    max_count_across_lines = @analizadores.each{ |analizador| analizador.max_frec_count > max_count_across_lines}
    #identificar cuales son las líneas que cuentan con palabras repetidas el máximo nro. de veces.
    #cargar las líneas en la variable @max_count_palabras_across_lines
  end
  def print_palabras_mayor_frecuencia()
    #recorrer @max_count_palabras_across_lines (que tiene analizadores, y los analizadores palabras)
    #puts "#{palabra} (aparece en la línea #{analizador.numero_linea})"
  end
end
