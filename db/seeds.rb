# Seed made by the team
require 'open-uri'

# Users – Artists

# User N°1

avatar_1 = URI.open("https://res.cloudinary.com/dygidrhdn/image/upload/v1687613537/goya_vicente_lopez_d8o3ke.jpg")

degoya = User.create!(
  email: 'degoya@gmail.com',
  password: '123456',
  # name: 'Francisco De Goya',
)
degoya.photo.attach(io: avatar_1, filename: "DeGoya.jpg", content_type: "image/jpg")


# –––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––

# User N°2

avatar_2 = URI.open('https://res.cloudinary.com/dygidrhdn/image/upload/v1687614936/Monet_iszkrh.png')

monet = User.create!(
  email: 'monet@gmail.com',
  password: '123456',
  # name: 'Claude Monet',
)
monet.photo.attach(io: avatar_2, filename: "Monet.jpg", content_type: "image/jpg")


# –––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––

# User N°3

avatar_3 = URI.open('https://res.cloudinary.com/dygidrhdn/image/upload/v1687619319/Olmos_oay9dw.jpg')

olmos = User.create!(
  email: 'olmos@gmail.com',
  password: '123456',
  # name: 'Pedro Olmos',
)
olmos.photo.attach(io: avatar_3, filename: "Olmos.jpg", content_type: "image/jpg")

# –––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––

# User N°4

avatar_4 = URI.open('https://res.cloudinary.com/dygidrhdn/image/upload/v1687620010/Matta_ma8qdu.png')

matta = User.create!(
  email: 'matta@gmail.com',
  password: '123456',
  # name: 'Roberto Matta',
)
matta.photo.attach(io: avatar_4, filename: "Matta.jpg", content_type: "image/jpg")

# –––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––

# User N°5

avatar_5 = URI.open('https://res.cloudinary.com/dygidrhdn/image/upload/v1687621130/ManRay_cufdso.jpg')

ray = User.create!(
  email: 'ray@gmail.com',
  password: '123456',
  # name: 'Man Ray',
)
ray.photo.attach(io: avatar_5, filename: "Ray.jpg", content_type: "image/jpg")


# –––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––

# User N°6

avatar_6 = URI.open('https://res.cloudinary.com/dygidrhdn/image/upload/v1687635291/dali_aqicaw.jpg')

dali = User.create!(
  email: 'dali@gmail.com',
  password: '123456',
  # name: 'Salvador Dalí',
)
dali.photo.attach(io: avatar_6, filename: "Dali.jpg", content_type: "image/jpg")


# –––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––

# User N°7

avatar_7 = URI.open('https://res.cloudinary.com/dygidrhdn/image/upload/v1687635720/hesse_ibral4.jpg')

hesse = User.create!(
  email: 'hesse@gmail.com',
  password: '123456',
  # name: 'Eva Hesse',
)
hesse.photo.attach(io: avatar_7, filename: "Hesse.jpg", content_type: "image/jpg")


# –––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––

# User N°8

avatar_8 = URI.open('https://res.cloudinary.com/dygidrhdn/image/upload/v1687635996/kahlo_crvd9k.jpg')

kahlo = User.create!(
  email: 'kahlo@gmail.com',
  password: '123456',
  # name: 'Frida Kahlo',
)
kahlo.photo.attach(io: avatar_8, filename: "Kahlo.jpg", content_type: "image/jpg")


# –––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––
# –––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––
# –––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––


# Art Posts

# De Goya – Art N°1

file_1 = URI.open('https://res.cloudinary.com/dygidrhdn/image/upload/v1687613999/ElAquelarre_pbsxzu.webp')

degoya_1 = Art.create!(
  user_id: degoya.id,
  title: 'El aquelarre',
  year: '1798',
  category: 'Romanticismo',
  description: 'La Quinta del Sordo acogió a Francisco de Goya en sus últimos años. Esos en los que, se dice, había perdido la razón y se abandonó a las sombras. Esos en los que el carácter sórdido de su época absorbió su búsqueda estética. Esos en los que produjo escalofríos y reprodujo la barbarie de los primeros despuntes hipersensibles del siglo XIX. Algo hubo en la soledad sombría de la finca que llamó a los espectros a bailar entre las paredes: los estertores del rococó mezclados con las pretensiones fallidas del movimiento neoclásico. Quizá fuese por este mismo estruendo confuso que el artista se encerrase a pintar en la soledad.

  Es durante esta época que vuelca su obra a las artes oscuras. Resulta natural, entonces, que haya dedicado dos años a la serie Asuntos de brujas (1797–1798): seis cuadros que, inicialmente, estaban pensados con fines decorativos para el palacio de «El Capricho», por encargo de los duques de Osuna. Hay una insistencia en lo terrible, en lo oculto: en ese dolor que produce solamente la angustia de cuando la Razón se va a otra parte, y el caos se desata. Sin embargo, dentro de ese baile oscuro, se destaca El aquelarre (1798), en la que un macho cabrío parece dictar la suerte de aquellos que se sientan en torno suyo.

  La obra enfatiza un romanticismo incipiente, en la que la pasión se postula sobre el carácter racional del ser humano. En esa estética de lo sublime de lo terrible es evidente una preocupación que se deslinda del proyecto ilustrado, y que tiende hacia esa desconfianza a los productos del movimiento empirista. Es el cataclismo de una razón que se ha vuelto loca, y que se expande lentamente al ámbito artístico: cada vez más sensible, cada vez más oscuro, cada vez más desquiciado.'
)
degoya_1.photo.attach(io: file_1, filename: "ElAquelarre.jpg", content_type: "image/jpg")


