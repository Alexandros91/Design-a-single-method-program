def calculate_reading_time(text)
  words = text.split.length
  return (words / 200.to_f).ceil
end