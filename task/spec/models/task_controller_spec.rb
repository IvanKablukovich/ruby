require 'rails_helper'

RSpec.describe TasksController, type: :controller do
  describe "create" do
    post :create, task: FactoryBot.attributes_for(:task)
    response.should redirect_to root_url
  end

  describe "GET index" do
    task = Task.create
    get :index
    expect(assigns(:tasks)).to eq([task])
  end
end
