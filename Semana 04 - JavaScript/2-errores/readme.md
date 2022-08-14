# Ejercicio 1

Crea una funcón que reciba un DNI y lo valide.

¿Sabías que la letra del DNI es un sistema de validación, ya que se obtiene a partir del número?

Para ello, lo primero que hay que hacer es obtener el **resto** de dividir el número entre 23. A continuación, segun el resultado (de 0 a 22), se asigna la letra en este orden:

```javascript
const letras = 
[ "T", "R", "W", "A", "G", "M", "Y", "F", "P", "D", "X", "B",   "N", "J", "Z", "S", "Q", "V", "H", "L", "C", "K", "E"]
```

Para considerarlo correcto, la función recibirá el DNI en formato 00000000-A (la letra puede ir en mayúscula o minúscula). Hará las siguientes comprobaciones:

1- Lo que se ha introducido es un string con 10 caracteres.
2- Si separamos por el guión tiene dos partes.
3- La primera parte (antes del guion) son 8 números.
4- La segunda parte (después del guion) es un único caracter y no es un número.
5- La letra se corresponde con la que debería, según el número.

Si se cumplen todas las comprobaciones, se mostrará un mensaje en consola indicando que es un DNI válido.

Si alguna de las comprobaciones falla, lanzará un error.
Si efectivamente hay algún error se mostrará un mensaje en rojo por consola que diga "Se ha producido un error:" y el mensaje correspondiente.
