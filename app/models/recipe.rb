class Recipe < ApplicationRecord
    validates :name, presence: true
    validates :desciption, presence: true, length: {minimun: 5, maximum:500}

end
