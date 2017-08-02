# CURSO CREATIVE CODING
### BLACKAUT

Curso de creative coding (programación creativa) dictado por Roy J. Macdonald.   

## CLASE 1

## Qué es el creative coding

Se le llama "Creative Coding" (CC en adelante) a la práctica de la programación computacional cuyo objetivo es la expresividad en lugar de la la funcionalidad. La utilización del CC se da en contexto tales como el instalaciones de arte, diseño, mapping, instalaciones interactivas y usualmente se hace uso de multiples técnicas provenientes de ámbitos distintos como el diseño gráfico, postproducción de cine, electrónica, fotografía, música y robótica entre otros.


### Referentes

#### Contemporaneos 

* [Zach Lieberman](http://thesystemis.com/)
* [Kyle McDonald](http://kylemcdonald.net/)
* [Theo Watson - Design IO](http://design-io.com/)
* [Casey Reas](http://reas.com/)
* [Joannie Lemercier](http://joanielemercier.com/)
* [Daito Manabe - Rhizomatiks](http://daito.ws/)
* [Elliot Woods - Kimchi and Chips](http://www.kimchiandchips.com/)
* [Kenichi Yoneda - Kynd](http://www.kynd.info/log/)
* [Golan Levin](http://www.flong.com/)
* [Gene Kogan](http://genekogan.com/)
* [Cyril Diagne - Kikko](http://kikko.fr/projects)
* [Lauren McCarthy](http://lauren-mccarthy.com/)
* [Ryoichi Kurokawa](http://www.ryoichikurokawa.com/)
* [James George](http://jamesgeorge.org/)
* [Robert Hodgin / Flight404](http://www.flight404.com)
* [Marius Watz](http://www.unlekker.net/)
* [Karsten Schmidt / Toxi](http://postspectacular.com/)
* [Lia Something](http://www.liaworks.com)
* [Aaron Koblin](http://www.aaronkoblin.com/)
* [Memo Akten](http://www.memo.tv/)
* [Mario Klingemann / Quasimondo](http://incubator.quasimondo.com/)
* [Josh Nimoy](http://jtnimoy.net)
	
#### Pioneros

*  [Lillian Schwartz](http://lillian.com/)
*  [Frieder Nake](https://www.google.com/search?q=Frieder+Nake&tbm=isch&gws_rd=ssl)
*  [Vera Molnar](http://www.veramolnar.com/)
*  [Manfred Mohr](http://www.emohr.com/)

## Herramientas
En gran medida, las herramientas que se utilizan especificamente para el CC, más allá de las herramientas estándares de programación, han sido desarrolladas por las mismas personas que desarrollan esta práctica. Algunas de las más populares son Processing, openFrameworks, Cinder y vvvv entre otros.
Para el caso especifico de este curso utilizaremos Processing.
Processing fue creado por Casey Reas y Ben Fry en 2001 mientras eran alumnos de posgrado en el MIT.  
El gran fuerte de Processing es que reduce tremendamente las barreras que genera la programación ante los principiantes. El hecho de que su entorno de programación es autocontenido hace aun más sencilla su instalación y puesta en marcha. 

Processing esta basado en el lenguaje de programación Java, el cual resulta ser bastante amigable al momento de ser utilizado por principiantes, pero no por eso menos poderoso al momento de ser utilizado por expertos.

La actual versión de Processing, la número 3, presenta muchas mejoras en relación a sus predecesores, haciendo no solo más expedito el flujo de trabajo si no que también haciendo que la aplicación que se programa corra de manera más optima.



## Fundamentos de la programación.

Antes que todo, es de suma importancia aclarar y enfatizar el hecho de que los computadores son "tontos" y no piensan, solamente ejecutan las instrucciones que se le entregan, al pie de la letra. Esto significa que si se programa erroneamente, lo que se prentedía que ocurriera no ocurrira de la manera esperada, dando lugar a errores que dejen el computador pegado, que la aplicacion se "caiga" o que ésta se comporte erráticamente.

Julio Cortázar, publicó una serie de cuentos cortos en los cuales da instrucciones para realizar tareas rutinarias para cualquier persona, como [Instrucciones para subir una escalera](http://ciudadseva.com/texto/instrucciones-para-subir-una-escalera/). Aun cuando Cortázar expone de manera crítica, por medio de la ironía, el automatismo con el que realizamos una serie de acciones rutinarias y comunes, sin siquiera cuestionarlas, éste dá en el clavo con varios puntos sumamente trascendentes al momento de dar las instrucciones correctamente. Por un lado, se basa en que el ejecutor de las instrucciones tiene un conocimiento basal, no solo del idioma en particular que se utiliza, si no que también sobre los elementos de su entorno. De cierto estas instrucciones son programa que un humano debe ejecutar para subir una escalera.

Cada lenguaje de programación tiene sus particularidades y elementos predefinidos pero que podemos reducir a simplemente números. Al fin y al cabo lo único que hace el computador es tomar numeros y hacer una operación con éstos. Estas pueden ser

* operaciones aritméticas (sumar, restar y multiplicar).
* operaciones lógicas (si es que tal condición es verdadera entonces hacer esto, de lo contrario hacer esto otro)
* comparaciones entre los numeros(mayor que, menor que, igual, distinto).

Volviendo a Cortázar, éste pasa a describir objetos que son más complejos que los que él asume como basales. En la programación computacional es absolutamente necesario definir las estructuras más complejas a ser utilizadas, de modo que el computador sea capaz de ejecutar la tarea de manera adecuada. Por ejemplo, para nuestra facilidad, Processing ya incluye muchas definiciones de antemano, de modo que nosotros no debamos re hacerlas cada vez que las necesitemos, como lo que es una imagen o definir como generar una nueva ventana en nuestra pantalla. El particular, Processing trae muchas definiciones ya hechas para lidiar con imagenes, gráficas 2D y 3D, colecciones, sonidos y protocolos de comunicación. Processing no contiene todas las definiciones posibles, pero el modo en que está implementado permite que se generen nuevas definiciones y que sea posible importarlas mediante el uso de librerias.

Cortázar hace notar el cuidado que hay que tener al momento nombrar las cosas que utilizamos en nuestras instrucciones y lo fácil que es confundirse si es que no se le nombran adecuadamente, lo cual es sumamente trascendental al momento de programar, ya que de lo contrario podemos generar conflictos de nombres, comportamientos erráticos o errores fatales. Casi regla de oro, siempre hay que nombrar con un nombre único las cosas que nuestro programa utilizará, idealmente utilizando nombres descriptivos.

Un último punto importantísimo es el orden en que se entregan las instrucciones. Al igual que el idioma español, las instrucciones de un programa se lee cada línea de izquierda a derecha, desde la línea superior hasta la inferior. De hacerse de otra manera el sentido cambiará o simplemente dejará de existir. En el caso de los lenguajes de programación la sintaxis y gramática son muchísimo más simples y estrictas que la de los lenguajes humanos, como el nuestro el español, pero por sobre todo son absolutas. En un lenguaje de programación no se puede tener definiciones ambiguas. Solo existe el verdadero o falso, si o no, 0 o 1, y no el quizas, de pronto o podría ser. Es por esto que cualquier error en el como escribimos nuestro programa impedirá que se ejecute ya que el computador se vuelve incapaz de interpretar estas instrucciones correctamente. Afortunadamente para nosotros, Processing cuenta con un entorno de programación moderno que nos va indicando los errores gramaticales a medida de que escribimos, tal cual como lo hacen los editores de texto (como MS Word) al momento de escribir.

En resumen, tenemos que:

* El computador solo hace operaciones sobre números, sean éstas aritméticas, lógicas o comparativas.
* Cualquier otra operación o estructura de datos debe basarse en los del punto anterior y es necesario tener ésta definida previamente.
* Las instrucciones (el programa)  se leen, y por tanto ejecutan, secuencialmente; una tras la otra, línea por línea de izquierda a derecha de arriba hacia abajo.
* Las instrucciones son absolutas y NO ambiguas. Estas hacen o no hacen algo, pero no se quedan en un estado intermedio.
* Se deben utilizar nombres únicos para las cosas presentes en nuestro programa.


Menciono el cuento de cortazar para establecer el paralelo entre el lenguaje humano y la programación computacional. Para programar se hace uso de un lenguaje en particular, de los cuales existen muchos, el que se aprende de igual manera como uno aprendería una lengua extranjera. De igual modo que un poliglota, aprender nuevas lenguas resulta mucho mas sencillo que para aquel que solo maneja una lengua. En este sentido podemos entender la programación como otra lengua más, que utilizamos para comunicarnos con los computadores, y al ya conocer una se hace mucho mas sencillo aprender otras nuevas. 

##### Ejercicio.
Instrucciones photoshop.
##### Ejercicio.
Human fax machine.

## Números
Como decía anteriormente el computador al final de todo utiliza números para todas sus operaciones. En la memoria del computador estos son almacenados de manera binaria, ceros y unos, que en realidad, físicamente, son una celda con o sin carga eléctrica. Principalmente existen dos tipos de números en los computadores, los enteros y los con decimal, conocidos como números de punto flotante. Si bien se podría tener un solo tipo de representación numérica esto acarrearía un alto costo computacional ya que procesar números de punto flotante es más complejo que procesar números enteros.

Dentro de cada una de estas dos categorías hay diferentes tipos, que difieren en el rango de valores que pueden representar. Es decir, un número de tipo `byte`, que utiliza 8 bits de memoria, solo puede representar números enteros entre el -128 y 127. Así, un número de tipo `int`, que utiliza 32 bits (o 4 bytes) puede representar números enteros desde -2,147,483,648 hasta 2,147,483,647. El nombre de éste, `int`, proviene del inglés "integer", que literalmente significa entero.  
La desición sobre cual tipo de número a utilizar cae en manos del programador, pero tipicamente, por simplicidad utilizamos `int` para los números enteros.
En caso de que un `int` no es suficiente existe el tipo `long` cuyo nombre provienen del inglés `long integer`

En el caso de los números de punto flotante, aquellos con decimales, comunmente se utilizan los del tipo `float`, cuyo nombre viene del inglés "floating point number". En casos especiales, donde un `float` no es capaz de almacenar un el valor que queremos con la presición necesaria se puede utilizar el tipo `double` cuyo nombre proviene del inglés "double precision floating point number".

En resumen tenemos

#### Números enteros

| Tipo | Nombre completo | Tamaño (bits/bytes) | Máximo | Mínimo |
| ------------ | ------------ | ------------- | ------------: | ------------: |
| `byte` | byte | 8 bits / 1 byte  | -128 | 127|
| `char` | character |16 bits / 2 bytes  | 0| 65.535 | 
| `int` | integer |32 bits / 4 byte  | -2.147.483.648 | 2.147.483.647 |
| `long` | long integer |64 bits / 8 byte  | -9.223.372.036.854.775.808 | 9.223.372.036.854.775.807 |

El tipo `char` se utiliza exclusivamente para representar letras y no es capaz de representar valores negativos. Cada letra es asociada a un valor según el formato [Unicode](https://unicode-table.com/es/). 

#### Números con decimales (punto flotante)

| Tipo | Nombre completo | Tamaño (bits/bytes) | Máximo | Mínimo |
| ------------ | ------------ | ------------- | ------------: | ------------: |
| `float` | floating point | 32 bits / 4 byte | -3,40282347 x 10^38 | 3,40282347 x 10^38 |
| `double` | double precision floating point |64 bits / 8 bytes  | -1,7976931348623157 x 10^308|  1,7976931348623157 x 10^308 | 

Processing no utiliza `double` en ninguna de sus funciones por lo cual no será común encontrarnos con este tipo.



### Nivel del lenguaje
En la computación se categorizan los lenguajes de programación según su nivel. El lenguaje de nivel más bajo es el lenguaje de máquina y el más alto el lenguaje humano. El nivel no implica que uno sea mejor que otro, simplemente define su nivel de abstracción. En el nivel bajo se programan directamente los bits que indican al procesador que operación realizar y en el nivel alto estan aquellos que se asimilan al lenguaje humano, particularmente al inglés. Processing opera sobre el lenguaje Java que es considerado de alto nivel. 

## Otros tipos básicos
Además de los números podemos considerar dos tipos más de información básica, `boolean` y `string`.

`boolean` es un tipo de dato que representa verdadero o falso. Solo tiene estos dos estados. Estos estados son `true` (verdadero) y `false` (falso).
 
## Variables
Para almacenar algun numero o texto debemos declararlo como una variable. Esto es básicamente darle un nombre y definir su tipo. En cursos posteriores veremos variables de tipos más complejos.
Por ejemplo, para declarar una variable de tipo `int` y con nombre `miEntero` escribimos lo siguiente:

    int miEntero;
opcionalmente, podemos asignarle inmediatamente un valor a esta variable
 
    int miEntero = 10; 
 
 otros ejemplos:
 
    float miFloat = 1.0;
    string miTexto = "Este es un texto, puede ser cualquira. siempre va entre comillas";
	boolean esVerdad = false;

Es importante notar que siempre hay un punto y coma `;` al final de cada declaración, así como al final de cada instrucción.

### Nombres de las variables
EL nombre de cada variable debe ser único, de lo contrario habrá un error. Estos son sensibles a las mayusculas y minusculas. Siempre deben comenzar con una letra, minuscula o mayuscula, y pueden tener letras, numeros, o guion bajo `_`.
Es recomendable utilizar nombres descriptivos para las variables, asi es más sencillo comprender para que sirven mientras estamos programando.


### Funciones



#### Condicionales



##### Loops
###### For
###### While


