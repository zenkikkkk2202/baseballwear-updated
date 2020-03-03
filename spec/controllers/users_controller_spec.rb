require 'rails_helper'

describe UsersController do

  
  describe 'GET #show' do
    it "assigns the requested post to @nickname" do
      user = create(:user)
      get :show, params: { id: user }
      expect(assigns(:nickname)).to eq user
    end
    
    it "renders the :show template" do
    end
   

  end

  describe 'GET #follow' do
  
    it "assigns the requested post to @follow" do
      user = create(:user)
      get :follow, params: { id: user }
      expect(assigns(:follow)).to eq user
    end  
  end

  
end
