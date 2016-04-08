require 'spec_helper'

describe User do 

	let! (:user) {User.create(username: "bobbo", :email=>"bobbo@gmail.com", :password=>"password")}

	it "has a name" do
		expect(user.username).to eq("bobbo")
	end

	it "is invalid without a username" do
		user = User.create(email: "bobbo@gmail.com")
		expect(user).to be_invalid
	end

	it "is invalid without an email" do
		user = User.create(username: "bobbo")		
		expect(user).to be_invalid
	end


	it "belongs to a group" do
		group = Group.create
		group.users << user
		expect(group.users.count).to eq(1)
	end
	

end