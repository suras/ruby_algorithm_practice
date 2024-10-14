class Queue
  
  def initialize(arr)
    @arr = arr
  end

  def enqueue(elm)
    @arr << elm
  end

  def dequeue
    @arr.shift
  end

  def read
    @arr.first
  end

end