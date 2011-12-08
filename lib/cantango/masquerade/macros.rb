module CanTango
  module Macros
    sweet_scope :ns => {:CanTango => 'cantango/masquerade'} do
      autoload_modules :Masquerader
    end
  end
end
