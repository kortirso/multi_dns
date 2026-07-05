# frozen_string_literal: true

module ApplicationHelper
  # rubocop: disable Rails/OutputSafety
  def embedded_svg_symbol(filename, symbol_name, options={})
    asset = Rails.application.assets.find_asset(filename)

    if asset
      file = asset.source.force_encoding('UTF-8')
      doc = Nokogiri::HTML::DocumentFragment.parse file
      svg = doc.at_css "symbol##{symbol_name}"
      svg['class'] = options[:class] if options[:class].present?
    else
      svg = "<!-- SVG #{filename} not found -->"
    end

    raw svg.to_s.gsub('symbol', 'svg')
  end
  # rubocop: enable Rails/OutputSafety
end
