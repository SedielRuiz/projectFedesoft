class PollSerializer < ActiveModel::Serializer
  attributes :id, :name_poll, :type_poll
  has_many :questions

  class QuestionSerializer < ActiveModel::Serializer
    attributes :id, :concept_quiestion, :value_question
    has_many :options_question

    class OptionsQuestionSerializer < ActiveModel::Serializer      
      attributes :id, :description_opction, :question_id
    end
  end
end
