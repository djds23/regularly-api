require 'rails_helper'

RSpec.describe "UserEdges", type: :request do
  describe "GET /user_edges" do
    it "works! (now write some real specs)" do
      get user_edges_path
      expect(response).to have_http_status(200)
    end
  end
end
