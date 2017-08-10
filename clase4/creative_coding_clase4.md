![image](../logo_blackaut.png)
### CURSO CREATIVE CODING 2017
**Curso de creative coding (programación creativa) dictado por Roy J. Macdonald.**

# CLASE 4

## Color
Existe un tipo de datos especial de Processing para almacenar colores. Éste se llama [`color`](https://processing.org/reference/color_datatype.html)
Este resulta sumamente útil para definir paletas de colores, entre otras cosas.
Utilizar éste es sumamente sencillo.
Se declara de igual manera que cualquier otra variable.


	color nombreDelColor;//este no tiene un valor asignado;
	color c1 = color(204, 153, 0);//Asignacion mediante valores RGB
	color c2 = #FFCC00;//Valores por notación Hexadecimales, usados en web típicamente.
	
### Asignación
Para asignar el valor de un color podemos utilizar la notación Hexadecimal o la función [`color()`](https://processing.org/reference/color_.html).
Esta funcion recibe los parámetros para crear el color; Tiene 4 formas diferentes para recibir los parámetros de estos parámetros pueden ser, indistintamente de tipo `int` o `float`.

#### Grises
**color(valorGris)**  
Cuando recibe solo un argumento se crea un color en la escala de grises con el valor indicado, completamente opaco (alpha igual a 255).

**color(gray, alpha)**  
Al recibir 2 argumentos también se crea un color en la escala de grises, donde el primer argumento indica el valor del gris y el segundo el alpha o transparencia. `color(149, 255)` es equivalente a `color(149)`.

#### Color (RGB o HSB)
**color(rojo, verde, azul)//RGB**  
**color(tono, saturación, brillo)//HSB**  
Al recibir tres argumentos, éstos indican los valores  o HSB según el modo de color seleccionado con la funcion [`colorMode()`](https://processing.org/reference/colorMode_.html). Usualmente estos valores estan en el rango de 0 a 255.

**color(v1, v2, v3, alpha)**  
De igual manera que la funcion anterior pero el cuarto argumento indica el valor alpha o de transparencia del color. `color(244,199,83, 255)` es equivalente a `color(244,199,83)`

###Lectura

Para extraer los distintos valores de un elemento de tipo `color` existen una serie de funciones que reciben un elemento de éste tipo y entregan el valor de su componente solicitado.
Éstas son:

* [`alpha()`](https://processing.org/reference/alpha_.html) 
* [`blue()`](https://processing.org/reference/blue_.html)
* [`brightness()`](https://processing.org/reference/brightness_.html)
* [`green()`](https://processing.org/reference/green_.html)
* [`hue()`](https://processing.org/reference/hue_.html)
* [`lerpColor()`](https://processing.org/reference/lerpColor_.html)
* [`red()`](https://processing.org/reference/red_.html)
* [`saturation()`](https://processing.org/reference/saturation_.html)




## Módulo
Hasta ahora hemos visto las operaciones aritméticas básicas sumar, restar, dividir y multiplicar.
Existe una operación más que es sumamente útil. Se llama **módulo** y su símbolo es `%`.

Éste operador nos entrega el remanente de una división, esto es  `9 % 2` nos dará como resultado 1.


## Xeno
## Imagenes y pixeles.
### Manipulación de pixeles.
##  Ejercicios