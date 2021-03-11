defmodule ListFilter do
  def call(list) do
    listWithoutStrings =
      Enum.flat_map(list, fn string ->
        case Integer.parse(string) do
          {int, _rest} -> [int]
          :error -> []
        end
      end)

    countOddNums(listWithoutStrings)
  end

  def countOddNums(list) do
    Enum.count(list, fn x -> rem(x, 2) !== 0 end)
  end
end
