class AddYesNoQuestionToFeedbackSubjects < ActiveRecord::Migration
  def change
    add_column :feedback_subjects, :yes_no_question, :text
  end
end
