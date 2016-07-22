class Category < ActiveRecord::Base
  has_many :category_product
  has_many :products, through: :category_product
end
