class Neighborhood < ApplicationRecord
    #relacionnuno a mjchos: un barrio pertence a una localidad
    belongs_to :location
    #relacion uno a muchos: un usuario pertenece a un barrio
    has_many :users
end
