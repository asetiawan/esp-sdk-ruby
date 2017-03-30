=begin
#ESP Documentation

#No descripton provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: v2

Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require 'uri'

module ESP
  class Configuration
    # Defines url scheme
    attr_accessor :scheme

    # Defines url host
    attr_accessor :host

    # Defines url base path
    attr_accessor :base_path

    # Set this to enable/disable debugging. When enabled (set to true), HTTP request/response
    # details will be logged with `logger.debug` (see the `logger` attribute).
    # Default to false.
    #
    # @return [true, false]
    attr_accessor :debugging

    # Defines the logger used for debugging.
    # Default to `Rails.logger` (when in Rails) or logging to STDOUT.
    #
    # @return [#debug]
    attr_accessor :logger

    # Defines the temporary folder to store downloaded files
    # (for API endpoints that have file response).
    # Default to use `Tempfile`.
    #
    # @return [String]
    attr_accessor :temp_folder_path

    # The time limit for HTTP request in seconds.
    # Default to 0 (never times out).
    attr_accessor :timeout

    ### TLS/SSL setting
    # Set this to false to skip verifying SSL certificate when calling API from https server.
    # Default to true.
    #
    # @note Do NOT set it to false in production code, otherwise you would face multiple types of cryptographic attacks.
    #
    # @return [true, false]
    attr_accessor :verify_ssl

    ### TLS/SSL setting
    # Set this to false to skip verifying SSL host name
    # Default to true.
    #
    # @note Do NOT set it to false in production code, otherwise you would face multiple types of cryptographic attacks.
    #
    # @return [true, false]
    attr_accessor :verify_ssl_host

    ### TLS/SSL setting
    # Set this to customize the certificate file to verify the peer.
    #
    # @return [String] the path to the certificate file
    #
    # @see The `cainfo` option of Typhoeus, `--cert` option of libcurl. Related source code:
    # https://github.com/typhoeus/typhoeus/blob/master/lib/typhoeus/easy_factory.rb#L145
    attr_accessor :ssl_ca_cert

    ### TLS/SSL setting
    # Client certificate file (for client certificate)
    attr_accessor :cert_file

    ### TLS/SSL setting
    # Client private key file (for client certificate)
    attr_accessor :key_file

    # Set this to customize parameters encoding of array parameter with multi collectionFormat.
    # Default to nil.
    #
    # @see The params_encoding option of Ethon. Related source code:
    # https://github.com/typhoeus/ethon/blob/master/lib/ethon/easy/queryable.rb#L96
    attr_accessor :params_encoding

    attr_accessor :inject_format

    attr_accessor :force_ending_format

    def initialize
      if ENV['ESP_ENV'] || ENV['RAILS_ENV'] == 'development'
        @scheme = 'http'
        @host   = 'localhost:3000'
      else
        @scheme = 'https'
        @host   = 'api.evident.io'
      end
      @base_path = '/api'
      @timeout = 0
      @verify_ssl = true
      @verify_ssl_host = true
      @params_encoding = nil
      @cert_file = nil
      @key_file = nil
      @debugging = false
      @inject_format = false
      @force_ending_format = false
      @logger = defined?(Rails) ? Rails.logger : Logger.new(STDOUT)

      yield(self) if block_given?
    end

    # The default Configuration object.
    def self.default
      @@default ||= Configuration.new
    end

    def configure
      yield(self) if block_given?
    end

    def scheme=(scheme)
      # remove :// from scheme
      @scheme = scheme.sub(/:\/\//, '')
    end

    def host=(host)
      # remove http(s):// and anything after a slash
      @host = host.sub(/https?:\/\//, '').split('/').first
    end

    def base_path=(base_path)
      # Add leading and trailing slashes to base_path
      @base_path = "/#{base_path}".gsub(/\/+/, '/')
      @base_path = "" if @base_path == "/"
    end

    def base_url
      url = "#{scheme}://#{[host, base_path].join('/').gsub(/\/+/, '/')}".sub(/\/+\z/, '')
      URI.encode(url)
    end

    # Manually set the access_key_id you created from https://esp.evident.io/settings/api_keys.
    #
    # You can optionally set the +ESP_ACCESS_KEY_ID+ environment variable.
    #
    # @param access_key_id [String] Your access key ID.
    # @return [void]
    def access_key_id=(access_key_id)
      @access_key_id = access_key_id
    end
    
    # Reads the +ESP_ACCESS_KEY_ID+ environment variable if {.access_key_id=} was not set manually.
    #
    # Returns nil if no key or environment variable has been set.
    #
    # @return [String, nil]
    def access_key_id
      @access_key_id || ENV['ESP_ACCESS_KEY_ID']
    end
    
    # Manually set the secret_access_key you created from https://esp.evident.io/settings/api_keys.
    #
    # You can optionally set the +ESP_SECRET_ACCESS_KEY+ environment variable.
    #
    # @param secret_access_key [String] Your secret access key.
    # @return [void]
    def secret_access_key=(secret_access_key)
      @secret_access_key = secret_access_key
    end
    
    # Reads the +ESP_SECRET_ACCESS_KEY+ environment variable if {.secret_access_key=} was not set manually.
    #
    # Returns nil if no key or environment variable has been set.
    #
    # @return [String, nil]
    def secret_access_key
      @secret_access_key || ENV['ESP_SECRET_ACCESS_KEY']
    end
  end
end
