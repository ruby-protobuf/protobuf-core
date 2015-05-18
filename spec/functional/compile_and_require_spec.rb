require 'spec_helper'

RSpec.describe 'can compile and load a class' do
  before(:context) do
    proto_path = File.expand_path('../../support/test/bacon.proto', __FILE__)
    ruby_path = proto_path.sub('.proto','.pb.rb')
    proto_load_path = File.dirname(proto_path)
    File.unlink(ruby_path) if File.file?(ruby_path)
    `protoc --plugin=./bin/protoc-gen-ruby --ruby_out=#{proto_load_path} -I #{proto_load_path} #{proto_path}`
    require(ruby_path)
  end

  after(:context) do
    Object.send(:remove_const, :Bacon) if defined?(Bacon)
  end

  it 'compiles a Bacon class' do
    expect(defined?(Bacon)).to eq 'constant'
  end

  it 'has getters and setters' do
    bacon = Bacon.new
    bacon.deliciousness = 10
    bacon.texture = Texture::CRUNCHY

    expect(bacon.deliciousness).to eq 10
    expect(bacon.texture).to eq Texture::CRUNCHY
  end
end
