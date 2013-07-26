require "rbenv/which/version"

module Rbenv
  def self.get_rbenv_versions
    @@rbenv_versions ||= `rbenv versions --bare`.split("\n")
  end

  def self.get_rbenv_root
    @@rbenv_root ||= `rbenv root`.chomp
  end

  def self.which_ruby(rbenv_version)
    if !get_rbenv_versions.include?(rbenv_version)
      raise "rbenv: version '#{rbenv_version}' not installed"
    end
    "#{get_rbenv_root}/versions/#{rbenv_version}/bin/ruby"
  end
end
