# frozen_string_literal: true

# Set the host name for URL creation
SitemapGenerator::Sitemap.default_host = "https://#{MontessoriConstraint::DOMAIN}"
SitemapGenerator::Sitemap.sitemaps_path = "sitemaps/#{MontessoriConstraint::LAYOUT}"
SitemapGenerator::Sitemap.create(compress: false)
SitemapGenerator::Sitemap.create(compress: true)
