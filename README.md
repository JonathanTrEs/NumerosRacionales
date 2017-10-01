
Curso: 3º 
Asignatura: Lenguaje y Paradigmas de programacion 
Grupo: 10 
Practica: 7 
Representantes: 2 
Nombre: Jonathan Trujillo Estevez 
Nombre: Ruben Guanche Flores

Descripcion: En esta practica utilizaremos la clase Fraccion implementada en la practica 6, a la cual le añadiremos el modulo comparable. Y realizaremos varias pruebas en Travis.

La estructura de nuestra practica es la siguente:

├── Gemfile
├── Gemfile.lock
├── lib
│   ├── gcd.rb
│   ├── racional.rb
├── Rakefile
├── Rakefile~
├── README.md
└── spec
    ├── racional_spec.rb
    └── racional_spec.rb~


En el directorio lib tenemos los siguientes ficheros:

    Fichero gcd.rb: Este fichero contiene una unica funcion, que es la funcion gcd, la cual devuelve el maximo comun divisor de la fraccion, lo que nos permite, la simplificacion de estas.

    Fichero racional.rb: En este fichero tenemos implementada la clase Fraccion, con cada uno de los metodos necesarios , para los operaciones que tenemos que hacer.

         Metodo: initialize que es llamado por el metodo .new, en este metodo
         simplificamos la fraccion y guardamos en variables los datos del numerador y del
         denominador.

         Metodo to_s: este metodo devuelve el objeto fraccion que hallamos creado en forma
         de string.

         Metodo to_f: este metodo devuelve el objeto fraccion que hallamos creado en forma
         de flotante.

         Metodo ==: este metodo nos permite comparar dos fracciones para saber si estas son 
         iguales.

         Metodo abs: este metodo convierte una fraccion cualquiera, en esa misma fraccion en
         valor absoluto.

         Metodo reciproco: este metodo al pasarle una fraccion devuelve su reciproco, es decir,
         convierte en numerador en el denominador y viceversa.

         Metodo -@: este metodo calcula el inverso de una fraccion dada.

         Metodo +: nos permite sumar dos fracciones.

         Metodo -: nos permite restar dos fracciones.

         Metodo *: nos permite multiplicar dos fracciones.

         Metodo /: nos permite dividir dos fracciones.

         Metodo %: nos permite calcular el resto de dos fracciones.

         Metodo <: nos permite comprobar si una fraccion es menor que otra.

         Metodo >: nos permite comprobar si una fraccion es mayor que otra.

         Metodo <=: nos permite comprobar si una fraccion es menor o igual que otra.

         Metodo >=: nos permite comprobar si una fraccion es mayor o igual que otra.

Dentro del directorio principal tenemos lso siguientes ficheros:

    Fichero Rakefile: Este fichero nos permite lanzar el comando para ejecutar todas las pruebas, que tenemos en el fichero racional_spec.rb El comando para las pruebas es: sh "rspec -I. spec/racional_spec.rb"

    Fichero README.md: Fichero con la documentacion de la practica
    
    Fichero Gemfile: fichero en el que indicamos las gemas que queremos utilizar.

Dentro del directorio spec tenemos los siguientes ficheros:

    Fichero racional_spec.rb: Este fichero contiene todas las pruebas TDD que ejecutamos para realizar la practica. Las pruebas son las siguentes: Debe existir un numerador Debe existir un denominador Debe de estar en su forma reducida Se debe invocar al metodo num() para obtener el numerador Se debe invocar al metodo denom() para obtener el denominador Se debe mostar por la consola la fraccion de la forma: a/b, donde a es el numerador y b el denominador Se debe mostar por la consola la fraccion en formato flotante Se debe comparar si dos fracciones son iguales con == Se debe calcular el valor absoluto de una fraccion con el metodo abs Se debe calcular el reciproco de una fraccion con el metodo reciprocal Se debe calcular el opuesto de una fraccion con - Se debe sumar dos fracciones con + y dar el resultado de forma reducida Se debe restar dos fracciones con - y dar el resultado de forma reducida Se debe multiplicar dos fracciones con * y dar el resultado de forma reducida Se debe dividir dos fracciones con / y dar el resultado de forma reducida Se debe calcular el resto dos fracciones con % y dar el resultado de forma reducida Se debe de poder comprobar si una fracion es menor que otra Se debe de poder comprobar si una fracion es mayor que otra Se debe de poder comprobar si una fracion es menor o igual que otra Se debe de poder comprobar si una fracion es mayor o igual que otra

