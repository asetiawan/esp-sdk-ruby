=begin
#ESP Documentation

#The Evident Security Platform API (version 2.0) is designed to allow users granular control over their Amazon Web Service security experience by allowing them to review alerts, monitor signatures, and create custom signatures.

OpenAPI spec version: v2_sdk

Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require 'date'

module ESP
  # A(n) Alert object
  class Alert < BaseObject
    # Unique ID
    attr_accessor :id

    # ISO 8601 timestamp when the resource was created
    attr_accessor :created_at

    # The description of the user
    attr_accessor :description

    # The identifier of the signature
    attr_accessor :identifier

    # The name of the signature
    attr_accessor :name

    # Details for how to resolve this signature
    attr_accessor :resolution

    # ISO 8601 timestamp when the resource was last updated
    attr_accessor :updated_at

    # The risk-level of the problem identified by the signature. Valid values are Low, Medium, High
    attr_accessor :risk_level

    # Associated External Account
    attr_accessor :external_account

    # Associated External Account Id
    attr_accessor :external_account_id

    # Associated Region
    attr_accessor :region

    # Associated Region Id
    attr_accessor :region_id

    # Associated Signature
    attr_accessor :signature

    # Associated Signature Id
    attr_accessor :signature_id

    # Associated Custom Signature
    attr_accessor :custom_signature

    # Associated Custom Signature Id
    attr_accessor :custom_signature_id

    # Associated Suppression
    attr_accessor :suppression

    # Associated Suppression Id
    attr_accessor :suppression_id

    # Associated Metadata
    attr_accessor :metadata

    # Associated Metadata Id
    attr_accessor :metadata_id

    # Associated Cloud Trail Events
    attr_accessor :cloud_trail_events

    # Associated Cloud Trail Events Ids
    attr_accessor :cloud_trail_event_ids

    # Associated Tags
    attr_accessor :tags

    # Associated Tags Ids
    attr_accessor :tag_ids

    # Associated Compliance Controls
    attr_accessor :compliance_controls

    # Associated Compliance Controls Ids
    attr_accessor :compliance_control_ids

    # Array of error messages if the request failed
    attr_accessor :errors


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'id',
        :'created_at' => :'created_at',
        :'description' => :'description',
        :'identifier' => :'identifier',
        :'name' => :'name',
        :'resolution' => :'resolution',
        :'updated_at' => :'updated_at',
        :'risk_level' => :'risk_level',
        :'external_account' => :'external_account',
        :'external_account_id' => :'external_account_id',
        :'region' => :'region',
        :'region_id' => :'region_id',
        :'signature' => :'signature',
        :'signature_id' => :'signature_id',
        :'custom_signature' => :'custom_signature',
        :'custom_signature_id' => :'custom_signature_id',
        :'suppression' => :'suppression',
        :'suppression_id' => :'suppression_id',
        :'metadata' => :'metadata',
        :'metadata_id' => :'metadata_id',
        :'cloud_trail_events' => :'cloud_trail_events',
        :'cloud_trail_event_ids' => :'cloud_trail_event_ids',
        :'tags' => :'tags',
        :'tag_ids' => :'tag_ids',
        :'compliance_controls' => :'compliance_controls',
        :'compliance_control_ids' => :'compliance_control_ids',
        :'errors' => :'errors'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'id' => :'Integer',
        :'created_at' => :'DateTime',
        :'description' => :'String',
        :'identifier' => :'String',
        :'name' => :'String',
        :'resolution' => :'String',
        :'updated_at' => :'DateTime',
        :'risk_level' => :'String',
        :'external_account' => :'ExternalAccount',
        :'external_account_id' => :'Integer',
        :'region' => :'Region',
        :'region_id' => :'Integer',
        :'signature' => :'Signature',
        :'signature_id' => :'Integer',
        :'custom_signature' => :'CustomSignature',
        :'custom_signature_id' => :'Integer',
        :'suppression' => :'Suppression',
        :'suppression_id' => :'Integer',
        :'metadata' => :'Metadata',
        :'metadata_id' => :'Integer',
        :'cloud_trail_events' => :'Array<CloudTrailEvent>',
        :'cloud_trail_event_ids' => :'Array<Integer>',
        :'tags' => :'Array<Tag>',
        :'tag_ids' => :'Array<Integer>',
        :'compliance_controls' => :'Array<ComplianceControl>',
        :'compliance_control_ids' => :'Array<Integer>',
        :'errors' => :'Array<String>'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.has_key?(:'created_at')
        self.created_at = attributes[:'created_at']
      end

      if attributes.has_key?(:'description')
        self.description = attributes[:'description']
      end

      if attributes.has_key?(:'identifier')
        self.identifier = attributes[:'identifier']
      end

      if attributes.has_key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.has_key?(:'resolution')
        self.resolution = attributes[:'resolution']
      end

      if attributes.has_key?(:'updated_at')
        self.updated_at = attributes[:'updated_at']
      end

      if attributes.has_key?(:'risk_level')
        self.risk_level = attributes[:'risk_level']
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

      if attributes.has_key?(:'custom_signature')
        self.custom_signature = attributes[:'custom_signature']
      end

      if attributes.has_key?(:'custom_signature_id')
        self.custom_signature_id = attributes[:'custom_signature_id']
      end

      if attributes.has_key?(:'suppression')
        self.suppression = attributes[:'suppression']
      end

      if attributes.has_key?(:'suppression_id')
        self.suppression_id = attributes[:'suppression_id']
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

      if attributes.has_key?(:'compliance_controls')
        if (value = attributes[:'compliance_controls']).is_a?(Array)
          self.compliance_controls = value
        end
      end

      if attributes.has_key?(:'compliance_control_ids')
        if (value = attributes[:'compliance_control_ids']).is_a?(Array)
          self.compliance_control_ids = value
        end
      end

      if attributes.has_key?(:'errors')
        if (value = attributes[:'errors']).is_a?(Array)
          self.errors = value
        end
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          created_at == o.created_at &&
          description == o.description &&
          identifier == o.identifier &&
          name == o.name &&
          resolution == o.resolution &&
          updated_at == o.updated_at &&
          risk_level == o.risk_level &&
          external_account == o.external_account &&
          external_account_id == o.external_account_id &&
          region == o.region &&
          region_id == o.region_id &&
          signature == o.signature &&
          signature_id == o.signature_id &&
          custom_signature == o.custom_signature &&
          custom_signature_id == o.custom_signature_id &&
          suppression == o.suppression &&
          suppression_id == o.suppression_id &&
          metadata == o.metadata &&
          metadata_id == o.metadata_id &&
          cloud_trail_events == o.cloud_trail_events &&
          cloud_trail_event_ids == o.cloud_trail_event_ids &&
          tags == o.tags &&
          tag_ids == o.tag_ids &&
          compliance_controls == o.compliance_controls &&
          compliance_control_ids == o.compliance_control_ids &&
          errors == o.errors
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [id, created_at, description, identifier, name, resolution, updated_at, risk_level, external_account, external_account_id, region, region_id, signature, signature_id, custom_signature, custom_signature_id, suppression, suppression_id, metadata, metadata_id, cloud_trail_events, cloud_trail_event_ids, tags, tag_ids, compliance_controls, compliance_control_ids, errors].hash
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
