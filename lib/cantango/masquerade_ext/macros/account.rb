module CanTango::Macros
  module Account
    def tango_account options = {}
      self.send :include, CanTango::Api::Model::Account
      options = CanTango::Macros.extract(options) if options.any_kind_of?(Array, Symbol)

      if defined? CanTango::Macros::Masquerader::Account
        self.extend CanTango::Macros::Masquerader::Account
        masquerader if options[:masquerade]
      end
    end
  end
end
