# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#localidad
Location.create(name_location:"Antonio nariño", zone_location:"Z15")
#barrios
Neighborhood.create(name_neighborhood:"Caracas", location_id:1)
Neighborhood.create(name_neighborhood:"Ciudad berna", location_id:1)
Neighborhood.create(name_neighborhood:"Ciudad jardín sur", location_id:1)
Neighborhood.create(name_neighborhood:"Eduerdo Frei", location_id:1)
Neighborhood.create(name_neighborhood:"La fragua", location_id:1)
Neighborhood.create(name_neighborhood:"La fraguita", location_id:1)
Neighborhood.create(name_neighborhood:"La hortua", location_id:1)
Neighborhood.create(name_neighborhood:"Policarpa", location_id:1)
Neighborhood.create(name_neighborhood:"Restrepo", location_id:1)
Neighborhood.create(name_neighborhood:"Restrepo occidental", location_id:1)
Neighborhood.create(name_neighborhood:"San Antonio", location_id:1)
Neighborhood.create(name_neighborhood:"Santander", location_id:1)
Neighborhood.create(name_neighborhood:"Santander sur", location_id:1)
Neighborhood.create(name_neighborhood:"SENA", location_id:1)
Neighborhood.create(name_neighborhood:"Sevilla", location_id:1)
Neighborhood.create(name_neighborhood:"Villa mayor oriental", location_id:1)
#usuarios
User.create(name: "Juan", last_name: "Parra", phone:"12345", address:"Calle 19", email:"juan@gmail.com", user_name:"juan", password:"admin123", password_confirmation:"admin123", neighborhood_id:1)
User.create(name: "Daniel", last_name: "Idarraga", phone:"12345", address:"Calle 22", email:"daniel@gmail.com", user_name:"daniel", password:"admin123", password_confirmation:"admin123", neighborhood_id:1)
User.create(name: "Sediel", last_name: "Ruiz", phone:"12345", address:"Calle 51 D Sur", email:"sedielruiz21@gmail.com", user_name:"sediel", password:"admin123", password_confirmation:"admin123", neighborhood_id:1)
User.create(name: "Jessica", last_name: "Cedeño", phone:"12345", address:"Calle 123", email:"jessica@gmail.com", user_name:"jessica", password:"admin123", password_confirmation:"admin123", neighborhood_id:1)
#riesgos
Risk.create(name_risk:"Infección", description_risk:"Infección en el embarazo")
#metodos
MethodsPrevention.create(name_method:"Controles", description_method:"Asistir a un control de embarazo para monitorie del bebé", duration_method:"6", type_duration:"2", recommendations_method:"Asistir puntual y evitar movimientos bruscos")
#foro
Forum.create(title_forum:"Conece algunos metodos de planificación", objective_forum:"Retro alimentar o aprendes nuevos metodos de planificación")

#encuesta completa
    #encuesta social
    Poll.create(name_poll:"Prevención", type_poll:1)
    #preguntas
    Question.create(concept_quiestion:"Considera que está bien informado del tema", value_question:4)
    Question.create(concept_quiestion:"Considera que hay ayudas del estado", value_question:6)
    #opciones de las preguntas
    OptionsQuestion.create(question_id:1, description_opction:"Si")
    OptionsQuestion.create(question_id:1, description_opction:"No")
    OptionsQuestion.create(question_id:2, description_opction:"Si")
    OptionsQuestion.create(question_id:2, description_opction:"No")
    #preguntas de la encuesta
    PollQuestion.create(poll_id:1,question_id:1)
    PollQuestion.create(poll_id:1,question_id:2)
    PollQuestion.create(poll_id:2,question_id:1)
    PollQuestion.create(poll_id:2,question_id:2)
#calificacion
Rating.create(qualify:5,observation_rating:"Ninguna, todo está perfecto", user_id:3)


