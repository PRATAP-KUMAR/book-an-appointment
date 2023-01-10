require 'rails_helper'

RSpec.describe Car, type: :model do
  subject do
    ['user', 'admin'].each do |role|
      Role.find_or_create_by({name: role})
    end

    users = User.create([
      {username: 'raga', email: 'raga@example.com', password: 'password', role: Role.find_by_name('admin')},
      {username: 'conor', email: 'conor@gmail.com', password: 'password', role: Role.find_by_name('admin')}
      ]) 

    Car.create(
      name: "Car 1",
      image: "https://images.unsplash.com/photo-1492144534655-ae79c964c9d7?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8Y2Fyc3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60",
      description: "automobile, byname auto, also called motorcar or car,
                    a usually four-wheeled vehicle designed primarily for passenger
                    transportation and commonly propelled by an internal-combustion
                    engine using a volatile fuel. ",
      model: "Chevrolet Camaro 2020",
      manufacturing_date: "2020-04-21",
      user: users[0]
      )
  end

  before { subject.save }

  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end

  it 'is not valid without a name' do
    car = Car.new(name: nil)
    expect(car).to_not be_valid
  end

end
