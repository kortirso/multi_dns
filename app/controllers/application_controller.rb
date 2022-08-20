# frozen_string_literal: true

class ApplicationController < ActionController::Base
  include Domainable
  include NotFoundable
  include Layoutable

  protect_from_forgery with: :exception
end
