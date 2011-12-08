# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{cantango-masquerade}
  s.version = "0.1.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = [%q{Kristian Mandrup}]
  s.date = %q{2011-12-08}
  s.description = %q{Masquerade extensions and macros for CanTango}
  s.email = %q{kmandrup@gmail.com}
  s.extra_rdoc_files = [
    "LICENSE.txt",
    "README.mdown"
  ]
  s.files = [
    ".document",
    ".rspec",
    "Gemfile",
    "Gemfile.lock",
    "LICENSE.txt",
    "README.mdown",
    "Rakefile",
    "VERSION",
    "cantango-masquerade.gemspec",
    "lib/cantango/masquerade.rb",
    "lib/cantango/masquerade/ability.rb",
    "lib/cantango/masquerade/ability/helper/masquerade.rb",
    "lib/cantango/masquerade/api.rb",
    "lib/cantango/masquerade/api/masquerade.rb",
    "lib/cantango/masquerade/api/masquerade/account.rb",
    "lib/cantango/masquerade/api/masquerade/user.rb",
    "lib/cantango/masquerade/macros.rb",
    "lib/cantango/masquerade/macros/masquerader.rb",
    "lib/cantango/masquerade/macros/masquerader/account.rb",
    "lib/cantango/masquerade/macros/masquerader/user.rb",
    "lib/cantango/masquerade_ext.rb",
    "lib/cantango/masquerade_ext/macros.rb",
    "lib/cantango/masquerade_ext/macros/account.rb",
    "lib/cantango/masquerade_ext/macros/user.rb",
    "spec/cantango/ability/masquerade/helper_spec.rb",
    "spec/cantango/api/masquerade/account_spec.rb",
    "spec/cantango/api/masquerade/user_spec.rb",
    "spec/cantango/macros/masquerade/account_spec.rb",
    "spec/cantango/macros/masquerade/user_spec.rb",
    "spec/cantango/masquerade_ext/macros/admin_account_spec.rb",
    "spec/cantango/masquerade_ext/macros/admin_user_spec.rb",
    "spec/cantango/masquerade_spec.rb",
    "spec/fixtures/models.rb",
    "spec/fixtures/models/admin.rb",
    "spec/fixtures/models/admin_account.rb",
    "spec/fixtures/models/items.rb",
    "spec/fixtures/models/permission.rb",
    "spec/fixtures/models/project.rb",
    "spec/fixtures/models/simple_roles.rb",
    "spec/fixtures/models/user.rb",
    "spec/fixtures/models/user_account.rb",
    "spec/helpers/current_user_accounts.rb",
    "spec/helpers/current_users.rb",
    "spec/spec_helper.rb"
  ]
  s.homepage = %q{http://github.com/kristianmandrup/cantango-masquerade}
  s.licenses = [%q{MIT}]
  s.require_paths = [%q{lib}]
  s.rubygems_version = %q{1.8.6}
  s.summary = %q{Masquerade extension for CanTango}

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<rails>, [">= 3.1"])
      s.add_runtime_dependency(%q<sugar-high>, ["~> 0.6.2"])
      s.add_runtime_dependency(%q<sweetloader>, ["~> 0.1.6"])
      s.add_runtime_dependency(%q<hashie>, ["~> 1.2"])
      s.add_runtime_dependency(%q<cantango-core>, [">= 0.1.9.1"])
      s.add_development_dependency(%q<bundler>, [">= 1.1.rc"])
      s.add_development_dependency(%q<jeweler>, [">= 1.6.4"])
      s.add_development_dependency(%q<rcov>, [">= 0"])
      s.add_development_dependency(%q<rspec>, [">= 2.6.0"])
    else
      s.add_dependency(%q<rails>, [">= 3.1"])
      s.add_dependency(%q<sugar-high>, ["~> 0.6.2"])
      s.add_dependency(%q<sweetloader>, ["~> 0.1.6"])
      s.add_dependency(%q<hashie>, ["~> 1.2"])
      s.add_dependency(%q<cantango-core>, [">= 0.1.9.1"])
      s.add_dependency(%q<bundler>, [">= 1.1.rc"])
      s.add_dependency(%q<jeweler>, [">= 1.6.4"])
      s.add_dependency(%q<rcov>, [">= 0"])
      s.add_dependency(%q<rspec>, [">= 2.6.0"])
    end
  else
    s.add_dependency(%q<rails>, [">= 3.1"])
    s.add_dependency(%q<sugar-high>, ["~> 0.6.2"])
    s.add_dependency(%q<sweetloader>, ["~> 0.1.6"])
    s.add_dependency(%q<hashie>, ["~> 1.2"])
    s.add_dependency(%q<cantango-core>, [">= 0.1.9.1"])
    s.add_dependency(%q<bundler>, [">= 1.1.rc"])
    s.add_dependency(%q<jeweler>, [">= 1.6.4"])
    s.add_dependency(%q<rcov>, [">= 0"])
    s.add_dependency(%q<rspec>, [">= 2.6.0"])
  end
end

