module CanTango
  autoloader_scope :ns => {:CanTango => 'cantango/masquerade_ext'} do
    autoload_modules :Macros
  end
end