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

    # Creates a new YUI::JavaScriptCompressor for minifying JavaScript code.
    #
    # Options are:
    #
    # <tt>:charset</tt>::    Specifies the character encoding to use. Defaults to
    #                        <tt>"utf-8"</tt>.
    # <tt>:line_break</tt>:: By default, JavaScript will be compressed onto a
    #                        single line. Use this option to specify the
    #                        maximum number of characters in each line before a
    #                        newline is added. If <tt>:line_break</tt> is 0, a
    #                        newline is added after each JavaScript statement.
    # <tt>:munge</tt>::      Specifies whether YUI Compressor should shorten local
    #                        variable names when possible. Defaults to +false+.
    # <tt>:optimize</tt>::   Specifies whether YUI Compressor should optimize
    #                        JavaScript object property access and object literal
    #                        declarations to use as few characters as possible.
    #                        Defaults to +true+.
    # <tt>:preserve_semicolons</tt>:: Defaults to +false+. If +true+, YUI
    #                                 Compressor will ensure semicolons exist
    #                                 after each statement to appease tools like
    #                                 JSLint.
    #
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
