class ApiUser < ApplicationRecord
  # encrypt password
  #has_secure_password


  # Can write model association here for example
  has_many :wishes, dependent: :destroy
  # validation
  validates_presence_of :email, :password_digest, :username
  validates :email, uniqueness: true, on: :create and :update
  validates :username, uniqueness: true, on: [:create, :update]
end

