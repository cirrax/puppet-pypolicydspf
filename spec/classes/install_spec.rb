
require 'spec_helper'

describe 'pypolicydspf::install' do
  let :default_params do
     { :packages       => ['postfix-policyd-spf-python'],
       :package_ensure => 'present',
     }
  end

  shared_examples 'pypolicydspf::install shared examples' do
    it { is_expected.to compile.with_all_deps }

    it { is_expected.to contain_package('postfix-policyd-spf-python')
      .with_ensure( params[:package_ensure] )
      .with_tag( 'pypolicydspf-packages' )
    }
  end

  context 'with defaults' do
    let :params do
      default_params
    end
    it_behaves_like 'pypolicydspf::install shared examples'
  end

  context 'with non defaults' do
    let :params do
      default_params.merge(
        :packages       => ['postfix-policyd-spf-python','someother'],
	:package_ensure => 'absent',
      )
    end
    it_behaves_like 'pypolicydspf::install shared examples'

    it { is_expected.to contain_package( 'someother')
      .with_ensure( params[:package_ensure] )
      .with_tag( 'pypolicydspf-packages' )
    }
  end
end
