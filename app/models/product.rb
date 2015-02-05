class Product < ActiveRecord::Base
  belongs_to :category
  belongs_to :user
  has_many :reviews, dependent: :destroy

  validates :title, presence: true
  validates :description, presence: true
  validates :price, presence: true, 
  									format: { with: /\A[\d]+\.?[\d]{0,2}\Z/,
  									message: "Price can have maximum 2 decimal places." },
  					numericality: { greater_than: 0 }


  def average_rating
  	self.reviews.average(:rating).to_f
  end

end
