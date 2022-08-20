# frozen_string_literal: true

module Sreda
  class ApplicationController < ApplicationController
    layout 'sreda'

    def not_found
      render template: 'sreda/shared/404', formats: [:html]
    end
  end
end
