class RockPaperScissorsGame
  def initialize()
    @pieces = %w[piedra papel tijeras]
    @beats = {
      'piedra' => 'papel',
      'papel' => 'tijeras',
      'tijeras' => 'piedra',
    }
    play
  end
 
  def play
   answer = nil
   print "\nEscoge tu jugada: #@pieces? "
   answer = gets.chomp  
   if answer == (@pieces[0])||(@pieces[1])||(@pieces[2])
      h = answer
      c = @pieces.sample
      print "Tu eleccion: #{h}, Computadora: #{c} => "
      if h == c
        puts "draw"
      elsif h == @beats[c]
        puts "Ganas a la computadora!"
      else
        puts "Perdiste"
      end
   elsif
      puts "Jugada invalida, prueba otra vez"
   end
   end
end
 
game = RockPaperScissorsGame.new