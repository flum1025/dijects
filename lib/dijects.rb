#require "dijects/version"

module Dijects
  class Base
    def initialize(args)
      @instances = args.map do |arg|
        cls.new(*arg)
      end
    end

    def method_missing(name, *args, &blk)
      @instances.sample.send(name, *args, &blk)
    end
  end

  def self.new(cls)
    Class.new(Base) do
      define_method(:cls) do
        cls
      end
    end
  end
end
