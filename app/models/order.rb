class Order < ApplicationRecord
  belongs_to :user
  has_many_and_belongs_to :items
end
