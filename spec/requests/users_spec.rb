require 'rails_helper'

RSpec.describe "Users", type: :request do
  describe "GET /index" do
    before(:each) do
      get '/users'
    end

    it "handles GET requests" do
      expect(response).to have_http_status(:ok)
    end
  end
end
