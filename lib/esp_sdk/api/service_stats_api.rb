=begin
#ESP Documentation

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: v2

Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require "uri"

module ESP
  class ServiceStatsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # A successful call to this API returns all the stats of all the services for a report identified by the stat_id parameter. Said report contains all statistics for this alert triggered from signatures contained in all regions for the selected hour.
    # 
    # @param stat_id The ID of the stat to retrieve service stats for
    # @param [Hash] opts the optional parameters
    # @return [PaginatedCollection]
    def list(stat_id, opts = {})
      data, _status_code, _headers = list_with_http_info(stat_id, opts)
      return data
    end

    # A successful call to this API returns all the stats of all the services for a report identified by the stat_id parameter. Said report contains all statistics for this alert triggered from signatures contained in all regions for the selected hour.
    # 
    # @param stat_id The ID of the stat to retrieve service stats for
    # @param [Hash] opts the optional parameters
    # @return [Array<(PaginatedCollection, Fixnum, Hash)>] PaginatedCollection data, response status code and response headers
    def list_with_http_info(stat_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ServiceStatsApi.list ..."
      end
      # verify the required parameter 'stat_id' is set
      fail ArgumentError, "Missing the required parameter 'stat_id' when calling ServiceStatsApi.list" if stat_id.nil?
      # resource path
      local_var_path = "/api/v2/stats/{stat_id}/services.json_api".sub('{format}','json').sub('{' + 'stat_id' + '}', stat_id.to_s)

      # query parameters
      query_params = {}

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
        :return_type => 'PaginatedCollection')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ServiceStatsApi#list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
