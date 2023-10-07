# frozen_string_literal: true

class ApplicationController < ActionController::Base
  include Domainable
  include NotFoundable
  include Layoutable

  protect_from_forgery with: :exception

  append_view_path Rails.root.join('app/views/controllers')
end
