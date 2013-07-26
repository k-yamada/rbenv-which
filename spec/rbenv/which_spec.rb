require 'spec_helper'

module Rbenv
  describe ".which_ruby" do
    before(:each) do
      rbenv_versions =<<-EOC
1.9.3-p448
2.0.0-p247
2.0.0-rc2
jruby-1.7.4
macruby-0.12
      EOC
      Rbenv.should_receive(:get_rbenv_versions).and_return(rbenv_versions)
    end

    context "specify installed version" do
      before(:each) do
        Rbenv.should_receive(:get_rbenv_root).and_return("/Users/kyamada/.rbenv")
      end

      it "should get ruby path" do
        expect(Rbenv.which_ruby("1.9.3-p448")).to eq "/Users/kyamada/.rbenv/versions/1.9.3-p448/bin/ruby"
      end

      it "should get jruby path" do
        expect(Rbenv.which_ruby("jruby-1.7.4")).to eq "/Users/kyamada/.rbenv/versions/jruby-1.7.4/bin/ruby"
      end
    end

    context "specify not installed version" do
      it "raise Runtime error" do
        expect{Rbenv.which_ruby("3.0.0")}.to raise_error(RuntimeError, "rbenv: version '3.0.0' not installed")
      end
    end
  end
end
