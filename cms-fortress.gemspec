# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "cms-fortress"
  s.version = "0.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Melvin Sembrano"]
  s.date = "2013-03-13"
  s.description = "Comfortable Mexican Sofa (CMS) - User and role management extension"
  s.email = "melvinsembrano@gmail.com"
  s.extra_rdoc_files = [
    "LICENSE.txt",
    "README.rdoc"
  ]
  s.files = [
    ".document",
    ".rvmrc",
    "Gemfile",
    "Gemfile.lock",
    "LICENSE.txt",
    "README.rdoc",
    "Rakefile",
    "VERSION",
    "app/assets/javascripts/cms_fortress/bootstrap-affix.js",
    "app/assets/javascripts/cms_fortress/bootstrap-alert.js",
    "app/assets/javascripts/cms_fortress/bootstrap-button.js",
    "app/assets/javascripts/cms_fortress/bootstrap-carousel.js",
    "app/assets/javascripts/cms_fortress/bootstrap-collapse.js",
    "app/assets/javascripts/cms_fortress/bootstrap-dropdown.js",
    "app/assets/javascripts/cms_fortress/bootstrap-modal.js",
    "app/assets/javascripts/cms_fortress/bootstrap-popover.js",
    "app/assets/javascripts/cms_fortress/bootstrap-scrollspy.js",
    "app/assets/javascripts/cms_fortress/bootstrap-tab.js",
    "app/assets/javascripts/cms_fortress/bootstrap-tooltip.js",
    "app/assets/javascripts/cms_fortress/bootstrap-transition.js",
    "app/assets/javascripts/cms_fortress/bootstrap-typeahead.js",
    "app/assets/javascripts/cms_fortress/bootstrap.js",
    "app/assets/javascripts/cms_fortress/html5shiv.js",
    "app/assets/javascripts/cms_fortress/jquery.js",
    "app/assets/stylesheets/cms_fortress/bootstrap-responsive.css",
    "app/assets/stylesheets/cms_fortress/bootstrap.css",
    "app/views/layouts/cms_fortress/default.html.erb",
    "cms-fortress.gemspec",
    "lib/cms-fortress.rb",
    "lib/cms/fortress/rails/engine.rb",
    "test/helper.rb",
    "test/test_cms-fortress.rb"
  ]
  s.homepage = "http://github.com/melvinsembrano/cms-fortress"
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.rubygems_version = "1.8.10"
  s.summary = "Comfortable Mexican Sofa (CMS) - User and role management extension"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<comfortable_mexican_sofa>, [">= 1.6.26"])
      s.add_runtime_dependency(%q<devise>, [">= 1.5.4"])
      s.add_development_dependency(%q<rdoc>, [">= 0"])
      s.add_development_dependency(%q<bundler>, [">= 0"])
      s.add_development_dependency(%q<jeweler>, [">= 0"])
      s.add_development_dependency(%q<simplecov>, [">= 0"])
    else
      s.add_dependency(%q<comfortable_mexican_sofa>, [">= 1.6.26"])
      s.add_dependency(%q<devise>, [">= 1.5.4"])
      s.add_dependency(%q<rdoc>, [">= 0"])
      s.add_dependency(%q<bundler>, [">= 0"])
      s.add_dependency(%q<jeweler>, [">= 0"])
      s.add_dependency(%q<simplecov>, [">= 0"])
    end
  else
    s.add_dependency(%q<comfortable_mexican_sofa>, [">= 1.6.26"])
    s.add_dependency(%q<devise>, [">= 1.5.4"])
    s.add_dependency(%q<rdoc>, [">= 0"])
    s.add_dependency(%q<bundler>, [">= 0"])
    s.add_dependency(%q<jeweler>, [">= 0"])
    s.add_dependency(%q<simplecov>, [">= 0"])
  end
end
