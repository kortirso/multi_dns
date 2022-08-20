# frozen_string_literal: true

class SitemapsController < ApplicationController
  def index
    render file: "public/sitemaps/#{[current_site, 'sitemap.xml'].compact.join('/')}"
  end
end
