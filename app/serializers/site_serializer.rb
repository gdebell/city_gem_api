class SiteSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :city, :state, :photo, :lat, :long
end
