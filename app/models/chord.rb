class Chord < ApplicationRecord
    has_many :favchords
    has_many :users, through: :favchords
end