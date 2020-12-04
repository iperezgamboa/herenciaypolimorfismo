require_relative 'habilidades'
require_relative 'alimentacion'

class Animal

    attr_writer :nombre

    def initialize(nombre)
        @nombre = nombre
    end
end


class Ave < Animal
end

class Mamifero < Animal
end

class Insecto < Animal
end

# pinguino,paloma, pato heredan de Ave
class Pinguino < Ave
    include Habilidades::Volador
    include Alimentacion::Carnivoro
    include Habilidades::Nadador
end

class Paloma < Ave
    include Habilidades::Volador
    include Alimentacion::Carnivoro
    include Habilidades::Nadador
    
end

class Pato < Ave
    include Habilidades::Volador
    include Alimentacion::Carnivoro
    include Habilidades::Nadador
    
end

#las perro,gato,vaca heredan de Mamifero
class Perro < Mamifero
    include Habilidades::Caminante
    include Habilidades::Nadador
    include Alimentacion::Carnivoro
end

class Gato < Mamifero
    include Habilidades::Caminante
    include Habilidades::Nadador
    include Alimentacion::Carnivoro
end

class Vaca < Mamifero
    include Habilidades::Caminante
    include Habilidades::Nadador
    include Alimentacion::Carnivoro
    
end

# mariposa, mariposa, abeja heredan de Insecto
class Mosca < Insecto
    include Habilidades::Volador
    include Alimentacion::Herbivoro
end

class Mariposa < Insecto
    include Habilidades::Volador
    include Alimentacion::Herbivoro
end

class Abeja < Insecto
    include Habilidades::Volador
    include Alimentacion::Herbivoro
end


