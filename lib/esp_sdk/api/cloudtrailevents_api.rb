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

require "uri"

module ESP
  class CloudtraileventsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Get a list of Cloud Trail Events
    # 
    # @param alert_id The ID of the alert to retrieve cloud trail events for
    # @param [Hash] opts the optional parameters
    # @option opts [Hash<String, String>] :page Page Number
    # @option opts [String] :include Included Objects
    # @return [PaginatedCollection]
    def list(alert_id, opts = {})
      data, _status_code, _headers = list_with_http_info(alert_id, opts)
      return data
    end

    # Get a list of Cloud Trail Events
    # 
    # @param alert_id The ID of the alert to retrieve cloud trail events for
    # @param [Hash] opts the optional parameters
    # @option opts [Hash<String, String>] :page Page Number
    # @option opts [String] :include Included Objects
    # @return [Array<(PaginatedCollection, Fixnum, Hash)>] PaginatedCollection data, response status code and response headers
    def list_with_http_info(alert_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CloudtraileventsApi.list ..."
      end
      # verify the required parameter 'alert_id' is set
      fail ArgumentError, "Missing the required parameter 'alert_id' when calling CloudtraileventsApi.list" if alert_id.nil?
      # resource path
      local_var_path = "/v2/alerts/{alert_id}/cloud_trail_events.json".sub('{format}','json').sub('{' + 'alert_id' + '}', alert_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'include'] = opts[:'include'] if !opts[:'include'].nil?

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      local_header_accept = []
      local_header_accept_result = @api_client.select_header_accept(local_header_accept) and header_params['Accept'] = local_header_accept_result

      # HTTP header 'Content-Type'
      local_header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(local_header_content_type)

      # form parameters
      form_params = {}
      form_params["page"] = opts[:'page'] if !opts[:'page'].nil?

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'PaginatedCollection')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CloudtraileventsApi#list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Show a single Cloud Trail Event
    # 
    # @param id Cloud Trail Event Id
    # @param [Hash] opts the optional parameters
    # @option opts [String] :include Included Objects
    # @return [CloudTrailEvent]
    def show(id, opts = {})
      data, _status_code, _headers = show_with_http_info(id, opts)
      return data
    end

    # Show a single Cloud Trail Event
    # 
    # @param id Cloud Trail Event Id
    # @param [Hash] opts the optional parameters
    # @option opts [String] :include Included Objects
    # @return [Array<(CloudTrailEvent, Fixnum, Hash)>] CloudTrailEvent data, response status code and response headers
    def show_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CloudtraileventsApi.show ..."
      end
      # verify the required parameter 'id' is set
      fail ArgumentError, "Missing the required parameter 'id' when calling CloudtraileventsApi.show" if id.nil?
      # resource path
      local_var_path = "/v2/cloud_trail_events/{id}.json".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}
      query_params[:'include'] = opts[:'include'] if !opts[:'include'].nil?

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      local_header_accept = []
      local_header_accept_result = @api_client.select_header_accept(local_header_accept) and header_params['Accept'] = local_header_accept_result

      # HTTP header 'Content-Type'
      local_header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(local_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CloudTrailEvent')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CloudtraileventsApi#show\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
