Book.destroy_all
User.destroy_all
Category.destroy_all
Author.destroy_all
Editorial.destroy_all

# seed user

User.create(
  email: "admin@gmail.com",
  password: "lucas123",
  password_confirmation: "lucas123",
)

# Seed categories

puts "Creando categorias..."
categories_list = [
  "Mente, cuerpo y espiritu",
  "Libros infantiles",
  "Literatura y estudios literarios",
  "Literatura juvenil",
  "Empresa y economia",
  "Humanidades",
  "Comics y mangas",
  "Gastronomia",
  "Ciencias",
  "Producto alternativo",
  "Estilos de vida y ocio",
  "Arte"
]

categories_list.each do |category_name|
  Category.create(name: category_name)
end

puts "Categorias creadas exitosamente! 🎉"

# Seed authors

puts "Creando autores..."
authors_list = [
    "Julio Cortázar",
    "Maria Luisa Bombal",
    "Gabriel García Márquez",
    "Carlos Fuentes",
    "Ernesto Sábato",
    "José Donoso",
    "Juan Carlos Onetti",
    "Mario Vargas Llosa",
    "José Lezama Lima",
    "Juan Rulfo",
    "Carlos Fuentes",
    "Alejo Carpentier",
    "Miguel Ángel Asturias",
    "Elena Garro",
    "Augusto Roa Bastos",
    "Arturo Úslar Pietri",
    "Jorge Amado",
    "José Enrique Adoum",
    "Salvador Garmendia"
]

authors_list.each do |author_name|
  Author.create(name: author_name)
end

puts "Autores creados exitosamente! 🎉"

# Seed publishers

puts "Creando editoriales..."
editorials_list = [
  "Alfaguara",
  "Anagrama",
  "Debolsillo",
  "Edhasa",
  "Ediciones B",
  "Ediciones Destino",
  "Ediciones Siruela",
  "Espasa",
  "Grijalbo",
  "Lumen",
  "Planeta",
  "RBA",
  "Santillana",
  "Tusquets",
  "Penguin Random House",
]

editorials_list.each do |editorial_name|
  Editorial.create(name: editorial_name)
end

puts "Editoriales creadas exitosamente! 🎉"


# Seed books

