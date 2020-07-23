require 'rails_helper'

RSpec.describe 'Users' do
  it "Creates  a User and redirects to User's page" do
    get users_signup_path
    expect(response).to render_template(:new)
  end
end
