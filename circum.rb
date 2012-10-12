class Circumferencia
  def initialize(num)
	@radio = 0
	@perimetro = num.to_f 
	
	self.calc_radio
  end
  def calc_radio
     @radio = @perimetro/(2*Math::PI)
	 puts "El radio es #@radio"
  end
  def valor_perimetro
     @perimetro
  end
end
  
num = ARGV.shift
Circum = Circumferencia.new(num)
 