# frozen_string_literal: true

class SitemapsController < ApplicationController
  def index
    render(
      file: Rails.public_path.join("sitemaps/#{file_name}"),
      layout: false,
      formats: :xml
    )
  end

  private

  def file_name
    [
      current_site,
      "sitemap.xml#{request.formats.map(&:to_s).first == 'application/gzip' ? '.gz' : ''}"
    ].compact.join('/')
  end
end
