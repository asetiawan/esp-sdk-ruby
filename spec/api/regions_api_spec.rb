=begin
#ESP Documentation

#No descripton provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: v2

Generated by: https://github.com/swagger-api/swagger-codegen.git

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.

=end

require 'spec_helper'
require 'json'

# Unit tests for ESP::RegionsApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'RegionsApi' do
  before do
    # run before each test
    @instance = ESP::RegionsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of RegionsApi' do
    it 'should create an instact of RegionsApi' do
      expect(@instance).to be_instance_of(ESP::RegionsApi)
    end
  end

  # unit tests for list
  # Get a list of Regions
  # 
  # @param [Hash] opts the optional parameters
  # @option opts [Hash<String, String>] :page Page Number
  # @option opts [Hash<String, String>] :filter Filter Params for Searching
  # @return [PaginatedCollection]
  describe 'list test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for show
  # Show a single Region
  # 
  # @param id Region Id
  # @param [Hash] opts the optional parameters
  # @option opts [String] :include Included Objects
  # @return [Region]
  describe 'show test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
