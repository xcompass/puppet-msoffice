require 'spec_helper'

describe 'msoffice' do

  version = '2011'

  let(:facts) do
    {
      :boxen_home => '/opt/boxen'
    }
  end

  it do
    should contain_class('msoffice')
    should_not contain_package('msoffice')
  end

  context "credential is provided" do
    let(:params) {{:username => "test", :password => "test"}}

    it do
      should contain_package('msoffice').with({
        :provider => 'pkgdmg',
        :source   => "http://test:test@artifactory.ctlt.ubc.ca/artifactory/ctlt-protected/Office/Office_Mac_Standard_#{version}.dmg",
      })
    end
  end
end
