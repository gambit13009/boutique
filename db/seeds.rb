# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
<<<<<<< HEAD


def img(*file_name)

  items = Item.create!(
  	title: 'catzou',
  	description:'real cat',
  	price: '14',
  	image_url:"/app/assets/images/#{file_name}.jpg")

end

img('bate', 'biche', 'buche')
=======
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
def picture(file_name)

picture = Item.create!(
	title: 'cat',
	description: 'real cat',
	price: '14',
	image_url: "/app/assets/images/#{file_name}.jpg")

end

picture('chat')
>>>>>>> master
