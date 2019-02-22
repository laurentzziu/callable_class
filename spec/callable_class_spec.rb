require './spec/helpers/test.rb'

RSpec.describe CallableClass do
  it 'has a version number' do
    expect(CallableClass::VERSION).not_to be(nil)
  end

  context 'Test Class' do
    context 'base class' do
      it 'should not respond to .call' do
        expect(Test).to_not respond_to(:call)
      end
      it 'should respond to #call' do
        expect(Test.new('hello')).to respond_to(:call)
      end
    end

    context 'with CallableClass included' do
      let(:callable_klass) { Test.include(CallableClass) }

      it 'should responds to .call' do
        expect(callable_klass).to respond_to(:call)
      end

      it 'should have the same response for instance and class call' do
        expect(callable_klass.call('hello')).to eq(callable_klass.new('hello').call)
      end
    end
  end
end
