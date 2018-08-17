class Alumno
  def initialize(nombre, *notas)
    @nombre = nombre
    @notas = notas.map(&:to_i)
  end

  def self.read_file(filename = 'notas.txt')
    file = File.open(filename, 'r')
    data = file.readlines
    file.close
    alumnos = []

    data.each do |line|
      ls = line.split(', ')
      alumnos << Alumno.new(*ls)
    end
    alumnos
  end
end

alumnos = Alumno.read_file
print alumnos
