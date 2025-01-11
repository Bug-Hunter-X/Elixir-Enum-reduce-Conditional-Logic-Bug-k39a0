```elixir
list = [1, 2, 3, 4, 5]

Enum.reduce(list, 0, fn x, acc ->
  if x > 3 do
    acc + x
  else
    acc
  end
end)

#Improved Solution using Enum.filter for clarity
filtered_list = Enum.filter(list, fn x -> x > 3 end)
sum = Enum.sum(filtered_list)

IO.puts "Sum using Enum.reduce: #{Enum.reduce(list, 0, fn x, acc -> if x > 3 do acc + x else acc end end)}"
IO.puts "Sum using Enum.filter and Enum.sum: #{sum}"
```