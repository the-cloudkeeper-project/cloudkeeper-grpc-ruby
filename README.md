## cloudkeeper gRPC generated classes for Ruby

This repository contains Ruby classes generated for gRPC communication within the [cloudkeeper](https://github.com/the-cloudkeeper-project/cloudkeeper) project.

### Important!
Code expects `String` class to contain method `underscore` which can be find within [Active Support](https://guides.rubyonrails.org/active_support_core_extensions.html) gem. At least extensions for `String` class must be required:
```ruby
require 'active_support/core_ext/string'
```
