class Recipe < ApplicationRecord
    validates :name, presence: true
    validates :desciption, presence: true, length: {minimun: 5, maximum:500}
    belongs_to :chef
    validates :chef_id, presence: true
    has_many :recipe_ingredients
    has_many :ingredients, through: :recipe_ingredients

    has_many :comments, dependent: :destroy
end
