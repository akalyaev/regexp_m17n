module RegexpM17N
  def self.non_empty?(str)
    conv_str = str.encode('UTF-8', str.encoding, invalid: :replace, undef: :replace, replace: '?')
    conv_str =~ /\A.+\z/
  end
end
