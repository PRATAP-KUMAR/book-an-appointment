# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#

['user', 'admin'].each do |role|
    Role.find_or_create_by({name: role})
end

users = User.create([
    {username: 'raga', email: 'raga@example.com', password: 'password', role: Role.find_by_name('admin')},
    {username: 'conor', email: 'conor@gmail.com', password: 'password', role: Role.find_by_name('admin')},
    {username: 'pratap', email: 'pratap@example.com', password: 'password', role: Role.find_by_name('admin')},
    {username: 'david', email: 'david@gmail.com', password: 'password', role: Role.find_by_name('admin')},
    {username: 'kwaleyela', email: 'kwaleyela@example.com', password: 'password', role: Role.find_by_name('admin')},
    {username: 'raga', email: 'user@example.com', password: 'password', role: Role.find_by_name('user')}
    ]) 

cars = Car.create([
    {
        name: "Chevrolet Camaro",
        image: "https://images.unsplash.com/photo-1492144534655-ae79c964c9d7?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8Y2Fyc3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60",
        description: "automobile, byname auto, also called motorcar or car,
                      a usually four-wheeled vehicle designed primarily for passenger
                      transportation and commonly propelled by an internal-combustion
                      engine using a volatile fuel. ",
        model: "Chevrolet Camaro 2020",
        manufacturing_date: "2020-04-21",
        user: users[0]
    },
    {
        name: "Dodge Challenger",
        image: "https://images.unsplash.com/photo-1492144534655-ae79c964c9d7?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8Y2Fyc3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60",
        description: "automobile, byname auto, also called motorcar or car,
                      a usually four-wheeled vehicle designed primarily for passenger
                      transportation and commonly propelled by an internal-combustion
                      engine using a volatile fuel. ",
        model: "1990 V6",
        manufacturing_date: "1990-04-21",
        user: users[0]
    },
    {
        name: "Mercedes",
        image: "https://images.unsplash.com/photo-1492144534655-ae79c964c9d7?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8Y2Fyc3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60",
        description: "automobile, byname auto, also called motorcar or car,
                      a usually four-wheeled vehicle designed primarily for passenger
                      transportation and commonly propelled by an internal-combustion
                      engine using a volatile fuel. ",
        model: "AMG",
        manufacturing_date: "2020-04-21",
        user: users[0]
    },
    {
        name: "Mercedes W13",
        image: "https://images.unsplash.com/photo-1492144534655-ae79c964c9d7?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8Y2Fyc3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60",
        description: "automobile, byname auto, also called motorcar or car,
                      a usually four-wheeled vehicle designed primarily for passenger
                      transportation and commonly propelled by an internal-combustion
                      engine using a volatile fuel. ",
        model: "Formula 1 V6 HYBRID",
        manufacturing_date: "2020-04-21",
        user: users[0]
    },
    {
        name: "Ferrari F75",
        image: "https://images.unsplash.com/photo-1492144534655-ae79c964c9d7?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8Y2Fyc3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60",
        description: "automobile, byname auto, also called motorcar or car,
                      a usually four-wheeled vehicle designed primarily for passenger
                      transportation and commonly propelled by an internal-combustion
                      engine using a volatile fuel. ",
        model: "F75 V6 HYBRID",
        manufacturing_date: "2020-04-21",
        user: users[0]
    },
])

# Reservation.create([ { user: users[0], car: cars[0], reserve_date: '2023-01-01' } ])
