=begin
#ESP Documentation

#No descripton provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: v2

Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require 'spec_helper'
require 'json'

# Unit tests for ESP::OrganizationsApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'OrganizationsApi' do
  before do
    # run before each test
    @instance = ESP::OrganizationsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of OrganizationsApi' do
    it 'should create an instact of OrganizationsApi' do
      expect(@instance).to be_instance_of(ESP::OrganizationsApi)
    end
  end

  # unit tests for create
  # Create a(n) Organization
  # 
  # @param name Name
  # @param [Hash] opts the optional parameters
  # @return [Organization]
  describe 'create test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for destroy
  # Remove a(n) Organization
  # 
  # @param id Organization Id
  # @param [Hash] opts the optional parameters
  # @return [Organization]
  describe 'destroy test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list
  # Get a list of Organizations
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
  # Show a single Organization
  # 
  # @param id Organization Id
  # @param [Hash] opts the optional parameters
  # @option opts [String] :include Included Objects
  # @return [Organization]
  describe 'show test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update
  # Update a(n) Organization
  # 
  # @param id Organization Id
  # @param name Name
  # @param [Hash] opts the optional parameters
  # @return [Organization]
  describe 'update test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
