class CommentsForum < ApplicationRecord
    #relacion uno a muchos: un foro puede tener muchos comentaristas
    has_many :users
    #relacion uno a muchos: un foro puede tener muchos comentarios
    has_many :forum
end
