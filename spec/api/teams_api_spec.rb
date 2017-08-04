=begin
#ESP Documentation

#The Evident Security Platform API (version 2.0) is designed to allow users granular control over their Amazon Web Service security experience by allowing them to review alerts, monitor signatures, and create custom signatures.

OpenAPI spec version: v2_sdk

Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require 'spec_helper'
require 'json'

# Unit tests for ESP::TeamsApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'TeamsApi' do
  before do
    # run before each test
    @instance = ESP::TeamsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of TeamsApi' do
    it 'should create an instact of TeamsApi' do
      expect(@instance).to be_instance_of(ESP::TeamsApi)
    end
  end

  # unit tests for create
  # Create a(n) Team
  # 
  # @param sub_organization_id The ID of the sub organization to attach this team to
  # @param name The name of the sub organization
  # @param [Hash] opts the optional parameters
  # @return [Team]
  describe 'create test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for destroy
  # Remove a(n) Team
  # 
  # @param id Team Id
  # @param [Hash] opts the optional parameters
  # @return [SuccessObject]
  describe 'destroy test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list
  # Get a list of Teams
  # 
  # @param [Hash] opts the optional parameters
  # @option opts [Hash<String, String>] :filter Filter Params for Searching.  Equality Searchable Attributes: [id, name] Matching Searchable Attribute: [name]  Sortable Attributes: [name, updated_at, created_at, id] Searchable Associations: [organization, sub_organization, custom_signatures, integrations] See the filter parameter of the association&#39;s list action to see what attributes are searchable on each association. See Searching on Relationships for more information. See Searching Lists for more information. Example: filter: {name_eq: &#39;Bob&#39;}
  # @option opts [String] :include Objects that can be included in the response:  custom_signatures,external_accounts,organization,sub_organization  See Including Objects for more information.
  # @option opts [Hash<String, String>] :page Page Number and Page Size.  Example: page: {number: 1, size: 20}
  # @return [PaginatedCollection]
  describe 'list test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for show
  # Show a single Team
  # 
  # @param id Team Id
  # @param [Hash] opts the optional parameters
  # @option opts [String] :include Objects that can be included in the response:  custom_signatures,external_accounts,organization,sub_organization  See Including Objects for more information.
  # @return [Team]
  describe 'show test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update
  # Update a(n) Team
  # 
  # @param id Team Id
  # @param name The name of the sub organization
  # @param [Hash] opts the optional parameters
  # @return [Team]
  describe 'update test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
