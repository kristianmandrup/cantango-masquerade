module CanTango
  module Api
    module Masquerade
      sweet_scope :ns => {:CanTango => 'cantango/masquerade'} do         
        autoload_modules :Account, :User
      end
    end
  end
end