require 'spec_helper'
describe 'vandenginx' do
  context 'with default values for all parameters' do
    it { should contain_class('vandenginx') }
  end
end
