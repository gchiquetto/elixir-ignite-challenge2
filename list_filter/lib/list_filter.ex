defmodule ListFilter do
  require Integer
  def call(list) do

    list = Enum.filter(list, fn x -> check_if_its_a_number(x) != nil end)
    |> Enum.map(fn x -> check_if_its_a_number(x) end)
    |> Enum.filter(fn x -> Integer.is_odd(x) == true end)

    length(list)
  end

  def check_if_its_a_number(item) do
    case Integer.parse(item) do
      {_, ""} -> String.to_integer(item)
      _ -> nil
    end
  end
end
