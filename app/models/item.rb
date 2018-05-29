class Item < ApplicationRecord

has_and_belong_to_many :carts

has_many_and_belongs_to :orders

validates :title, presence: true
					
validates :description, presence: true

validates :price, presence: true

validates :image_url, presence: true


end
