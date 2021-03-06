=begin
#ESP Documentation

#The Evident Security Platform API (version 2.0) is designed to allow users granular control over their Amazon Web Service security experience by allowing them to review alerts, monitor signatures, and create custom signatures.

OpenAPI spec version: v2_sdk

Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require 'spec_helper'
require 'json'

# Unit tests for ESP::UserAttributionsApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'UserAttributionsApi' do
  before do
    # run before each test
    @instance = ESP::UserAttributionsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of UserAttributionsApi' do
    it 'should create an instance of UserAttributionsApi' do
      expect(@instance).to be_instance_of(ESP::UserAttributionsApi)
    end
  end

  # unit tests for add_channel
  # Create a User Attribution Channel for an external account
  # URL will only be returned in this response and will not be accessible again.
  # @param external_account_id The ID of the external account to create a User Attribution Channel for
  # @param [Hash] opts the optional parameters
  # @return [ExternalAccountUserAttributionChannel]
  describe 'add_channel test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for remove_channel
  # Remove the User Attribution Channel for an external account
  # 
  # @param external_account_id The ID of the external account to remove the User Attribution Channel from
  # @param [Hash] opts the optional parameters
  # @return [Meta]
  describe 'remove_channel test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for show_channel
  # Show the User Attribution Channel of an external account
  # The channel url will not be returned.
  # @param external_account_id The ID of the external account to show the user attribution channel for
  # @param [Hash] opts the optional parameters
  # @return [ExternalAccountUserAttributionChannel]
  describe 'show_channel test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update
  # Update the user attributions on an external account
  # 
  # @param external_account_id The ID of the external account to update the user attributions of
  # @param [Hash] opts the optional parameters
  # @option opts [String] :include Related objects that can be included in the response:  organization, sub_organization, team, scan_intervals, disabled_signatures, suppressions, azure_group See Including Objects for more information.
  # @option opts [String] :cloudtrail_name The name of the cloudetrail associated with the user attribution.
  # @return [ExternalAccount]
  describe 'update test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
