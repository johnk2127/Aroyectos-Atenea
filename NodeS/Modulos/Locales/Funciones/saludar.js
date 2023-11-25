//Crear la funcion que deseamos exportar

const saludar = function (nombre) {
    return 'Hola ${nombre}! Este es mi primer modulo con funciones'
}

//exportar la funcion
module.exports = {
    saludo: saludo
}