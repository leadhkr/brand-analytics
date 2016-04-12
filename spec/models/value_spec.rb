# == Schema Information
#
# Table name: values
#
#  id         :integer          not null, primary key
#  rating     :float
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'spec_helper'

describe Value do
  let(:value) {Value.create(rating: 1)}

  it 'validates rating is a number' do
    value.rating = 1
    expect(value).to be_valid

    value.rating = 'a'
    expect(value).to be_invalid
  end
end
