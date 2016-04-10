require 'spec_helper'

# Test Validations
describe User do
	let(:user_one) { build(:user) }
	let(:user_two) { build(:user, first_name: nil) }
	let(:user_three) { build(:user, last_name: nil) }
	let(:user_four) { build(:user, email: nil) }
	let(:user_five) { build(:user, password: nil) }
	let(:personal_user) { build(:user, :personal_account) }
	let(:business_user) { build(:user, :business_account) }
	let(:user_with_group) { build(:user, :associated_group) }

	context 'validations:' do
		it 'is valid' do
			expect(user_one).to be_valid
		end

		it 'is invalid without first name' do
			expect(user_two).not_to be_valid
		end

		it 'is invalid without last name' do
			expect(user_three).not_to be_valid
		end

		it 'is invalid without email' do
			expect(user_four).not_to be_valid
		end

		it 'is invalid without email' do
			expect(user_four).not_to be_valid
		end

		it 'is invalid without password' do
			expect(user_five).not_to be_valid
		end
	end

	describe 'account type' do
		it 'has a personal account' do
			expect(personal_user.business_account).to eq(false)
		end

		it 'has a business account' do
			expect(business_user.business_account).to eq(true)
		end
	end

	describe 'has valid' do
		it 'group' do
			expect(user_with_group).to be_valid
		end
	end
end

# Test Class Methods
describe User, '.find_group' do
	it 'finds the correct group' do
		# setup
		group = build(:group, name: 'Palantir', domain: '@palantir.com')
		user = build(:user, email: 'steve@palantir.com')
		# exercise & verifcation
  	expect(User.find_group(user.email).name).to eq('Palantir')
	end
end

# Test Instance Methods
describe User, '#business_account?' do
	let(:personal_user) { build(:user, :personal_account) }
	let(:business_user) { build(:user, :business_account) }
	
	it 'defaults to false' do
		expect(personal_user.business_account?).to be(false)
	end

	it 'returns true' do
		expect(business_user.business_account?).to be(true)
	end
end
