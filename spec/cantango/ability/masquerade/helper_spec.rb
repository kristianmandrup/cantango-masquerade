require 'spec_helper'

describe CanTango::Ability::Helper::Masquerade do
  describe 'masquerading?' do
    # candidate.respond_to?(:masquerading?) && candidate.masquerading?
  end

  describe 'masquerade_user?' do
    # return false if masquerading_off?
    # candidate.respond_to?(:active_user) && masquerading?
  end

  describe 'masquerade_account?' do
    # return false if masquerading_off?
    # candidate.respond_to?(:active_account)
  end

  describe 'masquerading_off?' do
    # options[:masquerade] == false
  end

  describe 'subject' do
    # return candidate.active_user if masquerade_user?
    # return candidate.active_account if masquerade_account?
    # candidate
  end
end