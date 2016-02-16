require 'rails_helper'

RSpec.describe "Anfrages", type: :request do
  describe "GET /anfrages" do
    it "works! (now write some real specs)" do
      get anfrages_path
      expect(response).to have_http_status(200)
    end
  end
end
