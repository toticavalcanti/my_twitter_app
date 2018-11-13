require 'rails_helper'

RSpec.describe "Api::V1::Likes", type: :request do
  describe "GET /api_v1_likes" do
    it "works! (now write some real specs)" do
      get api_v1_likes_index_path
      expect(response).to have_http_status(200)
    end
  end
end
