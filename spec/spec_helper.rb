$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)
require 'protobuf'

$LOAD_PATH << ::File.expand_path("../../lib/protobuf/descriptors", __FILE__)
require 'google/protobuf/compiler/plugin.pb'
