# Proyecto de Análisis de Datos con Power BI y SQL

## Business Request

### Resumen de la Demanda de Negocio y User Stories

**Solicitud de Negocio de Steven:**
- Necesidad de mejorar los informes de ventas por internet.
- Deseo de pasar de informes estáticos a paneles visuales.
- Enfoque en cuánto hemos vendido de qué productos, a qué clientes y cómo ha sido a lo largo del tiempo.
- Capacidad de filtrar por cada vendedor, ya que cada vendedor trabaja con diferentes productos y clientes.
- Medir los números frente al presupuesto, por lo que se agregó en una hoja de cálculo para comparar nuestros valores con el rendimiento.
- El presupuesto es para 2021 y generalmente miramos 2 años atrás en el análisis de ventas.

## Business Demand Overview:

- Responsable: Steven, Gerente de Ventas.
- Valor del Cambio: Paneles visuales e informes mejorados de ventas o seguimiento para el equipo de ventas.
- Sistemas Necesarios: Power BI, Sistema CRM.
- Otra Información Relevante: El presupuesto se entregó en Excel para 2021.

## User Stories

| N   | Como (rol)          | Quiero (solicitud/demanda) | Para que (valor para el usuario) | Criterios de Aceptación |
| --- | ------------------- | ------------------------- | ------------------------------- | ------------------------ |
| 1   | Gerente de Ventas   | Obtener una visión general del las ventas por internet | Poder seguir mejor cuáles clientes y productos se venden mejor | Un panel de Power BI que actualice los datos una vez al día |
| 2   | Representante de Ventas | Una visión detallada de las ventas por Internet por Cliente | Poder dar seguimiento a mis clientes que compran más y a quienes podemos venderles más | Un panel de Power BI que me permita filtrar datos para cada cliente |
| 3   | Representante de Ventas | Una visión detallada de las ventas por Internet por Producto | Poder dar seguimiento a mis productos que más se venden | Un panel de Power BI que me permita filtrar datos para cada producto |
| 4   | Gerente de Ventas | Una visión general de las ventas por Internet | Hacer un seguimiento de las ventas a lo largo del tiempo frente al presupuesto | Un panel de Power BI con gráficos y KPIs comparados con el presupuesto |

## Desarrollo del Proyecto

### Tabla de Hechos vs. Tabla de Dimensiones

En el contexto de la gestión de datos y la modelación de datos, las tablas de hechos (Fact Tables) y las tablas de dimensiones (Dimension Tables) desempeñan roles distintos:

**Tabla de Hechos:**
- Contiene Métricas: Datos cuantitativos como ingresos de ventas, cantidades vendidas, etc.
- Granularidad: Datos detallados a menudo a nivel de transacciones.
- Claves Foráneas: Relacionadas con tablas de dimensiones.
- Agregación: Utilizada para calcular resúmenes.
- Relacionado con el Tiempo: A menudo incluye información de tiempo.

**Tabla de Dimensiones:**
- Contiene Datos Descriptivos: Atributos que proporcionan contexto a los datos en la tabla de hechos.
- Baja Granularidad: Datos a nivel de atributos únicos.
- Clave Primaria: Cada fila tiene una clave única.
- Estructura Jerárquica: Puede tener jerarquías.
- Datos Estáticos: Datos relativamente estáticos, como nombres y categorías.

En nuestro ejemplo, la tabla de hechos (Fact Table) podría contener datos de ventas, como la cantidad vendida y el monto de la venta, mientras que la tabla de dimensiones (Dimension Table) contendría información descriptiva sobre productos, clientes, etc.

### Data Cleaning and Transformation

En esta fase, se realiza la limpieza y transformación de datos. Se aplican formatos y se generan nuevos campos de apoyo. Los resultados se guardan en formato .csv.

### Creación del Dashboard

En Power BI, se crea el modelo de datos y se diseña el panel de control. Siguiendo las necesidades de negocio, se crean tres páginas:
- Panel general para una visión general.
- Subpágina con detalles de clientes.
- Subpágina con detalles de productos.

## Resultados

![Overview](/images/project002-analyst-001.png)

![Customer](/images/project002-analyst-002.png)

![Product](/images/project002-analyst-003.png)

Este proyecto toma la solicitud de un usuario de negocio y la transforma en entregables concretos que incluyen informes visuales, paneles de control y análisis de datos para ayudar a tomar decisiones basadas en datos.
