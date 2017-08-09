![image](../logo_blackaut.png)
### CURSO CREATIVE CODING 2017
**Curso de creative coding (programación creativa) dictado por Roy J. Macdonald.**

# CLASE 2
## Flujo de ejecución de Processing

Hasta ahora vimos como utilizar Processing en su modo "estático", esto es que las instrucciones que escribimos se ejecutan solo una vez. Vimos una introducción al modo "activo", el cual tiene un potencial mucho mayor. 
El modo activo se caracteriza porque se ejecuta constantemente. Para esto debemos definir dos funciones, [`setup`](https://processing.org/reference/setup_.html) y [`draw`](https://processing.org/reference/draw_.html). Estas tienen la siguiente forma.

	void setup(){
		//instrucciones que solo se ejecutan una vez al iniciar el sketch.
	}
	void draw(){
		//instrucciones que se ejecutan constantemente.
	}	

La función `setup` se ejecuta solo una vez cuando el sketch se inicia. Este es para establecer las condiciones iniciales que queremos que tenga, como tamaño de la ventana, abrir en pantalla completa, tipo de renderer, inicialización de variables, etc.

Luego de que se termina de ejecutar la función `setup` se ejecuta `draw`. Esta última se ejecuta cada  vez que la pantalla se refresca, esto tipicamente ocurre 60 veces por segundo. Esto permite que lo que mostramos en pantalla vaya cambiando en base a lo que programemos.
`draw` seguirá ejecutandose una y otra vez hasta que cerremos el sketch o que se llame la función [`noLoop();`](https://processing.org/reference/noLoop_.html). Si es que detenemos la ejecucion del draw utilizando esta última función podemos hacer que `draw` siga ejecutandose continuamente al llamar la función [`loop();`](https://processing.org/reference/loop_.html)


## Control de flujo y lógica booleana.

Ya vimos como utilizar el `if` y `else` para controlar la ejecución de las instrucciones, pero solo lo vimos utilizando una variable booleana. Es posible también utilizar operadores relacionales, que determinan la relación entre dos variables o expresiones. Estas relaciones son igual, distinto, mayor que, menor que, mayor o igual que y menor o igual que.
Para esto se utlilizan los siguientes operadores (simbolos):

| Nombre  | Operador | Expresión | Comentario |
| ------------ | ------------- | ------------ | ------------ |
| igual que | `==`  | `mouseX == 200` | se evalua como verdadero solo si la posición en el eje x del mouse es igual a 200. de lo contrario será falso. |
| distinto que | `!=`  | `mouseX != 200` | será verdadero si es que mouseX NO es 200 |
| mayor que | `>`  | `mouseX > 200` | será verdadero si es que mouseX es mayor que 200 |
| mayor o igual que | `>=`  | `mouseX >= 200` | será verdadero si es que mouseX es mayor o igual que 200 |
| menor que | `<`  | `mouseX < 200` | será verdadero si es que mouseX es menor que 200 |
| menor o igual que | `<=`  | `mouseX <= 200` | será verdadero si es que mouseX es menor o igual que 200 |


Podemos utilizar lo que se evalua con estos operadores directamente como la condición de un `if` o lo podemos guardar en una variable booleana. Por ejemplo:

	boolean masQue200 = mouseX > 200;

### Lógica booleana

Denominaremos como expresión booleana a una variables de tipo `boolean` o expresiones que se evaluen como verdadero o falso. Es posible combinar expresiones booleanas utilizando los operadores lógicos. Esto son AND (y), OR (ó), NOT (negación) y XOR (eXclusive OR) (ó exclusivo).
Al igual que los operadores aritméticos (`+`, `-`, `*` y `/`) los operadores lógicos van entre dos expresiones booleanas, a excepción de NOT que se antepone a una expresión booleana.


| Nombre  | Operador | Expresión |
| ------------ | ------------- | ------------ |
| AND | &&  |Esta compara dos expresiones y entrega verdadero solo y solamente si las dos son verdaderas (`true`). 
| OR | \|\| | Esta compara dos expresiones y entrega verdadero si cualquiera de las dos es verdadera. Si las dos son verdaderas tambien entrega verdadero.
| NOT | ! | Esta se usa sobre una expresion o boolean, invirtiendo su valor. 
| XOR | ^ | Compara dos expresiones y entrega verdadero solamente si una de las dos expresiones es verdadera.

**Importante** el caractér de OR es una barra vertical o (pipe en inglés). En el teclado español se encuentra apretando las teclas `alt` y `1`.
  
#### Combinatorias

**AND**

| Operacion | Resultado |
| ------------ | ------------ |
| `true  && true` | `true` |
| `false && true` | `false` |
| `true  && false` | `false` |
| `false && false` | `false` |

**OR**

| Operacion | Resultado |
| ------------ | ------------ |
| `true  \|\| true` | `true` |
| `false \|\| true` | `true` |
| `true  \|\| false` | `true` |
| `false \|\| false` | `false` |

**NOT**

| Operacion | Resultado |
| ------------ | ------------ |
| `!true` | `false` | 
| `!false` | `true` | 

**XOR**

| Operacion | Resultado |
| ------------ | ------------ |
| `true  ^ true` | `false` |
| `false ^ true` | `true` |
| `true  ^ false` | `true` |
| `false ^ false` | `false` |

### Paréntesis

Es posible agrupar las expresiones enmarcandolas dentro de un paréntesis `()`. Esto sirve para controlar la manera en que estas se evaluan. Esto es muy similar al uso de paréntesis en las matemáticas. Este mismo uso se le dá también a las operaciones aritméticas.


## Mouse y teclado

Processing nos permite tener acceso a la interacción del teclado y mouse sin tener que añadir ninguna configuración adicional.

Processing define algunas variables globales tanto para el mouse como el teclado. Al ser globales pueden ser accedidas desde cualquier punto de nuestro código de Processing.
Éstas se actualizan cada vez que existe un evento de mouse o teclado.

### Mouse
#### Posición
Podemos acceder a la posición del mouse en cualquier momento durante la ejecución de nuestro sketch, por medio de las variables globales.

| Variable Global | Descripción |
| ------------ | ------------ |
| [`mouseX`](https://processing.org/reference/mouseX.html) |  almacena la posición horizontal (eje X) del mouse |
| [`mouseY`](https://processing.org/reference/mouseY.html) |  almacena la posición vertical (eje Y) del mouse |

El valor de éstas es relativo a la ventana de nuestro sketch, donde el 0,0 está en la esquina superior izquierda. Si el mouse se encuentra fuera de la ventana del sketch el valor de estas variables no se actualizará y contendrá la última coordenada del mouse sobre la ventana del sketch.

#### Botón
Así como la posición del mouse, Processing almacena el estado de los botones del mouse. Para esto hay dos variables globales.

| Variable Global | Descripción |
| ------------ | ------------ |
| [`mousePressed`](https://processing.org/reference/mousePressed.html) | de tipo `boolean`. será `true` cuando algún botón del mouse está presionado  |
| [`mouseButton`](https://processing.org/reference/mouseButton.html) |  Tendrá uno de los valores `LEFT`, `CENTER`, `RIGHT` (izquierda, centro, derecha respectivamente) |

`mouseButton` debe utilizarse en conjunto con `mousePressed`
Ejemplo:

	void draw() {
		if (mousePressed && (mouseButton == LEFT)) {
    		fill(0);
		} else if (mousePressed && (mouseButton == RIGHT)) {
    		fill(255);
		} else {
    		fill(126);
    	}
		rect(25, 25, 50, 50);
	}

### Teclado
Para acceder el estado del teclado se utilizan las siguientes variables globales.

| Variable Global | Descripción |
| ------------ | ------------ |
| [`keyPressed`](https://processing.org/reference/keyPressed.html) | De tipo `boolean`, será `true` cuando alguna tecla está siendo presionada |
| [`key`](https://processing.org/reference/key.html) | almacena la tecla que se está presionando  |
| [`keyCode`](https://processing.org/reference/keyCode.html) | si es que la tecla presionada es una de las teclas flecha (UP, DOWN, LEFT o RIGHT ) o algun modificador como ALT, CONTROL y SHIFT, esta variable almacena cual de éstas es.| 

**Ejemplo:**  
se dibujará un rectangulo con relleno negro si es que la tecla b o B está siendo presionada.

	void draw() {
		if (keyPressed) {
			if (key == 'b' || key == 'B') {
				fill(0);
			}
		} else {
			fill(255);
		}
		rect(25, 25, 50);
	}

**Ejemplo:**  

    color fillVal = color(126);    
    void draw() {
        fill(fillVal);
        rect(25, 25, 50, 50);
    }
    void keyPressed() {
        if (key == CODED) {
            if (keyCode == UP) {
                fillVal = 255;
            } else if (keyCode == DOWN) {
                fillVal = 0;
            } 
        } else {
            fillVal = 126;
        }
    }

### Funciones para eventos
Cuando alguna accion se hace con el mouse o el teclado, Processing ejecuta automáticamente una función de nuestro sketch relativa a la acción ocurrida. Para hacer uso de éstas debemos definirlas en nuestro sketch. 

| Función | Descripción |
| ------------ | ------------ |
| [`void mouseClicked()`](https://processing.org/reference/mouseClicked_.html) | Se ejecuta cuando el mouse hace clic, es decir es presionado y soltado |
| [`void mouseDragged()`](https://processing.org/reference/mouseDragged_.html) | Se ejecuta cuando el mouse se mueve y un botón está presionado. |
| [`void mouseMoved()`](https://processing.org/reference/mouseMoved_.html) | Se ejecuta cuando el mouse se mueve y nigún botón está presionado.|
| [`void mousePressed()`](https://processing.org/reference/mousePressed_.html) | Se ejecuta inmediatamente al presionar un botón.|
| [`void mouseReleased()`](https://processing.org/reference/mouseReleased_.html) | Se ejecuta cuando se deja de presionar un boton del mouse.|
| [`void mouseWheel(MouseEvent event)`](https://processing.org/reference/mouseWheel_.html) | Se ejecuta cuando se mueve la rueda (scroll) del mouse.|

Todas éstas devuelven `void` y no reciben argumentos, a excepción de `mouseWheel(MouseEvent event)` que recibe un parametro de tipo `MouseEvent`.



## for
Una de las principales ventajas que posee un computador por sobre un humano es que puede realizar la misma acción una y otra vez, muy rápidamente y sin aburrirse ni distraerse.

Para este efecto existen dos mecanismos para generar loops ociclos. `for` y `while` (del inglés para y mientras, respectivamente).
Las dos son muy similares, pero solo veremos `for` ya que el uso incorrecto de `while` puede hacer que nuestro sketch se quede pegado eternamente en el loop.
`for` tiene una estructura similar al de una función en el sentido de que recibe un número de argumentos y lo sigue un bloque de instrucciones. A diferencia de las funciones, los argumentos de `for` se separan con un `;` ( punto y coma ).

Éste recibe 3 argumentos, inicialización, validación y actualización

**inicialización**  
 Se define y inicializa variable local (que pertenece al `for` y solo existe dentro de éste). Típicamente se utiliza esta variable para llevar la cuenta de la cantidad de repeticiones hechas.   
**validación**  
Se evalua una expresión booleana.Antes de comenzar cada repetición se evalua la validación, si ésta es `true` se ejecuta una vez las instrucciones dentro del `for`. Si es `false`, no se ejecutan las instrucciones del `for` y se termina el loop.    
**actualización**  
Luego de que se termina un ciclo del `for` se actualiza alguna variable. Típicamente se incrementa el contador de repeticiones.


este tiene la siguiente forma
	
	for(inicialización ; validación ; actualización){
		//bloque de instrucciones
	}

**Ejemplo:**

	for(int i = 0; i < 10; i = i + 1){
		//instrucciones que se ejecutan en cada repeticion.
		println(i);
	}

En el ejemplo anterior, el bloque de instrucciones se ejecuta 10 veces, ya que `i` comienza con valor 0 y luego de cada repetición este aumenta su valor en 1. En la última repetición que se ejecuta `i` tiene un valor igual a 9, al terminar esta repetición, `i` se incrementa en 1, quedando 10, y la condicion a evaluar en la validación pasa a ser `false`, así terminando el `for`. 




## Random y Noise

Para generar números aleatorios tenemos la función `random()`. Ésta devuelve un número aleatorio distinto cada vez que  es llamada, el cual está dentro del rango de valores entregados a la función random.





