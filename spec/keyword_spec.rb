require 'spec_helper'

describe Keyword do 
	let! (:keyword) {Keyword.create(name: ":)")}


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
	
end