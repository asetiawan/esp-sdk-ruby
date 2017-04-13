=begin
#ESP Documentation

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: v2

Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require 'date'

module ESP
  # A(n) External Account object
  class ExternalAccount < BaseObject
    # Links to Associated Objects
    attr_accessor :relationships

    # Array of error messages if the request failed
    attr_accessor :errors

    # Unique Id
    attr_accessor :id

    # The name of the account created
    attr_accessor :account

    # Amazon Resource Name for the IAM role
    attr_accessor :arn

    # Created At
    attr_accessor :created_at

    # External Identifier set on the role
    attr_accessor :external_id

    # Name
    attr_accessor :name

    # Updated At
    attr_accessor :updated_at

    # Cloudtrail Name
    attr_accessor :cloudtrail_name

    # Associated Organization
    attr_accessor :organization

    # Associated Organization Id
    attr_accessor :organization_id

    # Associated Sub Organization
    attr_accessor :sub_organization

    # Associated Sub Organization Id
    attr_accessor :sub_organization_id

    # Associated Team
    attr_accessor :team

    # Associated Team Id
    attr_accessor :team_id


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'relationships' => :'relationships',
        :'errors' => :'errors',
        :'id' => :'id',
        :'account' => :'account',
        :'arn' => :'arn',
        :'created_at' => :'created_at',
        :'external_id' => :'external_id',
        :'name' => :'name',
        :'updated_at' => :'updated_at',
        :'cloudtrail_name' => :'cloudtrail_name',
        :'organization' => :'organization',
        :'organization_id' => :'organization_id',
        :'sub_organization' => :'sub_organization',
        :'sub_organization_id' => :'sub_organization_id',
        :'team' => :'team',
        :'team_id' => :'team_id'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'relationships' => :'Object',
        :'errors' => :'Array<String>',
        :'id' => :'Integer',
        :'account' => :'String',
        :'arn' => :'String',
        :'created_at' => :'DateTime',
        :'external_id' => :'String',
        :'name' => :'String',
        :'updated_at' => :'DateTime',
        :'cloudtrail_name' => :'String',
        :'organization' => :'Organization',
        :'organization_id' => :'Integer',
        :'sub_organization' => :'SubOrganization',
        :'sub_organization_id' => :'Integer',
        :'team' => :'Team',
        :'team_id' => :'Integer'
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

      if attributes.has_key?(:'account')
        self.account = attributes[:'account']
      end

      if attributes.has_key?(:'arn')
        self.arn = attributes[:'arn']
      end

      if attributes.has_key?(:'created_at')
        self.created_at = attributes[:'created_at']
      end

      if attributes.has_key?(:'external_id')
        self.external_id = attributes[:'external_id']
      end

      if attributes.has_key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.has_key?(:'updated_at')
        self.updated_at = attributes[:'updated_at']
      end

      if attributes.has_key?(:'cloudtrail_name')
        self.cloudtrail_name = attributes[:'cloudtrail_name']
      end

      if attributes.has_key?(:'organization')
        self.organization = attributes[:'organization']
      end

      if attributes.has_key?(:'organization_id')
        self.organization_id = attributes[:'organization_id']
      end

      if attributes.has_key?(:'sub_organization')
        self.sub_organization = attributes[:'sub_organization']
      end

      if attributes.has_key?(:'sub_organization_id')
        self.sub_organization_id = attributes[:'sub_organization_id']
      end

      if attributes.has_key?(:'team')
        self.team = attributes[:'team']
      end

      if attributes.has_key?(:'team_id')
        self.team_id = attributes[:'team_id']
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
          relationships == o.relationships &&
          errors == o.errors &&
          id == o.id &&
          account == o.account &&
          arn == o.arn &&
          created_at == o.created_at &&
          external_id == o.external_id &&
          name == o.name &&
          updated_at == o.updated_at &&
          cloudtrail_name == o.cloudtrail_name &&
          organization == o.organization &&
          organization_id == o.organization_id &&
          sub_organization == o.sub_organization &&
          sub_organization_id == o.sub_organization_id &&
          team == o.team &&
          team_id == o.team_id
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [relationships, errors, id, account, arn, created_at, external_id, name, updated_at, cloudtrail_name, organization, organization_id, sub_organization, sub_organization_id, team, team_id].hash
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
