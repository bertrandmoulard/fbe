class AddMessageToFeedbacks < ActiveRecord::Migration
  def change
    add_column :feedbacks, :message, :string
  end
end
