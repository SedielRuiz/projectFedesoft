class Poll < ApplicationRecord
    #relacion muchos a muchos: una encuesta puede tener muchas preguntas
    has_and_belongs_to_many :questions
    #relacion uno a muchos: un rsultado pertenece a una encuesta
    has_many :result_survey
    #relacion uno a muchos: un usuario realiza una encuesta
    has_many :apply_survey
end
