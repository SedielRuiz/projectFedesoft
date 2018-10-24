class Location < ApplicationRecord
    #relacion uno a muchos: una localidad puede tener mcuhos barrios
    has_many :neighborhoods
end
