class AddEncryptedEmailToAdminUser < ActiveRecord::Migration
  def change
    add_column :admin_users, :encrpyted_email, :string
  end
end
