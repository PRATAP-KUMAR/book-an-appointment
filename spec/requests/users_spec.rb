require 'rails_helper'

RSpec.describe 'Users', type: :request do
  describe 'GET /users' do
    it 'Get users' do
      get users_path
      expect(response).to have_http_status(200)
    end
  end

  # path '/api/v1/users' do
  #   get('list users') do
  #     response(200, 'successful') do
  #       after do |example|
  #         example.metadata[:response][:content] = {
  #           'application/json' => {
  #             example: JSON.parse(response.body, symbolize_names: true)
  #           }
  #         }
  #       end
  #       run_test!
  #     end
  #   end
end
