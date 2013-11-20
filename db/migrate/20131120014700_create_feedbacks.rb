class CreateFeedbacks < ActiveRecord::Migration
  def change
    create_table :feedbacks do |t|
      t.integer :feedback_subject_id

      t.timestamps
    end
  end
end
