# frozen_string_literal: true

describe Montessori::WelcomeController do
  describe 'GET#index' do
    it 'renders index template' do
      get :index

      expect(response).to render_template 'montessori/welcome/index'
    end
  end
end
