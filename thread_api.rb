@total = 0

def create_thread range
  Thread.new do
    sum = range.reduce(0) do |sum, acc|
      sum = sum + acc
      sum
    end

    @total = @total + sum
  end
end


threads = []
threads << create_thread(1..10)
threads << create_thread(11..20)
threads << create_thread(21..30)

#ワーカースレッドの終了を待つ
threads.each &:join

p @total

