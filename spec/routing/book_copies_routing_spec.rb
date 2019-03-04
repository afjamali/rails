require "rails_helper"

RSpec.describe BookCopiesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/book_copies").to route_to("book_copies#index")
    end

    it "routes to #new" do
      expect(:get => "/book_copies/new").to route_to("book_copies#new")
    end

    it "routes to #show" do
      expect(:get => "/book_copies/1").to route_to("book_copies#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/book_copies/1/edit").to route_to("book_copies#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/book_copies").to route_to("book_copies#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/book_copies/1").to route_to("book_copies#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/book_copies/1").to route_to("book_copies#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/book_copies/1").to route_to("book_copies#destroy", :id => "1")
    end
  end
end
