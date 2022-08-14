# Ejercicio 3

Crea una función que reciba una edad y devuelva una promesa:

- Si la edad es menor a 18 la promesa se rechazará inmediatamente con el mensaje "_edad_ es menor". 

- Si la edad es par, la promesa se resolverá al cabo de un segundo con el mensaje "_edad_ es par".

- Si la edad es impar, la promesa se resolverá al cabo de dos segundos con el mensaje "_edad_ es impar".

Fíjate en que en el script.js ya se aporta una promesa que devuelve un número del 0 al 100, pero no sabemos exactamente cuánto tarda.

Para finalizar el ejercicio debes hacer que se muestre por consola el mensaje correspondiente a llamar a la función con la edad que devuelva la promesa. En caso de que sea rechazada, se mostrará de color rojo "Error: " y el mensaje correspondiente.