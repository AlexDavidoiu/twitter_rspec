require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'validation tests' do
    it 'ensures name presence' do
      user = User.new(bio: "alex's bio", email: "alex@example.com").save
      expect(user).to eq(false)
    end
    
    it 'ensures email presence' do
      user = User.new(name: "alex", bio: "alex's bio").save
      expect(user).to eq(false)
    end
  end

  describe 'tests associations' do
    it 'should have many tweets' do
      user = User.reflect_on_association(:tweets)
      expect(user.macro).to eq(:has_many)
    end
  end
end