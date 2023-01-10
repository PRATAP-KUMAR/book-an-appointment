require 'rails_helper'

RSpec.describe User, type: :model do
  subject do
    ['user', 'admin'].each do |role|
      Role.find_or_create_by({name: role})
    end
    User.create(username: 'User', email: 'Email@example.com', password: 'Password', role: Role.find_by_name('admin'))
  end

  before { subject.save }

  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end
end
