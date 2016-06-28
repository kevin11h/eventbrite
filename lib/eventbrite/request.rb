require 'eventbrite/cursor'

module Eventbrite
  class Request
    attr_accessor :client, :request_method, :version, :path, :options
    alias_method :verb, :request_method

    def initialize(client, request_method, version, path, options = {})
      @client = client
      @request_method = request_method.to_sym
      @version = version
      @path = path
      @options = options
    end

    # @return [Hash]
    def perform
      @client.send(@request_method, @version, @path, @options).body
    end

    # @param klass [Class]
    # @param request [Eventbrite::Request]
    # @return [Object]
    def perform_with_object(klass)
      klass.new(perform)
    end

    # @param klass [Class]
    # @return [Array]
    def perform_with_objects(collection_name, klass)
      perform[collection_name].collect do |element|
        klass.new(element)
      end
    end

    # @param collection_name [Symbol]
    # @param klass [Class]
    # @return [Eventbrite::Cursor]
    def perform_with_cursor(collection_name, klass = nil)
      # Fetch first set with perform
      Eventbrite::Cursor.new(perform, collection_name.to_sym, klass, self)
    end
  end
end