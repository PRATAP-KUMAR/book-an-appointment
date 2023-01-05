# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#

users = User.create([{username: 'raga'}, {username: 'conor'}]) 

cars = Car.create([
    {
        name: "Car 1",
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
        name: "Car 2",
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
        name: "Car 3",
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
        name: "Car 4",
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
        name: "Car 5",
        image: "https://images.unsplash.com/photo-1492144534655-ae79c964c9d7?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8Y2Fyc3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60",
        description: "automobile, byname auto, also called motorcar or car,
                      a usually four-wheeled vehicle designed primarily for passenger
                      transportation and commonly propelled by an internal-combustion
                      engine using a volatile fuel. ",
        model: "Chevrolet Camaro 2020",
        manufacturing_date: "2020-04-21",
        user: users[0]
    },
]) 

Reservation.create([ { user: users[0], car: cars[0], reserve_date: '2023-01-01' } ])