# –––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––

# De Goya – Art N°2

file_2 = URI.open('https://res.cloudinary.com/dygidrhdn/image/upload/v1687614245/LaNevada_vjmbvl.webp')

degoya_2 = Art.create!(
  user_id: degoya.id,
  title: 'La Nevada',
  year: '1786',
  category: 'Romanticismo',
  description: 'Una vez más, Goya rompe los moldes de los esquemas clásicos con esta representación del invierno y de entre todos los esquemas posibles y habituales en la representación de las estaciones del año, Goya decide ser fiel a su ingenio cronista y nos muestra un nuevo modo de ver el invierno, tal como es.

  Fueron muy frecuentes las representaciones mitológicas, los bodegones con alimentos propios de cada estación, los populares juegos de invierno en las aguas heladas de los ríos, o las batidas de caza también en un tono lúdico, sin embargo Goya los descarta todos.

  Este cuadro responde a una serie de tapices que por orden real le fueron encargados bajo el genérico epígrafe de Pinturas de asuntos jocosos y agradables, como podemos ver de jocoso tiene poco.

  Goya, más fiel a sí mismo que al encargo del rey, nos ofrece su propia visión del tema. Una escena costumbrista cuyos personajes nos aportan información de su procedencia por la indumentaria típica de sus regiones, de los tres personajes centrales, tapados con mantas zamoranas, los dos primeros son castellanos y el tercero valenciano. Guían una mula que a cuestas porta un cerdo, que esperemos haya hecho más llevadero el cruento invierno que nos muestra Goya con una paleta de blancos y grises y con los desnudos árboles cedidos por la ventisca.

  Al paso de los transeúntes otras dos figuras armadas y con un perro cierran la escena. No queda muy claro si se interesan por la identidad de estos tres hombres o no, ya que ninguno cruza la mirada, la tempestad no se lo permite.',
)
degoya_2.photo.attach(io: file_2, filename: "LaNevada.jpg", content_type: "image/jpg")


# –––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––

# De Goya – Art N°3

file_3 = URI.open('https://res.cloudinary.com/dygidrhdn/image/upload/v1687614400/ElCacharrero_sdjyl7.webp')

degoya_3 = Art.create!(
  user_id: degoya.id,
  title: 'El cacharrero',
  year: '1779',
  category: 'Romanticismo',
  description: 'El cacharrero es una obra aún temprana de nuestro querido Goya. Forma parte de su larga serie de cartones (pinturas plantilla para realizar tapices, y no pensadas para ser expuestas), que junto a El quitasol, es probablemente una de las escenas más populares.

  Se trata de una obra verdaderamente Rococó y muy alegre (teniendo en cuenta todo lo que vendrá después).

  Lo que podría ser una simple escena urbana se convierte en mucho más. A primer término se encuentra el cacharrero, personaje que da título a la pintura. No vemos su rostro, está de espaldas, sentado frente a su puesto ambulante de cacharros: hay platos, cuencos…la más bella cerámica. Al otro lado del puesto han acudido ya tres clientas: dos jóvenes y una anciana. Una de las jóvenes sostiene un cuenco, aunque no parece interesarle demasiado, es más bien una excusa, porque a quien observa atentamente es al vendedor, se produce una seducción sin necesidad de palabras, los ojos lo dicen todo.

  La otra joven, sentada entre ella y la anciana, mira a su compañera y parece decir: «¿Qué estás haciendo?», percatándose de la situación. La anciana, en cambio, está distraída, ajena a todo este juego de miradas.

  Detrás de ellos, una dama viaja en un coche de caballos. Goya quería reflejar lo mejor posible el movimiento, por lo que pinta su figura difuminada.

  Dos amigos contemplan a la dama pasar. En una esquina, vemos a un pequeño perro enroscado en él mismo, durmiendo. Esto demuestra que Goya conocía las pinturas rococó de los artistas franceses.

  Es una escena callejera, de un día cualquiera, pero en la que podemos ver presente las pasiones humanas.

  Podéis contemplar y disfrutar esta pintura en el Museo del Prado, y en cuanto a tapices, se conservan dos: uno de ellos en el Escorial y el otro en el Palacio de El Pardo.',
)
degoya_3.photo.attach(io: file_3, filename: "ElCacharrero.jpg", content_type: "image/jpg")


# –––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––

# De Goya – Art N°4

file_4 = URI.open('https://res.cloudinary.com/dygidrhdn/image/upload/v1687614535/Fulisamientos_ysghtq.webp')

degoya_4 = Art.create!(
  user_id: degoya.id,
  title: 'Los fusilamientos del 3 de mayo',
  year: '1814',
  category: 'Romanticismo',
  description: 'Napoleón domina buena parte de Europa. Pero España controla importantes accesos al Mediterráneo, por lo que Bonaparte decide engañar un poco al no muy brillante Rey Carlos IV y le propone conquistar Portugal para repartírselo.

  Así se permite a los franceses penetrar en territorio español, y estos deciden quedarse. El pusilánime Carlos IV abdica en su cobarde hijo Fernando VII (el rey español peor tratado por los historiadores, que ya es decir…) pero al final la corona acaba en manos francesas.

  José Bonaparte, el hermano de Napoleón es proclamado así el nuevo rey de España.

  Pero el día 2 de mayo comienza un levantamiento popular en Madrid, corriendo ríos de sangre francesa.

  Al día siguiente el ejército demanda venganza. Cualquiera que llevase una navaja era arrestado y condenado a muerte sin previo juicio. Las ejecuciones se realizaron a las cuatro de la mañana en varios puntos de la ciudad, como es el caso de la montaña del Príncipe Pío, que es donde Goya ambienta esta obra.',
)
degoya_4.photo.attach(io: file_4, filename: "Fusilamientos.jpg", content_type: "image/jpg")


