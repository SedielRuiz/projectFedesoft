class PollSerializer < ActiveModel::Serializer
  attributes :name_poll
  has_many :questions

  class QuestionSerializer < ActiveModel::Serializer
    has_many :options_question
    attributes :id, :concept_quiestion, :value_question

    class OptionsQuestionSerializer < ActiveModel::Serializer      
      attributes :id, :description_opction, :question_id
    end
  end
end
