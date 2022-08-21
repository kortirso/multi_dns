# frozen_string_literal: true

class SitemapsController < ApplicationController
  def index
    render file: Rails.root.join("public/sitemaps/#{[current_site, 'sitemap.xml'].compact.join('/')}")
  end
end