# –––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––

# De Goya – Art N°5

file_5 = URI.open('https://res.cloudinary.com/dygidrhdn/image/upload/v1687614732/Saturno_dau4k2.webp')

degoya_5 = Art.create!(
  user_id: degoya.id,
  title: 'Saturno devorando a su hijo',
  year: '1823',
  category: 'Surrealismo',
  description: 'Las pinturas negras son 14 obras de Goya llamadas así por usar pigmentos oscuros, pero también por sus temáticas sombrías.

  Y para sombría, esta escena de infanticidio/canibalismo en la que el dios Saturno (Crono), el padre de Júpiter (Zeus), se zampa a uno de sus hijos pues tenía el temor de que estos lo destronasen en el futuro (como había hecho él con su padre Urano, al que además castró con su hoz).

  Menos mal que Júpiter, otro de sus hijos, se salvó de ser un aperitivo más para Saturno. Con ayuda de su madre, se escondió, y el padre glotón se tragó una roca envuelta en pañales sin desconfiar nada. Con el tiempo Júpiter se convertiría en el jefe de los dioses, y efectivamente destronó a su padre, obligándolo antes a vomitar a sus hermanos (en otras versiones le cortó directamente el vientre).

  Aquí Goya pinta al dios con una terrorífica mirada de locura en su rostro. Está masticando una masa informe, la del cuerpo sanguinolento de su hijo, al que agarra con fuerza incrustando sus dedos en la carne. El cuerpo del hijo es ya adulto comparado con el otro Saturno devorando a su hijo del museo del Prado, aunque el de Rubens parece una película de Disney comparado con esta barbaridad goyesca.

  Saturno está casi tan aterrorizado como nosotros, los espectadores, que al ver esto podemos indagar más en los más profundos miedos del ser humano.

  La obra se puede ver con diversas lecturas: en una histórico-política, quizás Goya puede estar hablándonos de unos tiempos oscuros en España (Absolutismo, Trienio Liberal, Década Ominosa…) en los que no faltaron los desordenes sociales, agitación y la represión política. Quizás Saturno represente al monarca Fernando VII devorando a su pueblo, o quizás sea el pueblo devorándose a sí mismo, su futuro.

  Otra lectura es la representación de los horrores de una enfermedad, el saturnismo (intoxicación por plomo) que sufría Goya, y que acabó por dejarle sordo. Saturno era el plomo para los alquimistas.

  Por supuesto, siempre están ahí los locos del psicoanálisis, que ven en Saturno al perfecto ejemplo de la relación y conflicto entre padres e hijos.

  Ademas la figura de este dios anciano está íntimamente relacionada con la impotencia sexual. Existe la leyenda, más o menos contrastada de que el monstruo tenía el pene erecto mientras devoraba a su hijo, pero esta zona se perdió debido al deterioro del mural o durante la transferencia al lienzo. Quizás el pintor se autocensuró al ser ya suficientemente horrorosa la imagen de canibalismo. Tengamos en cuenta que la pintura estaba hecha para decorar su casa, pero tras 70 años el nuevo propietario de la quinta del sordo los transfirió a lienzos bajo la dirección de Salvador Martínez Cubells, el principal restaurador de arte del Museo del Prado.

  Es una imagen terrible, violentísima, oscura… en la que los contrastes lumínicos son creados por manchas de color gruesas, y como ya es habitual en Goya, se adelanta unos cuantos años a la historia del arte, haciendo directamente arte contemporáneo. Expresionismo puro mucho antes de las vanguardias. Un arte modernísimo en todos los aspectos.',
)
degoya_5.photo.attach(io: file_5, filename: "Saturno.jpg", content_type: "image/jpg")


# –––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––
# –––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––
# –––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––

# Monet – Art N°1

file_6 = URI.open('https://res.cloudinary.com/dygidrhdn/image/upload/v1687615186/SolNaciente_rzvtrs.webp')

monet_1 = Art.create!(
  user_id: monet.id,
  title: 'Sol Naciente',
  year: '1872',
  category: 'Impresionismo',
  description: 'Lo pintó Monet y con él revolucionó la historia del arte. Había nacido el impresionismo. Teniendo en cuenta que si eras pintor en la Francia, sólo podías exponer en el Salón de París, es normal que se creara el Salón de los rechazados, donde el arte podía seguir su curso lejos de los acartonamientos de la academia. En 1874, unas 3500 personas acudieron a la primera exposición impresionista y se quedaron con la boca abierta… Todo era demasiado moderno. Las burlas fueron generalizadas y el crítico Louis Leroy escribió:

  Al contemplar la obra pensé que mis gafas estaban sucias. ¿Qué representa esta tela?…, el cuadro no tenía derecho ni revés…, ¡Impresión!, desde luego produce impresión…, el papel pintado en estado embrionario está más hecho que esta marina…
  Los autores, rápidamente tomaron prestada esta crítica para bautizar al nuevo movimiento, que como sabemos, acabaría por convertirse él mismo con el tiempo en academicista. Monet se convertiría en líder de la nueva pintura. Las pinceladas aquí son inauditas: libres, rápidas y directas. La composición aparentemente espontánea permite a las formas desaparecer casi por completo. Fue tan moderno que los jóvenes artistas empezaron a pintar así. Se dejaron largas barbas, salieron al exterior a pintar y convirtieron la luz en el tema principal del cuadro. La pintura fue robada del museo en 1985 y recuperada en 1990.

  ',
)
monet_1.photo.attach(io: file_6, filename: "SolNaciente.jpg", content_type: "image/jpg")


