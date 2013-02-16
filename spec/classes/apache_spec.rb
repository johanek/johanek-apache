require 'spec_helper'

describe 'apache', :type => :class do
  context "On a Debian OS" do
    let :facts do
      { :osfamily => 'Debian' }
    end
    it { should include_class("apache::params") }
    it { should contain_package("httpd") }
    it { should contain_service("httpd").with(
      'ensure'    => 'running',
      'enable'    => 'true'
      )
    }
    it { should contain_file("httpd_vdir").with(
      'ensure'  => 'directory',
      'recurse' => 'true',
      'purge'   => 'true',
      'notify'  => 'Class[Apache::Service]'
      )
    }
  end
  context "On a RedHat OS" do
    let :facts do
      { :osfamily => 'RedHat' }
    end
    it { should include_class("apache::params") }
    it { should contain_package("httpd") }
    it { should contain_service("httpd").with(
      'ensure'    => 'running',
      'enable'    => 'true'
      )
    }
    it { should contain_file("httpd_vdir").with(
      'ensure'  => 'directory',
      'recurse' => 'true',
      'purge'   => 'true',
      'notify'  => 'Class[Apache::Service]'
      )
    }
  end
end
