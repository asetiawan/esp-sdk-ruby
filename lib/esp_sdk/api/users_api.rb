=begin
#ESP Documentation

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: v2

Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require "uri"

module ESP
  class UsersApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Create a(n) User
    # 
    # @param first_name The first name of the user
    # @param last_name The last name of the user
    # @param email The email of the user
    # @param [Hash] opts the optional parameters
    # @option opts [String] :role_id The role of the user
    # @option opts [Array<Integer>] :sub_organization_ids A list of sub organization IDs that the user should have access to
    # @option opts [Array<Integer>] :team_ids A list of team IDs that the user should have access to
    # @option opts [String] :disable_daily_emails Whether the daily emails should be turned off or not. Valid values are true/false
    # @option opts [String] :phone The phone number of the user
    # @option opts [String] :time_zone The time zone of the user. See Time Zones for a list of valid time zones
    # @return [User]
    def create(first_name, last_name, email, opts = {})
      data, _status_code, _headers = create_with_http_info(first_name, last_name, email, opts)
      return data
    end

    # Create a(n) User
    # 
    # @param first_name The first name of the user
    # @param last_name The last name of the user
    # @param email The email of the user
    # @param [Hash] opts the optional parameters
    # @option opts [String] :role_id The role of the user
    # @option opts [Array<Integer>] :sub_organization_ids A list of sub organization IDs that the user should have access to
    # @option opts [Array<Integer>] :team_ids A list of team IDs that the user should have access to
    # @option opts [String] :disable_daily_emails Whether the daily emails should be turned off or not. Valid values are true/false
    # @option opts [String] :phone The phone number of the user
    # @option opts [String] :time_zone The time zone of the user. See Time Zones for a list of valid time zones
    # @return [Array<(User, Fixnum, Hash)>] User data, response status code and response headers
    def create_with_http_info(first_name, last_name, email, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: UsersApi.create ..."
      end
      # verify the required parameter 'first_name' is set
      fail ArgumentError, "Missing the required parameter 'first_name' when calling UsersApi.create" if first_name.nil?
      # verify the required parameter 'last_name' is set
      fail ArgumentError, "Missing the required parameter 'last_name' when calling UsersApi.create" if last_name.nil?
      # verify the required parameter 'email' is set
      fail ArgumentError, "Missing the required parameter 'email' when calling UsersApi.create" if email.nil?
      # resource path
      local_var_path = "/api/v2/users.json_api".sub('{format}','json')

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # form parameters
      form_params = {}
      form_params["first_name"] = first_name
      form_params["last_name"] = last_name
      form_params["email"] = email
      form_params["role_id"] = opts[:'role_id'] if !opts[:'role_id'].nil?
      form_params["sub_organization_ids"] = @api_client.build_collection_param(opts[:'sub_organization_ids'], :csv) if !opts[:'sub_organization_ids'].nil?
      form_params["team_ids"] = @api_client.build_collection_param(opts[:'team_ids'], :csv) if !opts[:'team_ids'].nil?
      form_params["disable_daily_emails"] = opts[:'disable_daily_emails'] if !opts[:'disable_daily_emails'].nil?
      form_params["phone"] = opts[:'phone'] if !opts[:'phone'].nil?
      form_params["time_zone"] = opts[:'time_zone'] if !opts[:'time_zone'].nil?

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'User')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UsersApi#create\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Remove a(n) User
    # 
    # @param id User Id
    # @param [Hash] opts the optional parameters
    # @return [Object]
    def destroy(id, opts = {})
      data, _status_code, _headers = destroy_with_http_info(id, opts)
      return data
    end

    # Remove a(n) User
    # 
    # @param id User Id
    # @param [Hash] opts the optional parameters
    # @return [Array<(Object, Fixnum, Hash)>] Object data, response status code and response headers
    def destroy_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: UsersApi.destroy ..."
      end
      # verify the required parameter 'id' is set
      fail ArgumentError, "Missing the required parameter 'id' when calling UsersApi.destroy" if id.nil?
      # resource path
      local_var_path = "/api/v2/users/{id}.json_api".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

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
        :return_type => 'Object')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UsersApi#destroy\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a list of Users
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

    # Get a list of Users
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [Hash<String, String>] :page Page Number
    # @option opts [Hash<String, String>] :filter Filter Params for Searching
    # @option opts [String] :include Included Objects
    # @return [Array<(PaginatedCollection, Fixnum, Hash)>] PaginatedCollection data, response status code and response headers
    def list_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: UsersApi.list ..."
      end
      # resource path
      local_var_path = "/api/v2/users.json_api".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'include'] = opts[:'include'] if !opts[:'include'].nil?

      # header parameters
      header_params = {}

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
        @api_client.config.logger.debug "API called: UsersApi#list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Show a single User
    # 
    # @param id User Id
    # @param [Hash] opts the optional parameters
    # @option opts [String] :include Included Objects
    # @return [User]
    def show(id, opts = {})
      data, _status_code, _headers = show_with_http_info(id, opts)
      return data
    end

    # Show a single User
    # 
    # @param id User Id
    # @param [Hash] opts the optional parameters
    # @option opts [String] :include Included Objects
    # @return [Array<(User, Fixnum, Hash)>] User data, response status code and response headers
    def show_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: UsersApi.show ..."
      end
      # verify the required parameter 'id' is set
      fail ArgumentError, "Missing the required parameter 'id' when calling UsersApi.show" if id.nil?
      # resource path
      local_var_path = "/api/v2/users/{id}.json_api".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}
      query_params[:'include'] = opts[:'include'] if !opts[:'include'].nil?

      # header parameters
      header_params = {}

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
        :return_type => 'User')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UsersApi#show\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a(n) User
    # 
    # @param id User Id
    # @param first_name The first name of the user
    # @param last_name The last name of the user
    # @param email The email of the user
    # @param [Hash] opts the optional parameters
    # @option opts [String] :role_id The role of the user
    # @option opts [Array<Integer>] :sub_organization_ids A list of sub organization IDs that the user should have access to
    # @option opts [Array<Integer>] :team_ids A list of team IDs that the user should have access to
    # @option opts [String] :disable_daily_emails Whether the daily emails should be turned off or not. Valid values are true/false
    # @option opts [String] :phone The phone number of the user
    # @option opts [String] :time_zone The time zone of the user. See Time Zones for a list of valid time zones
    # @return [User]
    def update(id, first_name, last_name, email, opts = {})
      data, _status_code, _headers = update_with_http_info(id, first_name, last_name, email, opts)
      return data
    end

    # Update a(n) User
    # 
    # @param id User Id
    # @param first_name The first name of the user
    # @param last_name The last name of the user
    # @param email The email of the user
    # @param [Hash] opts the optional parameters
    # @option opts [String] :role_id The role of the user
    # @option opts [Array<Integer>] :sub_organization_ids A list of sub organization IDs that the user should have access to
    # @option opts [Array<Integer>] :team_ids A list of team IDs that the user should have access to
    # @option opts [String] :disable_daily_emails Whether the daily emails should be turned off or not. Valid values are true/false
    # @option opts [String] :phone The phone number of the user
    # @option opts [String] :time_zone The time zone of the user. See Time Zones for a list of valid time zones
    # @return [Array<(User, Fixnum, Hash)>] User data, response status code and response headers
    def update_with_http_info(id, first_name, last_name, email, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: UsersApi.update ..."
      end
      # verify the required parameter 'id' is set
      fail ArgumentError, "Missing the required parameter 'id' when calling UsersApi.update" if id.nil?
      # verify the required parameter 'first_name' is set
      fail ArgumentError, "Missing the required parameter 'first_name' when calling UsersApi.update" if first_name.nil?
      # verify the required parameter 'last_name' is set
      fail ArgumentError, "Missing the required parameter 'last_name' when calling UsersApi.update" if last_name.nil?
      # verify the required parameter 'email' is set
      fail ArgumentError, "Missing the required parameter 'email' when calling UsersApi.update" if email.nil?
      # resource path
      local_var_path = "/api/v2/users/{id}.json_api".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # form parameters
      form_params = {}
      form_params["first_name"] = first_name
      form_params["last_name"] = last_name
      form_params["email"] = email
      form_params["role_id"] = opts[:'role_id'] if !opts[:'role_id'].nil?
      form_params["sub_organization_ids"] = @api_client.build_collection_param(opts[:'sub_organization_ids'], :csv) if !opts[:'sub_organization_ids'].nil?
      form_params["team_ids"] = @api_client.build_collection_param(opts[:'team_ids'], :csv) if !opts[:'team_ids'].nil?
      form_params["disable_daily_emails"] = opts[:'disable_daily_emails'] if !opts[:'disable_daily_emails'].nil?
      form_params["phone"] = opts[:'phone'] if !opts[:'phone'].nil?
      form_params["time_zone"] = opts[:'time_zone'] if !opts[:'time_zone'].nil?

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'User')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UsersApi#update\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
