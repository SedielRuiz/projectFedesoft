class Question < ApplicationRecord
    #relacion muchos a muchos: una encuesta puede tener muchas preguntas
    has_and_belongs_to_many :polls
    #relacion uno a muchos: una pregunta puede tener mcuhas opciones
    has_many :options_question
    #relacion uno a mucho: cada pregunta tiene su valor
    has_many :result_survey
end
