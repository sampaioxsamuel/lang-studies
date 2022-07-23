##### Taken from: [Elixir school](https://elixirschool.com/en/lessons/basics/pipe_operator)

Pipe Operator ( |> )

```elixir
string = " bbbbbBBbb \n"

# to remove the whitespace/uppercase normally we do
string = String.trim(String.downcase(string))
# "bbbbbbbbb"

# with pipe operator
string = string |> String.trim |> String.downcase
# same result as before
```