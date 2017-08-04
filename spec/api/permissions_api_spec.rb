=begin
#ESP Documentation

#The Evident Security Platform API (version 2.0) is designed to allow users granular control over their Amazon Web Service security experience by allowing them to review alerts, monitor signatures, and create custom signatures.

OpenAPI spec version: v2_sdk

Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require 'spec_helper'
require 'json'

# Unit tests for ESP::PermissionsApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'PermissionsApi' do
  before do
    # run before each test
    @instance = ESP::PermissionsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of PermissionsApi' do
    it 'should create an instact of PermissionsApi' do
      expect(@instance).to be_instance_of(ESP::PermissionsApi)
    end
  end

  # unit tests for list
  # This API provides a list of all the permissions that the current user has
  # 
  # @param [Hash] opts the optional parameters
  # @return [Array<UserPermission>]
  describe 'list test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
