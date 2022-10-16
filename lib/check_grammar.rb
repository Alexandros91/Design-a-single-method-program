def check_grammar(text)
  punctuation = [".", "!", "?", ":", ";"]
  if text.empty?
    fail "Not a sentence!"
  elsif text == text.capitalize && text.end_with?(*punctuation)
    return true
  else
    return false
  end
end