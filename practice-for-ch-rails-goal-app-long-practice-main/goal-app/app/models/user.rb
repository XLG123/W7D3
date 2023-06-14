class User < ApplicationRecord
  validates :username, :password, presence: true
  validates :username, uniqueness: true
  validates :password, length: { minimum: 6, allow_nil: true}

  attr_reader :password

  def password=(password)
    @password = password
  end
end