# –––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––

# Monet – Art N°2

file_7 = URI.open('https://res.cloudinary.com/dygidrhdn/image/upload/v1687618206/Montorgueil_br8vi4.webp')

monet_2 = Art.create!(
  user_id: monet.id,
  title: 'La calle Montorgueil',
  year: '1878',
  category: 'Impresionismo',
  description: 'Una bandera es un incendio. Una banderola, un incendio en miniatura.

  Este cuadro es una constelación de fuegos blancos. Rojos. Azules.

  Monet cuenta que el día que realizó esta obra, el 30 de junio de 1878, caminaba por la rue Montorgueil en medio de la celebración nacional. Al andar vio un balcón; subió; pidió permiso para pintar en él; se lo concedieron. Extrajo sus materiales, se instaló y pintó. Luego volvió a la calle con el lienzo aún fresco, cuando la imagen aún no se había «fijado» en el soporte; Monet caminaba y los colores se inmortalizaban. Es decir que es posible que el propio Monet sea uno de los transeúntes que aparecen en el cuadro: caminante bajo una constelación de incendios.

  Una ligera desviación: Monet y Manet, más allá de la similitud de sus nombres (y de la constante confusión que ocasionan), fueron dos pintores que compartían y frecuentaban los mismos lugares, atmósferas y… temas.

  Édouard Manet tiene un cuadro titulado La calle Mosnier con banderas que detalla, en apariencia, lo mismo que Monet en La calle Montorgueil. Pero un tema en pintura, así como un color, tiene una amplia gama de tonalidades. En el cuadro de Manet hay un protagonista: un cojo que transita una calle semidesierta el día que se celebra el fin de la guerra. Un cuadro, así como un cuento, se sostiene en el subtexto, en la ironía o melancolía que evoca una escena. La pintura retrata, o delata, los subtextos de lo cotidiano, porque, ¿qué queda cuando acaba la guerra o cuando termina una fiesta? Cenizas o malheridos que buscan, renqueantes, el camino de vuelta a casa.',
)
monet_2.photo.attach(io: file_7, filename: "Montorgueil.jpg", content_type: "image/jpg")


# –––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––

# Monet – Art N°3

file_8 = URI.open('https://res.cloudinary.com/dygidrhdn/image/upload/v1687616569/Pourville_xc4xdg.webp')

monet_3 = Art.create!(
  user_id: monet.id,
  title: 'Paseo por el acantilado de Pourville',
  year: '1882',
  category: 'Impresionismo',
  description: 'En la década de los 80 Claude Monet era un pintor cuarentón y viudo. Su esposa Camille había muerto tres años atrás y el artista estaba ya harto de la ciudad y su ajetreo. Además las ventas de cuadros no iban nada bien. Francia estaba en plena crisis económica.

  Es por eso que decidió dejarlo todo en febrero de 1882 y viajar a Normandía para descansar un poco y alejarse lo máximo posible de la «civilización».

  Pourville era un pequeño pueblecito de pescadores normando. No había apenas nada que recordara a lo urbano. Monet se enamoró inmediatamente del sitio y su entorno. Era primavera y las praderas eran verdes, llenas de flores de cromatismo infinito. El cielo azul salpicado con algunas nubes blancas y esponjosas. Y el mar era una mezcla de miles de colores y luces reflejados en constante movimiento. Un paraíso para un impresionista.

  Monet pinta los acantilados de Pourville, reflejando esta orgía de color, luz y movimiento. Introduce en el paisaje a dos figuras paseando (probablemente las hijas de su nueva pareja) y forman una unidad con el paisaje. Todo está unificado a través de esa pincelada corta.

  Se nota que el pintor era feliz esa primavera normanda.',
)
monet_3.photo.attach(io: file_8, filename: "Pourville.jpg", content_type: "image/jpg")


# –––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––

# Monet – Art N°4

file_9 = URI.open('https://res.cloudinary.com/dygidrhdn/image/upload/v1687618524/Nenufares_tlswry.jpg')

monet_4 = Art.create!(
  user_id: monet.id,
  title: 'Los nenúfares',
  year: '1926',
  category: 'Impresionismo',
  description: 'Existen aproximadamente 250 nenúfares pintados por Monet en los últimos años de su vida. El ya anciano pintor vivía en el Jardín de Giverny, donde instaló un puente japonés y un estanque con plantas exóticas que le servirían de modelo e inspiración.

  Monet ya estaba consagrado pero siguió investigando las posibilidades pictóricas de las variaciones del color de un mismo tema, dependiendo de las horas del día o las estaciones del años.

  En estas últimas obras, las formas están ya prácticamente disueltas en manchas de color. Muchos historiadores de arte/oftalmólogos (Si.existen…) afirman que al sufrir Monet de cataratas, el artista veía tras un filtro borroso y amarillento. De hecho, tras ser operado, volvió una temporada a su estilo anterior.

  De toda esta serie de nenúfares, quizás los más famosos y espectaculares son los paneles que se exhiben en el Museo de la Orangerie de las Tullerías, en París. Monet los pintó para ser expuestos en una estancia circular de 360º y son considerados “la capilla sixtina del impresionismo”.

  Pero otra obra que llama la atención es esta que tenéis arriba. Un enorme lienzo de dos metros de alto por seis de ancho. En él sólo vemos agua, plantas y el reflejo del exterior. Monet nos sumerge en medio de este extraño paraje de rojos, amarillos y malvas. Nos aturde con la arrebatadora belleza y armonía de sus lienzos.

  La obra en su conjunto parece irreal. De cerca es puro arte abstracto. De lejos, en efecto son los nenúfares más perfectos jamás pintados.',
)
monet_4.photo.attach(io: file_9, filename: "Nenufares.jpg", content_type: "image/jpg")


