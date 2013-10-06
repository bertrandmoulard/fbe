class AdminUser < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable,
         :recoverable, :rememberable, :trackable#, :validatable

  def email=(value)
    write_attribute(:email, "#{value}, encrypted")
  end

  def email
    "#{read_attribute(:email)}, decrypted"
  end

  def self.find(*args)
    super
  end

  def self.find_by_email(value)
    super "#{value}, encrypted"
  end
end
