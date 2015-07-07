require 'rails_helper'

RSpec.describe StoriesController, type: :controller do
  describe 'GET #index' do
    it 'assigns a list of stories to @stories' do
      get :index
      expect(assigns(:stories)).to_not be_nil
    end

    it 'renders the :index template' do
      get :index
      expect(response).to render_template :index
    end
  end
end
