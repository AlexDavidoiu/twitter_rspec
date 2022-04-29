require 'rails_helper'

RSpec.describe Tweet, type: :model do
  # describe 'validations' do
  #   it 'ensures content presence' do
  #     tweet = Tweet.new(user: User.first).save
  #     expect(tweet).to eq(false)
  #   end
  # end

  describe 'associations' do
    it 'should belong to user' do
      tweet = Tweet.reflect_on_association(:user)
      expect(tweet.macro).to eq(:belongs_to)
    end
  end
end