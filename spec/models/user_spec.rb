require 'rails_helper'

RSpec.describe User, type: :model do
  context 'when saving' do
    it 'transforms email to lower case' do
      user = User.create(email: 'TEST@TEST.com', name: 'Testing', password: '123456', password_confirmation: '123456')
      expect(user.email).to eq 'test@test.com'
    end
  end
end
