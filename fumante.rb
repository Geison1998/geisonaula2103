class Fumante
    @@qtdAnos
    @@qtdCigarros
    attr_accessor :qtdAnos, :qtdCigarros

    def initialize(qtdAnos, qtdCigarros)
        @qtdAnos, @qtdCigarros = qtdAnos, qtdCigarros
    end

    def calcular(valor)
        valorTotal = valor.to_f * (@qtdAnos.to_f * (@qtdCigarros.to_f * 365))
    end

end

puts "Quantos anos fumando?"
qtdAnos = gets.chomp
puts "Quantos cigarros por dia?"
qtdCigarros = gets.chomp
puts "Qual o valor do cigarro?"
valorCigarro = gets.chomp

fumante = Fumante.new(qtdAnos, qtdCigarros)

puts "O fumante já gastou " + fumante.calcular(valorCigarro).to_s + " reais."
