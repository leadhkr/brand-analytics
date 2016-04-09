require 'spec_helper'

describe User do
	describe 'validations:' do
		it 'is valid' do
			user = build(:user)
			expect(user).to be_valid
		end

		it 'is invalid without first name' do
			user = build(:user, first_name: nil)
			expect(user).not_to be_valid
		end

		it 'is invalid without last name' do
			user = build(:user, last_name: nil)
			expect(user).not_to be_valid
		end

		it 'is invalid without email' do
			user = build(:user, email: nil)
			expect(user).not_to be_valid
		end

		it 'is invalid without password' do
			user = build(:user, password: nil)
			expect(user).not_to be_valid
		end
	end

	# it 'has a group' do
	# 	user = build(:user)
	# 	expect(user.group.name).to eq("Facebook, Inc.")
	# end
end
