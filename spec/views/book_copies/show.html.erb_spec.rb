require 'rails_helper'

RSpec.describe "book_copies/show", type: :view do
  before(:each) do
    @book_copy = assign(:book_copy, BookCopy.create!(
      :copies_in_stock => 2,
      :books_sold_count => 3,
      :shop => nil,
      :book => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
