# Formularios

Edita el fichero `index.html` para que tenga muestre un formulario que tenga los sigiuentes campos:

- **Nombre**, con un control de tipo texto que sea obligatorio cubrirlo y con autofoco.
  . **Correo electrónico**, con un control de tipo email que sea obligatorio.
- **URL**, con un control de tipo url que cuando esté vacío muestre dentro la ayuda "Escribe la URL de tu página web personal" usando la propiedad _placeholder_.
- **Fecha**, con un control de tipo date.
- **Tiempo**, con un control de tipo time.
- **Fecha y hora**, con un control de tipo datetime-local.
- **Mes**, con un control de tipo month.
- **Semana**, con un control de tipo week.
- **Número**, con un control de tipo number que limite la entrada a un valor entre -10 y 10.
- **Teléfono**, con un control de tipo tel que tenga un valor inicial y que no se pueda editar.
- **Término de búsqueda**, con un control de tipo search y que este deshabiltado.
- **Color favorito**, con un control de tipo color.
- Un botón de envío.

Además, tienes que tener en cuenta los siguientes requisitos:

- Todos los campos anteriores deben tener su label asociado mediante la propiedad _for_.
- El formulario debe estar estructurado usando las etiquetas fieldset (con sus legend)
- El método de envío del formulario debe ser GET.
- El destino del envío del formulario debe ser "#".

El HTML resultante debe ser validado por el [validador de HTML de la W3](https://validator.w3.org/#validate_by_input) y no dar ningún error.
