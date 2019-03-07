# frozen_string_literal: true

require './spec/helpers/test.rb'

RSpec.describe CallableClass do
  it 'has a version number' do
    expect(CallableClass::VERSION).not_to be(nil)
  end

  context 'when using base class' do
    it "doesn't responds to .call" do
      expect(Test).not_to respond_to(:call)
    end
    it "doesn't responds to #call" do
      expect(Test.new('hello')).to respond_to(:call)
    end
  end

  context 'with CallableClass included' do
    let(:callable_klass) { Test.include(described_class) }

    it 'responds to .call' do
      expect(callable_klass).to respond_to(:call)
    end

    it 'responses should be the same' do
      expect(callable_klass.call('hello')).to eq(callable_klass.new('hello').call)
    end
  end
end
