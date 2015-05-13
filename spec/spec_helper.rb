$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)
require 'protobuf'

$LOAD_PATH << ::File.expand_path("../../lib/protobuf/descriptors", __FILE__)
require 'google/protobuf/compiler/plugin.pb'

$LOAD_PATH << ::File.expand_path('../support', __FILE__)
support_proto_glob = File.expand_path('../support/**/*.pb.rb', __FILE__)
Dir[support_proto_glob].each { |proto_file| require proto_file }
