require 'rails_helper'

RSpec.describe Like, type: :model do
  describe 'associations' do
    # it 'should belong to an user' do
    #   like = Like.reflect_on_association(:user)
    #   expect(like.macro).to eq(:belongs_to)
    # end

    # it 'should belong to a tweet' do
    #   like = Like.reflect_on_association(:tweet)
    #   expect(like.macro).to eq(:belongs_to)
    # end

    it { should belong_to(:user) }
    it { should belong_to(:tweet) }
  end
end