# –––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––
# –––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––
# –––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––

# # Olmos – Art N°1

# file_10 = URI.open('https://res.cloudinary.com/dygidrhdn/image/upload/v1687619364/empanadas_co2xbp.jpg')

# olmos_1 = Art.create!(
#   user_id: olmos.id,
#   title: 'Empanadas y vino tinto',
#   year: '1978',
#   category: 'Figurativo',
# )
# olmos_1.photo.attach(io: file_10, filename: "Empanadas.jpg", content_type: "image/jpg")


# # –––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––

# # Olmos – Art N°2

# file_11 = URI.open('https://res.cloudinary.com/dygidrhdn/image/upload/v1687619367/bodegon_dxr9la.jpg')

# olmos_2 = Art.create!(
#   user_id: olmos.id,
#   title: 'Bodegón con manzanas',
#   year: '1982'
# )
# olmos_2.photo.attach(io: file_11, filename: "Bodegon.jpg", content_type: "image/jpg")


# # –––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––
# # –––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––
# # –––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––

# Matta – Art N°1

file_12 = URI.open('https://res.cloudinary.com/dygidrhdn/image/upload/v1687620143/Cronos_bmaoou.webp')

matta_1 = Art.create!(
  user_id: matta.id,
  title: 'Espejo de Cronos',
  year: '1981',
  category: 'Surrealismo',
  description: 'Con seguridad es la obra más televisada del pintor surrealista Roberto Matta, puesto que se encuentra en el Salón Azul del Palacio de la Moneda en Santiago de Chile, donde el Jefe de Estado de ese país recibe a sus invitados más estelares. Esta obra no sólo trasciende por su excelente ejecución —se trata de la obra cúspide de su «serie azul»— sino también por haber sustituido el escudo nacional que pendió en esa misma muralla durante casi toda la dictadura de Pinochet.

  Sus dimensiones son las propias de una pintura monumental y en ella se pueden ver figuras antropomorfas, algunas acuáticas y otras terrestres, tan características en las obras de Matta. Dado los colores que se utilizan, el espectador queda confundido si es acaso espacio sideral, o bien, las profundidades submarinas. Otra ambigüedad es el origen de los cuerpos representados: a momentos pareciese que emergen figuras de la cultura precolombina, pero al mismo tiempo el título del cuadro nos evoca la mitología griega y particularmente a Cronos, dios del tiempo humano.

  La tradición cuenta que Cronos, al liberarse de su padre Urano, también desató al tiempo, que al fin pudo correr sin más hacia el infinito. Si el espejo refleja a Cronos, personificación del tiempo, lo que el espectador ve no es sino la desmembración de ese tiempo y de la misma figura del dios mitológico. En francés, abajo del cuadro, se puede leer: una alegría en el universo del renacimiento.

  Por lo demás, otro Cronos que vale la pena visitar es el que Goya pintó devorando a su hijo.',
)
matta_1.photo.attach(io: file_12, filename: "Cronos.jpg", content_type: "image/jpg")


# –––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––

# Ray – Art N°1

file_13 = URI.open('https://res.cloudinary.com/dygidrhdn/image/upload/v1687621126/Fortune_dhgg3t.webp')

ray_1 = Art.create!(
  user_id: ray.id,
  title: 'La Fortune',
  year: '1938',
  category: 'Dadaísmo',
  description: 'En esta pintura de Man Ray (nunca está de más recordar también sus fabulosas fotografías…), hay una mesa de billar deforme, un enorme mueble lúdico que se extiende hacia el horizonte. Por encima de él flotan nubes tintadas con los colores del arco iris.

  Las imágenes desafían toda explicación lógica. Es un paisaje surrealista, un paisaje de la mente, producto de la imaginación del artista.

  El título, «La Fortuna», sugiere suerte. A menudo aparecen juegos de suerte y azar en la obra de Man Ray, que recordemos, estuvo ligado al dadaísmo, movimiento que usaba como herramienta infalible el azar.

  Al igual que otros surrealistas, el pintor/fotógrafo consideraba el proceso creativo como un juego, actividad que requiere no solo creatividad e inteligencia, sino un acercamiento lúdico a la resolución de los problemas.

  El sentido del humor no faltaba en su obra. Suya es la frase «Si pudiéramos desterrar la palabra serio de nuestro vocabulario, muchas cosas se arreglarían».

  Por supuesto, a los críticos de la época no les parecía seria su obra, pero Man Ray dejó clara su opinión con una de sus bromas dadá:

  «Todos los críticos deben ser asesinados».',
)
ray_1.photo.attach(io: file_13, filename: "Fortune.jpg", content_type: "image/jpg")


# –––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––

# Ray – Art N°2

file_14 = URI.open('https://res.cloudinary.com/dygidrhdn/image/upload/v1687621141/Lagrimas_mocwps.webp')

