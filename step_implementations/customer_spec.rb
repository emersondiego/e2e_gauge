# frozen_string_literal: true
require_relative 'spec_helper.rb'

step 'On the customer page' do
  GaugeRubyExample::Pages::CustomerPage.visit
end

step 'Search for customer <name>' do |name|
  customer_page.search_user name
end

step 'The customer <name> is listed' do |name|
  customer_page.verify_user_listed name
end

step 'Search for customers <table>' do |table|
  table.rows.each do |row|
    customer_page.search_user row[0]
    customer_page.verify_user_listed row[0]
  end
end

step 'Just registered customer is listed' do
  customer_page.verify_user_listed Gauge::DataStoreFactory.scenario_datastore.get 'current_user'
end
