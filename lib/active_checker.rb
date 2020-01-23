require "active_checker/railtie"

module ActiveChecker
  module Model
    def check param
      check_data = instance_checker.send("#{param}")
      if instance_checker.checker.call(self)
        true
      else
        instance_checker.handler.call(self)
        false
      end
    end

    private

    def checker
      @checker ||= "#{self.class.name}Checker".constantize
    end

    def instance_checker
      @instance_checker = checker.new
    end
  end

  class Base

    attr_accessor :checker, :handler

  end

end
