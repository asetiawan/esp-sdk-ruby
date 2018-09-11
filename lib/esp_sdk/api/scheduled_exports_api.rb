=begin
#ESP Documentation

#The Evident Security Platform API (version 2.0) is designed to allow users granular control over their Amazon Web Service security experience by allowing them to review alerts, monitor signatures, and create custom signatures.

OpenAPI spec version: v2_sdk

Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require "uri"

module ESP
  class ScheduledExportsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Update a(n) Scheduled Export
    # 
    # @param scheduled_export_id The id of the scheduled export to be activated
    # @param [Hash] opts the optional parameters
    # @option opts [String] :include Related objects that can be included in the response:  external_accounts, creator See Including Objects for more information.
    # @return [ScheduledExport]
    def activate_export(scheduled_export_id, opts = {})
      data, _status_code, _headers = activate_export_with_http_info(scheduled_export_id, opts)
      return data
    end

    # Update a(n) Scheduled Export
    # 
    # @param scheduled_export_id The id of the scheduled export to be activated
    # @param [Hash] opts the optional parameters
    # @option opts [String] :include Related objects that can be included in the response:  external_accounts, creator See Including Objects for more information.
    # @return [Array<(ScheduledExport, Fixnum, Hash)>] ScheduledExport data, response status code and response headers
    def activate_export_with_http_info(scheduled_export_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ScheduledExportsApi.activate_export ..."
      end
      # verify the required parameter 'scheduled_export_id' is set
      fail ArgumentError, "Missing the required parameter 'scheduled_export_id' when calling ScheduledExportsApi.activate_export" if scheduled_export_id.nil?
      # resource path
      local_var_path = "/api/v2/scheduled_exports/{scheduled_export_id}/activate.json_api".sub('{format}','json_api').sub('{' + 'scheduled_export_id' + '}', scheduled_export_id.to_s)

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
      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ScheduledExport')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ScheduledExportsApi#activate_export\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create a(n) Scheduled Export
    # 
    # @param external_account_ids The ids of the external accounts the report will be exported for
    # @param frequency Frequency of the export. Valid values are weekly, daily, monthly
    # @param hour Hour of the day to perform the export. Valid values are 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23
    # @param time_zone Time zone to use when calculating hour and day
    # @param [Hash] opts the optional parameters
    # @option opts [String] :include Related objects that can be included in the response:  external_accounts, creator See Including Objects for more information.
    # @option opts [String] :day Day of the week or day of the month to perform the export.  Allowed Values: Daily: nil - Weekly: sunday, monday, tuesday, wednesday, thursday, friday, or saturday - Monthly: 1 to 31. Valid values are sunday, monday, tuesday, wednesday, thursday, friday, saturday, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31
    # @option opts [Hash<String, String>] :filter Params used to filter the alerts that will be exported
    # @option opts [String] :name A name that describes the export
    # @option opts [Array<String>] :recipients Email addresses the export will be sent to
    # @return [ScheduledExport]
    def create(external_account_ids, frequency, hour, time_zone, opts = {})
      data, _status_code, _headers = create_with_http_info(external_account_ids, frequency, hour, time_zone, opts)
      return data
    end

    # Create a(n) Scheduled Export
    # 
    # @param external_account_ids The ids of the external accounts the report will be exported for
    # @param frequency Frequency of the export. Valid values are weekly, daily, monthly
    # @param hour Hour of the day to perform the export. Valid values are 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23
    # @param time_zone Time zone to use when calculating hour and day
    # @param [Hash] opts the optional parameters
    # @option opts [String] :include Related objects that can be included in the response:  external_accounts, creator See Including Objects for more information.
    # @option opts [String] :day Day of the week or day of the month to perform the export.  Allowed Values: Daily: nil - Weekly: sunday, monday, tuesday, wednesday, thursday, friday, or saturday - Monthly: 1 to 31. Valid values are sunday, monday, tuesday, wednesday, thursday, friday, saturday, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31
    # @option opts [Hash<String, String>] :filter Params used to filter the alerts that will be exported
    # @option opts [String] :name A name that describes the export
    # @option opts [Array<String>] :recipients Email addresses the export will be sent to
    # @return [Array<(ScheduledExport, Fixnum, Hash)>] ScheduledExport data, response status code and response headers
    def create_with_http_info(external_account_ids, frequency, hour, time_zone, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ScheduledExportsApi.create ..."
      end
      # verify the required parameter 'external_account_ids' is set
      fail ArgumentError, "Missing the required parameter 'external_account_ids' when calling ScheduledExportsApi.create" if external_account_ids.nil?
      # verify the required parameter 'frequency' is set
      fail ArgumentError, "Missing the required parameter 'frequency' when calling ScheduledExportsApi.create" if frequency.nil?
      # verify enum value
      unless ['weekly', 'daily', 'monthly'].include?(frequency)
        fail ArgumentError, "invalid value for 'frequency', must be one of weekly, daily, monthly"
      end
      # verify the required parameter 'hour' is set
      fail ArgumentError, "Missing the required parameter 'hour' when calling ScheduledExportsApi.create" if hour.nil?
      # verify the required parameter 'time_zone' is set
      fail ArgumentError, "Missing the required parameter 'time_zone' when calling ScheduledExportsApi.create" if time_zone.nil?
      if opts[:'day'] && !['sunday', 'monday', 'tuesday', 'wednesday', 'thursday', 'friday', 'saturday', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', '20', '21', '22', '23', '24', '25', '26', '27', '28', '29', '30', '31'].include?(opts[:'day'])
        fail ArgumentError, 'invalid value for "day", must be one of sunday, monday, tuesday, wednesday, thursday, friday, saturday, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31'
      end
      # resource path
      local_var_path = "/api/v2/scheduled_exports.json_api".sub('{format}','json_api')

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
      form_params["external_account_ids"] = @api_client.build_collection_param(external_account_ids, :multi)
      form_params["frequency"] = frequency
      form_params["hour"] = hour
      form_params["time_zone"] = time_zone
      form_params["day"] = opts[:'day'] if !opts[:'day'].nil?
      form_params["filter"] = opts[:'filter'] if !opts[:'filter'].nil?
      form_params["name"] = opts[:'name'] if !opts[:'name'].nil?
      form_params["recipients"] = @api_client.build_collection_param(opts[:'recipients'], :multi) if !opts[:'recipients'].nil?

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ScheduledExport')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ScheduledExportsApi#create\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete a(n) Scheduled Export
    # 
    # @param id Scheduled Export ID
    # @param [Hash] opts the optional parameters
    # @return [Meta]
    def delete(id, opts = {})
      data, _status_code, _headers = delete_with_http_info(id, opts)
      return data
    end

    # Delete a(n) Scheduled Export
    # 
    # @param id Scheduled Export ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(Meta, Fixnum, Hash)>] Meta data, response status code and response headers
    def delete_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ScheduledExportsApi.delete ..."
      end
      # verify the required parameter 'id' is set
      fail ArgumentError, "Missing the required parameter 'id' when calling ScheduledExportsApi.delete" if id.nil?
      # resource path
      local_var_path = "/api/v2/scheduled_exports/{id}.json_api".sub('{format}','json_api').sub('{' + 'id' + '}', id.to_s)

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
        @api_client.config.logger.debug "API called: ScheduledExportsApi#delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a(n) Scheduled Export
    # 
    # @param scheduled_export_id The id of the scheduled export to be disabled
    # @param [Hash] opts the optional parameters
    # @option opts [String] :include Related objects that can be included in the response:  external_accounts, creator See Including Objects for more information.
    # @return [ScheduledExport]
    def disable_export(scheduled_export_id, opts = {})
      data, _status_code, _headers = disable_export_with_http_info(scheduled_export_id, opts)
      return data
    end

    # Update a(n) Scheduled Export
    # 
    # @param scheduled_export_id The id of the scheduled export to be disabled
    # @param [Hash] opts the optional parameters
    # @option opts [String] :include Related objects that can be included in the response:  external_accounts, creator See Including Objects for more information.
    # @return [Array<(ScheduledExport, Fixnum, Hash)>] ScheduledExport data, response status code and response headers
    def disable_export_with_http_info(scheduled_export_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ScheduledExportsApi.disable_export ..."
      end
      # verify the required parameter 'scheduled_export_id' is set
      fail ArgumentError, "Missing the required parameter 'scheduled_export_id' when calling ScheduledExportsApi.disable_export" if scheduled_export_id.nil?
      # resource path
      local_var_path = "/api/v2/scheduled_exports/{scheduled_export_id}/disable.json_api".sub('{format}','json_api').sub('{' + 'scheduled_export_id' + '}', scheduled_export_id.to_s)

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
      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ScheduledExport')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ScheduledExportsApi#disable_export\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a list of Scheduled Exports
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :include Related objects that can be included in the response:  external_accounts, creator See Including Objects for more information.
    # @option opts [Hash<String, String>] :filter Filter Params for Searching.  Equality Searchable Attributes: [id, hour, day, status, recipients, time_zone, name] Matching Searchable Attributes: [recipients, time_zone, name] Limited Searchable Attribute: [frequency_eq] Sortable Attributes: [updated_at, created_at, id, name] Searchable Associations: [creator, external_accounts] See Searching Lists for more information. See the filter parameter of the association&#39;s list action to see what attributes are searchable on each association. See Conditions on Relationships in Searching Lists for more information.
    # @option opts [String] :page Page Number and Page Size.  Number is the page number of the collection to return, size is the number of items to return per page. (default to {:number=>1,+:size=>20})
    # @return [PaginatedCollection]
    def list(opts = {})
      data, _status_code, _headers = list_with_http_info(opts)
      return data
    end

    # Get a list of Scheduled Exports
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :include Related objects that can be included in the response:  external_accounts, creator See Including Objects for more information.
    # @option opts [Hash<String, String>] :filter Filter Params for Searching.  Equality Searchable Attributes: [id, hour, day, status, recipients, time_zone, name] Matching Searchable Attributes: [recipients, time_zone, name] Limited Searchable Attribute: [frequency_eq] Sortable Attributes: [updated_at, created_at, id, name] Searchable Associations: [creator, external_accounts] See Searching Lists for more information. See the filter parameter of the association&#39;s list action to see what attributes are searchable on each association. See Conditions on Relationships in Searching Lists for more information.
    # @option opts [String] :page Page Number and Page Size.  Number is the page number of the collection to return, size is the number of items to return per page.
    # @return [Array<(PaginatedCollection, Fixnum, Hash)>] PaginatedCollection data, response status code and response headers
    def list_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ScheduledExportsApi.list ..."
      end
      # resource path
      local_var_path = "/api/v2/scheduled_exports.json_api".sub('{format}','json_api')

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
        @api_client.config.logger.debug "API called: ScheduledExportsApi#list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Show a single Scheduled Export
    # 
    # @param id Scheduled Export ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :include Related objects that can be included in the response:  external_accounts, creator See Including Objects for more information.
    # @return [ScheduledExport]
    def show(id, opts = {})
      data, _status_code, _headers = show_with_http_info(id, opts)
      return data
    end

    # Show a single Scheduled Export
    # 
    # @param id Scheduled Export ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :include Related objects that can be included in the response:  external_accounts, creator See Including Objects for more information.
    # @return [Array<(ScheduledExport, Fixnum, Hash)>] ScheduledExport data, response status code and response headers
    def show_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ScheduledExportsApi.show ..."
      end
      # verify the required parameter 'id' is set
      fail ArgumentError, "Missing the required parameter 'id' when calling ScheduledExportsApi.show" if id.nil?
      # resource path
      local_var_path = "/api/v2/scheduled_exports/{id}.json_api".sub('{format}','json_api').sub('{' + 'id' + '}', id.to_s)

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
        :return_type => 'ScheduledExport')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ScheduledExportsApi#show\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Show a single Scheduled Export Result
    # The URL provided is temporary and will expire shortly after the request. To download the exported file you will need to follow the URL provided.
    # @param uuid The uuid to access the result
    # @param [Hash] opts the optional parameters
    # @option opts [String] :include Related objects that can be included in the response:  scheduled_export See Including Objects for more information.
    # @return [ScheduledExportResult]
    def show_file_details(uuid, opts = {})
      data, _status_code, _headers = show_file_details_with_http_info(uuid, opts)
      return data
    end

    # Show a single Scheduled Export Result
    # The URL provided is temporary and will expire shortly after the request. To download the exported file you will need to follow the URL provided.
    # @param uuid The uuid to access the result
    # @param [Hash] opts the optional parameters
    # @option opts [String] :include Related objects that can be included in the response:  scheduled_export See Including Objects for more information.
    # @return [Array<(ScheduledExportResult, Fixnum, Hash)>] ScheduledExportResult data, response status code and response headers
    def show_file_details_with_http_info(uuid, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ScheduledExportsApi.show_file_details ..."
      end
      # verify the required parameter 'uuid' is set
      fail ArgumentError, "Missing the required parameter 'uuid' when calling ScheduledExportsApi.show_file_details" if uuid.nil?
      # resource path
      local_var_path = "/api/v2/reports/scheduled_export/files/{uuid}.json_api".sub('{format}','json_api').sub('{' + 'uuid' + '}', uuid.to_s)

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
        :return_type => 'ScheduledExportResult')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ScheduledExportsApi#show_file_details\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a(n) Scheduled Export
    # 
    # @param uuid The uuid of the export to unsubscribe
    # @param email The email to unsubscribe. Nested under: \&quot;data\&quot;: { \&quot;meta\&quot;: { \&quot;email\&quot;: ... } }
    # @param [Hash] opts the optional parameters
    # @option opts [String] :include Related objects that can be included in the response:  external_accounts, creator See Including Objects for more information.
    # @return [ScheduledExport]
    def unsubscribe_export(uuid, email, opts = {})
      data, _status_code, _headers = unsubscribe_export_with_http_info(uuid, email, opts)
      return data
    end

    # Update a(n) Scheduled Export
    # 
    # @param uuid The uuid of the export to unsubscribe
    # @param email The email to unsubscribe. Nested under: \&quot;data\&quot;: { \&quot;meta\&quot;: { \&quot;email\&quot;: ... } }
    # @param [Hash] opts the optional parameters
    # @option opts [String] :include Related objects that can be included in the response:  external_accounts, creator See Including Objects for more information.
    # @return [Array<(ScheduledExport, Fixnum, Hash)>] ScheduledExport data, response status code and response headers
    def unsubscribe_export_with_http_info(uuid, email, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ScheduledExportsApi.unsubscribe_export ..."
      end
      # verify the required parameter 'uuid' is set
      fail ArgumentError, "Missing the required parameter 'uuid' when calling ScheduledExportsApi.unsubscribe_export" if uuid.nil?
      # verify the required parameter 'email' is set
      fail ArgumentError, "Missing the required parameter 'email' when calling ScheduledExportsApi.unsubscribe_export" if email.nil?
      # resource path
      local_var_path = "/api/v2/scheduled_exports/{uuid}/unsubscribe.json_api".sub('{format}','json_api').sub('{' + 'uuid' + '}', uuid.to_s)

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
      form_params["email"] = email

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ScheduledExport')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ScheduledExportsApi#unsubscribe_export\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a(n) Scheduled Export
    # 
    # @param id Scheduled Export ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :include Related objects that can be included in the response:  external_accounts, creator See Including Objects for more information.
    # @option opts [String] :day Day of the week or day of the month to perform the export.  Allowed Values: Daily: nil - Weekly: sunday, monday, tuesday, wednesday, thursday, friday, or saturday - Monthly: 1 to 31. Valid values are sunday, monday, tuesday, wednesday, thursday, friday, saturday, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31
    # @option opts [Array<Integer>] :external_account_ids The ids of the external accounts the report will be exported for
    # @option opts [Hash<String, String>] :filter Params used to filter the alerts that will be exported
    # @option opts [Integer] :hour Hour of the day to perform the export. Valid values are 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23
    # @option opts [String] :name A name that describes the export
    # @option opts [Array<String>] :recipients Email addresses the export will be sent to
    # @option opts [String] :time_zone Time zone to use when calculating hour and day
    # @return [ScheduledExport]
    def update(id, opts = {})
      data, _status_code, _headers = update_with_http_info(id, opts)
      return data
    end

    # Update a(n) Scheduled Export
    # 
    # @param id Scheduled Export ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :include Related objects that can be included in the response:  external_accounts, creator See Including Objects for more information.
    # @option opts [String] :day Day of the week or day of the month to perform the export.  Allowed Values: Daily: nil - Weekly: sunday, monday, tuesday, wednesday, thursday, friday, or saturday - Monthly: 1 to 31. Valid values are sunday, monday, tuesday, wednesday, thursday, friday, saturday, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31
    # @option opts [Array<Integer>] :external_account_ids The ids of the external accounts the report will be exported for
    # @option opts [Hash<String, String>] :filter Params used to filter the alerts that will be exported
    # @option opts [Integer] :hour Hour of the day to perform the export. Valid values are 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23
    # @option opts [String] :name A name that describes the export
    # @option opts [Array<String>] :recipients Email addresses the export will be sent to
    # @option opts [String] :time_zone Time zone to use when calculating hour and day
    # @return [Array<(ScheduledExport, Fixnum, Hash)>] ScheduledExport data, response status code and response headers
    def update_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ScheduledExportsApi.update ..."
      end
      # verify the required parameter 'id' is set
      fail ArgumentError, "Missing the required parameter 'id' when calling ScheduledExportsApi.update" if id.nil?
      if opts[:'day'] && !['sunday', 'monday', 'tuesday', 'wednesday', 'thursday', 'friday', 'saturday', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', '20', '21', '22', '23', '24', '25', '26', '27', '28', '29', '30', '31'].include?(opts[:'day'])
        fail ArgumentError, 'invalid value for "day", must be one of sunday, monday, tuesday, wednesday, thursday, friday, saturday, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31'
      end
      # resource path
      local_var_path = "/api/v2/scheduled_exports/{id}.json_api".sub('{format}','json_api').sub('{' + 'id' + '}', id.to_s)

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
      form_params["day"] = opts[:'day'] if !opts[:'day'].nil?
      form_params["external_account_ids"] = @api_client.build_collection_param(opts[:'external_account_ids'], :multi) if !opts[:'external_account_ids'].nil?
      form_params["filter"] = opts[:'filter'] if !opts[:'filter'].nil?
      form_params["hour"] = opts[:'hour'] if !opts[:'hour'].nil?
      form_params["name"] = opts[:'name'] if !opts[:'name'].nil?
      form_params["recipients"] = @api_client.build_collection_param(opts[:'recipients'], :multi) if !opts[:'recipients'].nil?
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
        :return_type => 'ScheduledExport')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ScheduledExportsApi#update\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
