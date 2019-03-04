require 'rails_helper'

RSpec.describe "book_copies/new", type: :view do
  before(:each) do
    assign(:book_copy, BookCopy.new(
      :copies_in_stock => 1,
      :books_sold_count => 1,
      :shop => nil,
      :book => nil
    ))
  end

  it "renders new book_copy form" do
    render

    assert_select "form[action=?][method=?]", book_copies_path, "post" do

      assert_select "input[name=?]", "book_copy[copies_in_stock]"

      assert_select "input[name=?]", "book_copy[books_sold_count]"

      assert_select "input[name=?]", "book_copy[shop_id]"

      assert_select "input[name=?]", "book_copy[book_id]"
    end
  end
end
