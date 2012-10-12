require 'C:\Users\Vegeta\RUBY\circum.rb'
require 'test/unit'

class TestJugadas < Test::Unit::TestCase
  def test_negativos
	testcircum = Circumferencia.new(-4)
    assert (testcircum.valor_perimetro <= 0)
	testcircum = Circumferencia.new(-1)
    assert (testcircum.valor_perimetro <= 0)
	testcircum = Circumferencia.new(-66)
    assert (testcircum.valor_perimetro <= 0)
	testcircum = Circumferencia.new(-1555)
    assert (testcircum.valor_perimetro <= 0)
	assert_nothing_raised( RuntimeError ) {Circumferencia.new(-5) }
	assert_nothing_raised( RuntimeError ) {Circumferencia.new(-155) }
  end

  def test_nonumero
	assert_nothing_raised( RuntimeError ) {Circumferencia.new('aa') }
	prueba = Circumferencia.new('aa')
    assert_equal 0, prueba.valor_perimetro
  end
end