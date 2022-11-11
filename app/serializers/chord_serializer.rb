class ChordSerializer < ActiveModel::Serializer
  attributes :id, :root, :qualitytype, :note, :image, :sound
end
