# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# db/seeds.rb

Book.destroy_all

books_data = [
  {
    title: "Cien años de soledad",
    description: "La obra maestra de Gabriel García Márquez que narra la historia de la familia Buendía en Macondo.",
    author: "Gabriel García Márquez",
    image: "https://images.cdn3.buscalibre.com/fit-in/360x360/61/8d/618d227e8967274cd9589a549adff52d.jpg",
    publication_year: Date.new(1967, 5, 30)
  },
  {
    title: "Don Quijote de la Mancha",
    description: "La obra cumbre de la literatura española, escrita por Miguel de Cervantes. La historia de un caballero que enloquece leyendo libros de caballería.",
    author: "Miguel de Cervantes",
    image: "https://images.cdn2.buscalibre.com/fit-in/360x360/fa/9e/fa9e5a2e42c4923ec4bcfcc194be8b2a.jpg",
    publication_year: Date.new(1605, 1, 16)
  },
  {
    title: "Cien sonetos de amor",
    description: "Poesía romántica del poeta chileno Pablo Neruda, una colección de cien sonetos que expresan el amor en sus diversas formas.",
    author: "Pablo Neruda",
    image: "https://placehold.co/600x400/EEE/31343C",
    publication_year: Date.new(1959, 11, 25)
  },
  {
    title: "La sombra del viento",
    description: "Novela de misterio y romance escrita por Carlos Ruiz Zafón, que sigue la historia de Daniel Sempere en el Cementerio de los Libros Olvidados.",
    author: "Carlos Ruiz Zafón",
    image: "https://placehold.co/600x400/EEE/31343C",
    publication_year: Date.new(2001, 2, 1)
  },
  {
    title: "Rayuela",
    description: "Una obra innovadora del escritor argentino Julio Cortázar, que invita a los lectores a participar activamente en la estructura de la novela.",
    author: "Julio Cortázar",
    image: "https://placehold.co/600x400/EEE/31343C",
    publication_year: Date.new(1963, 6, 28)
  },
  {
    title: "Ficciones",
    description: "Colección de cuentos fantásticos de Jorge Luis Borges, explorando mundos imaginarios y desafiando las convenciones literarias.",
    author: "Jorge Luis Borges",
    image: "https://placehold.co/600x400/EEE/31343C",
    publication_year: Date.new(1944, 6, 5)
  },
  {
    title: "Como agua para chocolate",
    description: "Novela de Laura Esquivel que combina la narrativa con recetas de cocina, contando la historia de Tita y sus emociones a través de la comida.",
    author: "Laura Esquivel",
    image: "https://placehold.co/600x400/EEE/31343C",
    publication_year: Date.new(1989, 2, 7)
  },
  {
    title: "Pedro Páramo",
    description: "Novela mexicana escrita por Juan Rulfo, que narra la historia de Juan Preciado en busca de su padre en el pueblo de Comala.",
    author: "Juan Rulfo",
    image: "https://placehold.co/600x400/EEE/31343C",
    publication_year: Date.new(1955, 6, 18)
  },
  {
    title: "La casa de los espíritus",
    description: "Novela de Isabel Allende que sigue la historia de la familia Trueba a lo largo de varias generaciones, con toques de realismo mágico.",
    author: "Isabel Allende",
    image: "https://placehold.co/600x400/EEE/31343C",
    publication_year: Date.new(1982, 1, 1)
  },
  {
    title: "Crónica de una muerte anunciada",
    description: "Novela corta de García Márquez que relata los eventos que llevan a la muerte de Santiago Nasar, a pesar de estar anunciada desde el principio.",
    author: "Gabriel García Márquez",
    image: "https://placehold.co/600x400/EEE/31343C",
    publication_year: Date.new(1981, 1, 1)
  },
]

Book.create!(books_data)

User.create(
  email: "admin@gmail.com",
  password: "lucas123",
  password_confirmation: "lucas123",
)
