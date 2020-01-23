module ActiveChecker
  module Model
    def check param
      check_data = instance_checker.send("#{param}")
      if check_data[:checker].call(self)
        true
      else
        check_data[:handler].call(self)
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
    
  end

end
