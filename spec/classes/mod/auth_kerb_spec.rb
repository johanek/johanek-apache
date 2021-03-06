require 'spec_helper'

describe 'apache::mod::auth_kerb', :type => :class do
  context "On a Debian OS" do
    let :facts do
      { :osfamily => 'Debian' }
    end
    it { should contain_package("mod_auth_kerb_package").with(
     'require' => 'Class[Apache::Install]'
      )
    }
    it { should contain_a2mod("auth_kerb").with(
     'ensure'  => 'present'
      )
    }
  end
end
