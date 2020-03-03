require 'rails_helper'

describe Post do
  describe '#create' do

    it "is invalid without a image" do
      post = build(:post, image: nil)
      post.valid?
      expect(post.errors[:image]).to include("can't be blank")
    end


  end
  
end