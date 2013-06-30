# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "net-scp"
  s.version = "1.1.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Jamis Buck", "Delano Mandelbaum"]
  s.cert_chain = ["gem-public_cert.pem"]
  s.date = "2013-05-13"
  s.description = "A pure Ruby implementation of the SCP client protocol"
  s.email = "net-ssh@solutious.com"
  s.extra_rdoc_files = [
    "LICENSE.txt",
    "README.rdoc"
  ]
  s.files = [
    "CHANGES.txt",
    "LICENSE.txt",
    "Manifest",
    "README.rdoc",
    "Rakefile",
    "gem-public_cert.pem",
    "lib/net/scp.rb",
    "lib/net/scp/download.rb",
    "lib/net/scp/errors.rb",
    "lib/net/scp/upload.rb",
    "lib/net/scp/version.rb",
    "lib/uri/open-scp.rb",
    "lib/uri/scp.rb",
    "net-scp.gemspec",
    "setup.rb",
    "test/common.rb",
    "test/test_all.rb",
    "test/test_download.rb",
    "test/test_scp.rb",
    "test/test_upload.rb"
  ]
  s.homepage = "https://github.com/net-ssh/net-scp"
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.rubyforge_project = "net-scp"
  s.rubygems_version = "1.8.25"
  s.signing_key = "/mnt/gem/gem-private_key.pem"
  s.summary = "A pure Ruby implementation of the SCP client protocol"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<net-ssh>, [">= 2.6.5"])
      s.add_development_dependency(%q<test-unit>, [">= 0"])
      s.add_development_dependency(%q<mocha>, [">= 0"])
    else
      s.add_dependency(%q<net-ssh>, [">= 2.6.5"])
      s.add_dependency(%q<test-unit>, [">= 0"])
      s.add_dependency(%q<mocha>, [">= 0"])
    end
  else
    s.add_dependency(%q<net-ssh>, [">= 2.6.5"])
    s.add_dependency(%q<test-unit>, [">= 0"])
    s.add_dependency(%q<mocha>, [">= 0"])
  end
end

