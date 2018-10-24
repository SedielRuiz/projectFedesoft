class Risk < ApplicationRecord
    #relacion muchos a muchos: un riesgo puede tener muchos metodos de prevencion
    has_and_belongs_to_many :methods_prevention
    #relacion muchos a muchos: un resultado puede tener muchos riesgos
    has_and_belongs_to_many :result_surveys
end
