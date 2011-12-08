module CanTango::Macros
  module User
    def tango_user options = {}
      self.send :include, CanTango::Api::User
      options = CanTango::Macros.extract(options) if options.kind_of? Array

      if defined? CanTango::Macros::Masquerader::User
        self.send :include, CanTango::Macros::Masquerader::User
        masquerader if options[:masquerade]
      end
    end
  end
end