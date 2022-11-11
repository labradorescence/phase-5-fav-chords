class FavChord < ApplicationRecord
    belongs_to :chord
    belongs_to :user
end