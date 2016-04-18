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
	let(:keyword) {Keyword.create(word: ":)")}


	it "has a word" do
		expect(keyword.word).to eq(":)")
	end

	it "is invalid without a word" do
		keyword = Keyword.create
		expect(keyword).to be_invalid
	end

	it "has many values through keyword_values" do
		keyword.values.build(rating: 1)
		keyword.values.build(rating: 0)
		keyword.save
		expect(keyword.values.count).to eq(2)
	end

end

#class method
# describe Keyword, '.most_used' do
#
# 	let(:group) { build(:group) }
# 	let(:keyword_one) { build(:keyword) }
# 	let(:keyword_two) { build(:keyword) }
#
#
# 	it "knows the top keywords for a group" do
# 		expect(Keyword.most_used(group)).to include()
# 	end
# end
