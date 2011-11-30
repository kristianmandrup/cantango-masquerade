module CanTango
  class Ability
    module Helper
      module Masquerade
        def masquerading?
          candidate.respond_to?(:masquerading?) && candidate.masquerading?
        end

        def masquerade_user?
          return false if masquerading_off?
          candidate.respond_to?(:active_user) && masquerading?
        end

        def masquerade_account?
          return false if masquerading_off?
          candidate.respond_to?(:active_account)
        end

        def masquerading_off?
          options[:masquerade] == false
        end
        
        def subject
          return candidate.active_user if masquerade_user?
          return candidate.active_account if masquerade_account?
          candidate
        end        
      end
    end
  end
end