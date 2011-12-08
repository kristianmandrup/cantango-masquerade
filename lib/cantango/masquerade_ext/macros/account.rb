module CanTango::Macros
  module Account
    def tango_account options = {}
      self.send :include, CanTango::Api::Model::Account
      options = CanTango::Macros.extract(options) if options.kind_of? Array

      if defined? CanTango::Macros::Masquerader::Account
        self.send :include, CanTango::Macros::Masquerader::Account
        masquerader if options[:masquerade]
      end
    end
  end
end
