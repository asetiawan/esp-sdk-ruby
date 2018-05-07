=begin
#ESP Documentation

#The Evident Security Platform API (version 2.0) is designed to allow users granular control over their Amazon Web Service security experience by allowing them to review alerts, monitor signatures, and create custom signatures.

OpenAPI spec version: v2_sdk

Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

# Common files
require 'esp_sdk/api_client'
require 'esp_sdk/api_error'
require 'esp_sdk/version'
require 'esp_sdk/configuration'

# Models
require 'esp_sdk/extensions/base_object'
require 'esp_sdk/models/api_key'
require 'esp_sdk/models/alert'
require 'esp_sdk/models/attribution'
require 'esp_sdk/models/audit_log'
require 'esp_sdk/models/audit_log_file'
require 'esp_sdk/models/azure_group'
require 'esp_sdk/models/compliance_control'
require 'esp_sdk/models/compliance_domain'
require 'esp_sdk/models/compliance_standard'
require 'esp_sdk/models/contact_request'
require 'esp_sdk/models/custom_compliance_control'
require 'esp_sdk/models/custom_compliance_domain'
require 'esp_sdk/models/custom_compliance_standard'
require 'esp_sdk/models/custom_signature'
require 'esp_sdk/models/custom_signature_definition'
require 'esp_sdk/models/custom_signature_result'
require 'esp_sdk/models/custom_signature_result_alert'
require 'esp_sdk/models/exported_report'
require 'esp_sdk/models/external_account'
require 'esp_sdk/models/external_account_amazon_iam'
require 'esp_sdk/models/external_account_azure'
require 'esp_sdk/models/external_account_user_attribution_channel'
require 'esp_sdk/models/integration'
require 'esp_sdk/models/integration_amazon_sns'
require 'esp_sdk/models/integration_hipchat'
require 'esp_sdk/models/integration_jira'
require 'esp_sdk/models/integration_pager_duty'
require 'esp_sdk/models/integration_servicenow'
require 'esp_sdk/models/integration_slack'
require 'esp_sdk/models/integration_webhook'
require 'esp_sdk/models/meta'
require 'esp_sdk/models/metadata'
require 'esp_sdk/models/organization'
require 'esp_sdk/models/paginated_collection'
require 'esp_sdk/models/plan'
require 'esp_sdk/models/region'
require 'esp_sdk/models/report'
require 'esp_sdk/models/role'
require 'esp_sdk/models/scan_interval'
require 'esp_sdk/models/service'
require 'esp_sdk/models/signature'
require 'esp_sdk/models/stat'
require 'esp_sdk/models/stat_compliance_control'
require 'esp_sdk/models/stat_custom_compliance_control'
require 'esp_sdk/models/stat_custom_signature'
require 'esp_sdk/models/stat_region'
require 'esp_sdk/models/stat_service'
require 'esp_sdk/models/stat_signature'
require 'esp_sdk/models/sub_organization'
require 'esp_sdk/models/subscription'
require 'esp_sdk/models/suppression'
require 'esp_sdk/models/tag'
require 'esp_sdk/models/team'
require 'esp_sdk/models/user'

# APIs
require 'esp_sdk/api/api_keys_api'
require 'esp_sdk/api/alerts_api'
require 'esp_sdk/api/attribution_api'
require 'esp_sdk/api/audit_log_export_api'
require 'esp_sdk/api/audit_logs_api'
require 'esp_sdk/api/azure_groups_api'
require 'esp_sdk/api/compliance_controls_api'
require 'esp_sdk/api/compliance_domains_api'
require 'esp_sdk/api/compliance_standards_api'
require 'esp_sdk/api/contact_requests_api'
require 'esp_sdk/api/custom_compliance_controls_api'
require 'esp_sdk/api/custom_compliance_domains_api'
require 'esp_sdk/api/custom_compliance_standards_api'
require 'esp_sdk/api/custom_signature_definitions_api'
require 'esp_sdk/api/custom_signature_results_api'
require 'esp_sdk/api/custom_signatures_api'
require 'esp_sdk/api/external_accounts_api'
require 'esp_sdk/api/external_accounts_amazon_api'
require 'esp_sdk/api/external_accounts_azure_api'
require 'esp_sdk/api/integrations_api'
require 'esp_sdk/api/integrations_amazon_sns_api'
require 'esp_sdk/api/integrations_hipchat_api'
require 'esp_sdk/api/integrations_jira_api'
require 'esp_sdk/api/integrations_pager_duty_api'
require 'esp_sdk/api/integrations_service_now_api'
require 'esp_sdk/api/integrations_slack_api'
require 'esp_sdk/api/integrations_webhook_api'
require 'esp_sdk/api/metadata_api'
require 'esp_sdk/api/organizations_api'
require 'esp_sdk/api/plans_api'
require 'esp_sdk/api/regions_api'
require 'esp_sdk/api/report_export_api'
require 'esp_sdk/api/reports_api'
require 'esp_sdk/api/roles_api'
require 'esp_sdk/api/scan_intervals_api'
require 'esp_sdk/api/services_api'
require 'esp_sdk/api/signatures_api'
require 'esp_sdk/api/stat_compliance_controls_api'
require 'esp_sdk/api/stat_custom_compliance_controls_api'
require 'esp_sdk/api/stat_custom_signatures_api'
require 'esp_sdk/api/stat_regions_api'
require 'esp_sdk/api/stat_services_api'
require 'esp_sdk/api/stat_signatures_api'
require 'esp_sdk/api/stats_api'
require 'esp_sdk/api/sub_organizations_api'
require 'esp_sdk/api/subscriptions_api'
require 'esp_sdk/api/suppressions_api'
require 'esp_sdk/api/tags_api'
require 'esp_sdk/api/teams_api'
require 'esp_sdk/api/user_attributions_api'
require 'esp_sdk/api/users_api'

# Extensions and Overrides
Dir.glob("#{File.dirname(__FILE__)}/esp_sdk/extensions/*.rb").each { |f| require f }

module ESP
  class << self
    # Customize default settings for the SDK using block.
    #   ESP.configure do |config|
    #     config.access_key_id = "xxx"
    #     config.secret_access_key = "xxx"
    #   end
    # If no block given, return the default Configuration object.
    def configure
      if block_given?
        yield(Configuration.default)
      else
        Configuration.default
      end
    end
  end
end
