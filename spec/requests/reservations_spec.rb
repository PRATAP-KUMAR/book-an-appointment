require 'rails_helper'

RSpec.describe 'Reservations', type: :request do
  subject do
    %w[user admin].each do |role|
      Role.find_or_create_by({ name: role })
    end
    User.create(username: 'User', email: 'Email@example.com', password: 'Password',
                       password_confirmation: 'password', role: Role.find_by_name('admin'))
  end

  it 'Get reservations' do
    get user_reservations_path(1)
    expect(response).to have_http_status(200)
  end
end
