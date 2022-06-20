# Crear la clase Animal con un atributo nombre. Agregar un método getter para el
# atributo nombre. (1 Punto)
# ● Crear las clases Ave, Mamífero e Insecto. Ambas heredan de Animal. (1 Punto)
# ● Crear las clases Pingüino, Paloma y Pato. Las tres heredan de Ave. (1 Punto)
# ● Crear las clases Perro, Gato y Vaca. Las tres heredan de Mamífero. (1 Punto)
# ● Crear las clases Mosca, Mariposa y Abeja. Las tres heredan de Insecto. (1 Punto)
# ● Incluye los módulos en cada subclase utilizando la instrucción include con el objetivo
# de definir las habilidades y tipo de alimentación de cada animal. (2 Puntos)

module Habilidades
    module Volador
        def volar
            'Estoy volandooooo!'
        end
        def aterrizar
            'Estoy cansado de volar, voy a aterrizar'
        end
    end

    module Nadador
        def nadar
            'Estoy nadando!'
        end
        def sumergir
            'glu glub glub glu'
        end
    end

    module Caminante
        def caminar
            'Puedo caminar!'
        end
    end
end

module Alimentacion

    module Herbivoro
        def comer
        'Puedo comer plantas!'
        end
    end

    module Carnivoro
        def comer
            'Puedo comer carne!'
        end
    end

end

class Animal
    @nombre

    def nombre()
        @nombre
    end
end

class Ave < Animal
end

class Mamifero < Animal
end

class Insecto < Animal
end

class Pinguino < Ave
    include Habilidades::Volador
end

class Paloma < Ave
    include Habilidades::Volador
end

class Pato < Ave
    include Habilidades::Volador
end

class Perro < Mamifero
end

class Gato < Mamifero
    include Alimentacion::Carnivoro
end

class Vaca < Mamifero
    include Alimentacion::Herbivoro
end

class Mosca < Insecto
    include Habilidades::Volador
end

class Mariposa < Insecto
    include Habilidades::Volador
    include Alimentacion::Herbivoro
end

class Abeja < Insecto
    include Habilidades::Volador
    include Alimentacion::Herbivoro
end