require 'rails_helper'



describe PostsController do
  describe 'GET #new' do
    it "renders the :new template" do
      get :new
      expect(response).to render_template :new
    end
  end

  describe 'GET #edit' do
    it "assigns the requested post to @post" do
      post = create(:post)
      get :edit, params: { id: post }
      expect(assigns(:post)).to eq post
    end

    it "renders the :edit template" do
      post = create(:post)
      get :edit, params: { id: post }
      expect(response).to render_template :edit
    end
  end

  describe 'GET #index' do
    it "populates an array of posts ordered by created_at DESC" do
      posts = create_list(:post, 3) 
      get :index
    end

    it "renders the :index template" do
    end
  end

  describe 'GET #create' do    
    it "renders the :create template" do
    end
  end

  describe 'GET #show' do
    it "assigns the requested post to @post" do
      post = create(:post)
      get :show, params: { id: post }
      expect(assigns(:post)).to eq post
    end

    it "renders the :show template" do
    end

    it "assigns the requested post to @comment" do
      post = create(:comment)
      get :show, params: { id: post }
      expect(assigns(:post)).to eq post
    end
  end

  
end
