json.array! @jokes do |joke|
  json.extract! joke, :content
end
