module CanTango::Macros
  module Masquerader
    module User
      def masquerader
        self.send :include, CanTango::Api::Masquerade::User
      end
    end
  end
end