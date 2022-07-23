# Anonymous functions

```elixir

multiply = fn first, second -> first * second end

multiply.(5, 2)
# 10

read_file = fn
  {:ok, result} -> "Success, message: #{result}"
  {:error, result} -> "Error, message: #{result}"
end

read_file.(File.read("test.txt"))
# {:ok, "Success, message: test file\n"}

read_file.(File.read("test2.txt"))
# {:error, "Error, message: enoent"}

# or

read_file.({:ok, "test"})
# {:ok, "Success, message: test"}

read_file.({:error, "some_error_message"})
# {:error, "Error, message: some_error_message"}
```
