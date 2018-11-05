class OptionsQuestion < ApplicationRecord
    #relacion uno a muchos: una pregunta puede tener mcuhas opciones
    belongs_to :questions
end
