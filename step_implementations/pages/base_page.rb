# frozen_string_literal: true
require 'capypage'
require 'test/unit'
# require 'selenium-webdriver'

module GaugeRubyExample
  module Pages
    class BasePage < ::Capypage::Page
      include Test::Unit::Assertions

      URL = ENV['APP_ENDPOINT']
      ADMIN_URL = "#{URL}admin/"
    end
  end
end
