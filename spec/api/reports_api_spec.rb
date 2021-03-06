=begin
#ESP Documentation

#The Evident Security Platform API (version 2.0) is designed to allow users granular control over their Amazon Web Service security experience by allowing them to review alerts, monitor signatures, and create custom signatures.

OpenAPI spec version: v2_sdk

Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require 'spec_helper'
require 'json'

# Unit tests for ESP::ReportsApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'ReportsApi' do
  before do
    # run before each test
    @instance = ESP::ReportsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ReportsApi' do
    it 'should create an instance of ReportsApi' do
      expect(@instance).to be_instance_of(ESP::ReportsApi)
    end
  end

  # unit tests for create
  # Create a(n) Report
  # 
  # @param team_id The ID of the team to create a report for
  # @param [Hash] opts the optional parameters
  # @option opts [String] :include Related objects that can be included in the response:  organization, sub_organization, team, external_account, stat See Including Objects for more information.
  # @return [Report]
  describe 'create test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list
  # Get a list of Reports
  # 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :include Related objects that can be included in the response:  organization, sub_organization, team, external_account, stat See Including Objects for more information.
  # @option opts [Hash<String, String>] :filter Filter Params for Searching.  Equality Searchable Attributes: [id, created_at]  Limited Searchable Attributes: [external_account_arn_eq, external_account_provider_eq] Sortable Attributes: [created_at, id] Searchable Associations: [organization, sub_organization, team, external_account] See Searching Lists for more information. See the filter parameter of the association&#39;s list action to see what attributes are searchable on each association. See Conditions on Relationships in Searching Lists for more information.
  # @option opts [String] :page Page Number and Page Size.  Number is the page number of the collection to return, size is the number of items to return per page.
  # @return [PaginatedCollection]
  describe 'list test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for show
  # Show a single Report
  # 
  # @param id Report ID
  # @param [Hash] opts the optional parameters
  # @option opts [String] :include Related objects that can be included in the response:  organization, sub_organization, team, external_account, stat See Including Objects for more information.
  # @return [Report]
  describe 'show test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
