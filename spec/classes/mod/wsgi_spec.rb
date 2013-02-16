require 'spec_helper'

describe 'apache::mod::wsgi', :type => :class do
  context "On a Debian OS" do
    let :facts do
      { :osfamily => 'Debian' }
    end
    it { should contain_package("mod_wsgi_package").with(
     'require' => 'Class[Apache::Install]'
    ) }
    it { should contain_a2mod("wsgi").with(
     'ensure'  => 'present'
      )
    }
  end
end
