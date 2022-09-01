
# provides an easy way to customize how the JSON rendered by our controllers is structured.
# uses a "convention over configuration" approach, and is consistent with separation of concerns.
class MovieSerializer < ActiveModel::Serializer
  attributes :id, :title, :year, :length, :director, :description, :poster_url, :category, :discount, :female_director

end
