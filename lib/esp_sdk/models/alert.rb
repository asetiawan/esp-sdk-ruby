=begin
#ESP Documentation

#No descripton provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: v2

Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require 'date'

module ESP
  # A(n) Alert object
  class Alert < BaseObject
    # Links to Associated Objects
    attr_accessor :relationships

    # Array of error messages if the request failed
    attr_accessor :errors

    # Unique Id
    attr_accessor :id

    # ISO 8601 timestamp when the resource was created
    attr_accessor :created_at

    # ISO 8601 timestamp when the alert stopped being active
    attr_accessor :ended_at

    # Resource identifier in Amazon
    attr_accessor :resource

    # ISO 8601 timestamp when the alert started being active
    attr_accessor :stated_at

    # Status of the alert
    attr_accessor :status

    # Risk Level of the alert
    attr_accessor :risk_level

    # ISO 8601 timestamp when the resource was last updated
    attr_accessor :updated_at

    # Either a signature or custom signature but not both will be present
    attr_accessor :custom_signature

    # Either a signature or custom signature but not both will be present
    attr_accessor :custom_signature_id

    # Associated External Account
    attr_accessor :external_account

    # Associated External Account Id
    attr_accessor :external_account_id

    # Associated Region
    attr_accessor :region

    # Associated Region Id
    attr_accessor :region_id

    # Either a signature or custom signature but not both will be present
    attr_accessor :signature

    # Either a signature or custom signature but not both will be present
    attr_accessor :signature_id

    # If present the alert was suppressed
    attr_accessor :supression

    # If present the alert was suppressed
    attr_accessor :supression_id

    # Associated Metadata
    attr_accessor :metadata

    # Associated Metadata Id
    attr_accessor :metadata_id

    # Associated Cloud Trail Events
    attr_accessor :cloud_trail_events

    # Associated Cloud Trail Event Ids
    attr_accessor :cloud_trail_event_ids

    # Associated Tags
    attr_accessor :tags

    # Associated Tag Ids
    attr_accessor :tag_ids


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'relationships' => :'relationships',
        :'errors' => :'errors',
        :'id' => :'id',
        :'created_at' => :'created_at',
        :'ended_at' => :'ended_at',
        :'resource' => :'resource',
        :'stated_at' => :'stated_at',
        :'status' => :'status',
        :'risk_level' => :'risk_level',
        :'updated_at' => :'updated_at',
        :'custom_signature' => :'custom_signature',
        :'custom_signature_id' => :'custom_signature_id',
        :'external_account' => :'external_account',
        :'external_account_id' => :'external_account_id',
        :'region' => :'region',
        :'region_id' => :'region_id',
        :'signature' => :'signature',
        :'signature_id' => :'signature_id',
        :'supression' => :'supression',
        :'supression_id' => :'supression_id',
        :'metadata' => :'metadata',
        :'metadata_id' => :'metadata_id',
        :'cloud_trail_events' => :'cloud_trail_events',
        :'cloud_trail_event_ids' => :'cloud_trail_event_ids',
        :'tags' => :'tags',
        :'tag_ids' => :'tag_ids'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'relationships' => :'Object',
        :'errors' => :'Array<String>',
        :'id' => :'Integer',
        :'created_at' => :'DateTime',
        :'ended_at' => :'DateTime',
        :'resource' => :'String',
        :'stated_at' => :'DateTime',
        :'status' => :'String',
        :'risk_level' => :'String',
        :'updated_at' => :'DateTime',
        # :'custom_signature' => :'CustomSignature',
        :'custom_signature_id' => :'Integer',
        :'external_account' => :'ExternalAccount',
        :'external_account_id' => :'Integer',
        :'region' => :'Region',
        :'region_id' => :'Integer',
        :'signature' => :'Signature',
        :'signature_id' => :'Integer',
        # :'supression' => :'Suppression',
        :'supression_id' => :'Integer',
        # :'metadata' => :'Metadata',
        :'metadata_id' => :'Integer',
        :'cloud_trail_events' => :'Array<CloudTrailEvent>',
        :'cloud_trail_event_ids' => :'Array<Integer>',
        # :'tags' => :'Array<Tag>',
        :'tag_ids' => :'Array<Integer>'
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

      if attributes.has_key?(:'ended_at')
        self.ended_at = attributes[:'ended_at']
      end

      if attributes.has_key?(:'resource')
        self.resource = attributes[:'resource']
      end

      if attributes.has_key?(:'stated_at')
        self.stated_at = attributes[:'stated_at']
      end

      if attributes.has_key?(:'status')
        self.status = attributes[:'status']
      end

      if attributes.has_key?(:'risk_level')
        self.risk_level = attributes[:'risk_level']
      end

      if attributes.has_key?(:'updated_at')
        self.updated_at = attributes[:'updated_at']
      end

      if attributes.has_key?(:'custom_signature')
        self.custom_signature = attributes[:'custom_signature']
      end

      if attributes.has_key?(:'custom_signature_id')
        self.custom_signature_id = attributes[:'custom_signature_id']
      end

      if attributes.has_key?(:'external_account')
        self.external_account = attributes[:'external_account']
      end

      if attributes.has_key?(:'external_account_id')
        self.external_account_id = attributes[:'external_account_id']
      end

      if attributes.has_key?(:'region')
        self.region = attributes[:'region']
      end

      if attributes.has_key?(:'region_id')
        self.region_id = attributes[:'region_id']
      end

      if attributes.has_key?(:'signature')
        self.signature = attributes[:'signature']
      end

      if attributes.has_key?(:'signature_id')
        self.signature_id = attributes[:'signature_id']
      end

      if attributes.has_key?(:'supression')
        self.supression = attributes[:'supression']
      end

      if attributes.has_key?(:'supression_id')
        self.supression_id = attributes[:'supression_id']
      end

      if attributes.has_key?(:'metadata')
        self.metadata = attributes[:'metadata']
      end

      if attributes.has_key?(:'metadata_id')
        self.metadata_id = attributes[:'metadata_id']
      end

      if attributes.has_key?(:'cloud_trail_events')
        if (value = attributes[:'cloud_trail_events']).is_a?(Array)
          self.cloud_trail_events = value
        end
      end

      if attributes.has_key?(:'cloud_trail_event_ids')
        if (value = attributes[:'cloud_trail_event_ids']).is_a?(Array)
          self.cloud_trail_event_ids = value
        end
      end

      if attributes.has_key?(:'tags')
        if (value = attributes[:'tags']).is_a?(Array)
          self.tags = value
        end
      end

      if attributes.has_key?(:'tag_ids')
        if (value = attributes[:'tag_ids']).is_a?(Array)
          self.tag_ids = value
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
          ended_at == o.ended_at &&
          resource == o.resource &&
          stated_at == o.stated_at &&
          status == o.status &&
          risk_level == o.risk_level &&
          updated_at == o.updated_at &&
          custom_signature == o.custom_signature &&
          custom_signature_id == o.custom_signature_id &&
          external_account == o.external_account &&
          external_account_id == o.external_account_id &&
          region == o.region &&
          region_id == o.region_id &&
          signature == o.signature &&
          signature_id == o.signature_id &&
          supression == o.supression &&
          supression_id == o.supression_id &&
          metadata == o.metadata &&
          metadata_id == o.metadata_id &&
          cloud_trail_events == o.cloud_trail_events &&
          cloud_trail_event_ids == o.cloud_trail_event_ids &&
          tags == o.tags &&
          tag_ids == o.tag_ids
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [relationships, errors, id, created_at, ended_at, resource, stated_at, status, risk_level, updated_at, custom_signature, custom_signature_id, external_account, external_account_id, region, region_id, signature, signature_id, supression, supression_id, metadata, metadata_id, cloud_trail_events, cloud_trail_event_ids, tags, tag_ids].hash
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