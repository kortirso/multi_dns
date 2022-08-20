# frozen_string_literal: true

describe 'Routes', type: :routing do
  it 'routes / to the welcome controller' do
    expect(get: '/').to route_to(
      controller: 'welcome',
      action:     'index'
    )
  end

  it 'routes /sitemap.xml to the sitemaps controller' do
    expect(get: '/sitemap.xml').to route_to(
      controller: 'sitemaps',
      action:     'index'
    )
  end

  it 'routes /robots.txt to the robots controller' do
    expect(get: '/robots.txt').to route_to(
      controller: 'robots',
      action:     'index'
    )
  end

  it 'routes /unexisting-route to the application controller' do
    expect(get: '/unexisting/route').to route_to(
      controller: 'application',
      action:     'not_found',
      path:       'unexisting/route'
    )
  end
end
