class Accesory < ActiveRecord::Base
  attr_accessible :name, :price, :used, :created_at, :updated_at, :id
end
