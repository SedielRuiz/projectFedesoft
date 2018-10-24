class Rating < ApplicationRecord
    #relacionnuno a muchos: muchos usuarios pueden calificar la plataforma
    belongs_to :users
end
