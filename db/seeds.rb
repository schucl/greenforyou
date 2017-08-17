# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Booking.destroy_all
Plant.destroy_all

plant1 = Plant.create(name: "ALOE COSMO", description: "On ne présente plus la famille des Aloès, ces belles succulentes aux très nombreuses vertus ! Originales, élégantes et peu exigeantes grâce à leurs feuilles charnues qui stockent l’eau, les Aloès sont des plantes incontournables dans nos intérieurs. La variété Cosmo est caractérisée par une forme très graphique, avec des feuilles dentées, ponctuées de points blancs sur un fond vert profond. Il se dit aussi que ces jolies succulentes sont des plantes porte-bonheur qui permettent de réaliser ses rêves, même les plus fous… A vous de cultiver le mythe !", address: "56 bld Exelmans, 75016 Paris", category: "PLANTE DÉPOLLUANTE!", price: "5", user: User.first)
plant2 = Plant.create(name: "YUCCA JEWEL", description: "Ce Yucca Jewel bicolore est différent. Il va vous surprendre avec ses feuilles d’un vert tendre très lumineux et les bordures d’un vert plus sombre et plus profond. Ce contraste rend cette variété de Yucca particulièrement originale & déco. Plante originaire d’Amérique centrale, il s’acclimate très bien dans nos intérieurs pourvu qu’il soit placé dans un endroit clair. Esthétique, fidèle et vraiment robuste le Yucca Jewel vous impressionnera par sa capacité à égayer une pièce !", address: "88 rue Saint Denis, 75001 Paris", category: "PLANTE DÉPOLLUANTE!", price: "10", user: User.first)
plant3 = Plant.create(name: "POTHOS", description: "Le Pothos fait partie des plantes hyper robustes qui nécessitent très peu d’entretien et qui ont en plus une croissance super rapide… Il ne déçoit jamais. Avec son feuillage tombant, dense et généreux, le Pothos apporte un côté décoratif très sympa avec vraiment peu d’efforts. En plus, c’est une plante dépolluante qui contribue à purifier l’air, ce qui en fait un incontournable en intérieur. Le pote idéal quoi !", address: "16 Villa Gaudelet, 75011 Paris", category: "PLANTE DÉPOLLUANTE!", price: "10", user: User.first)
plant4 = Plant.create(name: "AGLAONEMA", description: "L’Aglaonema Diamond Bay est une très jolie plante originaire des forêts tropicales d’Amérique du Sud et d’Asie du Sud-est. Très résistante elle offre un superbe feuillage panaché ton sur ton. On aime ses feuilles, le mélange entre le vert tendre et le crème pistache… Peu exigeante, d’entretien simple et vraiment super décorative, elle a vraiment tout pour plaire !", address: "88 rue Saint Denis, 75001 Paris", category: "PLANTE DÉPOLLUANTE!", price: "7", user: User.first)
plant5 = Plant.create(name: "DÉLICIEUSE MONSTERA", description: "Cette magnifique plante n’a rien de monstrueux bien au contraire ! Monstera Deliciosa est une très belle plante. Fascinante, subtile et attachante. Ses feuilles incroyables sont marquées par de nombreux trous ou perforations qui lui valent le surnom de « swiss cheese plant » (plante gruyère). Ses trous s’étendent petit à petit vers les bords de la feuille et s’ouvrent au fur et à mesure que la plante grandit. En plus, elle est super cool et ne vous en voudra pas si parfois vous oubliez de l’arroser. Charismatique et esthétique, cette plante a aussi des vertus dépolluantes : elle nous fait du bien tout en apportant un effet jungle très sympa dans nos intérieurs. Pour la petite histoire… Sa ressemblance avec le philodendron est telle qu’on le surnomme « faux philo » et qu’on le trouve même encore en vente sous le nom de Philodendron Pertusum !", address: "100 rue Balard 75015 Paris", category: "PLANTE DÉPOLLUANTE!", price: "10", user: User.first)
# plant6 = Plant.create(name: "", description: "", address: "", category: "", price: "", user: User.first)
# plant7 = Plant.create(name: "", description: "", address: "", category: "", price: "", user: User.first)
# plant8 = Plant.create(name: "", description: "", address: "", category: "", price: "", user: User.first)
# plant9 = Plant.create(name: "", description: "", address: "", category: "", price: "", user: User.first)
# plant10 = Plant.create(name: "", description: "", address: "", category: "", price: "", user: User.first)
