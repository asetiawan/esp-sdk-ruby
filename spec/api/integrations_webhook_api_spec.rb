=begin
#ESP Documentation

#The Evident Security Platform API (version 2.0) is designed to allow users granular control over their Amazon Web Service security experience by allowing them to review alerts, monitor signatures, and create custom signatures.

OpenAPI spec version: v2_sdk

Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require 'spec_helper'
require 'json'

# Unit tests for ESP::IntegrationsWebhookApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'IntegrationsWebhookApi' do
  before do
    # run before each test
    @instance = ESP::IntegrationsWebhookApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of IntegrationsWebhookApi' do
    it 'should create an instact of IntegrationsWebhookApi' do
      expect(@instance).to be_instance_of(ESP::IntegrationsWebhookApi)
    end
  end

  # unit tests for create
  # Create a Webhook Integration
  # 
  # @param external_account_ids External accounts for integration
  # @param name Name of the integration
  # @param throttle_rate The maximum number of alerts that may be sent through the integration every minute.
  # @param url The URL endpoint for the webhook
  # @param [Hash] opts the optional parameters
  # @option opts [String] :include Related objects that can be included in the response:  integration See Including Objects for more information.
  # @option opts [BOOLEAN] :all_high_risk Send all high risk alerts
  # @option opts [BOOLEAN] :all_low_risk Send all low risk alerts
  # @option opts [BOOLEAN] :all_medium_risk Send all medium risk alerts
  # @option opts [Array<Integer>] :custom_signature_ids Custom signatures for integration
  # @option opts [BOOLEAN] :send_updates This feature enables the integration to send alerts when they are updated. When disabled, alerts will only be sent when they are initially created. When enabled, alerts will additionally be sent when a change is made such as the alert ending. An alert may end for multiple reasons.
  # @option opts [BOOLEAN] :send_when_suppressed Send notifications for suppressed alerts
  # @option opts [Array<Integer>] :signature_ids Signatures for integration
  # @option opts [Array<String>] :statuses Only send alerts that have the status in this list. Valid values are fail, warn, error, pass, info
  # @return [IntegrationWebhook]
  describe 'create test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for show
  # Show a single Webhook Integration
  # 
  # @param integration_id The ID of the integration
  # @param [Hash] opts the optional parameters
  # @option opts [String] :include Related objects that can be included in the response:  integration See Including Objects for more information.
  # @return [IntegrationWebhook]
  describe 'show test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update
  # Update a Webhook Integration
  # 
  # @param integration_id The ID of the integration
  # @param [Hash] opts the optional parameters
  # @option opts [String] :include Related objects that can be included in the response:  integration See Including Objects for more information.
  # @option opts [BOOLEAN] :all_high_risk Send all high risk alerts
  # @option opts [BOOLEAN] :all_low_risk Send all low risk alerts
  # @option opts [BOOLEAN] :all_medium_risk Send all medium risk alerts
  # @option opts [Array<Integer>] :custom_signature_ids Custom signatures for integration
  # @option opts [Array<Integer>] :external_account_ids External accounts for integration
  # @option opts [String] :name Name of the integration
  # @option opts [BOOLEAN] :send_updates This feature enables the integration to send alerts when they are updated. When disabled, alerts will only be sent when they are initially created. When enabled, alerts will additionally be sent when a change is made such as the alert ending. An alert may end for multiple reasons.
  # @option opts [BOOLEAN] :send_when_suppressed Send notifications for suppressed alerts
  # @option opts [Array<Integer>] :signature_ids Signatures for integration
  # @option opts [Array<String>] :statuses Only send alerts that have the status in this list. Valid values are fail, warn, error, pass, info
  # @option opts [Integer] :throttle_rate The maximum number of alerts that may be sent through the integration every minute.
  # @option opts [String] :url The URL endpoint for the webhook
  # @return [IntegrationWebhook]
  describe 'update test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
