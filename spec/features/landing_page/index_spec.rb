require 'spec_helper'

RSpec.describe "As a visitor" do
  describe "When I visit the landing page '/'" do
    it "I see a navbar with several buttons" do
      get '/'
      expect(last_response.status).to eq(200)
      expect(last_response.body).to include("Home")
      expect(last_response.body).to include("#home")
      expect(last_response.body).to include("About")
      expect(last_response.body).to include("#about")
      expect(last_response.body).to include("Projects")
      expect(last_response.body).to include("#projects")
      expect(last_response.body).to include("Contact")
      expect(last_response.body).to include("#contact")
    end
  end
end
