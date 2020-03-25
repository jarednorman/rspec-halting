require "rspec/expectations"
require "timeout"

RSpec::Matchers.define :halt do |expected|
  # Okay, you caught me. I didn't actually solve the halting problem. Instead
  # this just calls your code and gives up if it takes more than 5 seconds.
  # Let's be honest, if your code takes more than 5 seconds it might as well
  # never finish, amirite?
  #
  # WARNING: this code uses Ruby's Timeout module which is not generally safe
  # for use:
  #
  # https://jvns.ca/blog/2015/11/27/why-rubys-timeout-is-dangerous-and-thread-dot-raise-is-terrifying/
  #
  # ANOTHER WARNING: This is just an April Fools' Day joke.
  match do |actual|
    Timeout.timeout(5) { actual.call }
    true
  rescue Timeout::Error
    false
  end

  failure_message do |actual|
    "expected the given block to halt"
  end

  def supports_block_expectations?
    true
  end
end
