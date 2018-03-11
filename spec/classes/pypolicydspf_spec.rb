
require 'spec_helper'

describe 'pypolicydspf' do
  let :default_params do
     { :configs  => {},
     }
  end

  shared_examples 'pypolicydspf shared examples' do
    it { is_expected.to compile.with_all_deps }

    it { is_expected.to contain_class( 'pypolicydspf::install') }
  end

  context 'with defaults' do
    let :params do
      default_params
    end
    it_behaves_like 'pypolicydspf shared examples'
  end
end
