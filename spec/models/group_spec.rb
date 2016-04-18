describe Group do
  describe 'validations' do
    let (:square) { build(:group) }

    it 'validates domain starts with @' do
      square.domain = '@square.com'
      expect(square).to be_valid

      square.domain = '#square.com'
      expect(square).to be_invalid
    end

    it 'validates uniqueness of domain' do
      square.domain = "@spotify.com"
      expect(square).to be_invalid
    end
  end

end
