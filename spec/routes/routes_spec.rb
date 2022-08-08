# frozen_string_literal: true

describe 'Routes', type: :routing do
  it 'routes / to the welcome controller' do
    expect(get: '/').to route_to(
      controller: 'welcome',
      action:     'index'
    )
  end
end