ray_2 = Art.create!(
  user_id: ray.id,
  title: 'Lágrimas',
  year: '1932',
  category: 'Dadaísmo',
  description: 'Un icono de la fotografía…

  En aquellos años todavía había quien cuestionaba si la fotografía era o no un arte. Man Ray demostró que lo era con esta y otras muchas obras.

  La foto rezuma poesía: Esa mirada perdida hacia lo alto (Man Ray, como buen surrealista tenía filia por los ojos…), el conjunto de líneas curvas y sobre todo esas lágrimas de cristal, tan irreales como expresivas, tan exageradas como estéticas. Parecen las de una estrella de cine mudo de la época.

  Esos ojos en éxtasis, esa mirada envuelta en rímel bien podría recordar también a una Virgen de los Dolores barroca, pero en esa fascinante época de entreguerras.

  No hay referencias espaciales ni temporales, pero hay quien ve la falsedad en las lágrimas pues en esa época el artista había cortado con su amante/musa/discípula, la fotógrafa Lee Miller, que muchos creen que fue la fotógrafa real de muchas de las obras de Man Ray, mientras este se centraba en la pintura.',
)
ray_2.photo.attach(io: file_14, filename: "Lagrimas.jpg", content_type: "image/jpg")


# –––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––

# Ray – Art N°3

file_15 = URI.open('https://res.cloudinary.com/dygidrhdn/image/upload/v1687621121/Aline_xitb2v.webp')

ray_3 = Art.create!(
  user_id: ray.id,
  title: 'Aline y Valcour',
  year: '1950',
  category: 'Dadaísmo',
  description: 'Enigmática pintura surrealista pintada por Man Ray en Hollywood tras varios años de exilio americano durante la II Guerra Mundial. Y eso que el artista era americano, pero su hogar era París… de hecho ahí reposan sus restos.

  Ray vivió en California unos cuantos años y durante ese tiempo la pintura fue su pasatiempo preferido. Realizaba inquietantes naturalezas muertas como esta, escenificadas a partir de una fotografías previas. Situada entre la realidad y el artificio, entre la vigilia y el sueño, la imagen debe ser considerada plenamente surrealista por sus asociaciones con el poder, la manipulación, la deshumanización y la violencia, más aún sabiendo que su título fue tomado de la obra del marqués de Sade.

  Aline et Valcour fue una novela filosófica escrita por el Marqués entre 1785 y 1788, mientras estuvo preso en la Bastilla, y cuenta la trágica historia de dos jóvenes amantes: Valcour, un joven noble sin dinero y Aline, una inocente muchacha que acaba suicidándose, todo aderezado con un análisis político en el que se reflexiona sobre el poder, la sociedad y la psique humana.

  Man Ray estaba fascinado por la novela, y aunque no pretendía ilustrar el libro, sino más bien homenajearlo, sí que explora varios aspectos de sus temas centrales:

  La cabeza guillotinada evoca a la Revolución Francesa, algo que el escritor previó poco antes de producirse, y el muñeco articulado de madera reposando sobre esas figuras geométricas y que no quiere ver la cabeza cortada de la vitrina puede aludir a la deshumanización y manipulación que sufre la humanidad en el mundo moderno, algo de lo que habla el Marqués de Sade en el libro.

  La iconografía surrealista se puede ver también en cosas como los ojos vendados, el cajón y el libro cerrados, la campana de cristal sellada, el maniquí… Un evocador conjunto de imágenes mezcladas que juntas crean una lógica ilógica, una narrativa enigmática, una atractiva poesía en la que habitan de alguna manera el sexo y la muerte.',
)
ray_3.photo.attach(io: file_15, filename: "Aline.jpg", content_type: "image/jpg")


# –––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––
# –––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––
# –––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––

# Dali – Art N°1

file_16 = URI.open('https://res.cloudinary.com/dygidrhdn/image/upload/v1687635444/naturaleza_znpxon.webp')

dali_1 = Art.create!(
  user_id: dali.id,
  title: 'Naturaleza Muerta',
  year: '1918',
  category: 'Surrealismo',
  description: 'Conocida popularmente como “Sifón y botella de ron”, esta obra es fundamental no tanto por la obra en sí, sino por lo que se esconde tras ella.

  Salvador Dalí se la regaló a su amigo del alma Federico García Lorca, quien la conservó hasta su muerte. Testimonio de este hecho es una fotografía en la que el poeta aparece posando en su dormitorio de la Residencia de Estudiantes de Madrid y esta obra aparece de fondo, colgada en la pared.

  En esta obra se aprecian los vestigios del cubismo con los que Dalí empezó a experimentar antes de sumergirse de lleno en el surrealismo más profundo y que tanto caracteriza su obra.

  Naturaleza muerta es también el resultado de las investigaciones que hicieron Lorca y Dalí sobre la metafísica italiana durante su estancia en la Residencia de Estudiantes.

  Los colores, las formas, los juegos de luz y las perspectivas que engloban a este cuadro nos dan una pincelada de lo que más tarde forjaría la estética daliniana.

  Podemos disfrutar de esta obra en el Museo Centro de Arte Reina Sofía y recientemente estuvo en tierras granadinas en la exposición “Teoría del Duende” en el Centro Federico García Lorca.',
)
dali_1.photo.attach(io: file_16, filename: "Naturaleza.jpg", content_type: "image/jpg")


# –––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––

# Dali – Art N°2

file_17 = URI.open('https://res.cloudinary.com/dygidrhdn/image/upload/v1687635436/memoria_fzo7rf.webp')

