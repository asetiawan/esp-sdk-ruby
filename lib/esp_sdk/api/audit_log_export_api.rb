=begin
#ESP Documentation

#The Evident Security Platform API (version 2.0) is designed to allow users granular control over their Amazon Web Service security experience by allowing them to review alerts, monitor signatures, and create custom signatures.

OpenAPI spec version: v2_sdk

Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require "uri"

module ESP
  class AuditLogExportApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Export an Audit Log File
    # An email will be sent to the user (having organization level access) requesting creation once the file is ready for download. The file will have all audit logs for the organization in CSV format.  The URL and filename in the response will be blank on create but will be present in the response on the show endpoint once the export has been generated.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :include Related objects that can be included in the response:  organization, user See Including Objects for more information.
    # @return [AuditLogFile]
    def request_file(opts = {})
      data, _status_code, _headers = request_file_with_http_info(opts)
      return data
    end

    # Export an Audit Log File
    # An email will be sent to the user (having organization level access) requesting creation once the file is ready for download. The file will have all audit logs for the organization in CSV format.  The URL and filename in the response will be blank on create but will be present in the response on the show endpoint once the export has been generated.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :include Related objects that can be included in the response:  organization, user See Including Objects for more information.
    # @return [Array<(AuditLogFile, Fixnum, Hash)>] AuditLogFile data, response status code and response headers
    def request_file_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AuditLogExportApi.request_file ..."
      end
      # resource path
      local_var_path = "/api/v2/audit_logs/export/files.json_api".sub('{format}','json_api')

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
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'AuditLogFile')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AuditLogExportApi#request_file\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Show a single Audit Log File
    # The URL returned will expire and will no longer work after the expiration.
    # @param id Audit Log File ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :include Related objects that can be included in the response:  organization, user See Including Objects for more information.
    # @return [AuditLogFile]
    def show_file_details(id, opts = {})
      data, _status_code, _headers = show_file_details_with_http_info(id, opts)
      return data
    end

    # Show a single Audit Log File
    # The URL returned will expire and will no longer work after the expiration.
    # @param id Audit Log File ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :include Related objects that can be included in the response:  organization, user See Including Objects for more information.
    # @return [Array<(AuditLogFile, Fixnum, Hash)>] AuditLogFile data, response status code and response headers
    def show_file_details_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AuditLogExportApi.show_file_details ..."
      end
      # verify the required parameter 'id' is set
      fail ArgumentError, "Missing the required parameter 'id' when calling AuditLogExportApi.show_file_details" if id.nil?
      # resource path
      local_var_path = "/api/v2/audit_logs/export/files/{id}.json_api".sub('{format}','json_api').sub('{' + 'id' + '}', id.to_s)

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
        :return_type => 'AuditLogFile')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AuditLogExportApi#show_file_details\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end