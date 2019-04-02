class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  def self.from_omniauth(auth)
    User.where(email: auth.email) do |user|
      user.email = auth.info.email
      user.oauth_token = auth.credentials.token
      user.save!
    end
  end
end
