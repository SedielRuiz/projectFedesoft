class MethodsPrevention < ApplicationRecord
    #relacion muchos a muchos: un metodo de prevencion lo pueden tener muchos riesgos
    has_and_belongs_to_many :risks
end
