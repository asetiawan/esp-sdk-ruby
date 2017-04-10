=begin
#ESP Documentation

#No descripton provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: v2

Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require 'spec_helper'
require 'json'

# Unit tests for ESP::CustomSignaturesApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'CustomSignaturesApi' do
  before do
    # run before each test
    @instance = ESP::CustomSignaturesApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of CustomSignaturesApi' do
    it 'should create an instact of CustomSignaturesApi' do
      expect(@instance).to be_instance_of(ESP::CustomSignaturesApi)
    end
  end

  # unit tests for create
  # Create a(n) Custom Signature
  # 
  # @param name Name
  # @param [Hash] opts the optional parameters
  # @return [CustomSignature]
  describe 'create test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for destroy
  # Remove a(n) Custom Signature
  # 
  # @param id Custom Signature Id
  # @param [Hash] opts the optional parameters
  # @return [Object]
  describe 'destroy test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list
  # Get a list of Custom Signatures
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
  # Show a single Custom Signature
  # 
  # @param id Custom Signature Id
  # @param [Hash] opts the optional parameters
  # @option opts [String] :include Included Objects
  # @return [CustomSignature]
  describe 'show test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update
  # Update a(n) Custom Signature
  # 
  # @param id Custom Signature Id
  # @param name Name
  # @param [Hash] opts the optional parameters
  # @return [CustomSignature]
  describe 'update test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end