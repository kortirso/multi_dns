# frozen_string_literal: true

describe 'Routes for montessori', type: :routing do
  it 'routes / to the montessori welcome controller' do
    expect(get: "https://#{MontessoriConstraint::DOMAIN}").to route_to(
      controller: 'montessori/welcome',
      action: 'index'
    )
  end

  it 'routes /sitemap.xml to the sitemaps controller' do
    expect(get: "https://#{MontessoriConstraint::DOMAIN}/sitemap.xml").to route_to(
      controller: 'sitemaps',
      action: 'index',
      format: 'xml'
    )
  end

  it 'routes /robots.txt to the robots controller' do
    expect(get: "https://#{MontessoriConstraint::DOMAIN}/robots.txt").to route_to(
      controller: 'robots',
      action: 'index',
      format: 'txt'
    )
  end

  it 'routes /unexisting-route to the montessori application controller' do
    expect(get: "https://#{MontessoriConstraint::DOMAIN}/unexisting/route").to route_to(
      controller: 'application',
      action: 'not_found',
      path: 'unexisting/route'
    )
  end
end
