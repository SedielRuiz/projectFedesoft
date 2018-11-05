class PollSerializer < ActiveModel::Serializer
  attributes :id, :name_poll
  has_many :questions

  class QuestionSerializer < ActiveModel::Serializer
    attributes :id, :concept_quiestion, :value_question
    belongs_to :options_question

    class OptionsQuestionSerializer < ActiveModel::Serializer      
      attributes :id, :description_opction, :question_id
    end
  end
end
