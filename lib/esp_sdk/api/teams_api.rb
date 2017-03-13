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
  class TeamsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Create a(n) Team
    # 
    # @param sub_organization_id The ID of the sub organization to attach this team to
    # @param name The name of the sub organization
    # @param [Hash] opts the optional parameters
    # @return [Team]
    def create(sub_organization_id, name, opts = {})
      data, _status_code, _headers = create_with_http_info(sub_organization_id, name, opts)
      return data
    end

    # Create a(n) Team
    # 
    # @param sub_organization_id The ID of the sub organization to attach this team to
    # @param name The name of the sub organization
    # @param [Hash] opts the optional parameters
    # @return [Array<(Team, Fixnum, Hash)>] Team data, response status code and response headers
    def create_with_http_info(sub_organization_id, name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TeamsApi.create ..."
      end
      # verify the required parameter 'sub_organization_id' is set
      fail ArgumentError, "Missing the required parameter 'sub_organization_id' when calling TeamsApi.create" if sub_organization_id.nil?
      # verify the required parameter 'name' is set
      fail ArgumentError, "Missing the required parameter 'name' when calling TeamsApi.create" if name.nil?
      # resource path
      local_var_path = "/v2/teams.json".sub('{format}','json')

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
      form_params["sub_organization_id"] = sub_organization_id
      form_params["name"] = name

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Team')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TeamsApi#create\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Remove a(n) Team
    # 
    # @param id Team Id
    # @param [Hash] opts the optional parameters
    # @return [Team]
    def destroy(id, opts = {})
      data, _status_code, _headers = destroy_with_http_info(id, opts)
      return data
    end

    # Remove a(n) Team
    # 
    # @param id Team Id
    # @param [Hash] opts the optional parameters
    # @return [Array<(Team, Fixnum, Hash)>] Team data, response status code and response headers
    def destroy_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TeamsApi.destroy ..."
      end
      # verify the required parameter 'id' is set
      fail ArgumentError, "Missing the required parameter 'id' when calling TeamsApi.destroy" if id.nil?
      # resource path
      local_var_path = "/v2/teams/{id}.json".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

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
        :auth_names => auth_names,
        :return_type => 'Team')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TeamsApi#destroy\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a list of Teams
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

    # Get a list of Teams
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [Hash<String, String>] :page Page Number
    # @option opts [Hash<String, String>] :filter Filter Params for Searching
    # @option opts [String] :include Included Objects
    # @return [Array<(PaginatedCollection, Fixnum, Hash)>] PaginatedCollection data, response status code and response headers
    def list_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TeamsApi.list ..."
      end
      # resource path
      local_var_path = "/v2/teams.json".sub('{format}','json')

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
        @api_client.config.logger.debug "API called: TeamsApi#list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Show a single Team
    # 
    # @param id Team Id
    # @param [Hash] opts the optional parameters
    # @option opts [String] :include Included Objects
    # @return [Team]
    def show(id, opts = {})
      data, _status_code, _headers = show_with_http_info(id, opts)
      return data
    end

    # Show a single Team
    # 
    # @param id Team Id
    # @param [Hash] opts the optional parameters
    # @option opts [String] :include Included Objects
    # @return [Array<(Team, Fixnum, Hash)>] Team data, response status code and response headers
    def show_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TeamsApi.show ..."
      end
      # verify the required parameter 'id' is set
      fail ArgumentError, "Missing the required parameter 'id' when calling TeamsApi.show" if id.nil?
      # resource path
      local_var_path = "/v2/teams/{id}.json".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

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
        :return_type => 'Team')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TeamsApi#show\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a(n) Team
    # 
    # @param id Team Id
    # @param name The name of the sub organization
    # @param [Hash] opts the optional parameters
    # @return [Team]
    def update(id, name, opts = {})
      data, _status_code, _headers = update_with_http_info(id, name, opts)
      return data
    end

    # Update a(n) Team
    # 
    # @param id Team Id
    # @param name The name of the sub organization
    # @param [Hash] opts the optional parameters
    # @return [Array<(Team, Fixnum, Hash)>] Team data, response status code and response headers
    def update_with_http_info(id, name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TeamsApi.update ..."
      end
      # verify the required parameter 'id' is set
      fail ArgumentError, "Missing the required parameter 'id' when calling TeamsApi.update" if id.nil?
      # verify the required parameter 'name' is set
      fail ArgumentError, "Missing the required parameter 'name' when calling TeamsApi.update" if name.nil?
      # resource path
      local_var_path = "/v2/teams/{id}.json".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

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
      form_params["name"] = name

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Team')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TeamsApi#update\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
