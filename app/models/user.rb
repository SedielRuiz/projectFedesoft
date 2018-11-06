class User < ApplicationRecord
    has_secure_password
    #relacion uno  amuchos: un usuario pertence a un barrio
    belongs_to :neighborhood
    #relacion unno a muchos: un usuario presenta varias encuestas
    has_many :apply_survey
    #relacionnuno a muchos: un usuario califica la plataforma
    has_many :ratings
    #relacion uno a muchos: un usuario puede comentar cualquier foro
    belongs_to :comments_forums
end
