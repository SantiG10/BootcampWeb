class Product < ActiveRecord::Base

  has_many :category_product
  has_many :categories, through: :category_product

  validates :marca, :talla, :referencia, :costo_unitario, presence: true

  #validates :talla, exclusion: { in: %w(s m), message: "%{value} No disponible." }

  #validates :color, inclusion: { in: %w(rojo negro blanco),message: "%{value} No disponible" }

  validates :descripcion, length: { in: 4..30 }

  validates :costo_unitario, numericality: { only_float: true, greater_than: 0 }

  before_save :calcular_total

  def calcular_total
    self.total = self.costo_unitario * 1.16
  end
end
