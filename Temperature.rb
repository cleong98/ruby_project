class Temperature
  def toCel(temp) 
    (temp - 32) * 5 /9
  end
  def toFah(temp) 
    (temp * 9 / 5) + 32
  end
end
