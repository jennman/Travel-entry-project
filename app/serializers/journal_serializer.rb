class JournalSerializer < ActiveModel::Serializer
  attributes :id, :date, :suggestions, :descriptions, :visted
  has_one :location
  has_one :user
end
