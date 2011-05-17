require "popen4"
require "shellwords"
require "stringio"

module HtmlCompressor #:nodoc:
  class HtmlCompressor < Compressor
    def self.compressor_type #:nodoc:
      "html"
    end

    def self.default_options #:nodoc:
      super.merge(
        :munge    => false,
        :optimize => true,
        :preserve_semicolons => false
      )
    end

    def initialize(options = {})
      super
    end

    private
      def command_option_for_munge(munge)
        munge ? [] : ["--nomunge"]
      end

      def command_option_for_optimize(optimize)
        optimize ? [] : ["--disable-optimizations"]
      end

      def command_option_for_preserve_semicolons(preserve_semicolons)
        preserve_semicolons ? ["--preserve-semi"] : []
      end
  end
end
