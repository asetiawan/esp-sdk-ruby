=begin
#ESP Documentation

#The Evident Security Platform API (version 2.0) is designed to allow users granular control over their Amazon Web Service security experience by allowing them to review alerts, monitor signatures, and create custom signatures.

OpenAPI spec version: v2_sdk

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
    it 'should create an instance of OrganizationsApi' do
      expect(@instance).to be_instance_of(ESP::OrganizationsApi)
    end
  end

  # unit tests for list
  # Get a list of Organizations
  # 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :include Related objects that can be included in the response:  subscription, custom_signatures, external_accounts, sub_organizations, teams, users, compliance_standards, integrations See Including Objects for more information.
  # @option opts [Hash<String, String>] :filter Filter Params for Searching.  Equality Searchable Attributes: [id, name] Matching Searchable Attribute: [name]  Sortable Attributes: [name, updated_at, created_at, id] 
  # @option opts [String] :page Page Number and Page Size.  Number is the page number of the collection to return, size is the number of items to return per page.
  # @return [PaginatedCollection]
  describe 'list test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list_compliance_standards
  # Get a list of compliance standards for an organization
  # 
  # @param organization_id The ID of the organization this compliance standard belongs to
  # @param [Hash] opts the optional parameters
  # @option opts [String] :include Related objects that can be included in the response:  compliance_domains, compliance_controls See Including Objects for more information.
  # @option opts [String] :page Page Number and Page Size.  Number is the page number of the collection to return, size is the number of items to return per page.
  # @return [PaginatedCollection]
  describe 'list_compliance_standards test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for show
  # Show a single Organization
  # 
  # @param id Organization ID
  # @param [Hash] opts the optional parameters
  # @option opts [String] :include Related objects that can be included in the response:  subscription, custom_signatures, external_accounts, sub_organizations, teams, users, compliance_standards, integrations See Including Objects for more information.
  # @return [Organization]
  describe 'show test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update
  # Update a(n) Organization
  # 
  # @param id Organization ID
  # @param [Hash] opts the optional parameters
  # @option opts [String] :include Related objects that can be included in the response:  subscription, custom_signatures, external_accounts, sub_organizations, teams, users, compliance_standards, integrations See Including Objects for more information.
  # @option opts [BOOLEAN] :enable_new_signatures Whether new signatures should be enabled for all accounts on this organization
  # @option opts [String] :name Name of the organization
  # @option opts [BOOLEAN] :require_mfa Whether or not users for this organization are required to enable Multi Factor Authentication
  # @return [Organization]
  describe 'update test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
