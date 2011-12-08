module CanTango
  module Macros
    sweet_scope :ns => {:CanTango => 'cantango/masquerade_ext'} do
      sweetload :User, :Account
    end
    
    def self.extract list
      list.inject({}){|res, v| res[v] = true } if options.kind_of? Array
    end
  end
end