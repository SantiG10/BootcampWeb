
class CuentaBancaria
    def initialize (nombre,cedula,num_cuenta,saldo)
      @nombre = nombre
      @cedula = cedula
      @num_cuenta = num_cuenta
      @saldo = saldo
    end

    def ingreso(valor)
      @saldo += valor
    end

    def retiro(valor)
      if @saldo > valor
        @saldo -= valor
      else
        puts "Fondos insuficientes"
      end
    end

    def getSaldo()
      @saldo
    end

    def transferencia (num_cuenta,valor)
      if valor <= @saldo
        num_cuenta.ingreso(valor)
        @saldo -= valor
      else
        puts "Fondos insuficientes"
      end
    end
end

cuenta1 = CuentaBancaria.new("Santiago","1037640756","123456",5000000.0)
cuenta2 = CuentaBancaria.new("Andres","1037640786","987654",100000.0)

puts "Saldo cuenta 1: #{cuenta1.getSaldo}"
puts "Retiro de $900.000 a la cuenta 1"
cuenta1.retiro(900000.0)
puts "Saldo cuenta 1: #{cuenta1.getSaldo}"
puts ""
puts "Saldo cuenta 2: #{cuenta2.getSaldo}"
puts "Ingreso de $100.000 a la cuenta 2"
cuenta2.ingreso(100000.0)
puts "Saldo cuenta 2: #{cuenta2.getSaldo}"
puts ""
puts "transferencia de cuenta 1 a cuenta 2 valor $100.000"
cuenta1.transferencia(cuenta2,100000.0)
puts "Saldo cuenta 1: #{cuenta1.getSaldo}"
puts "Saldo cuenta 2: #{cuenta2.getSaldo}"
