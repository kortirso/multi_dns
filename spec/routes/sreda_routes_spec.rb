# frozen_string_literal: true

describe 'Routes for sreda', type: :routing do
  it 'routes / to the sreda welcome controller' do
    expect(get: "https://#{SredaConstraint::DOMAIN}").to route_to(
      controller: 'sreda/welcome',
      action:     'index'
    )
  end

  it 'routes /contacts to the sreda contacts controller' do
    expect(get: "https://#{SredaConstraint::DOMAIN}/contacts").to route_to(
      controller: 'sreda/contacts',
      action:     'index'
    )
  end
end
