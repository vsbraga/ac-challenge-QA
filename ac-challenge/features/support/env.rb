require 'watir-webdriver'
require 'cucumber'
require 'page-object'
require 'rspec'
require 'pry'


World(PageObject::PageFactory)
World(RSpec::Matchers)