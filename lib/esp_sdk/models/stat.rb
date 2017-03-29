=begin
#ESP Documentation

#No descripton provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: v2

Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require 'date'

module ESP
  # A(n) Stat object
  class Stat < BaseObject
    # Links to Associated Objects
    attr_accessor :relationships

    # Array of error messages if the request failed
    attr_accessor :errors

    # Unique Id
    attr_accessor :id

    # ISO 8601 timestamp when the resource was created
    attr_accessor :created_at

    attr_accessor :new_1h_high_pass

    attr_accessor :new_1d_high_pass

    attr_accessor :new_1w_high_pass

    attr_accessor :old_high_pass

    attr_accessor :new_1h_high_fail

    attr_accessor :new_1d_high_fail

    attr_accessor :new_1w_high_fail

    attr_accessor :old_high_fail

    attr_accessor :new_1h_high_warn

    attr_accessor :new_1d_high_warn

    attr_accessor :new_1w_high_warn

    attr_accessor :old_high_warn

    attr_accessor :new_1h_high_error

    attr_accessor :new_1d_high_error

    attr_accessor :new_1w_high_error

    attr_accessor :old_high_error

    attr_accessor :new_1h_medium_pass

    attr_accessor :new_1d_medium_pass

    attr_accessor :new_1w_medium_pass

    attr_accessor :old_medium_pass

    attr_accessor :new_1h_medium_fail

    attr_accessor :new_1d_medium_fail

    attr_accessor :new_1w_medium_fail

    attr_accessor :old_medium_fail

    attr_accessor :new_1h_medium_warn

    attr_accessor :new_1d_medium_warn

    attr_accessor :new_1w_medium_warn

    attr_accessor :old_medium_warn

    attr_accessor :new_1h_medium_error

    attr_accessor :new_1d_medium_error

    attr_accessor :new_1w_medium_error

    attr_accessor :old_medium_error

    attr_accessor :new_1h_low_pass

    attr_accessor :new_1d_low_pass

    attr_accessor :new_1w_low_pass

    attr_accessor :old_low_pass

    attr_accessor :new_1h_low_fail

    attr_accessor :new_1d_low_fail

    attr_accessor :new_1w_low_fail

    attr_accessor :old_low_fail

    attr_accessor :new_1h_low_warn

    attr_accessor :new_1d_low_warn

    attr_accessor :new_1w_low_warn

    attr_accessor :old_low_warn

    attr_accessor :new_1h_low_error

    attr_accessor :new_1d_low_error

    attr_accessor :new_1w_low_error

    attr_accessor :old_low_error

    attr_accessor :suppressed_high_pass

    attr_accessor :suppressed_high_fail

    attr_accessor :suppressed_high_warn

    attr_accessor :suppressed_high_error

    attr_accessor :suppressed_medium_pass

    attr_accessor :suppressed_medium_fail

    attr_accessor :suppressed_medium_warn

    attr_accessor :suppressed_medium_error

    attr_accessor :suppressed_low_pass

    attr_accessor :suppressed_low_fail

    attr_accessor :suppressed_low_warn

    attr_accessor :suppressed_low_error

    attr_accessor :new_1h_high_info

    attr_accessor :new_1d_high_info

    attr_accessor :new_1w_high_info

    attr_accessor :old_high_info

    attr_accessor :new_1h_medium_info

    attr_accessor :new_1d_medium_info

    attr_accessor :new_1w_medium_info

    attr_accessor :old_medium_info

    attr_accessor :new_1h_low_info

    attr_accessor :new_1d_low_info

    attr_accessor :new_1w_low_info

    attr_accessor :old_low_info

    attr_accessor :suppressed_high_info

    attr_accessor :suppressed_medium_info

    attr_accessor :suppressed_low_info

    attr_accessor :total_fail

    attr_accessor :total_warn

    attr_accessor :total_error

    attr_accessor :total_pass

    attr_accessor :total_info

    attr_accessor :total_high

    attr_accessor :total_medium

    attr_accessor :total_low

    attr_accessor :report

    # Associated StatRegion
    attr_accessor :stat_regions

    # Associated StatRegion Ids
    attr_accessor :stat_region_ids

    # Associated StatServices
    attr_accessor :stat_services

    # Associated StatService Ids
    attr_accessor :stat_service_ids

    # Associated StatSignatures
    attr_accessor :stat_signatures

    # Associated StatSignature Ids
    attr_accessor :stat_signature_ids

    # Associated StatCustom Signatures
    attr_accessor :stat_custom_signatures

    # Associated StatCustom Signature Ids
    attr_accessor :stat_custom_signature_ids


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'relationships' => :'relationships',
        :'errors' => :'errors',
        :'id' => :'id',
        :'created_at' => :'created_at',
        :'new_1h_high_pass' => :'new_1h_high_pass',
        :'new_1d_high_pass' => :'new_1d_high_pass',
        :'new_1w_high_pass' => :'new_1w_high_pass',
        :'old_high_pass' => :'old_high_pass',
        :'new_1h_high_fail' => :'new_1h_high_fail',
        :'new_1d_high_fail' => :'new_1d_high_fail',
        :'new_1w_high_fail' => :'new_1w_high_fail',
        :'old_high_fail' => :'old_high_fail',
        :'new_1h_high_warn' => :'new_1h_high_warn',
        :'new_1d_high_warn' => :'new_1d_high_warn',
        :'new_1w_high_warn' => :'new_1w_high_warn',
        :'old_high_warn' => :'old_high_warn',
        :'new_1h_high_error' => :'new_1h_high_error',
        :'new_1d_high_error' => :'new_1d_high_error',
        :'new_1w_high_error' => :'new_1w_high_error',
        :'old_high_error' => :'old_high_error',
        :'new_1h_medium_pass' => :'new_1h_medium_pass',
        :'new_1d_medium_pass' => :'new_1d_medium_pass',
        :'new_1w_medium_pass' => :'new_1w_medium_pass',
        :'old_medium_pass' => :'old_medium_pass',
        :'new_1h_medium_fail' => :'new_1h_medium_fail',
        :'new_1d_medium_fail' => :'new_1d_medium_fail',
        :'new_1w_medium_fail' => :'new_1w_medium_fail',
        :'old_medium_fail' => :'old_medium_fail',
        :'new_1h_medium_warn' => :'new_1h_medium_warn',
        :'new_1d_medium_warn' => :'new_1d_medium_warn',
        :'new_1w_medium_warn' => :'new_1w_medium_warn',
        :'old_medium_warn' => :'old_medium_warn',
        :'new_1h_medium_error' => :'new_1h_medium_error',
        :'new_1d_medium_error' => :'new_1d_medium_error',
        :'new_1w_medium_error' => :'new_1w_medium_error',
        :'old_medium_error' => :'old_medium_error',
        :'new_1h_low_pass' => :'new_1h_low_pass',
        :'new_1d_low_pass' => :'new_1d_low_pass',
        :'new_1w_low_pass' => :'new_1w_low_pass',
        :'old_low_pass' => :'old_low_pass',
        :'new_1h_low_fail' => :'new_1h_low_fail',
        :'new_1d_low_fail' => :'new_1d_low_fail',
        :'new_1w_low_fail' => :'new_1w_low_fail',
        :'old_low_fail' => :'old_low_fail',
        :'new_1h_low_warn' => :'new_1h_low_warn',
        :'new_1d_low_warn' => :'new_1d_low_warn',
        :'new_1w_low_warn' => :'new_1w_low_warn',
        :'old_low_warn' => :'old_low_warn',
        :'new_1h_low_error' => :'new_1h_low_error',
        :'new_1d_low_error' => :'new_1d_low_error',
        :'new_1w_low_error' => :'new_1w_low_error',
        :'old_low_error' => :'old_low_error',
        :'suppressed_high_pass' => :'suppressed_high_pass',
        :'suppressed_high_fail' => :'suppressed_high_fail',
        :'suppressed_high_warn' => :'suppressed_high_warn',
        :'suppressed_high_error' => :'suppressed_high_error',
        :'suppressed_medium_pass' => :'suppressed_medium_pass',
        :'suppressed_medium_fail' => :'suppressed_medium_fail',
        :'suppressed_medium_warn' => :'suppressed_medium_warn',
        :'suppressed_medium_error' => :'suppressed_medium_error',
        :'suppressed_low_pass' => :'suppressed_low_pass',
        :'suppressed_low_fail' => :'suppressed_low_fail',
        :'suppressed_low_warn' => :'suppressed_low_warn',
        :'suppressed_low_error' => :'suppressed_low_error',
        :'new_1h_high_info' => :'new_1h_high_info',
        :'new_1d_high_info' => :'new_1d_high_info',
        :'new_1w_high_info' => :'new_1w_high_info',
        :'old_high_info' => :'old_high_info',
        :'new_1h_medium_info' => :'new_1h_medium_info',
        :'new_1d_medium_info' => :'new_1d_medium_info',
        :'new_1w_medium_info' => :'new_1w_medium_info',
        :'old_medium_info' => :'old_medium_info',
        :'new_1h_low_info' => :'new_1h_low_info',
        :'new_1d_low_info' => :'new_1d_low_info',
        :'new_1w_low_info' => :'new_1w_low_info',
        :'old_low_info' => :'old_low_info',
        :'suppressed_high_info' => :'suppressed_high_info',
        :'suppressed_medium_info' => :'suppressed_medium_info',
        :'suppressed_low_info' => :'suppressed_low_info',
        :'total_fail' => :'total_fail',
        :'total_warn' => :'total_warn',
        :'total_error' => :'total_error',
        :'total_pass' => :'total_pass',
        :'total_info' => :'total_info',
        :'total_high' => :'total_high',
        :'total_medium' => :'total_medium',
        :'total_low' => :'total_low',
        :'report' => :'report',
        :'stat_regions' => :'stat_regions',
        :'stat_region_ids' => :'stat_region_ids',
        :'stat_services' => :'stat_services',
        :'stat_service_ids' => :'stat_service_ids',
        :'stat_signatures' => :'stat_signatures',
        :'stat_signature_ids' => :'stat_signature_ids',
        :'stat_custom_signatures' => :'stat_custom_signatures',
        :'stat_custom_signature_ids' => :'stat_custom_signature_ids'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'relationships' => :'Object',
        :'errors' => :'Array<String>',
        :'id' => :'Integer',
        :'created_at' => :'DateTime',
        :'new_1h_high_pass' => :'Integer',
        :'new_1d_high_pass' => :'Integer',
        :'new_1w_high_pass' => :'Integer',
        :'old_high_pass' => :'Integer',
        :'new_1h_high_fail' => :'Integer',
        :'new_1d_high_fail' => :'Integer',
        :'new_1w_high_fail' => :'Integer',
        :'old_high_fail' => :'Integer',
        :'new_1h_high_warn' => :'Integer',
        :'new_1d_high_warn' => :'Integer',
        :'new_1w_high_warn' => :'Integer',
        :'old_high_warn' => :'Integer',
        :'new_1h_high_error' => :'Integer',
        :'new_1d_high_error' => :'Integer',
        :'new_1w_high_error' => :'Integer',
        :'old_high_error' => :'Integer',
        :'new_1h_medium_pass' => :'Integer',
        :'new_1d_medium_pass' => :'Integer',
        :'new_1w_medium_pass' => :'Integer',
        :'old_medium_pass' => :'Integer',
        :'new_1h_medium_fail' => :'Integer',
        :'new_1d_medium_fail' => :'Integer',
        :'new_1w_medium_fail' => :'Integer',
        :'old_medium_fail' => :'Integer',
        :'new_1h_medium_warn' => :'Integer',
        :'new_1d_medium_warn' => :'Integer',
        :'new_1w_medium_warn' => :'Integer',
        :'old_medium_warn' => :'Integer',
        :'new_1h_medium_error' => :'Integer',
        :'new_1d_medium_error' => :'Integer',
        :'new_1w_medium_error' => :'Integer',
        :'old_medium_error' => :'Integer',
        :'new_1h_low_pass' => :'Integer',
        :'new_1d_low_pass' => :'Integer',
        :'new_1w_low_pass' => :'Integer',
        :'old_low_pass' => :'Integer',
        :'new_1h_low_fail' => :'Integer',
        :'new_1d_low_fail' => :'Integer',
        :'new_1w_low_fail' => :'Integer',
        :'old_low_fail' => :'Integer',
        :'new_1h_low_warn' => :'Integer',
        :'new_1d_low_warn' => :'Integer',
        :'new_1w_low_warn' => :'Integer',
        :'old_low_warn' => :'Integer',
        :'new_1h_low_error' => :'Integer',
        :'new_1d_low_error' => :'Integer',
        :'new_1w_low_error' => :'Integer',
        :'old_low_error' => :'Integer',
        :'suppressed_high_pass' => :'Integer',
        :'suppressed_high_fail' => :'Integer',
        :'suppressed_high_warn' => :'Integer',
        :'suppressed_high_error' => :'Integer',
        :'suppressed_medium_pass' => :'Integer',
        :'suppressed_medium_fail' => :'Integer',
        :'suppressed_medium_warn' => :'Integer',
        :'suppressed_medium_error' => :'Integer',
        :'suppressed_low_pass' => :'Integer',
        :'suppressed_low_fail' => :'Integer',
        :'suppressed_low_warn' => :'Integer',
        :'suppressed_low_error' => :'Integer',
        :'new_1h_high_info' => :'Integer',
        :'new_1d_high_info' => :'Integer',
        :'new_1w_high_info' => :'Integer',
        :'old_high_info' => :'Integer',
        :'new_1h_medium_info' => :'Integer',
        :'new_1d_medium_info' => :'Integer',
        :'new_1w_medium_info' => :'Integer',
        :'old_medium_info' => :'Integer',
        :'new_1h_low_info' => :'Integer',
        :'new_1d_low_info' => :'Integer',
        :'new_1w_low_info' => :'Integer',
        :'old_low_info' => :'Integer',
        :'suppressed_high_info' => :'Integer',
        :'suppressed_medium_info' => :'Integer',
        :'suppressed_low_info' => :'Integer',
        :'total_fail' => :'Integer',
        :'total_warn' => :'Integer',
        :'total_error' => :'Integer',
        :'total_pass' => :'Integer',
        :'total_info' => :'Integer',
        :'total_high' => :'Integer',
        :'total_medium' => :'Integer',
        :'total_low' => :'Integer',
        :'report' => :'Report',
        :'stat_regions' => :'Array<StatRegion>',
        :'stat_region_ids' => :'Array<Integer>',
        :'stat_services' => :'Array<StatService>',
        :'stat_service_ids' => :'Array<Integer>',
        :'stat_signatures' => :'Array<StatSignature>',
        :'stat_signature_ids' => :'Array<Integer>',
        :'stat_custom_signatures' => :'Array<StatCustomSignature>',
        :'stat_custom_signature_ids' => :'Array<Integer>'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'relationships')
        self.relationships = attributes[:'relationships']
      end

      if attributes.has_key?(:'errors')
        if (value = attributes[:'errors']).is_a?(Array)
          self.errors = value
        end
      end

      if attributes.has_key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.has_key?(:'created_at')
        self.created_at = attributes[:'created_at']
      end

      if attributes.has_key?(:'new_1h_high_pass')
        self.new_1h_high_pass = attributes[:'new_1h_high_pass']
      end

      if attributes.has_key?(:'new_1d_high_pass')
        self.new_1d_high_pass = attributes[:'new_1d_high_pass']
      end

      if attributes.has_key?(:'new_1w_high_pass')
        self.new_1w_high_pass = attributes[:'new_1w_high_pass']
      end

      if attributes.has_key?(:'old_high_pass')
        self.old_high_pass = attributes[:'old_high_pass']
      end

      if attributes.has_key?(:'new_1h_high_fail')
        self.new_1h_high_fail = attributes[:'new_1h_high_fail']
      end

      if attributes.has_key?(:'new_1d_high_fail')
        self.new_1d_high_fail = attributes[:'new_1d_high_fail']
      end

      if attributes.has_key?(:'new_1w_high_fail')
        self.new_1w_high_fail = attributes[:'new_1w_high_fail']
      end

      if attributes.has_key?(:'old_high_fail')
        self.old_high_fail = attributes[:'old_high_fail']
      end

      if attributes.has_key?(:'new_1h_high_warn')
        self.new_1h_high_warn = attributes[:'new_1h_high_warn']
      end

      if attributes.has_key?(:'new_1d_high_warn')
        self.new_1d_high_warn = attributes[:'new_1d_high_warn']
      end

      if attributes.has_key?(:'new_1w_high_warn')
        self.new_1w_high_warn = attributes[:'new_1w_high_warn']
      end

      if attributes.has_key?(:'old_high_warn')
        self.old_high_warn = attributes[:'old_high_warn']
      end

      if attributes.has_key?(:'new_1h_high_error')
        self.new_1h_high_error = attributes[:'new_1h_high_error']
      end

      if attributes.has_key?(:'new_1d_high_error')
        self.new_1d_high_error = attributes[:'new_1d_high_error']
      end

      if attributes.has_key?(:'new_1w_high_error')
        self.new_1w_high_error = attributes[:'new_1w_high_error']
      end

      if attributes.has_key?(:'old_high_error')
        self.old_high_error = attributes[:'old_high_error']
      end

      if attributes.has_key?(:'new_1h_medium_pass')
        self.new_1h_medium_pass = attributes[:'new_1h_medium_pass']
      end

      if attributes.has_key?(:'new_1d_medium_pass')
        self.new_1d_medium_pass = attributes[:'new_1d_medium_pass']
      end

      if attributes.has_key?(:'new_1w_medium_pass')
        self.new_1w_medium_pass = attributes[:'new_1w_medium_pass']
      end

      if attributes.has_key?(:'old_medium_pass')
        self.old_medium_pass = attributes[:'old_medium_pass']
      end

      if attributes.has_key?(:'new_1h_medium_fail')
        self.new_1h_medium_fail = attributes[:'new_1h_medium_fail']
      end

      if attributes.has_key?(:'new_1d_medium_fail')
        self.new_1d_medium_fail = attributes[:'new_1d_medium_fail']
      end

      if attributes.has_key?(:'new_1w_medium_fail')
        self.new_1w_medium_fail = attributes[:'new_1w_medium_fail']
      end

      if attributes.has_key?(:'old_medium_fail')
        self.old_medium_fail = attributes[:'old_medium_fail']
      end

      if attributes.has_key?(:'new_1h_medium_warn')
        self.new_1h_medium_warn = attributes[:'new_1h_medium_warn']
      end

      if attributes.has_key?(:'new_1d_medium_warn')
        self.new_1d_medium_warn = attributes[:'new_1d_medium_warn']
      end

      if attributes.has_key?(:'new_1w_medium_warn')
        self.new_1w_medium_warn = attributes[:'new_1w_medium_warn']
      end

      if attributes.has_key?(:'old_medium_warn')
        self.old_medium_warn = attributes[:'old_medium_warn']
      end

      if attributes.has_key?(:'new_1h_medium_error')
        self.new_1h_medium_error = attributes[:'new_1h_medium_error']
      end

      if attributes.has_key?(:'new_1d_medium_error')
        self.new_1d_medium_error = attributes[:'new_1d_medium_error']
      end

      if attributes.has_key?(:'new_1w_medium_error')
        self.new_1w_medium_error = attributes[:'new_1w_medium_error']
      end

      if attributes.has_key?(:'old_medium_error')
        self.old_medium_error = attributes[:'old_medium_error']
      end

      if attributes.has_key?(:'new_1h_low_pass')
        self.new_1h_low_pass = attributes[:'new_1h_low_pass']
      end

      if attributes.has_key?(:'new_1d_low_pass')
        self.new_1d_low_pass = attributes[:'new_1d_low_pass']
      end

      if attributes.has_key?(:'new_1w_low_pass')
        self.new_1w_low_pass = attributes[:'new_1w_low_pass']
      end

      if attributes.has_key?(:'old_low_pass')
        self.old_low_pass = attributes[:'old_low_pass']
      end

      if attributes.has_key?(:'new_1h_low_fail')
        self.new_1h_low_fail = attributes[:'new_1h_low_fail']
      end

      if attributes.has_key?(:'new_1d_low_fail')
        self.new_1d_low_fail = attributes[:'new_1d_low_fail']
      end

      if attributes.has_key?(:'new_1w_low_fail')
        self.new_1w_low_fail = attributes[:'new_1w_low_fail']
      end

      if attributes.has_key?(:'old_low_fail')
        self.old_low_fail = attributes[:'old_low_fail']
      end

      if attributes.has_key?(:'new_1h_low_warn')
        self.new_1h_low_warn = attributes[:'new_1h_low_warn']
      end

      if attributes.has_key?(:'new_1d_low_warn')
        self.new_1d_low_warn = attributes[:'new_1d_low_warn']
      end

      if attributes.has_key?(:'new_1w_low_warn')
        self.new_1w_low_warn = attributes[:'new_1w_low_warn']
      end

      if attributes.has_key?(:'old_low_warn')
        self.old_low_warn = attributes[:'old_low_warn']
      end

      if attributes.has_key?(:'new_1h_low_error')
        self.new_1h_low_error = attributes[:'new_1h_low_error']
      end

      if attributes.has_key?(:'new_1d_low_error')
        self.new_1d_low_error = attributes[:'new_1d_low_error']
      end

      if attributes.has_key?(:'new_1w_low_error')
        self.new_1w_low_error = attributes[:'new_1w_low_error']
      end

      if attributes.has_key?(:'old_low_error')
        self.old_low_error = attributes[:'old_low_error']
      end

      if attributes.has_key?(:'suppressed_high_pass')
        self.suppressed_high_pass = attributes[:'suppressed_high_pass']
      end

      if attributes.has_key?(:'suppressed_high_fail')
        self.suppressed_high_fail = attributes[:'suppressed_high_fail']
      end

      if attributes.has_key?(:'suppressed_high_warn')
        self.suppressed_high_warn = attributes[:'suppressed_high_warn']
      end

      if attributes.has_key?(:'suppressed_high_error')
        self.suppressed_high_error = attributes[:'suppressed_high_error']
      end

      if attributes.has_key?(:'suppressed_medium_pass')
        self.suppressed_medium_pass = attributes[:'suppressed_medium_pass']
      end

      if attributes.has_key?(:'suppressed_medium_fail')
        self.suppressed_medium_fail = attributes[:'suppressed_medium_fail']
      end

      if attributes.has_key?(:'suppressed_medium_warn')
        self.suppressed_medium_warn = attributes[:'suppressed_medium_warn']
      end

      if attributes.has_key?(:'suppressed_medium_error')
        self.suppressed_medium_error = attributes[:'suppressed_medium_error']
      end

      if attributes.has_key?(:'suppressed_low_pass')
        self.suppressed_low_pass = attributes[:'suppressed_low_pass']
      end

      if attributes.has_key?(:'suppressed_low_fail')
        self.suppressed_low_fail = attributes[:'suppressed_low_fail']
      end

      if attributes.has_key?(:'suppressed_low_warn')
        self.suppressed_low_warn = attributes[:'suppressed_low_warn']
      end

      if attributes.has_key?(:'suppressed_low_error')
        self.suppressed_low_error = attributes[:'suppressed_low_error']
      end

      if attributes.has_key?(:'new_1h_high_info')
        self.new_1h_high_info = attributes[:'new_1h_high_info']
      end

      if attributes.has_key?(:'new_1d_high_info')
        self.new_1d_high_info = attributes[:'new_1d_high_info']
      end

      if attributes.has_key?(:'new_1w_high_info')
        self.new_1w_high_info = attributes[:'new_1w_high_info']
      end

      if attributes.has_key?(:'old_high_info')
        self.old_high_info = attributes[:'old_high_info']
      end

      if attributes.has_key?(:'new_1h_medium_info')
        self.new_1h_medium_info = attributes[:'new_1h_medium_info']
      end

      if attributes.has_key?(:'new_1d_medium_info')
        self.new_1d_medium_info = attributes[:'new_1d_medium_info']
      end

      if attributes.has_key?(:'new_1w_medium_info')
        self.new_1w_medium_info = attributes[:'new_1w_medium_info']
      end

      if attributes.has_key?(:'old_medium_info')
        self.old_medium_info = attributes[:'old_medium_info']
      end

      if attributes.has_key?(:'new_1h_low_info')
        self.new_1h_low_info = attributes[:'new_1h_low_info']
      end

      if attributes.has_key?(:'new_1d_low_info')
        self.new_1d_low_info = attributes[:'new_1d_low_info']
      end

      if attributes.has_key?(:'new_1w_low_info')
        self.new_1w_low_info = attributes[:'new_1w_low_info']
      end

      if attributes.has_key?(:'old_low_info')
        self.old_low_info = attributes[:'old_low_info']
      end

      if attributes.has_key?(:'suppressed_high_info')
        self.suppressed_high_info = attributes[:'suppressed_high_info']
      end

      if attributes.has_key?(:'suppressed_medium_info')
        self.suppressed_medium_info = attributes[:'suppressed_medium_info']
      end

      if attributes.has_key?(:'suppressed_low_info')
        self.suppressed_low_info = attributes[:'suppressed_low_info']
      end

      if attributes.has_key?(:'total_fail')
        self.total_fail = attributes[:'total_fail']
      end

      if attributes.has_key?(:'total_warn')
        self.total_warn = attributes[:'total_warn']
      end

      if attributes.has_key?(:'total_error')
        self.total_error = attributes[:'total_error']
      end

      if attributes.has_key?(:'total_pass')
        self.total_pass = attributes[:'total_pass']
      end

      if attributes.has_key?(:'total_info')
        self.total_info = attributes[:'total_info']
      end

      if attributes.has_key?(:'total_high')
        self.total_high = attributes[:'total_high']
      end

      if attributes.has_key?(:'total_medium')
        self.total_medium = attributes[:'total_medium']
      end

      if attributes.has_key?(:'total_low')
        self.total_low = attributes[:'total_low']
      end

      if attributes.has_key?(:'report')
        self.report = attributes[:'report']
      end

      if attributes.has_key?(:'stat_regions')
        if (value = attributes[:'stat_regions']).is_a?(Array)
          self.stat_regions = value
        end
      end

      if attributes.has_key?(:'stat_region_ids')
        if (value = attributes[:'stat_region_ids']).is_a?(Array)
          self.stat_region_ids = value
        end
      end

      if attributes.has_key?(:'stat_services')
        if (value = attributes[:'stat_services']).is_a?(Array)
          self.stat_services = value
        end
      end

      if attributes.has_key?(:'stat_service_ids')
        if (value = attributes[:'stat_service_ids']).is_a?(Array)
          self.stat_service_ids = value
        end
      end

      if attributes.has_key?(:'stat_signatures')
        if (value = attributes[:'stat_signatures']).is_a?(Array)
          self.stat_signatures = value
        end
      end

      if attributes.has_key?(:'stat_signature_ids')
        if (value = attributes[:'stat_signature_ids']).is_a?(Array)
          self.stat_signature_ids = value
        end
      end

      if attributes.has_key?(:'stat_custom_signatures')
        if (value = attributes[:'stat_custom_signatures']).is_a?(Array)
          self.stat_custom_signatures = value
        end
      end

      if attributes.has_key?(:'stat_custom_signature_ids')
        if (value = attributes[:'stat_custom_signature_ids']).is_a?(Array)
          self.stat_custom_signature_ids = value
        end
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @id.nil?
        invalid_properties.push("invalid value for 'id', id cannot be nil.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @id.nil?
      return true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          relationships == o.relationships &&
          errors == o.errors &&
          id == o.id &&
          created_at == o.created_at &&
          new_1h_high_pass == o.new_1h_high_pass &&
          new_1d_high_pass == o.new_1d_high_pass &&
          new_1w_high_pass == o.new_1w_high_pass &&
          old_high_pass == o.old_high_pass &&
          new_1h_high_fail == o.new_1h_high_fail &&
          new_1d_high_fail == o.new_1d_high_fail &&
          new_1w_high_fail == o.new_1w_high_fail &&
          old_high_fail == o.old_high_fail &&
          new_1h_high_warn == o.new_1h_high_warn &&
          new_1d_high_warn == o.new_1d_high_warn &&
          new_1w_high_warn == o.new_1w_high_warn &&
          old_high_warn == o.old_high_warn &&
          new_1h_high_error == o.new_1h_high_error &&
          new_1d_high_error == o.new_1d_high_error &&
          new_1w_high_error == o.new_1w_high_error &&
          old_high_error == o.old_high_error &&
          new_1h_medium_pass == o.new_1h_medium_pass &&
          new_1d_medium_pass == o.new_1d_medium_pass &&
          new_1w_medium_pass == o.new_1w_medium_pass &&
          old_medium_pass == o.old_medium_pass &&
          new_1h_medium_fail == o.new_1h_medium_fail &&
          new_1d_medium_fail == o.new_1d_medium_fail &&
          new_1w_medium_fail == o.new_1w_medium_fail &&
          old_medium_fail == o.old_medium_fail &&
          new_1h_medium_warn == o.new_1h_medium_warn &&
          new_1d_medium_warn == o.new_1d_medium_warn &&
          new_1w_medium_warn == o.new_1w_medium_warn &&
          old_medium_warn == o.old_medium_warn &&
          new_1h_medium_error == o.new_1h_medium_error &&
          new_1d_medium_error == o.new_1d_medium_error &&
          new_1w_medium_error == o.new_1w_medium_error &&
          old_medium_error == o.old_medium_error &&
          new_1h_low_pass == o.new_1h_low_pass &&
          new_1d_low_pass == o.new_1d_low_pass &&
          new_1w_low_pass == o.new_1w_low_pass &&
          old_low_pass == o.old_low_pass &&
          new_1h_low_fail == o.new_1h_low_fail &&
          new_1d_low_fail == o.new_1d_low_fail &&
          new_1w_low_fail == o.new_1w_low_fail &&
          old_low_fail == o.old_low_fail &&
          new_1h_low_warn == o.new_1h_low_warn &&
          new_1d_low_warn == o.new_1d_low_warn &&
          new_1w_low_warn == o.new_1w_low_warn &&
          old_low_warn == o.old_low_warn &&
          new_1h_low_error == o.new_1h_low_error &&
          new_1d_low_error == o.new_1d_low_error &&
          new_1w_low_error == o.new_1w_low_error &&
          old_low_error == o.old_low_error &&
          suppressed_high_pass == o.suppressed_high_pass &&
          suppressed_high_fail == o.suppressed_high_fail &&
          suppressed_high_warn == o.suppressed_high_warn &&
          suppressed_high_error == o.suppressed_high_error &&
          suppressed_medium_pass == o.suppressed_medium_pass &&
          suppressed_medium_fail == o.suppressed_medium_fail &&
          suppressed_medium_warn == o.suppressed_medium_warn &&
          suppressed_medium_error == o.suppressed_medium_error &&
          suppressed_low_pass == o.suppressed_low_pass &&
          suppressed_low_fail == o.suppressed_low_fail &&
          suppressed_low_warn == o.suppressed_low_warn &&
          suppressed_low_error == o.suppressed_low_error &&
          new_1h_high_info == o.new_1h_high_info &&
          new_1d_high_info == o.new_1d_high_info &&
          new_1w_high_info == o.new_1w_high_info &&
          old_high_info == o.old_high_info &&
          new_1h_medium_info == o.new_1h_medium_info &&
          new_1d_medium_info == o.new_1d_medium_info &&
          new_1w_medium_info == o.new_1w_medium_info &&
          old_medium_info == o.old_medium_info &&
          new_1h_low_info == o.new_1h_low_info &&
          new_1d_low_info == o.new_1d_low_info &&
          new_1w_low_info == o.new_1w_low_info &&
          old_low_info == o.old_low_info &&
          suppressed_high_info == o.suppressed_high_info &&
          suppressed_medium_info == o.suppressed_medium_info &&
          suppressed_low_info == o.suppressed_low_info &&
          total_fail == o.total_fail &&
          total_warn == o.total_warn &&
          total_error == o.total_error &&
          total_pass == o.total_pass &&
          total_info == o.total_info &&
          total_high == o.total_high &&
          total_medium == o.total_medium &&
          total_low == o.total_low &&
          report == o.report &&
          stat_regions == o.stat_regions &&
          stat_region_ids == o.stat_region_ids &&
          stat_services == o.stat_services &&
          stat_service_ids == o.stat_service_ids &&
          stat_signatures == o.stat_signatures &&
          stat_signature_ids == o.stat_signature_ids &&
          stat_custom_signatures == o.stat_custom_signatures &&
          stat_custom_signature_ids == o.stat_custom_signature_ids
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [relationships, errors, id, created_at, new_1h_high_pass, new_1d_high_pass, new_1w_high_pass, old_high_pass, new_1h_high_fail, new_1d_high_fail, new_1w_high_fail, old_high_fail, new_1h_high_warn, new_1d_high_warn, new_1w_high_warn, old_high_warn, new_1h_high_error, new_1d_high_error, new_1w_high_error, old_high_error, new_1h_medium_pass, new_1d_medium_pass, new_1w_medium_pass, old_medium_pass, new_1h_medium_fail, new_1d_medium_fail, new_1w_medium_fail, old_medium_fail, new_1h_medium_warn, new_1d_medium_warn, new_1w_medium_warn, old_medium_warn, new_1h_medium_error, new_1d_medium_error, new_1w_medium_error, old_medium_error, new_1h_low_pass, new_1d_low_pass, new_1w_low_pass, old_low_pass, new_1h_low_fail, new_1d_low_fail, new_1w_low_fail, old_low_fail, new_1h_low_warn, new_1d_low_warn, new_1w_low_warn, old_low_warn, new_1h_low_error, new_1d_low_error, new_1w_low_error, old_low_error, suppressed_high_pass, suppressed_high_fail, suppressed_high_warn, suppressed_high_error, suppressed_medium_pass, suppressed_medium_fail, suppressed_medium_warn, suppressed_medium_error, suppressed_low_pass, suppressed_low_fail, suppressed_low_warn, suppressed_low_error, new_1h_high_info, new_1d_high_info, new_1w_high_info, old_high_info, new_1h_medium_info, new_1d_medium_info, new_1w_medium_info, old_medium_info, new_1h_low_info, new_1d_low_info, new_1w_low_info, old_low_info, suppressed_high_info, suppressed_medium_info, suppressed_low_info, total_fail, total_warn, total_error, total_pass, total_info, total_high, total_medium, total_low, report, stat_regions, stat_region_ids, stat_services, stat_service_ids, stat_signatures, stat_signature_ids, stat_custom_signatures, stat_custom_signature_ids].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.swagger_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map{ |v| _deserialize($1, v) } )
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end # or else data not found in attributes(hash), not an issue as the data can be optional
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        DateTime.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :BOOLEAN
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        temp_model = ESP.const_get(type).new
        temp_model.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        next if value.nil?
        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map{ |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end

end