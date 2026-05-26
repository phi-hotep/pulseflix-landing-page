# Patch for Ruby 3.2+ compatibility - tainted? was removed
module Liquid
  class Variable
    def taint_check(obj)
      # no-op: tainted? removed in Ruby 3.2
    end
  end
end