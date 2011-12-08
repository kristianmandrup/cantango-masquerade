module CanTango::Ability
  module Helper
    module Masquerade
      def masquerading?
        candidate.respond_to?(:masquerading?) && candidate.masquerading?
      end
      alias_method :masquerade?, :masquerading?

      def masquerade_user?
        candidate.respond_to?(:active_user) && masquerading?
      end

      def masquerade_account?
        candidate.respond_to?(:active_account) && masquerading?
      end

      def masquerading_off?
        options[:masquerade] == false
      end
      alias_method :masquerade_off?, :masquerading_off?
      
      def subject
        return candidate.active_user if masquerade_user?
        return candidate.active_account if masquerade_account?
        candidate
      end
    end
  end
end
