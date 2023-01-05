# frozen_string_literal: true

describe Sreda::WelcomeController do
  describe 'GET#index' do
    it 'renders index template' do
      get :index

      expect(response).to render_template 'sreda/welcome/index'
    end
  end
end
