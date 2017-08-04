=begin
#ESP Documentation

#The Evident Security Platform API (version 2.0) is designed to allow users granular control over their Amazon Web Service security experience by allowing them to review alerts, monitor signatures, and create custom signatures.

OpenAPI spec version: v2_sdk

Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require "uri"

module ESP
  class AuditLogFileExportApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Export an Audit Log File
    # 
    # @param [Hash] opts the optional parameters
    # @return [AuditLogFile]
    def create(opts = {})
      data, _status_code, _headers = create_with_http_info(opts)
      return data
    end

    # Export an Audit Log File
    # 
    # @param [Hash] opts the optional parameters
    # @return [Array<(AuditLogFile, Fixnum, Hash)>] AuditLogFile data, response status code and response headers
    def create_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AuditLogFileExportApi.create ..."
      end
      # resource path
      local_var_path = "/api/v2/audit_logs/export/files.json_api".sub('{format}','json_api')

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/vnd.api+json'])

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
        @api_client.config.logger.debug "API called: AuditLogFileExportApi#create\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Show a single Audit Log File
    # 
    # @param id Audit Log File Id
    # @param [Hash] opts the optional parameters
    # @option opts [String] :include Objects that can be included in the response:  organization,user  See Including Objects for more information.
    # @return [AuditLogFile]
    def show(id, opts = {})
      data, _status_code, _headers = show_with_http_info(id, opts)
      return data
    end

    # Show a single Audit Log File
    # 
    # @param id Audit Log File Id
    # @param [Hash] opts the optional parameters
    # @option opts [String] :include Objects that can be included in the response:  organization,user  See Including Objects for more information.
    # @return [Array<(AuditLogFile, Fixnum, Hash)>] AuditLogFile data, response status code and response headers
    def show_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AuditLogFileExportApi.show ..."
      end
      # verify the required parameter 'id' is set
      fail ArgumentError, "Missing the required parameter 'id' when calling AuditLogFileExportApi.show" if id.nil?
      # resource path
      local_var_path = "/api/v2/audit_logs/export/files/{id}.json_api".sub('{format}','json_api').sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}
      query_params[:'include'] = opts[:'include'] if !opts[:'include'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/vnd.api+json'])

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
        @api_client.config.logger.debug "API called: AuditLogFileExportApi#show\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
