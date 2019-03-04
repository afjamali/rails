require 'rails_helper'

RSpec.describe "book_copies/edit", type: :view do
  before(:each) do
    @book_copy = assign(:book_copy, BookCopy.create!(
      :copies_in_stock => 1,
      :books_sold_count => 1,
      :shop => nil,
      :book => nil
    ))
  end

  it "renders the edit book_copy form" do
    render

    assert_select "form[action=?][method=?]", book_copy_path(@book_copy), "post" do

      assert_select "input[name=?]", "book_copy[copies_in_stock]"

      assert_select "input[name=?]", "book_copy[books_sold_count]"

      assert_select "input[name=?]", "book_copy[shop_id]"

      assert_select "input[name=?]", "book_copy[book_id]"
    end
  end
end
