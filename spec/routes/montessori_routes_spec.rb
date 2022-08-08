# frozen_string_literal: true

describe 'Routes for montessori', type: :routing do
  it 'routes / to the montessori welcome controller' do
    expect(get: "https://#{MontessoriDomain::DOMAIN}").to route_to(
      controller: 'montessori/welcome',
      action:     'index'
    )
  end
end
