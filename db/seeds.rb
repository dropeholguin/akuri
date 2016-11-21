# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Location.destroy_all
puts 'Creating User'

User.destroy_all
User.create!([
  {firts_name: "Pedro", last_name: "Luis", user_name: "drope",email: "dropeholguin1994@gmail.com", password: "akuriapp", password_confirmation: "akuriapp", avatar: open("http://stylelovely.com/wp-content/uploads/hombres_sexy-290x290.jpg")},
  {firts_name: "Johan", last_name: "Fernando", email: "johan27@gmail.com", user_name: "johan27", password: "akuriapp", password_confirmation: "akuriapp", avatar: open("http://img.webme.com/pic/l/lookvideocasting/hombre886.jpg")},
  {firts_name: "Cesar", last_name: "Taborda", email: "cesartaborda@hotmail.com", user_name: "cesarT", password: "akuriapp", password_confirmation: "akuriapp", avatar: open("http://static1.modaellos.com/wp-content/uploads/2012/07/cortes-de-pelo-y-peinados-para-hombres.jpg")}
])

user = User.find_by email: "dropeholguin1994@gmail.com"
user.add_role :admin


puts 'Creating Establishment'

Establishment.destroy_all
Establishment.create!([
	{name: "JENO'S PIZZA", kind_of_food: "pizzeria", description: "Porque preparamos buenos momentos para compartir", website: "http://www.jenospizza.com.co/home", phone: "7313699",image: open("http://cdn.colombia.com/sdi/2012/12/14/047552dbcf3640f7ba56bd5f8de6c0ab.jpg")},
	{name: "Frisby", kind_of_food: "Asadero", description: "Restaurante de comida rápida especializada en pollos", website: "https://frisby.com.co/", phone: "7461636",image: open("http://www.chipichape.com.co/new/wp-content/uploads/2015/04/logo_frisby.jpg")},
	{name: "SARKU JAPÁN", kind_of_food: "Comida Japonesa", description: "El Arroz , Infalible en la comida Japonesa", website: "http://www.sarkujapan.com.co/", phone: "7359210",image: open("http://www.newbury-st.com/images/exterior_pics/2394.jpg")},
	{name: "WANDER BURGER", kind_of_food: "Comida Rapida", description: "Exquisitas hamburguesas, sandwich cubano con la mejor salsa de ajo de la ciudad", website: "", phone: "7452000",image: open("http://tarjetaoro.cronicadelquindio.com/files/promociones/g20150320114505.jpg")},
	{name: "TORITO AL CARBON", kind_of_food: "Asadero", description: "Carnes - Asados - Parrilladas- Churrasco - Lomo de Cerdo", website: "", phone: "7358889",image: open("https://0.kekantoimg.com/bN8KyO4fCn3dCKYg3VKAT28jBGQ=/415x205/s3.amazonaws.com/kekanto_pics/pics/832/778832.jpg")},
	{name: "RESTAURANTE PROVINCIA", kind_of_food: "Comida Tradicional", description: "Ambiente campestre, acogedor y hogareño", website: "http://www.provincia.com.co/", phone: "3234603926",image: open("https://i.ytimg.com/vi/8yvd9pH3Bh4/hqdefault.jpg")},
	{name: "IMPERIAL", kind_of_food: "Comida Tradicional", description: "Restaurante, cafetería, Salón de eventos", website: "", phone: " 7449151",image: open("http://images.paginasamarillas.com/16418622/12/animation/1.jpg")},
	{name: "EMPANADA ENVIGADEÑA", kind_of_food: "Empanadas Tradicionales", description: "Que rico sabor y con sus salsas sabe mejor", website: "http://www.xn--empanadasenvigadeas-c4b.com/", phone: "7488453",image: open("http://www.xn--empanadasenvigadeas-c4b.com/img/0213/917.jpg?sitetimestamp=636130004550000000")},
	{name: "CHUZZO RICO", kind_of_food: "Comida Tradicional", description: "Chuzos - Carnes - Hamburguesas - Perros", website: "", phone: "7464567",image: open("http://elsaborpaisita.com/wp-content/uploads/2014/05/chuzos_armenia-300x192.jpg")},
	{name: "RESTAURANTE LOS LABRIEGOS", kind_of_food: "Comida Tradicional", description: "Como en el campo", website: "", phone: "7464626",image: open("http://www.colombiaparatodos.net/files/editor/images/labriegos1.jpg")},
	{name: "LA COSECHA PARRILLADA", kind_of_food: "Comida tradicional", description: "Su restaurante con la mejor atención!", website: "http://www.lacosechaparrillada.com/", phone: "7485754",image: open("http://www.guiaejecafetero.com/wp-content/uploads/photo-gallery/Restaurantes/1.LaCosechaParrillada/logo_fixed.jpg")}
])
puts "Seeds Finished"