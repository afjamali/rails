require 'rails_helper'

RSpec.describe "book_copies/index", type: :view do
  before(:each) do
    assign(:book_copies, [
      BookCopy.create!(
        :copies_in_stock => 2,
        :books_sold_count => 3,
        :shop => nil,
        :book => nil
      ),
      BookCopy.create!(
        :copies_in_stock => 2,
        :books_sold_count => 3,
        :shop => nil,
        :book => nil
      )
    ])
  end

  it "renders a list of book_copies" do
    render
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
