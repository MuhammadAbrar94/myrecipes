class Recipe < ApplicationRecord
    validates :name, presence: true
    validates :desciption, presence: true, length: {minimun: 5, maximum:500}
    belongs_to :chef
    validates :chef_id, presence: true
end