books_list = [
  {
    title: "Rayuela",
    image: "https://es.babelio.com/couv/CVT_Rayuela_48.jpg",
    author: "Julio Cortázar",
    description: "La obra maestra de Julio Cortázar. Una novela que conmocionó el panorama cultural de su tiempo y marcó un hito insoslayable dentro de la narrativa contemporánea.",
    publication_date: Date.new(1963, 6, 28)
  },
  {
    title: "La amortajada",
    image: "https://es.babelio.com/couv/CVT_La-Amortajada_3538.jpg",
    author: "Maria Luisa Bombal",
    description: "María Luisa Bombal, fue una de las protagonistas del boom latinoamericano y es quizás la autora menos conocida de este movimiento. En esta novela se confunden la realidad y el sueño, a través de la voz de una muerta: la amortajada.",
    publication_date: Date.new(1938, 1, 1)
  },
  {
    title: "Cien años de soledad",
    image: "https://m.media-amazon.com/images/I/51RmbVrClzL._SX195_.jpg",
    author: "Gabriel García Márquez",
    description: "Señalada como «catedral gótica del lenguaje», este clásico del siglo XX es el enorme y espléndido tapiz de la saga de la familia Buendía, en la mítica aldea de Macondo. Un referente imprescindible de la vida y la narrativa latinoamericana.",
    publication_date: Date.new(1967, 5, 30)
  },
  {
    title: "El otoño del patriarca",
    image: "https://images-eu.ssl-images-amazon.com/images/I/51YywRshYjL._SX195_.jpg",
    author: "Gabriel García Márquez",
    description: "Gabriel García Márquez ha declarado una y otra vez que El otoño del patriarca es la novela en la que más trabajo y esfuerzo invirtió. En efecto, García Márquez ha construido una maquinaria narrativa perfecta que desgrana una historia universal -la agonía y muerte de un dictador- de forma cíclica, experimental y real al mismo tiempo, en seis bloques narrativos sin diálogo.",
    publication_date: Date.new(1975, 5, 27)
  },
  {
    title: "La muerte de Artemio Cruz",
    image: "https://images-na.ssl-images-amazon.com/images/I/41hF-smJSgL._SX210_.jpg",
    author: "Carlos Fuentes",
    description: "Novela de gran intensidad temática, está centrada en la reflexión sobre el México surgido de la Revolución, pero también analiza, con amargura, cuestiones tan universales y permanentes como la soledad, el poder o el desamor.",
    publication_date: Date.new(1962, 1, 1)
  },
  {
    title: "El túnel",
    image: "https://images-na.ssl-images-amazon.com/images/I/41RxMarKMcL._SX210_.jpg",
    author: "Ernesto Sábato",
    description: "Se trata de la primera novela del escritor argentino Ernesto Sábato, en la que el narrador cuenta desde la cárcel los motivos que lo llevaron a asesinar a su amante.",
    publication_date: Date.new(1948, 1, 1)
  },
  {
    title: "El lugar sin limites",
    image: "https://images-eu.ssl-images-amazon.com/images/I/41yhCKnhQdL._SX195_.jpg",
    author: "José Donoso",
    description: "El relato muestra ls obsesiones del autor; es a la vez un viaje iniciatico a la dualidad de la condición humana y una visión metafísica y horrenda del mundo",
    publication_date: Date.new(1966, 1, 1)
  },
  {
    title: "El pozo",
    image: "https://images-na.ssl-images-amazon.com/images/I/41S2o7LF0KL._SX210_.jpg",
    author: "Juan Carlos Onetti",
    description: "Cortázar se refería a Onetti como «El más grande novelista latinoamericano.» Aquí un compendio de sus novelas breves.",
    publication_date: Date.new(1939, 1, 1)
  },
  {
    title: "Pantaleón y las visitadoras",
    image: "https://images-eu.ssl-images-amazon.com/images/I/4143FIx0T8L._SX195_.jpg",
    author: "Mario Vargas Llosa",
    description: "«Intenté al principio contar esta historia en serio. Descubrí que era imposible. Fue una experiencia liberadora, que me reveló las posibilidades del juego y el humor en la literatura.»",
    publication_date: Date.new(1973, 1, 1)
  },
  {
    title: "Paradiso",
    image: "https://images-na.ssl-images-amazon.com/images/I/51U7KDMr5oL._SX210_.jpg",
    author: "José Lezama Lima",
    description: 'El carácter de novela de " Paradiso " es sólo una de las múltiples facetas de esta asombrosa creación de la literatura en lengua española.',
    publication_date: Date.new(1966, 1, 1)
  },
  {
    title: "Pedro Páramo",
    image: "https://m.media-amazon.com/images/I/41fz0zhWV6L._SX195_.jpg",
    author: "Juan Rulfo",
    description: 'En 1955 aparece "Pedro Páramo". Novela gestada largamente por un escritor con fama de poco prolífico y que aunó la propia tradición narrativa hispanoamericana con los principales renovadores de la occidental.',
    publication_date: Date.new(1955, 1, 1)
  },
  {
    title: "Aura",
    image: "https://images-eu.ssl-images-amazon.com/images/I/21waZeEhE%2BL._SX195_.jpg",
    author: "Carlos Fuentes",
    description: "Aura es una novela corta macabra y perfecta, penetrada por un erotismo fantástico y fúnebre que desemboca imperceptiblemente en el horror.",
    publication_date: Date.new(1962, 1, 1)
  },
  {
    title: "El reino de este mundo",
    image: "https://images-na.ssl-images-amazon.com/images/I/51XG4CcN7mL._SX210_.jpg",
    author: "Alejo Carpentier",
    description: "El tema principal de esta novela  escrita por el cubano, conocido como el padre del neobarroco, Alejo Carpentier, es «lo real maravilloso», dentro de la revolución haitiana.",
    publication_date: Date.new(1949, 1, 1)
  },
  {
    title: "Hombres de Maíz",
    image: "https://images-eu.ssl-images-amazon.com/images/I/41DRT5dlpQL._SX195_.jpg",
    author: "Miguel Ángel Asturias",
    description: "Su título hace referencia a un mito del Popol Vuh, uno de los libros sagrados de los mayas. Esta novela es generalmente considerada la obra maestra del escritor guatemalteco.",
    publication_date: Date.new(1949, 1, 1)
  },
  {
    title: "Los recuerdos del porvenir",
    image: "https://m.media-amazon.com/images/I/41jj1Xke1PL._SX195_.jpg",
    author: "Elena Garro",
    description: "La historia de los hermanos Isabel, Nicolás y Juan transcurre violentamente en torno a un episodio de la guerra cristera (1926-1929) en Ixtepec, pueblo escondido en el territorio mexicano que se convierte en el perplejo narrador de la tragedia.",
    publication_date: Date.new(1963, 1, 1)
  },
  {
    title: "Hijo De Hombre",
    image: "https://images-eu.ssl-images-amazon.com/images/I/51ZC2KMmMpL._SX195_.jpg",
    author: "Augusto Roa Bastos",
    description: "Considerada una obra fundamental de la literatura latinoamericana, forma parte de una trilogía de este escritor uruguayo, que se completa con Yo el Supremo (1974) y El fiscal (1993).",
    publication_date: Date.new(1960, 1, 1)
  },
  {
    title: "Las lanzas coloradas",
    image: "https://images-na.ssl-images-amazon.com/images/I/51k8vF4ryiL._SX210_.jpg",
    author: "Arturo Úslar Pietri",
    description: "El relato refleja el malogrado intento de Bolívar de liberar la entonces Capitanía General de Venezuela de manos del poder español, aunque la figura del Libertador no se hace presente más que de manera referencial.",
    publication_date: Date.new(1931, 1, 1)
  },
  {
    title: "Gabriela, clavo y canela",
    image: "https://images-na.ssl-images-amazon.com/images/I/51E2CPOusoL._SX210_.jpg",
    author: "Jorge Amado",
    description: "José Donoso, en su libro Historia Personal del «boom», menciona a Jorge Amado como un escritor asociado a este movimiento.  Esta es su novela más lograda.",
    publication_date: Date.new(1958, 1, 1)
  },
  {
    title: "Entre Marx y una mujer desnuda",
    image: "https://images-eu.ssl-images-amazon.com/images/I/41-1kdMRuhL._SX195_.jpg",
    author: "José Enrique Adoum",
    description: "Otro autor que estuvo cercano al boom y entabló una gran relación con sus mayores representantes, fue el ecuatoriano Jorge Enrique Adoum.  Esta es una novela experimental, meta-literaria y compleja.",
    publication_date: Date.new(1969, 1, 1)
  },
  {
    title: "Memorias De Altagracia",
    image: "https://images-eu.ssl-images-amazon.com/images/I/51jXS9bfRvL._SX195_.jpg",
    author: "Salvador Garmendia",
    description: "En Memorias de Altagracia cuenta cómo un adolescente, narra retrospectivamente los acontecimientos más sobresalientes de la historia de su pueblo, un pueblo naciente. Otro autor asociado directamente al boom latinoamericano.",
    publication_date: Date.new(1960, 1, 1)
  }
]

puts "Creando libros..."
books_list.each do |book|
  book = Book.create(
    title: book[:title],
    description: book[:description],
    image: book[:image],
    publication_year: book[:publication_date],
    author: Author.find_by(name: book[:author]),
    category: Category.all.sample,
    editorial: Editorial.all.sample,
    stock: rand(10..100),
    price: rand(30..100),
  )
end

puts "#{Book.count} libros creados exitosamente! 🎉"
