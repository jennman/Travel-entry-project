class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :username, :email, :places_i_visited
  # has_many :locations

  def places_i_visited
    self.object.locations.map { |each_location| each_location.statename }
  end

  # def places_i_visited
  #     self.object.locations.map do |each_location|
  #     each_location.statename
  #   end
  # end
  
  # def places_i_visited
  #   map_result = self.object.locations.map do |each_location|
  #     each_location.statename
  #   end
  #   return map_result
  # end

  # def jenn
  #   return ':)'
  # end
end
