require 'rails_helper'

RSpec.describe "ContactLists", type: :request do
  describe "GET /contact_lists" do
    # it "after authentication" do
    #   get contact_lists_path
    #   expect(response).to have_http_status(200)
    # end
    it "before authentication" do
      get contact_lists_path
      expect(response).to have_http_status(302)
    end
  end
end
