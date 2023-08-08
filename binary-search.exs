defmodule BS do
  def search(target, array) do
    search(target, array, 0, length(array) - 1)
  end

  def search(_array, _target, low, high) when high < low do
    -1
  end

  def search(target, array, low, high) do
    mid = trunc(div(low + high, 2))
    cond do 
      target < Enum.at(array, mid) -> search(target, array, low, mid - 1)
      target > Enum.at(array, mid) -> search(target, array, mid+1, high)
      target == Enum.at(array, mid) -> true
    end
  end
end

list = [1,2,3,4,5,6,12,37, 42, 48, 78, 90, 100]
IO.puts BS.search(4, list)
