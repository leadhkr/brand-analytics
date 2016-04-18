# == Schema Information
#
# Table name: documents
#
#  id         :integer          not null, primary key
#  text       :text
#  group_id   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  title      :string
#

require 'spec_helper'

# Validations
describe Document do
	describe 'validations' do
		let(:document_one) { build(:document) }

		it 'is invalid without a title' do
			document_one.title = nil
			expect(document_one).to be_invalid
		end

		it 'is invalid without text' do
			document_one.text = nil
			expect(document_one).to be_invalid
		end

		it 'is invalid if title is too short' do
			document_one.title = "ab"
			expect(document_one).to be_invalid
		end

	end

	describe 'associations' do
		let(:document_one) { create(:document) }
		let(:keyword_one) { build(:keyword) }

		it "has many keywords" do
			document_one.keywords.push(keyword_one)
			expect(document_one.keywords.count).to eq(1)
		end
	end
end
