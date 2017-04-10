=begin
#ESP Documentation

#No descripton provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: v2

Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require 'spec_helper'
require 'json'

# Unit tests for ESP::ExternalAccountsApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'ExternalAccountsApi' do
  before do
    # run before each test
    @instance = ESP::ExternalAccountsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ExternalAccountsApi' do
    it 'should create an instact of ExternalAccountsApi' do
      expect(@instance).to be_instance_of(ESP::ExternalAccountsApi)
    end
  end

  # unit tests for api_v2_external_accounts_id_complete_json_api_patch
  # Show the latest completed report for an External Account
  # 
  # @param id External Account Id
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'api_v2_external_accounts_id_complete_json_api_patch test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for api_v2_external_accounts_subscribed_accounts_json_api_get
  # Show a list of Subscribed Accounts
  # 
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'api_v2_external_accounts_subscribed_accounts_json_api_get test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for create
  # Create a(n) External Account
  # 
  # @param team_id Team Id
  # @param arn ARN
  # @param external_id External Id
  # @param [Hash] opts the optional parameters
  # @option opts [String] :name Name
  # @return [ExternalAccount]
  describe 'create test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for destroy
  # Remove a(n) External Account
  # 
  # @param id External Account Id
  # @param [Hash] opts the optional parameters
  # @return [Object]
  describe 'destroy test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list
  # Get a list of External Accounts
  # 
  # @param [Hash] opts the optional parameters
  # @option opts [Hash<String, String>] :page Page Number
  # @option opts [Hash<String, String>] :filter Filter Params for Searching
  # @option opts [String] :include Included Objects
  # @return [PaginatedCollection]
  describe 'list test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for show
  # Show a single External Account
  # 
  # @param id External Account Id
  # @param [Hash] opts the optional parameters
  # @option opts [String] :include Included Objects
  # @return [ExternalAccount]
  describe 'show test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update
  # Update a(n) External Account
  # 
  # @param id External Account Id
  # @param arn ARN
  # @param external_id External Id
  # @param sub_organization_id Sub Organization Id
  # @param team_id Team Id
  # @param [Hash] opts the optional parameters
  # @option opts [String] :name Name
  # @return [ExternalAccount]
  describe 'update test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end