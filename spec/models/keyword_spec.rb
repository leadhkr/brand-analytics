# == Schema Information
#
# Table name: keywords
#
#  id         :integer          not null, primary key
#  word       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'spec_helper'

describe Keyword do 
	let(:keyword) {Keyword.create(name: ":)")}


	it "has a name" do
		expect(keyword.name).to eq(":)")
	end

	it "is invalid without a name" do
		keyword = Keyword.create
		expect(keyword).to be_invalid
	end

	it "has many documents through document_keywords" do
		keyword.documents.build(text: 'whatever')
		keyword.save
		expect(keyword.documents.count).to eq(1)
	end
	
	it "has many values through keyword_values" do
		keyword.values.build(rating: 1)
		keyword.values.build(rating: 0)
		keyword.save
		expect(keyword.values.count).to eq(2)
	end

end

#class method
describe Keyword, '.most_used' do

	let(:group) { build(:group) }
	let(:keyword_one) { build(:keyword) }
	let(:keyword_two) { build(:keyword) }


	it "knows the top keywords for a group" do

		exepect(Keyword.most_used(group)).to include()
	end
end
