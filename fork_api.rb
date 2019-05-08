def create_process range
  reader, writer = IO.pipe

  fork do
    sum = range.reduce(0) do |sum, acc|
      sum = sum + acc
      sum
    end

    writer.puts sum
  end

  writer.close
  reader
end


readers_for_process = []
readers_for_process << create_process(1..10)
readers_for_process << create_process(11..20)
readers_for_process << create_process(21..30)


total = 0
readers_for_process.each do |reader|
  total = total + reader.read.to_i
end

p total
