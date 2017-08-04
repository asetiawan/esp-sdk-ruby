=begin
#ESP Documentation

#The Evident Security Platform API (version 2.0) is designed to allow users granular control over their Amazon Web Service security experience by allowing them to review alerts, monitor signatures, and create custom signatures.

OpenAPI spec version: v2_sdk

Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require 'spec_helper'
require 'json'

# Unit tests for ESP::CloudTrailEventsApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'CloudTrailEventsApi' do
  before do
    # run before each test
    @instance = ESP::CloudTrailEventsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of CloudTrailEventsApi' do
    it 'should create an instact of CloudTrailEventsApi' do
      expect(@instance).to be_instance_of(ESP::CloudTrailEventsApi)
    end
  end

  # unit tests for list
  # Get a list of Cloud Trail Events
  # 
  # @param alert_id The ID of the alert to retrieve cloud trail events for
  # @param [Hash] opts the optional parameters
  # @option opts [Hash<String, String>] :page Page Number and Page Size.  Example: page: {number: 1, size: 20}
  # @return [PaginatedCollection]
  describe 'list test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for show
  # Show a single Cloud Trail Event
  # 
  # @param id Cloud Trail Event Id
  # @param [Hash] opts the optional parameters
  # @return [CloudTrailEvent]
  describe 'show test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
