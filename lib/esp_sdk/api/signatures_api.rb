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
  class SignaturesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Get a list of Signatures
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [Hash<String, String>] :page Page Number
    # @option opts [Hash<String, String>] :filter Filter Params for Searching
    # @option opts [String] :include Included Objects
    # @return [PaginatedCollection]
    def list(opts = {})
      data, _status_code, _headers = list_with_http_info(opts)
      return data
    end

    # Get a list of Signatures
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [Hash<String, String>] :page Page Number
    # @option opts [Hash<String, String>] :filter Filter Params for Searching
    # @option opts [String] :include Included Objects
    # @return [Array<(PaginatedCollection, Fixnum, Hash)>] PaginatedCollection data, response status code and response headers
    def list_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: SignaturesApi.list ..."
      end
      # resource path
      local_var_path = "/v2/signatures.json".sub('{format}','json')

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
      form_params["filter"] = opts[:'filter'] if !opts[:'filter'].nil?

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'PaginatedCollection')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SignaturesApi#list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # A successful call to this API returns a list of alerts for the specific signature identified by the id parameter. The body of the request must contain a json api compliant hash of attributes with type signatures
    # 
    # @param id The ID of the signature to run
    # @param external_account_id The ID of the external account to run this signature against
    # @param [Hash] opts the optional parameters
    # @option opts [Object] :region A single region name to run this signature against
    # @return [Array<Alert>]
    def run(id, external_account_id, opts = {})
      data, _status_code, _headers = run_with_http_info(id, external_account_id, opts)
      return data
    end

    # A successful call to this API returns a list of alerts for the specific signature identified by the id parameter. The body of the request must contain a json api compliant hash of attributes with type signatures
    # 
    # @param id The ID of the signature to run
    # @param external_account_id The ID of the external account to run this signature against
    # @param [Hash] opts the optional parameters
    # @option opts [Object] :region A single region name to run this signature against
    # @return [Array<(Array<Alert>, Fixnum, Hash)>] Array<Alert> data, response status code and response headers
    def run_with_http_info(id, external_account_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: SignaturesApi.run ..."
      end
      # verify the required parameter 'id' is set
      fail ArgumentError, "Missing the required parameter 'id' when calling SignaturesApi.run" if id.nil?
      # verify the required parameter 'external_account_id' is set
      fail ArgumentError, "Missing the required parameter 'external_account_id' when calling SignaturesApi.run" if external_account_id.nil?
      # resource path
      local_var_path = "/v2/signatures/{id}/run.json".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

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
      form_params["external_account_id"] = external_account_id
      form_params["region"] = opts[:'region'] if !opts[:'region'].nil?

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Array<Alert>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SignaturesApi#run\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Show a single Signature
    # 
    # @param id Signature Id
    # @param [Hash] opts the optional parameters
    # @option opts [String] :include Included Objects
    # @return [Signature]
    def show(id, opts = {})
      data, _status_code, _headers = show_with_http_info(id, opts)
      return data
    end

    # Show a single Signature
    # 
    # @param id Signature Id
    # @param [Hash] opts the optional parameters
    # @option opts [String] :include Included Objects
    # @return [Array<(Signature, Fixnum, Hash)>] Signature data, response status code and response headers
    def show_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: SignaturesApi.show ..."
      end
      # verify the required parameter 'id' is set
      fail ArgumentError, "Missing the required parameter 'id' when calling SignaturesApi.show" if id.nil?
      # resource path
      local_var_path = "/v2/signatures/{id}.json".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

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
        :return_type => 'Signature')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SignaturesApi#show\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
