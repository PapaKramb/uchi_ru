require 'rails_helper'

RSpec.describe "Posts", type: :request do
  before do
    sign_in @current_user = create(:user)
  end

  it '#index' do
    post_1 = create(:post, user: @current_user) 
    post_2 = create(:post, user: @current_user) 
    get '/posts' 
    expect(assigns(:posts)).to contain_exactly *[post_1, post_2] 
  end

  it '#show' do
    post = create(:post)
    get "/posts/#{post.id}"
    expect(assigns(:post)).to eq post
  end

  it '#new' do 
    get '/posts/new' 
    expect(assigns(:post)).to be_a_new Post 
  end

  it '#create' do 
    expect { 
      post '/posts', params: { 
        post: attributes_for(:post) 
        } 
      }.to change(Post, :count).by 1 
  end

  it '#edit' do 
    post = create(:post) 
    get "/posts/#{post.id}/edit" 
    expect(assigns(:post)).to eq post 
  end

  it '#update' do 
    post = create(:post) 
    patch "/posts/#{post.id}", params: { 
      post: { 
        title: 'New title',
        body: 'New body' 
      } 
    } 
    expect(post.reload.title).to eq 'New title'
    expect(post.reload.body).to eq 'New body' 
  end

  it '#destroy' do 
    post = create(:post) 
    expect { delete "/posts/#{post.id}" }.to change(Post, :count).by -1 
  end
end
