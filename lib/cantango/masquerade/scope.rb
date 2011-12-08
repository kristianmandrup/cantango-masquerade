module CanTango
  module Scope
    sweet_scope :ns => {:CanTango => 'cantango/masquerade'} do
      sweetload :Ability
    end
  end
end
