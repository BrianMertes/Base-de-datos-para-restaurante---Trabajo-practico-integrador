# Requisitos: 
Un restaurante que atiende en salón busca mejorar la organización de sus pedidos y la gestión de su operación diaria. Actualmente, los mozos toman pedidos de forma manual y la información se registra de manera informal, lo que genera errores, demoras y dificultades para reconstruir qué ocurrió en cada servicio. El cliente necesita una solución que permita centralizar la información y facilitar el seguimiento de la actividad del restaurante. El sistema deberá contemplar mesas dentro del salón, mozos que atienden dichas mesas y los pedidos realizados por los clientes. Cada mesa puede recibir múltiples pedidos a lo largo del tiempo, y cada pedido puede incluir varios productos. No está completamente definido si un pedido puede ser modificado una vez realizado ni cómo se deben gestionar cancelaciones o agregados. Se requiere registrar los productos ofrecidos por el restaurante, aunque no está claro si todos comparten las mismas características o si existen distintas categorías. Tampoco se ha definido con precisión si los pedidos siempre están asociados a una única mesa o si pueden existir situaciones más complejas. El cliente desea poder consultar información como pedidos realizados, productos más solicitados y actividad por mesa o por mozo. Sin embargo, estos requerimientos pueden evolucionar, por lo que se espera una solución que mantenga consistencia en los datos y evite redundancias. 

# Requisitos Técnicos del Trabajo Práctico: 
A partir de la situación planteada, se deberá desarrollar una solución que cumpla con las siguientes condiciones: 
Diseñar un modelo conceptual que represente adecuadamente el problema. 
Construir el Diagrama Entidad-Relación (DER) correspondiente.
Transformar el modelo en un esquema relacional aplicando formas normales (hasta 3FN).
Implementar la base de datos utilizando MySQL Workbench.
Definir correctamente:
Tablas 
Claves primarias y foráneas
Tipos de datos
Generar scripts SQL para:
Creación de la base de datos
Inserción, modificación y eliminación de datos (DML)
Cargar datos de prueba que permitan validar el funcionamiento.
Desarrollar consultas SQL que incluyan:
JOINs entre múltiples tablas 
Filtros (WHERE)
Ordenamientos (ORDER BY)
Agrupamientos (GROUP BY) y funciones de agregación
