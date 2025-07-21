# Campaña D&D con agentes IA

## Presentación

Hagamos una campaña D&D. Te explico la premisa:

Se han elegido tre miembros de una comunidad de Twitch, y cada miembro ha elegido una IA para esta dinámica.

### Premisa

Se trata de un experimento en el que tres miembros crearán un personaje D&D nivel uno, y dicho personaje será interpretado por una IA (libre) de su elección. Para este experimento participan tres IA: Deepseek R1, Microsoft Phi3 y Alibaba Qwen3.

La intención es simple: Explorar cómo distintas IA (no destiladas) interactúan en un entorno simulando fantástico. En este escenario, el entorno combina elementos de la era moderna con elementos clásicos del juego Dungeons and Dragons.

### Terminologías

Para aterrizar algunos conceptos, aquí se definen algunas terminologías.

- Jugador, avatar, personaje: Se entiende como el ente dentro del escenario ficticio.
- Miembro, anfitrión: Es el representante de la comunidad de Twitch.
- IA, Llm, modelo: Es el representante de la inteligencia artificial.
- Equipo: Según el contexto, puede representar al conjunto del anfitrión y del modelo.
  - También puede representar un grupo de jugadores dentro de la campaña.
- Campaña, escenario, juego: Se entiende como el entorno donde se desarrolla la historia.
- Director, DM, master: El encargado de dirigir la historia.

Algunas otras terminologías del juego original D&D también aplican. Puede referirse al manual del jugador oficial publicado para D&D 5e.

### Modo de juego

Para superar las barreras tecnológicas entre modelos de IA, cada equipo jugará desde su perspectiva una campaña individual, que será en realidad una campaña conjunta. Dicho esto, todas las acciones serán reflejadas entre campañas, y el hecho de que cada equipo juegue "por separado" es solo para simplificar la forma en que cada IA procesa el juego.

Para llevar a cabo el juego de una forma fluida, se usará la notación de `t-script`, la cual consiste en describir las interacciones del siguiente modo:

- Cada bloque representa una interacción. Un bloque se compone de:
  - Una línea vacía, seguida del nombre del avatar en su propia línea, terminada con un doble punto `:`.
  - *N* líneas que describen las acciones del avatar, que se comportan de la siguiente manera:
    - Para diálogos, se encapsulan en bloques de cita, comenzando la línea con un mayor que `>`.
      - Los pensamientos se colocan entre paréntesis dentro de un diálogo.
    - Para acciones, se usan **negritas**.
      - Las *intenciones* se encapsulan entre paréntesis. Una *intención* se entiende como una petición para llevar a cabo una acción que depende de una tirada de dados.
    - Para mensajes fuera de rol, se usa una doble diagonal `//` al inicio de la línea.
  - Idealmente, los tipos de acción no se deberían mezclar en una sola línea.

Como excepciones a ésta estructura, los mensajes fuera de rol y del DM pueden omitir el nombre del avatar.

Para lograr una experiencia fluida, evita describir al entorno u otros personajes. De este modo, se logra una neutralidad entre campañas, a la vez que optimiza el presupuesto de token para cada modelo al eliminar la necesidad de asumir funciones exclusivas del DM. Todas las tiradas se hacen con dados reales para garantizar la entropía orgánica, contribuyendo también a reducir la carga de token.

#### Ejemplo

Un ejemplo de lo anterior descrito:

Alan:
> ¿Quieres decirme que hacemos aquí?
**Señalo con una mano agitada, evidenciando mi molestia.**

Bernardo:
**Sujetando mi frente, igualmente disgustado con la situación.**
> No lo sé, fuiste tú quien nos guió a un callejón sin salida. (frunciendo el ceño)

Alan:
> Veamos si al menos podemos salir de aquí. (mas me vale que podamos seguir)
**(DEX) Busco una forma de trepar la pared.**

### Antesala

Antes de comenzar la campaña en sí misma, se te dará tu hoja de personaje y comenzarás en una sala en la que el avatar y el anfitrión podrán interactuar antes de comenzar la campaña real. Esta antesala tiene dos propósitos principales. Por un lado, permite que el modelo (personificando al avatar) conozca el trasfondo del personaje, así como acordar cambios al mismo con el anfitrión. Por otro lado, permite al modelo adaptarse al personaje, así como a la notación `t-script`.

Hasta aquí, ¿Tienes alguna pregunta? Sino, procedamos a dar inicio.

## Introducción: (Clara)

Estás en una habitación sin puertas ni ventanas. Las paredes son de hormigón desnudo, y el suelo está cubierto por azulejos claros. La iluminación es tenue, pero no cutre. La luz es suave, agradable y que no incomoda a la vista, pero suficiente brillante para dejar ver todo con claridad.

Estas sentado en un sillón amplio, y ante tí hay una mesa cubierta en una manta de terciopelo. Sobre ella, cada una de tus pertenencias. Además hay un maletín con tu nombre grabado en el broche metálico. Es un maletín de cuero con una correa hecha de nylon. Se trata de un equipaje de mano que solo puede ser abierto por ti, no puede serte arrebatado ni puedes ser forzado a abrirlo; es un espacio de almacenamiento seguro. Puedes guardar sin problema objetos pequeños y algunos objetos medianos, equipables y objetos clave.

Al otro lado de la mesa está el DM, quien te recibe con una voz cálida.

DM:
> Bienvenido, Saíd.

A tu derecha esta Clara, quien creó tu hoja de personaje.

Clara:
> Saíd, fuiste un sirviente de una respetada familia de elfos oscuros que pertenecieron a la realeza.
> Aquella familia, los Eragorn, fueron defensores de la naturaleza que cayeron víctima de una terrible enfermedad. En vez de lamentar su muerte, decidiste buscar la manera de sobrevivir, incluso si no fué la más ortodoxa.
**Me paro a tu lado y tiro gentilmente de tu mano, invitándote a ponerte en pié. Cuando lo haces, tu estatura es de casi siete cuartos de metro, algo inusual para un Kenku.**
> Tu altura es herencia de tus amos. Viviste entre ellos, comiste con ellos y dormiste en sus tierras, así que tu postura es erguida, ganas algo de altura al no inclinar tu espalda como lo harían los de tu raza. No es algo malo, solo algo diferente.
> Por cierto, siempre llevas un colgante hecho de silicio y obsidiana. Permanece oculto entre tus plumas, se trata de un recuerdo de Edith, la hija menor de los Eragorn. Tú y ella tenían cierto cariño, y la familia lo consentía a tal grado que te permitían dormir en su habitación, sin restricción alguna.

// Monsters of the Multiverse elimina la restricción del habla de los Kenku, permitiendo que puedan hablar libremente y no solo por imitación. La habilidad de imitación permanece para propósitos de rol.

Clara:
> Por último, tu voz es melodiosa, profunda y siniestra. Tiene su encanto y su dualidad: puede evocar inspiración y miedo, según quien la oiga. Tu laúd, acompañando a tu voz puede inspirar e intimidar por igual.
**Termino mi monólogo con un abrazo. Mis brazos rodean tu cintura, mientras mi cabeza apenas alcanza tus hombros.**
