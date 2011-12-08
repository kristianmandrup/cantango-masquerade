module CanTango::Macros
  module User
    def tango_user options = {}
      self.send :include, CanTango::Api::Model::User
      options = CanTango::Macros.extract(options) if options.any_kind_of?(Array, Symbol)

      if defined? CanTango::Macros::Masquerader::User
        self.extend CanTango::Macros::Masquerader::User
        masquerader if options[:masquerade]
      end
    end
  end
end