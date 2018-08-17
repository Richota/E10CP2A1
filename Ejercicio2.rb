module Formula
  def perimetro(a, b)
    perimetro = a + b
  end

  def area(a, b)
    area = a * b
  end
end

class Rectangulo
  attr_accessor :base, :altura
  def initialize(base, altura)
    @base = base
    @altura = altura
  end

  def lados
    print "Rectandulo de base #{base} y altura #{altura} \n"
  end

  extend Formula
end

class Cuadrado
  attr_accessor :lado
  def initialize(lado)
    @lado = lado
  end

  def lados
    print "Cuadrado de lado #{lado} \n"
  end

  extend Formula
end

c = Cuadrado.new(5).lados
r = Rectangulo.new(3, 5).lados
