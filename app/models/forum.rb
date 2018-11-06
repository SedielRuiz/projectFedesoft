class Forum < ApplicationRecord
    #relacion uno a muchos: un foro puede tener muchos comentarios
    belongs_to :comments_forums
end
