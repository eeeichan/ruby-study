f = Fiber.new do
  Fiber.yield "ニート最高"
  Fiber.yield "働きたくない"
  "働こう....."
end

p f.resume
p f.resume
p f.resume
