require 'rails_helper'

RSpec.describe Publisher, type: :model do
  	fixtures :publishers
	subject(:publisher)	{Publisher.new}

	let(:pub_one)	{publishers(:one)}
	let(:pub_two)	{publishers(:two)}

	describe "adding publishers" do
		context "unique publishers" do
			before do
				pub_one.save!
				pub_two.save!
			end

			it "has two items" do
				expect(pub_one.name).to eq('Houghton Mifflin Harcourt')
				expect(pub_two.name).to eq('Arthur A. Levine Books')
			end
		end

		context "adding duplicate publishers" do
			before do				
				Publisher.create(name: 'Houghton Mifflin Harcourt').save
			end

			it "has one publisher" do
				expect(Publisher.count).to eq(2)
			end
		end
	end
end
