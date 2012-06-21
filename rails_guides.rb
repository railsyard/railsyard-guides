pwd = File.dirname(__FILE__)
$:.unshift pwd

require 'bundler'
Bundler.require

require "rails_guides/textile_extensions"
RedCloth.send(:include, RailsGuides::TextileExtensions)

require "rails_guides/generator"
RailsGuides::Generator.new.generate
