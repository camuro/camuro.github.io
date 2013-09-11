module Rouge
  module Lexers
    class Conf < RegexLexer
      tag 'conf'
      aliases 'config', 'configuration'

      desc 'A generic lexer for configuration files'
      filenames '*.conf', '*.config'

      # short and sweet
      state :root do
        rule /#.*?\n/, Comment
        rule /".*?"/, Str::Double
        rule /'.*?'/, Str::Single
        rule /[a-z]\w*/i, Name
        rule /\d+/, Num
        rule /[^\d\w#"']+/, Text
      end
    end
  end
end
