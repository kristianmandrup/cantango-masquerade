module CanTango::Macros
  module Masquerader
    sweet_scope :ns => {:CanTango => 'cantango/masquerade'} do
      autoload_modules :Account, :User
    end
  end
end