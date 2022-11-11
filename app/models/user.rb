class User < ApplicationRecord
    has_many :favchords
    has_many :chords, through: :favchords
end