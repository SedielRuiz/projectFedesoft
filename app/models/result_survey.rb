class ResultSurvey < ApplicationRecord
    #relacion uno a mucho: un resultado pertence a una encuesta
    belongs_to :pool
    #relacion uno a mucho: cada pregunta tiene su valor
    belongs_to :question
    #relacion muchos a muchos: un resultado puede tener muchos riesgos
    has_and_belongs_to_many :risks
end
