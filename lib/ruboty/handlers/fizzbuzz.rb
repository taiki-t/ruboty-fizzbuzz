require 'ruboty/fizzbuzz/actions/fizzbuzz'

module Ruboty
  module Handlers
    class Fizzbuzz < Base
      on /fizzbuzz (?<number>.*?)\z/, name: 'fizzbuzz', description: 'output fizzbuzz'

      def fizzbuzz(message)
        Ruboty::Fizzbuzz::Acioons::Fizzbuzz.new(message).call
      end
    end
  end
end
