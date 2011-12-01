module CanTango::Macros
  module User
    def tango_user options = {}
      self.send :include, CanTango::UserApi
      self.send :include, CanTango::Masquerade::UserApi
      masquerader if options[:masquerade]
    end
    alias_method :cantango_user, :tango_user
  end
end