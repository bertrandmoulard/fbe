class AddYesToFeedbacks < ActiveRecord::Migration
  def change
    add_column :feedbacks, :yes, :boolean
  end
end
