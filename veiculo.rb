class Motor
  def vrum

  end
end

class Carro
  def initialize
    @motor = Motor.new
  end

  def acelera
    @motor.vrum
  end
end

carro = Carro.new
carro.acelera