dali_2 = Art.create!(
  user_id: dali.id,
  title: 'La persistencia de la memoria',
  year: '1931',
  category: 'Surrealismo',
  description:  'El mítico cuadro de relojes blandos de Dalí es, al contrario de lo que muchos piensan, un lienzo bastante pequeño, pero no deja de ser fascinante y es una de las estrellas del MoMA de Nueva York.

  Un simple paisaje marino (típico del Cadaqués daliniano, con el cabo Creus y su costa escarpada) en el que hay una escena insólita: una extraña criatura durmiendo o quizás inerte sobre la arena (hay quien ve un autorretrato del pintor) y unos relojes que se derriten sobre ella y sobre otros elementos del cuadro.

  Según el propio Dalí, que contaba con 28 añitos al pintarlo, dos cosas fueron su inspiración para este cuadro. En primer lugar se inspiró en los quesos camembert (“tiernos, extravagantes, solitarios y paranoico-críticos”) y otra inspiración fue la teoría de la relatividad de Einstein. Sabemos que Dalí era un enamorado de la ciencia y siguió el trabajo del científico con curiosidad. Al parecer los relojes derritiéndose son un símbolo inconsciente de la relatividad del espacio y el tiempo.

  Son relojes muy realistas que siguen marcando la hora (más o menos las 6 PM). La técnica de Dalí era muy académica y sus cuadros parecen sueños de verdad. Sabía hacer lo que él llamó “fotografías de sueños pintadas a mano”.',
)
dali_2.photo.attach(io: file_17, filename: "Naturaleza.jpg", content_type: "image/jpg")


# –––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––
# –––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––
# –––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––

# Hesse – Art N°1

file_18 = URI.open('https://res.cloudinary.com/dygidrhdn/image/upload/v1687635731/sintitulo_hqih1l.webp')

hesse_1 = Art.create!(
  user_id: hesse.id,
  title: 'Sin título o Aún no',
  year: '1966',
  category: 'Minimalismo',
  description: 'De entre toda la mierda creada en el arte después de la Segunda Guerra Mundial, una de las más sorprendentes es quizás la de Eva Hesse por varios motivos:

  El primero es por su vida, truncada a los 34 años por un tumor cerebral. A saber a dónde podría llevar la escultura una de sus investigadoras más experimentales. Sólo nos quedan sus obras, llenas de misterio, sentido de humor y experimentación con materiales y formas, muy conscientes de su ridiculez y fragilidad.

  El segundo es por la originalidad de sus inclasificables trabajos realizados con «materiales pobres», acumulados, pegados o, como en este caso, colgados en una pared a modo de cuadro, destacando sobre sus colegas de generación con una escultura orgánica frente a la frialdad industrial y la «limpieza» de los minimalistas.

  Hesse volvió al objeto como arte. Su obra no era ni fría ni limpia: todo lo contrario. Buscando un equilibrio entre el orden y el caos, supo hacernos divisar lo que había de bello en un montón de mierda al trabajar con ella en un proceso artístico. Otro motivo que hace de Hesse una de las grandes es hacernos ver la complejidad de este proceso, mostrarnos incluso el impulso creativo donde está el origen mismo del acto artístico.

  Con estas nueve redes colgando como sacos escrotales apuntalados en una pared de museo, Hesse creó además infinitas esculturas, ya que era consciente de que la composición de la obra variaría inevitablemente de una exposición a otra.',
)
hesse_1.photo.attach(io: file_18, filename: "AunNo.jpg", content_type: "image/jpg")


# –––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––

# Hesse – Art N°2

file_19 = URI.open('https://res.cloudinary.com/dygidrhdn/image/upload/v1687635717/Contingente_ynzhek.webp')

hesse_2 = Art.create!(
  user_id: hesse.id,
  title: 'Contingente',
  year: '1969',
  category: 'Minimalismo',
  description: 'A lo largo de los años 60, la corriente minimalista destaca por adoptar nuevas ideas acerca de la presencia de la obra y sus relaciones con el espacio y el espectador. Estas piezas se caracterizaban por su corte industrial y seriado, frío en ocasiones. Pero a mediados de esta década comienzan a respirarse nuevas inquietudes: piezas de artistas como Eva Hesse, Louise Bourgeois, u obras tempranas de Bruce Nauman, apuntaban cara una alternativa expresiva del lenguaje escultórico, en la que se referían más a una corporeidad, una organicidad que llevaba a repensar el cuerpo en relación a aspectos psicológicos. Nuevos materiales, alejados de lo industrial y lo técnico del minimalismo, caracterizaron la corriente que sería denominada, pocos años después, como posminimalismo.

  En 1969, Eva Hesse crea Contingent con fibra de vidrio y resina de poliéster. Esta obra cuenta con ocho bandas que cuelgan del techo, paralelas entre sí y perpendiculares a la pared. Al ocupar el espacio de manera tridimensional, el espectador podía acceder a la obra a través de diferentes ángulos, permitiendo su total recorrido. Es una pieza que nos lleva a lo delicado y también a lo orgánico: piel y cuerpo parecen haber sido desgarrados.

  En su momento, la obra de Hesse se asocia con el minimalismo por el contexto en que nace y por el uso de la repetición como estructura formal. Pero si bien es cierto que existe un patrón, este solo orienta; cada una de las partes es diferente dentro de que todas ellas son la misma obra. No buscaba la imagen única: con su gesto se aleja de la idea de serialidad y nos hace pensar en algo vivo, distinto a la organicidad ausente del minimal.

  Con Contingent, que sería portada de la revista Artforum al año siguiente, estaba modificando los gestos del arte. La expresividad nacida de la pieza cuestiona cualquier discurso estético vigente al no corresponderse exactamente con nada: no es pintura, no es escultura, ni tampoco es representación. Es materia que ha sido impregnada de gesto, y este justifica la metodología pero también el contenido. Hesse une y resignifica diferentes códigos, alejándose de las convenciones estéticas conocidas hasta el momento.

  Piezas como esta guardan una sensibilidad brutal. Producen el impacto que puede generar un nudo en el estómago del espectador cuando, de alguna manera, se descubre a sí mismo identificándose con unas tiras gigantes que cuelgan del techo.',
)
hesse_2.photo.attach(io: file_19, filename: "Contingente.jpg", content_type: "image/jpg")


