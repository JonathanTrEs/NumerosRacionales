# Implementar en este fichero la clase para crear objetos racionales

require "gcd.rb" #incluimos el fichero con la funcion de maximo comun divisor

include Comparable


#clase para definir el objeto fraccion 
class Fraccion
   
   attr_accessor :num, :den #nos permite el uso de los getter y setter sobre num y den
   
   # Funcion initialize 
   def initialize(numerador, denominador)
      mcd = gcd(numerador, denominador) #Minimo comun divisor
      @num = numerador/mcd
      @den = denominador/mcd
  end
   #Funcion para devolver un string
   def to_s
      return "#{@num}/#{@den}"
   end
   #Fucion para devolver un flotante
   def to_f
     return @num/@den.to_f
   end
   #Fucion para comparar dos fracciones
   def ==(fraccion)
     return @num == fraccion.num && @den == fraccion.den
   end
   #Fucion para transformar una fraccion a su valor absoluto
   def abs
     Fraccion.new(@num.abs,@den.abs)
   end
   #Funcion para obtener el reciproco de un fraccion
   def reciproco
     Fraccion.new(@den,@num)
   end
   #Fucion para calcular el inverso de una fraccion
   def -@
     Fraccion.new(-@num,@den)
   end
    #Fucion para sumar dos fracciones
   def +(fraccion)
      n = fraccion.num * @den + fraccion.den * @num
      d = @den * fraccion.den
      Fraccion.new(n,d)
   end
    #Fucion para restar dos fracciones
   def -(fraccion)
      n = fraccion.den * @num - fraccion.num * @den
      d = @den * fraccion.den
      Fraccion.new(n,d)
   end
    #Fucion para multiplicar dos fracciones
   def *(fraccion)
      n = fraccion.num * @num
      d = fraccion.den * @den
      Fraccion.new(n,d)
   end
   #Funcion para dividir dos fracciones 
   def /(fraccion) #/
      n = fraccion.den * @num
      d = fraccion.num * @den
      Fraccion.new(n,d)
   end
    #Funcion para calcular el resto de dos fracciones
   def %(fraccion)
      re = @num * fraccion.den % @den * fraccion.num
   end
   #Funcion operador guerra de las galaxias
   def <=>(fraccion)
      if (@num * fraccion.den < @den * fraccion.num)
            return -1
      end
      if (@num * fraccion.den > @den * fraccion.num)
	    return 1
      end
      if(@num * fraccion.den == @den * fraccion.num)
            return 0
      end
   end
end
