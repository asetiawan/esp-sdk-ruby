=begin
#ESP Documentation

#The Evident Security Platform API (version 2.0) is designed to allow users granular control over their Amazon Web Service security experience by allowing them to review alerts, monitor signatures, and create custom signatures.

OpenAPI spec version: v2_sdk

Generated by: https://github.com/swagger-api/swagger-codegen.git

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
    # @param name Name of the team
    # @param sub_organization_id The ID of the sub organization to attach this team to
    # @param [Hash] opts the optional parameters
    # @option opts [String] :include Related objects that can be included in the response:  custom_signatures, external_accounts, organization, sub_organization See Including Objects for more information.
    # @option opts [Integer] :report_interval The interval period in hours for Evident.io to run reports
    # @return [Team]
    def create(name, sub_organization_id, opts = {})
      data, _status_code, _headers = create_with_http_info(name, sub_organization_id, opts)
      return data
    end

    # Create a(n) Team
    # 
    # @param name Name of the team
    # @param sub_organization_id The ID of the sub organization to attach this team to
    # @param [Hash] opts the optional parameters
    # @option opts [String] :include Related objects that can be included in the response:  custom_signatures, external_accounts, organization, sub_organization See Including Objects for more information.
    # @option opts [Integer] :report_interval The interval period in hours for Evident.io to run reports
    # @return [Array<(Team, Fixnum, Hash)>] Team data, response status code and response headers
    def create_with_http_info(name, sub_organization_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TeamsApi.create ..."
      end
      # verify the required parameter 'name' is set
      fail ArgumentError, "Missing the required parameter 'name' when calling TeamsApi.create" if name.nil?
      # verify the required parameter 'sub_organization_id' is set
      fail ArgumentError, "Missing the required parameter 'sub_organization_id' when calling TeamsApi.create" if sub_organization_id.nil?
      # resource path
      local_var_path = "/api/v2/teams.json_api".sub('{format}','json_api')

      # query parameters
      query_params = {}
      query_params[:'include'] = opts[:'include'] if !opts[:'include'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/vnd.api+json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/vnd.api+json'])

      # form parameters
      form_params = {}
      form_params["name"] = name
      form_params["sub_organization_id"] = sub_organization_id
      form_params["report_interval"] = opts[:'report_interval'] if !opts[:'report_interval'].nil?

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

    # Delete a(n) Team
    # 
    # @param id Team ID
    # @param [Hash] opts the optional parameters
    # @return [Meta]
    def delete(id, opts = {})
      data, _status_code, _headers = delete_with_http_info(id, opts)
      return data
    end

    # Delete a(n) Team
    # 
    # @param id Team ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(Meta, Fixnum, Hash)>] Meta data, response status code and response headers
    def delete_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TeamsApi.delete ..."
      end
      # verify the required parameter 'id' is set
      fail ArgumentError, "Missing the required parameter 'id' when calling TeamsApi.delete" if id.nil?
      # resource path
      local_var_path = "/api/v2/teams/{id}.json_api".sub('{format}','json_api').sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/vnd.api+json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/vnd.api+json'])

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
        :return_type => 'Meta')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TeamsApi#delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a list of Teams
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :include Related objects that can be included in the response:  custom_signatures, external_accounts, organization, sub_organization See Including Objects for more information.
    # @option opts [Hash<String, String>] :filter Filter Params for Searching.  Equality Searchable Attributes: [id, name] Matching Searchable Attribute: [name]  Sortable Attributes: [name, updated_at, created_at, id] Searchable Associations: [organization, sub_organization, custom_signatures, integrations] See Searching Lists for more information. See the filter parameter of the association&#39;s list action to see what attributes are searchable on each association. See Conditions on Relationships in Searching Lists for more information.
    # @option opts [String] :page Page Number and Page Size.  Number is the page number of the collection to return, size is the number of items to return per page. (default to {:number=>1,+:size=>20})
    # @return [PaginatedCollection]
    def list(opts = {})
      data, _status_code, _headers = list_with_http_info(opts)
      return data
    end

    # Get a list of Teams
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :include Related objects that can be included in the response:  custom_signatures, external_accounts, organization, sub_organization See Including Objects for more information.
    # @option opts [Hash<String, String>] :filter Filter Params for Searching.  Equality Searchable Attributes: [id, name] Matching Searchable Attribute: [name]  Sortable Attributes: [name, updated_at, created_at, id] Searchable Associations: [organization, sub_organization, custom_signatures, integrations] See Searching Lists for more information. See the filter parameter of the association&#39;s list action to see what attributes are searchable on each association. See Conditions on Relationships in Searching Lists for more information.
    # @option opts [String] :page Page Number and Page Size.  Number is the page number of the collection to return, size is the number of items to return per page.
    # @return [Array<(PaginatedCollection, Fixnum, Hash)>] PaginatedCollection data, response status code and response headers
    def list_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TeamsApi.list ..."
      end
      # resource path
      local_var_path = "/api/v2/teams.json_api".sub('{format}','json_api')

      # query parameters
      query_params = {}
      query_params[:'include'] = opts[:'include'] if !opts[:'include'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/vnd.api+json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/vnd.api+json'])

      # form parameters
      form_params = {}
      form_params["filter"] = opts[:'filter'] if !opts[:'filter'].nil?
      form_params["page"] = opts[:'page'] if !opts[:'page'].nil?

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
    # @param id Team ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :include Related objects that can be included in the response:  custom_signatures, external_accounts, organization, sub_organization See Including Objects for more information.
    # @return [Team]
    def show(id, opts = {})
      data, _status_code, _headers = show_with_http_info(id, opts)
      return data
    end

    # Show a single Team
    # 
    # @param id Team ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :include Related objects that can be included in the response:  custom_signatures, external_accounts, organization, sub_organization See Including Objects for more information.
    # @return [Array<(Team, Fixnum, Hash)>] Team data, response status code and response headers
    def show_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TeamsApi.show ..."
      end
      # verify the required parameter 'id' is set
      fail ArgumentError, "Missing the required parameter 'id' when calling TeamsApi.show" if id.nil?
      # resource path
      local_var_path = "/api/v2/teams/{id}.json_api".sub('{format}','json_api').sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}
      query_params[:'include'] = opts[:'include'] if !opts[:'include'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/vnd.api+json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/vnd.api+json'])

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
    # @param id Team ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :include Related objects that can be included in the response:  custom_signatures, external_accounts, organization, sub_organization See Including Objects for more information.
    # @option opts [String] :name Name of the team
    # @option opts [Integer] :report_interval The interval period in hours for Evident.io to run reports
    # @return [Team]
    def update(id, opts = {})
      data, _status_code, _headers = update_with_http_info(id, opts)
      return data
    end

    # Update a(n) Team
    # 
    # @param id Team ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :include Related objects that can be included in the response:  custom_signatures, external_accounts, organization, sub_organization See Including Objects for more information.
    # @option opts [String] :name Name of the team
    # @option opts [Integer] :report_interval The interval period in hours for Evident.io to run reports
    # @return [Array<(Team, Fixnum, Hash)>] Team data, response status code and response headers
    def update_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TeamsApi.update ..."
      end
      # verify the required parameter 'id' is set
      fail ArgumentError, "Missing the required parameter 'id' when calling TeamsApi.update" if id.nil?
      # resource path
      local_var_path = "/api/v2/teams/{id}.json_api".sub('{format}','json_api').sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}
      query_params[:'include'] = opts[:'include'] if !opts[:'include'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/vnd.api+json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/vnd.api+json'])

      # form parameters
      form_params = {}
      form_params["name"] = opts[:'name'] if !opts[:'name'].nil?
      form_params["report_interval"] = opts[:'report_interval'] if !opts[:'report_interval'].nil?

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
