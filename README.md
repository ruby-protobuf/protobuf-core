[![Build Status](https://travis-ci.org/ruby-protobuf/protobuf-core.svg?branch=master)](https://travis-ci.org/ruby-protobuf/protobuf-core)

# Protobuf::Core

This is an implemention of [Google's protocol buffers](http://code.google.com/p/protobuf) in pure ruby. It supports 2.5.0 currently.

This core gem supports the basics of:

* compiling `.proto` files into `.pb.rb` files
* encoding messages
* decoding messages

If all you need is the ability to convert binary protobuf messages into ruby objects, then this gem will fit the bill.

Extension gems to this gem add on the ability to run an RPC server and exchange messages over raw TCP sockets or [ZeroMQ](http://zeromq.org/).

## Contributing

1. Fork it ( https://github.com/[my-github-username]/protobuf-core/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
