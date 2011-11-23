module CanTango::Macros
  module Masquerader
    module Account
      def masquerader
        self.send :include, CanTango::Api::Masquerade::Account
      end
    end
  end
end