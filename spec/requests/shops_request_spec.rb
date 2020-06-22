require 'rails_helper'

RSpec.describe "Shops", type: :request do

  describe "GET /new" do
    it "returns http success" do
      get "/shops/new"
      expect(response).to have_http_status(:success)
    end
  end

end
