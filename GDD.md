# GAME DESIGN DOCUMENT

## Indice
- [GAME DESIGN DOCUMENT](#game-design-document)
  - [Indice](#indice)
  - [Resumen](#resumen)
    - [Titulo](#titulo)
    - [Descricion](#descricion)
  - [Mecanicas](#mecanicas)
    - [Generales](#generales)
    - [Acciones del usuario](#acciones-del-usuario)
    - [Tipos de enemigo](#tipos-de-enemigo)
    - [Estructuras](#estructuras)
  - [Diseño del nivel](#diseño-del-nivel)
  - [Interfaz de usuario](#interfaz-de-usuario)
  - [Audio](#audio)
  - [Sprites](#sprites)
  - [To do](#to-do)

## Resumen
### Titulo
Kingdom OF Gambling

### Descricion
Es un juego estratégico en donde eres un rey con problemas de ludopatia y tienes que defender tu reino de oleadas de enemigos colocando varios tipos de estructuras en un espacio libre el problema es que todos tus recursos los gastaras en las maquinas tragamonesa.

## Mecanicas

### Generales
- **Objetivo:** Defender la base de las oleadas de enemigos entrantes.
- **Gameplay Loop:** el jugador tiene que sobrevivir a 3 dias de enemigos ganara Monedas al derrotarles, estas se gastaran de manera automatica en una maquina tragamonedas para obtener premios al azar, si el jugador llega a tener un excedente de oro podra lanzarlo al enemigo al final de una ronda se venderan automaticamente todas las estructuras abriendose una tienda con mejoras y/o consumibles.

### Acciones del usuario
- **Colocar estructuras:** Los jugadores pueden colocar estructuras donde quieran.
- **comprar mejoras pasivas**: al final de la ronda el jugador podra comprar una o mas mejoras.
- **lanzar monedas** el jugador podra lanzar monedas a los enemigos 

### Tipos de enemigo
1. **Enemigo tutorial**
    - **Salud:** Baja
    - **Velocidad:** baja

### Estructuras
1. **Torre Básica**
2. 
## Diseño del nivel
- **Tutorial**:
- **Dia 1**:
- **Dia 2**:
- **Dia 3**:

## Interfaz de usuario
- **Menu**
- **Pantalla del juego**
- **Tienda**
- **Pantalla de derrota/Victoria**

## Audio
-

## Sprites
- Estilo sencillo "Basic Tower Defense By Cherlie" y "Mini World Sprites By Shade"

## To do
- Crear el castillo este debe tener una variable vida 
- Crear el enemigo basico estos podran hacerle daño al castillo y perderan vida al hacerlo intentaran ir directramente al castillo si estosa encuentran un obstaculo lo rodearan continuando su camino
- Crear torre basica esta podra disparar proytectiles a los enemigos con 100% de precision los enemigos no podran atacarlas
- Colocar estructuras 
- Sistema de monedas este debera tener una variable publica llamada monedas 
- Maquina tragamonedas esta debera verificar si el sistema posee X monedas so cumple la condicion se activara cuando se termine su activacion soltara un objeto al azar de su pool 

