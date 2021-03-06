=begin
#Swagger Petstore

#This spec is mainly for testing Petstore server and contains fake endpoints, models. Please do not use this for any other purpose. Special characters: \" \\

OpenAPI spec version: 1.0.0
Contact: apiteam@swagger.io
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

require "uri"

module Petstore
  class FakeApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # To test \"client\" model
    # 
    # @param body client model
    # @param [Hash] opts the optional parameters
    # @return [Client]
    def test_client_model(body, opts = {})
      data, _status_code, _headers = test_client_model_with_http_info(body, opts)
      return data
    end

    # To test \&quot;client\&quot; model
    # 
    # @param body client model
    # @param [Hash] opts the optional parameters
    # @return [Array<(Client, Fixnum, Hash)>] Client data, response status code and response headers
    def test_client_model_with_http_info(body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: FakeApi.test_client_model ..."
      end
      # verify the required parameter 'body' is set
      fail ArgumentError, "Missing the required parameter 'body' when calling FakeApi.test_client_model" if body.nil?
      # resource path
      local_var_path = "/fake".sub('{format}','json')

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      local_header_accept = ['application/json']
      local_header_accept_result = @api_client.select_header_accept(local_header_accept) and header_params['Accept'] = local_header_accept_result

      # HTTP header 'Content-Type'
      local_header_content_type = ['application/json']
      header_params['Content-Type'] = @api_client.select_header_content_type(local_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(body)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Client')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FakeApi#test_client_model\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Fake endpoint for testing various parameters 假端點 偽のエンドポイント 가짜 엔드 포인트 
    # Fake endpoint for testing various parameters 假端點 偽のエンドポイント 가짜 엔드 포인트 
    # @param number None
    # @param double None
    # @param pattern_without_delimiter None
    # @param byte None
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :integer None
    # @option opts [Integer] :int32 None
    # @option opts [Integer] :int64 None
    # @option opts [Float] :float None
    # @option opts [String] :string None
    # @option opts [String] :binary None
    # @option opts [Date] :date None
    # @option opts [DateTime] :date_time None
    # @option opts [String] :password None
    # @option opts [String] :callback None
    # @return [nil]
    def test_endpoint_parameters(number, double, pattern_without_delimiter, byte, opts = {})
      test_endpoint_parameters_with_http_info(number, double, pattern_without_delimiter, byte, opts)
      return nil
    end

    # Fake endpoint for testing various parameters 假端點 偽のエンドポイント 가짜 엔드 포인트 
    # Fake endpoint for testing various parameters 假端點 偽のエンドポイント 가짜 엔드 포인트 
    # @param number None
    # @param double None
    # @param pattern_without_delimiter None
    # @param byte None
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :integer None
    # @option opts [Integer] :int32 None
    # @option opts [Integer] :int64 None
    # @option opts [Float] :float None
    # @option opts [String] :string None
    # @option opts [String] :binary None
    # @option opts [Date] :date None
    # @option opts [DateTime] :date_time None
    # @option opts [String] :password None
    # @option opts [String] :callback None
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def test_endpoint_parameters_with_http_info(number, double, pattern_without_delimiter, byte, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: FakeApi.test_endpoint_parameters ..."
      end
      # verify the required parameter 'number' is set
      fail ArgumentError, "Missing the required parameter 'number' when calling FakeApi.test_endpoint_parameters" if number.nil?
      if number > 543.2
        fail ArgumentError, 'invalid value for "number" when calling FakeApi.test_endpoint_parameters, must be smaller than or equal to 543.2.'
      end

      if number < 32.1
        fail ArgumentError, 'invalid value for "number" when calling FakeApi.test_endpoint_parameters, must be greater than or equal to 32.1.'
      end

      # verify the required parameter 'double' is set
      fail ArgumentError, "Missing the required parameter 'double' when calling FakeApi.test_endpoint_parameters" if double.nil?
      if double > 123.4
        fail ArgumentError, 'invalid value for "double" when calling FakeApi.test_endpoint_parameters, must be smaller than or equal to 123.4.'
      end

      if double < 67.8
        fail ArgumentError, 'invalid value for "double" when calling FakeApi.test_endpoint_parameters, must be greater than or equal to 67.8.'
      end

      # verify the required parameter 'pattern_without_delimiter' is set
      fail ArgumentError, "Missing the required parameter 'pattern_without_delimiter' when calling FakeApi.test_endpoint_parameters" if pattern_without_delimiter.nil?
      if pattern_without_delimiter !~ Regexp.new(/^[A-Z].*/)
        fail ArgumentError, "invalid value for 'pattern_without_delimiter' when calling FakeApi.test_endpoint_parameters, must conform to the pattern /^[A-Z].*/."
      end

      # verify the required parameter 'byte' is set
      fail ArgumentError, "Missing the required parameter 'byte' when calling FakeApi.test_endpoint_parameters" if byte.nil?
      if !opts[:'integer'].nil? && opts[:'integer'] > 100.0
        fail ArgumentError, 'invalid value for "opts[:"integer"]" when calling FakeApi.test_endpoint_parameters, must be smaller than or equal to 100.0.'
      end

      if !opts[:'integer'].nil? && opts[:'integer'] < 10.0
        fail ArgumentError, 'invalid value for "opts[:"integer"]" when calling FakeApi.test_endpoint_parameters, must be greater than or equal to 10.0.'
      end

      if !opts[:'int32'].nil? && opts[:'int32'] > 200.0
        fail ArgumentError, 'invalid value for "opts[:"int32"]" when calling FakeApi.test_endpoint_parameters, must be smaller than or equal to 200.0.'
      end

      if !opts[:'int32'].nil? && opts[:'int32'] < 20.0
        fail ArgumentError, 'invalid value for "opts[:"int32"]" when calling FakeApi.test_endpoint_parameters, must be greater than or equal to 20.0.'
      end

      if !opts[:'float'].nil? && opts[:'float'] > 987.6
        fail ArgumentError, 'invalid value for "opts[:"float"]" when calling FakeApi.test_endpoint_parameters, must be smaller than or equal to 987.6.'
      end

      if !opts[:'string'].nil? && opts[:'string'] !~ Regexp.new(/[a-z]/i)
        fail ArgumentError, "invalid value for 'opts[:\"string\"]' when calling FakeApi.test_endpoint_parameters, must conform to the pattern /[a-z]/i."
      end

      if !opts[:'password'].nil? && opts[:'password'].to_s.length > 64
        fail ArgumentError, 'invalid value for "opts[:"password"]" when calling FakeApi.test_endpoint_parameters, the character length must be smaller than or equal to 64.'
      end

      if !opts[:'password'].nil? && opts[:'password'].to_s.length < 10
        fail ArgumentError, 'invalid value for "opts[:"password"]" when calling FakeApi.test_endpoint_parameters, the character length must be great than or equal to 10.'
      end

      # resource path
      local_var_path = "/fake".sub('{format}','json')

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      local_header_accept = ['application/xml; charset=utf-8', 'application/json; charset=utf-8']
      local_header_accept_result = @api_client.select_header_accept(local_header_accept) and header_params['Accept'] = local_header_accept_result

      # HTTP header 'Content-Type'
      local_header_content_type = ['application/xml; charset=utf-8', 'application/json; charset=utf-8']
      header_params['Content-Type'] = @api_client.select_header_content_type(local_header_content_type)

      # form parameters
      form_params = {}
      form_params["number"] = number
      form_params["double"] = double
      form_params["pattern_without_delimiter"] = pattern_without_delimiter
      form_params["byte"] = byte
      form_params["integer"] = opts[:'integer'] if !opts[:'integer'].nil?
      form_params["int32"] = opts[:'int32'] if !opts[:'int32'].nil?
      form_params["int64"] = opts[:'int64'] if !opts[:'int64'].nil?
      form_params["float"] = opts[:'float'] if !opts[:'float'].nil?
      form_params["string"] = opts[:'string'] if !opts[:'string'].nil?
      form_params["binary"] = opts[:'binary'] if !opts[:'binary'].nil?
      form_params["date"] = opts[:'date'] if !opts[:'date'].nil?
      form_params["dateTime"] = opts[:'date_time'] if !opts[:'date_time'].nil?
      form_params["password"] = opts[:'password'] if !opts[:'password'].nil?
      form_params["callback"] = opts[:'callback'] if !opts[:'callback'].nil?

      # http body (model)
      post_body = nil
      auth_names = ['http_basic_test']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FakeApi#test_endpoint_parameters\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # To test enum parameters
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :enum_form_string_array Form parameter enum test (string array)
    # @option opts [String] :enum_form_string Form parameter enum test (string) (default to -efg)
    # @option opts [Array<String>] :enum_header_string_array Header parameter enum test (string array)
    # @option opts [String] :enum_header_string Header parameter enum test (string) (default to -efg)
    # @option opts [Array<String>] :enum_query_string_array Query parameter enum test (string array)
    # @option opts [String] :enum_query_string Query parameter enum test (string) (default to -efg)
    # @option opts [Float] :enum_query_integer Query parameter enum test (double)
    # @option opts [Float] :enum_query_double Query parameter enum test (double)
    # @return [nil]
    def test_enum_parameters(opts = {})
      test_enum_parameters_with_http_info(opts)
      return nil
    end

    # To test enum parameters
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :enum_form_string_array Form parameter enum test (string array)
    # @option opts [String] :enum_form_string Form parameter enum test (string)
    # @option opts [Array<String>] :enum_header_string_array Header parameter enum test (string array)
    # @option opts [String] :enum_header_string Header parameter enum test (string)
    # @option opts [Array<String>] :enum_query_string_array Query parameter enum test (string array)
    # @option opts [String] :enum_query_string Query parameter enum test (string)
    # @option opts [Float] :enum_query_integer Query parameter enum test (double)
    # @option opts [Float] :enum_query_double Query parameter enum test (double)
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def test_enum_parameters_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: FakeApi.test_enum_parameters ..."
      end
      if opts[:'enum_form_string_array'] && !opts[:'enum_form_string_array'].all?{|item| ['>', '$'].include?(item)}
        fail ArgumentError, 'invalid value for "enum_form_string_array", must include one of >, $'
      end
      if opts[:'enum_form_string'] && !['_abc', '-efg', '(xyz)'].include?(opts[:'enum_form_string'])
        fail ArgumentError, 'invalid value for "enum_form_string", must be one of _abc, -efg, (xyz)'
      end
      if opts[:'enum_header_string_array'] && !opts[:'enum_header_string_array'].all?{|item| ['>', '$'].include?(item)}
        fail ArgumentError, 'invalid value for "enum_header_string_array", must include one of >, $'
      end
      if opts[:'enum_header_string'] && !['_abc', '-efg', '(xyz)'].include?(opts[:'enum_header_string'])
        fail ArgumentError, 'invalid value for "enum_header_string", must be one of _abc, -efg, (xyz)'
      end
      if opts[:'enum_query_string_array'] && !opts[:'enum_query_string_array'].all?{|item| ['>', '$'].include?(item)}
        fail ArgumentError, 'invalid value for "enum_query_string_array", must include one of >, $'
      end
      if opts[:'enum_query_string'] && !['_abc', '-efg', '(xyz)'].include?(opts[:'enum_query_string'])
        fail ArgumentError, 'invalid value for "enum_query_string", must be one of _abc, -efg, (xyz)'
      end
      # resource path
      local_var_path = "/fake".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'enum_query_string_array'] = @api_client.build_collection_param(opts[:'enum_query_string_array'], :csv) if !opts[:'enum_query_string_array'].nil?
      query_params[:'enum_query_string'] = opts[:'enum_query_string'] if !opts[:'enum_query_string'].nil?
      query_params[:'enum_query_integer'] = opts[:'enum_query_integer'] if !opts[:'enum_query_integer'].nil?

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      local_header_accept = ['*/*']
      local_header_accept_result = @api_client.select_header_accept(local_header_accept) and header_params['Accept'] = local_header_accept_result

      # HTTP header 'Content-Type'
      local_header_content_type = ['*/*']
      header_params['Content-Type'] = @api_client.select_header_content_type(local_header_content_type)
      header_params[:'enum_header_string_array'] = @api_client.build_collection_param(opts[:'enum_header_string_array'], :csv) if !opts[:'enum_header_string_array'].nil?
      header_params[:'enum_header_string'] = opts[:'enum_header_string'] if !opts[:'enum_header_string'].nil?

      # form parameters
      form_params = {}
      form_params["enum_form_string_array"] = @api_client.build_collection_param(opts[:'enum_form_string_array'], :csv) if !opts[:'enum_form_string_array'].nil?
      form_params["enum_form_string"] = opts[:'enum_form_string'] if !opts[:'enum_form_string'].nil?
      form_params["enum_query_double"] = opts[:'enum_query_double'] if !opts[:'enum_query_double'].nil?

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FakeApi#test_enum_parameters\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
