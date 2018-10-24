class CommentsForum < ApplicationRecord
    #relacion uno a muchos: un foro puede tener muchos comentaristas
    belongs_to :users
    #relacion uno a muchos: un foro puede tener muchos comentarios
    belongs_to :forums
end
