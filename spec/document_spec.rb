require 'spec_helper'

describe Document do 
	let! (:document) {Document.create(text: "Whatever")}


	it "has text" do
		expect(document.text).to eq("Whatever")
	end

	it "is invalid without text" do
		doc = Document.create
		expect(doc).to be_invalid
	end

	
end