=begin
#ESP Documentation

#No descripton provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: v2

Generated by: https://github.com/swagger-api/swagger-codegen.git

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.

=end

# Common files
require 'esp_sdk/api_client'
require 'esp_sdk/api_error'
require 'esp_sdk/version'
require 'esp_sdk/configuration'

# Models
require 'esp_sdk/models/alert'
require 'esp_sdk/models/cloud_trail_event'
require 'esp_sdk/models/dashboard'
require 'esp_sdk/models/external_account'
require 'esp_sdk/models/organization'
require 'esp_sdk/models/paginated_collection'
require 'esp_sdk/models/region'
require 'esp_sdk/models/report'
require 'esp_sdk/models/signature'
require 'esp_sdk/models/stat'
require 'esp_sdk/models/stat_custom_signature'
require 'esp_sdk/models/stat_region'
require 'esp_sdk/models/stat_service'
require 'esp_sdk/models/stat_signature'
require 'esp_sdk/models/team'

# APIs
require 'esp_sdk/api/alerts_api'
require 'esp_sdk/api/cloudtrailevents_api'
require 'esp_sdk/api/dashboard_api'
require 'esp_sdk/api/externalaccounts_api'
require 'esp_sdk/api/organizations_api'
require 'esp_sdk/api/regions_api'
require 'esp_sdk/api/signatures_api'
require 'esp_sdk/api/stats_api'
require 'esp_sdk/api/teams_api'

module ESP
  class << self
    # Customize default settings for the SDK using block.
    #   ESP.configure do |config|
    #     config.username = "xxx"
    #     config.password = "xxx"
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
# Extensions and Overrides
`find #{File.dirname(__FILE__)}/esp_sdk/extensions/*`.split("\n").each{ |file| require file }
