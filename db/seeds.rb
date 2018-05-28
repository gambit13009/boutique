# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:


def picture(*file_name)

  items = Item.create!(
  	title: 'cat',
  	description:'real cat',
  	price: '14',
  	image_url:"/app/assets/images/#{file_name}.jpg")

end

picture('bate', 'biche', 'buche')