module CanTango
  module Macros
    sweetload :User, :Account
    
    def self.extract list
      list.inject({}){|res, v| res[v] = true } if options.kind_of? Array
    end
  end
end