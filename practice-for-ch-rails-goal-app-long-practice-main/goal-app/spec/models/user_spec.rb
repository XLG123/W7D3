require 'rails_helper'

RSpec.describe User, type: :model do
  it 'validates the presence of username and password' do
    should validate_presence_of(:username)
    should validate_presence_of(:password)
    should validate_uniqueness_of(:username)
    should validate_length_of(:password).is_at_least(6)
  end
end

