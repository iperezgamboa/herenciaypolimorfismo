#Utilizando los principios de Herencia y Polimorfismo, refactoriza el siguiente código para eliminar la
#innecesaria cantidad de sentencias if en los métodos ask e introduce.
require 'byebug'

class Person
     #attr_accessor :first, :last, :age
    def initialize(first, last, age)
        
        @first_name = first
        @last_name = last
        @age = age
    end
    
    def birthday
        @age += 1
    end
end 

class Student < Person
    def ask 
        puts "Aqui es la clase de programacion con Ruby?"
    end 

    def introduce
        puts "Hola profesor. Mi nombre es #{@first_name} #{@last_name}"
    end 
end 


class Teacher < Person
    def ask
        puts "Bienvenidos a la clase de programacion con Ruby!"
    end 

    def introduce
        puts "Hola alumnos. mi nombre es #{@first_name} #{@last_name}"
    end
end 


        
class Parent < Person
        def ask 
            puts "Aqui es la reunion de apoderados?"
        end 

        def introduce
            puts "Hola. Soy uno de los apoderados. Mi nombre es #{@first_name} #{@last_name}"
        end 
end 

