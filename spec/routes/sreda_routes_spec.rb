# frozen_string_literal: true

describe 'Routes for sreda', type: :routing do
  it 'routes / to the sreda welcome controller' do
    expect(get: "https://#{SredaConstraint::DOMAIN}").to route_to(
      controller: 'sreda/welcome',
      action: 'index'
    )
  end

  it 'routes /contacts to the sreda contacts controller' do
    expect(get: "https://#{SredaConstraint::DOMAIN}/contacts").to route_to(
      controller: 'sreda/contacts',
      action: 'index'
    )
  end

  it 'routes /sitemap.xml to the sitemaps controller' do
    expect(get: "https://#{SredaConstraint::DOMAIN}/sitemap.xml").to route_to(
      controller: 'sitemaps',
      action: 'index',
      format: 'xml'
    )
  end

  it 'routes /robots.txt to the robots controller' do
    expect(get: "https://#{SredaConstraint::DOMAIN}/robots.txt").to route_to(
      controller: 'robots',
      action: 'index',
      format: 'txt'
    )
  end

  it 'routes /unexisting-route to the sreda application controller' do
    expect(get: "https://#{SredaConstraint::DOMAIN}/unexisting/route").to route_to(
      controller: 'application',
      action: 'not_found',
      path: 'unexisting/route'
    )
  end
end
