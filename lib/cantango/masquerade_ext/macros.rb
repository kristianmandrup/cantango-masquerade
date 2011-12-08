module CanTango
  module Macros
    sweet_scope :ns => {:CanTango => 'cantango/masquerade_ext'} do
      sweetload :User, :Account
    end
    
    def self.extract *symbols
      symbols.inject({}) do |res, v| 
        res[v] = true
        res
      end
    end
  end
end