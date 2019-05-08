def hello
  yield
end

message = "I'm NEET!!"

hello { p message }
