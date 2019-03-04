require 'rails_helper'

RSpec.describe "BookCopies", type: :request do
  describe "GET /book_copies" do
    it "works! (now write some real specs)" do
      get book_copies_path
      expect(response).to have_http_status(200)
    end
  end
end
