class Forum < ApplicationRecord
    #relacion uno a muchos: un foro puede tener muchos comentarios
    has_many :comment_forum
end
