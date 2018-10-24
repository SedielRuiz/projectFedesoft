class OptionsQuestion < ApplicationRecord
    #relacion uno a muchos: una pregunta puede tener mcuhas opciones
    has_many :questions
end
