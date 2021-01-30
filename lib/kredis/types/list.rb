class Kredis::Types::List < Kredis::Proxy
  def elements
    lrange(0, -1) || []
  end

  def remove(elements)
    Array(elements).each { |element| lrem 0, element }
  end

  def prepend(elements)
    lpush elements if Array(elements).any?
  end

  def append(elements)
    rpush elements if Array(elements).any?
  end
end