# –––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––
# –––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––
# –––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––

# Kahlo – Art N°1

file_20 = URI.open('https://res.cloudinary.com/dygidrhdn/image/upload/v1687636003/autoretrato_jshffg.webp')

kahlo_1 = Art.create!(
  user_id: kahlo.id,
  title: 'Autorretrato dedicado a León Trotsky',
  year: '1937',
  category: 'Surrealismo',
  description: 'Como muñeca de vestir y entre cortinas que más bien parecen el telón del gran escenario que revela a la primera bailarina del espectáculo, Frida Kahlo se presenta de punta en blanco. Con su mejor vestido, uñas pintadas, hermosos aros, especialmente elegante y maquillada: labios rojos y rubor, con un peinado recogido de trenzas y flores que hasta podemos percibir su perfume.

  Enseguida pensaríamos que esta obra, como tantas otras, fue hecha para su gran amor, Diego Rivera. Pero no, en este caso el título nos cuenta que es un autorretrato dedicado a León Trotski. Para estos días, Frida y Diego se encontraban distanciados (y cómo para no estarlo cuando te llega la noticia de que tu esposo y tu hermana mantuvieron una relación) y en pocos años acabarían por divorciarse, para luego volverse a casar. Sin embargo, los unía una gran amistad y es por esto que Rivera recurrirá a su compañera para brindar asilo político al líder soviético León Trotsky, quien llegaba escapando de Rusia. El 9 de enero de 1937, Trotsky y su esposa Natalia Sedova, arribarán a la Casa Azul de la familia Kahlo en la localidad de Coyoacán. Es sabido que entre Frida y Trotski existió una relación amorosa que duró unos pocos meses y será, tal vez, esta obra un dedicado regalo para su amante ¿o una provocación para su esposo?',
)
kahlo_1.photo.attach(io: file_20, filename: "Autoretrato.jpg", content_type: "image/jpg")


# –––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––

# Kahlo – Art N°2

file_21 = URI.open('https://res.cloudinary.com/dygidrhdn/image/upload/v1687635998/Flor_lwnfcm.webp')

kahlo_2 = Art.create!(
  user_id: kahlo.id,
  title: 'Flor de vida',
  year: '1943',
  category: 'Surrealismo',
  description: 'Flor de la vida es una obra puramente simbolista de la artista Frida Kahlo. Como en El sol y la vida, Moisés o Núcleo solar, Mi nana y yo o Yo mamando… reflejan un equilibrio entre lo artístico y lo emocional. La imposibilidad de ser madre propició que creara una serie de cuadros relacionados con sus fallidas maternidades.

  La pintora estuvo interesada en estudiar medicina, sin embargo, no pudo prepararse, puesto que un brutal accidente le dejó graves secuelas de por vida, aunque su interés por la anatomía estuvo siempre presente. En La casa azul (Museo Frida Kahlo) podemos observar la colección importante de libros de medicina de los que la pintora se nutría de conocimientos para plasmarlos en sus cuadros. Muchos libros tratan de la reproducción y la gestación, proceso que ella tanto anheló.

  La naturaleza exótica, la flora y la fauna de su México natal, fue una seña de identidad en su obra, ya que las hojas son un elemento importante en la iconografía de Kahlo. En Flor de la vida las nervaduras de las hojas adquieren una protección sanguínea y las humaniza transformándolas en arterias del cuerpo humano. Una comunión entre botánica y anatomía; savia y sangre transmiten la substancia de la vida. La hojas rojas y firmes sirven de base de seguridad, firmeza y defensa a una maravillosa y delicada flor- trompa de Falopio. Una naturaleza en constante transformación.

  En Flor de la vida, la pintora al contrario que en muchos autorretratos en los que aparece como protagonista indiscutible, refleja una de sus zonas sensibles de su anatomía. Dibuja un híbrido con una flor y las trompas de Falopio y, de esa manera, ofrece al espectador un carnaval onírico en el proceso de la fecundación. El sol anaranjado irradia el calor necesario para albergar una nueva vida. El rayo, que, con su fuerza electrizante, simboliza la parte masculina y fecundadora. La fuente de vida que nace desde el centro de la flor del que surge un fuego artificial de un vivísimo amarillo que contrasta con los rojos y anaranjados del resto de la obra. Una fuente simbólica cargada de una futura vida.

  El arte para Frida Kahlo es un ejercicio de retrospección y, a la vez, una ventana abierta de par en par donde el espectador siente la crudeza del mundo de la mexicana.',
)
kahlo_2.photo.attach(io: file_21, filename: "Flor.jpg", content_type: "image/jpg")


# –––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––
puts('Likes')


User.all.each do |user|
  Art.all.each do |art|
    if rand > 0.5
      Like.create!(user: user, art: art)
    end
  end
end
