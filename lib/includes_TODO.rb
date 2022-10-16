def includes_TODO?(text)
  if text.empty?
    fail "No text provided."
  elsif !text.include?("#TODO")
    return false
  else
    return true
  end
end