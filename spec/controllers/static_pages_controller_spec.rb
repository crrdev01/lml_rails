require 'rails_helper'

RSpec.describe StaticPagesController, type: :controller do
  describe 'GET #faq' do
    it 'should render the faq page' do
      get :faq
      expect(response).to render_template :faq
    end
  end
end
