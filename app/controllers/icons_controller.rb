# frozen_string_literal: true

class IconsController < ApplicationController
  def index
    render(
      file: Rails.public_path.join("icons/#{current_site}#{request.path}"),
      layout: false
    )
  end
end
