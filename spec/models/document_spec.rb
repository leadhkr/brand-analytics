require 'spec_helper'

describe Document do
	let! (:document) {Document.create(text: "Whatever")}


	it "has many keywords" do
		document.keywords.build(name: "to")
		expect(document.keywords.count).to eq(1)
	end

	it "is invalid without text" do
		doc = Document.create
		expect(doc).to be_invalid
	end


end
