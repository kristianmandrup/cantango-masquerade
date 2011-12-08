require 'sugar-high/array'
require 'sugar-high/blank'
require 'hashie'
require 'sweetloader'

SweetLoader.namespaces = {:CanTango => 'cantango'}
SweetLoader.mode = :require

module CanTango
  sweet_scope :ns => {:CanTango => 'cantango/masquerade'} do 
    sweetload :Ability, :Api, :Macros
  end
end
