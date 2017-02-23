=begin
#ESP Documentation

#This is a description

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
  class ExternalaccountsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Show the latest completed report for an External Account
    # 
    # @param id External Account Id
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def v2_external_accounts_id_complete_json_patch(id, opts = {})
      v2_external_accounts_id_complete_json_patch_with_http_info(id, opts)
      return nil
    end

    # Show the latest completed report for an External Account
    # 
    # @param id External Account Id
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def v2_external_accounts_id_complete_json_patch_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ExternalaccountsApi.v2_external_accounts_id_complete_json_patch ..."
      end
      # verify the required parameter 'id' is set
      fail ArgumentError, "Missing the required parameter 'id' when calling ExternalaccountsApi.v2_external_accounts_id_complete_json_patch" if id.nil?
      # resource path
      local_var_path = "/v2/external_accounts/{id}/complete.json".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}

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
      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ExternalaccountsApi#v2_external_accounts_id_complete_json_patch\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Remove an External Account
    # 
    # @param id External Account Id
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def v2_external_accounts_id_json_delete(id, opts = {})
      v2_external_accounts_id_json_delete_with_http_info(id, opts)
      return nil
    end

    # Remove an External Account
    # 
    # @param id External Account Id
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def v2_external_accounts_id_json_delete_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ExternalaccountsApi.v2_external_accounts_id_json_delete ..."
      end
      # verify the required parameter 'id' is set
      fail ArgumentError, "Missing the required parameter 'id' when calling ExternalaccountsApi.v2_external_accounts_id_json_delete" if id.nil?
      # resource path
      local_var_path = "/v2/external_accounts/{id}.json".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}

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
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ExternalaccountsApi#v2_external_accounts_id_json_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Show a single External Account
    # 
    # @param id External Account Id
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def v2_external_accounts_id_json_get(id, opts = {})
      v2_external_accounts_id_json_get_with_http_info(id, opts)
      return nil
    end

    # Show a single External Account
    # 
    # @param id External Account Id
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def v2_external_accounts_id_json_get_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ExternalaccountsApi.v2_external_accounts_id_json_get ..."
      end
      # verify the required parameter 'id' is set
      fail ArgumentError, "Missing the required parameter 'id' when calling ExternalaccountsApi.v2_external_accounts_id_json_get" if id.nil?
      # resource path
      local_var_path = "/v2/external_accounts/{id}.json".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}

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
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ExternalaccountsApi#v2_external_accounts_id_json_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update an External Account
    # 
    # @param id External Account Id
    # @param [Hash] opts the optional parameters
    # @option opts [String] :name Name
    # @option opts [String] :nickname Nickname
    # @option opts [Integer] :team_id Team Id
    # @return [nil]
    def v2_external_accounts_id_json_patch(id, opts = {})
      v2_external_accounts_id_json_patch_with_http_info(id, opts)
      return nil
    end

    # Update an External Account
    # 
    # @param id External Account Id
    # @param [Hash] opts the optional parameters
    # @option opts [String] :name Name
    # @option opts [String] :nickname Nickname
    # @option opts [Integer] :team_id Team Id
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def v2_external_accounts_id_json_patch_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ExternalaccountsApi.v2_external_accounts_id_json_patch ..."
      end
      # verify the required parameter 'id' is set
      fail ArgumentError, "Missing the required parameter 'id' when calling ExternalaccountsApi.v2_external_accounts_id_json_patch" if id.nil?
      # resource path
      local_var_path = "/v2/external_accounts/{id}.json".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}

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
      form_params["name"] = opts[:'name'] if !opts[:'name'].nil?
      form_params["nickname"] = opts[:'nickname'] if !opts[:'nickname'].nil?
      form_params["team_id"] = opts[:'team_id'] if !opts[:'team_id'].nil?

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ExternalaccountsApi#v2_external_accounts_id_json_patch\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create an External Account
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :name Name
    # @option opts [String] :nickname Nickname
    # @option opts [Integer] :team_id Team Id
    # @option opts [String] :arn ARN
    # @option opts [String] :external_id External Id
    # @option opts [String] :agency Agency
    # @option opts [String] :mission Mission
    # @option opts [String] :role Role
    # @return [nil]
    def v2_external_accounts_json_post(opts = {})
      v2_external_accounts_json_post_with_http_info(opts)
      return nil
    end

    # Create an External Account
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :name Name
    # @option opts [String] :nickname Nickname
    # @option opts [Integer] :team_id Team Id
    # @option opts [String] :arn ARN
    # @option opts [String] :external_id External Id
    # @option opts [String] :agency Agency
    # @option opts [String] :mission Mission
    # @option opts [String] :role Role
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def v2_external_accounts_json_post_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ExternalaccountsApi.v2_external_accounts_json_post ..."
      end
      # resource path
      local_var_path = "/v2/external_accounts.json".sub('{format}','json')

      # query parameters
      query_params = {}

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
      form_params["name"] = opts[:'name'] if !opts[:'name'].nil?
      form_params["nickname"] = opts[:'nickname'] if !opts[:'nickname'].nil?
      form_params["team_id"] = opts[:'team_id'] if !opts[:'team_id'].nil?
      form_params["arn"] = opts[:'arn'] if !opts[:'arn'].nil?
      form_params["external_id"] = opts[:'external_id'] if !opts[:'external_id'].nil?
      form_params["agency"] = opts[:'agency'] if !opts[:'agency'].nil?
      form_params["mission"] = opts[:'mission'] if !opts[:'mission'].nil?
      form_params["role"] = opts[:'role'] if !opts[:'role'].nil?

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ExternalaccountsApi#v2_external_accounts_json_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a list of External Accounts
    # 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def v2_external_accounts_json_put(opts = {})
      v2_external_accounts_json_put_with_http_info(opts)
      return nil
    end

    # Get a list of External Accounts
    # 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def v2_external_accounts_json_put_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ExternalaccountsApi.v2_external_accounts_json_put ..."
      end
      # resource path
      local_var_path = "/v2/external_accounts.json".sub('{format}','json')

      # query parameters
      query_params = {}

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
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ExternalaccountsApi#v2_external_accounts_json_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Show a list of Subscribed Accounts
    # 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def v2_external_accounts_subscribed_accounts_json_get(opts = {})
      v2_external_accounts_subscribed_accounts_json_get_with_http_info(opts)
      return nil
    end

    # Show a list of Subscribed Accounts
    # 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def v2_external_accounts_subscribed_accounts_json_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ExternalaccountsApi.v2_external_accounts_subscribed_accounts_json_get ..."
      end
      # resource path
      local_var_path = "/v2/external_accounts/subscribed_accounts.json".sub('{format}','json')

      # query parameters
      query_params = {}

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
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ExternalaccountsApi#v2_external_accounts_subscribed_accounts_json_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
