# frozen_string_literal: true

describe Sreda::ContactsController, type: :controller do
  describe 'GET#index' do
    it 'renders index template' do
      get :index

      expect(response).to render_template 'sreda/contacts/index'
    end
  end
end
