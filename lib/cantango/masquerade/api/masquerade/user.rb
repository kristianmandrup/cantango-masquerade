module CanTango::Api::Masquerade
  module User
    attr_reader :masquerading, :active_user

    def masquerade_as user
      raise "Must be a registered type of user, was: #{user}" unless valid_user? user
      @masquerading = true
      user = user.kind_of?(String) ? ::User.find(user) : user
      @active_user = user
    end

    def stop_masquerade
      @active_user, @masquerading = nil, nil
    end

    def masquerading?
      !@masquerading.nil?
    end
  
    private
  
    def valid_user? user
      registered_users.registered_class?(user.class)
    end
    
    def registered_users
      CanTango.config.users
    end    
  end
end
