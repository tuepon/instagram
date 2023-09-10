require 'rails_helper'

RSpec.describe 'Home', type: :request do
  describe 'GET /' do
    it 'return http status 200' do
      get '/'
      expect(response).to have_http_status(200)
    end
  end
end