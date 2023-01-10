require 'rails_helper'

RSpec.describe 'Cars', type: :request do
  describe 'GET /cars' do
    it 'Get cars' do
      get cars_path
      expect(response).to have_http_status(200)
    end
  end
end
