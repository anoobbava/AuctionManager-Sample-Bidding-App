require 'spec_helper'

RSpec.describe Admin::UsersController, type: :controller do

  before(:each) do
    @role = FactoryBot.create(:role, name: 'admin')
    @designation = FactoryBot.create(:designation, designation_name: 'Trainee')
    @user = FactoryBot.create(:admin_user, role: @role)
    sign_in @user
  end
 
  describe 'GET #index' do

    it 'Render index Page' do
      get :index
      expect(response).to render_template('index')
    end

    it 'Render index Page' do
      get :index
      expect(response.status).to eq(200)
    end
  end

  describe 'GET #show' do

    it 'Assign requested user to @user' do
      get :show, params: { id: @user }
      expect(assigns(:user)).to eq(@user)
    end

    it 'Renders the #show Page' do
      get :show, params: { id: @user }
      expect(response).to render_template :show
    end

    it 'Response to be 200' do
      get :show, params: { id: @user }
      expect(response.status).to eq(200)
    end
  end

  describe 'GET #edit' do

    it 'response to be 200'do
      get :edit, params: { id: @user }
      expect(response.status).to eq 200
    end
  end

  describe 'POST #Update' do
    params = FactoryBot.attributes_for(:user2)

    it 'response to be 302' do
      post :update, params: { id: @user, user: params }
      expect(response.status).to eq(302)
    end

    it 'redirect' do
      post :update, params: { id: @user, user: params }
      expect(response).to redirect_to("/admin/users/#{@user.id}")
    end
  end
end
