require 'swagger_helper'

# RSpec.describe 'api/my', type: :request do
# spec/requests/blogs_spec.rb
# require 'swagger_helper'

describe 'Cars API' do
  path '/cars' do
    post 'Creates a car' do
      tags 'Cars'
      consumes 'application/json'
      parameter name: :car, in: :body, schema: {
        type: :object,
        properties: {
          name: { type: :string },
          image: { type: :string },
          description: { type: :string },
          model: { type: :string },
          manufacturing_date: { type: :date }
          #   reserved: { type: :boolean }
        },
        required: %w[name image description model manufacturing_date reserved]
      }

      response '201', 'Car created' do
        let(:car) do
          {
            name: 'Chevrolet',
            image: 'https://images.unsplash.com/photo-1492144534655-ae79c964c9d7?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8Y2Fyc3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60',
            description: "automobile, byname auto, also called motorcar or car,
                              a usually four-wheeled vehicle designed primarily for passenger
                              transportation and commonly propelled by an internal-combustion
                              engine using a volatile fuel. ",
            model: 'Chevrolet Camaro 2020',
            manufacturing_date: '2020-04-21'
          }
        end
        run_test!
      end

      response '422', 'invalid request' do
        let(:car) { { title: 'Dodge' } }
        run_test!
      end
    end
  end

  path '/cars/{id}' do
    get 'Retrieves a car' do
      tags 'Cars', 'Another Tag'
      produces 'application/json', 'application/xml'
      parameter name: :id, in: :path, type: :string
      request_body_example value: { some_field: 'Foo' }, name: 'basic', summary: 'Request example description'

      response '200', 'car found' do
        schema type: :object,
               properties: {
                 id: { type: :integer },
                 name: { type: :string },
                 image: { type: :string },
                 description: { type: :string },
                 model: { type: :string },
                 manufacturing_date: { type: :date }
               },
               required: %w[id name image description model manufacturing_date reserved]

        let(:id) do
          Car.create(
            name: 'Chevrolet',
            image: 'https://images.unsplash.com/photo-1492144534655-ae79c964c9d7?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8Y2Fyc3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60',
            description: "automobile, byname auto, also called motorcar or car,
                                      a usually four-wheeled vehicle designed primarily for passenger
                                      transportation and commonly propelled by an internal-combustion
                                      engine using a volatile fuel. ",
            model: 'Chevrolet Camaro 2020',
            manufacturing_date: '2020-04-21'
          ).id
        end
        run_test!
      end

      response '404', 'car not found' do
        let(:id) { 'invalid' }
        run_test!
      end

      response '406', 'unsupported accept header' do
        let(:Accept) { 'application/foo' }
        run_test!
      end
    end
  end
end
# end
