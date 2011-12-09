module CanTango
  module Api
    module Masquerade
      module Account
        attr_reader :masquerading, :active_account

        def masquerade_as account
          raise "Must be a registered type of account, was: #{account}" unless valid_account? account
          @masquerading = true
          @active_account = account
          self
        end

        def stop_masquerade
          @active_account, @masquerading = nil, nil
          self
        end

        def masquerading?
          !@masquerading.nil?
        end
      
        private
      
        def valid_account? account
          registered_accounts.registered_class?(account.class)
        end
        
        def registered_accounts
          CanTango.config.accounts
        end
      end
    end
  end
end