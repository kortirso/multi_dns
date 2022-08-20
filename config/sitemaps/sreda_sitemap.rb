# frozen_string_literal: true

# Set the host name for URL creation
SitemapGenerator::Sitemap.default_host = "https://#{SredaConstraint::DOMAIN}"
SitemapGenerator::Sitemap.sitemaps_path = "sitemaps/#{SredaConstraint::LAYOUT}"
SitemapGenerator::Sitemap.create(compress: false) do
  add '/contacts'
end
