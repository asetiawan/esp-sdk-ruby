=begin
#ESP Documentation

#No descripton provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: v2

Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require 'spec_helper'
require 'json'

# Unit tests for ESP::CustomSignatureResultsApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'CustomSignatureResultsApi' do
  before do
    # run before each test
    @instance = ESP::CustomSignatureResultsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of CustomSignatureResultsApi' do
    it 'should create an instact of CustomSignatureResultsApi' do
      expect(@instance).to be_instance_of(ESP::CustomSignatureResultsApi)
    end
  end

  # unit tests for create
  # Create a(n) Result
  # 
  # @param code The code to run
  # @param custom_signature_definition_id ID of the custom signature definition this result should belong to.
  # @param external_account_id ID of the external account the code should run for.
  # @param language The language of the code
  # @param region_id ID of the region the code should run for.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :region Code of the region the result code should run for. Ex: us-east-1. This can be sent instead of region_id
  # @return [Result]
  describe 'create test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list
  # Get a list of Results
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
  # Show a single Result
  # 
  # @param id Result Id
  # @param [Hash] opts the optional parameters
  # @option opts [String] :include Included Objects
  # @return [Result]
  describe 'show test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end