require 'rails_helper'

RSpec.describe 'Reservations', type: :request do
  describe 'GET /reservations' do
    it 'Get reservations' do
      get reservations_path
      expect(response).to have_http_status(200)
    end
  end
end
