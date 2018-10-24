class ApplySurvey < ApplicationRecord
    #relacion uno a mjchos: un usuario presenta una encuesta
    belongs_to :users
    #relacion uno a muchos: una aplicacion de encuesta pertenece a una encuesta valaga la redundancia
    belongs_to :polls
end
