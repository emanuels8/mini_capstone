class Product < ApplicationRecord
  validates :name, presence: true
  validates :price, numericality: true
  validates :description, length: { minimum: 2 }
  validates :description, length: { maximum: 500 }
  validates :price, numericality: { greater_than: 0 }

  def is_discounted?
    price <= 10
  end

  def tax
    price * 0.09
  end

  def total
    price + tax
  end

  # def supplier
  #   Supplier.find_b (:id supplier_id)
  # end
  belongs_to :supplier
  has_many :image
  has_many :orders
end
