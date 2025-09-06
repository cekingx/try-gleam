import gleam/result
import gleam/io
import gleam/int

pub fn try_result_map() -> Nil {
  io.println("--- Result Map ---")
  let _ = echo result.map(Ok(1), fn (x) { x + 2 })
  let _ = echo result.map(Error(1), fn (x) { x + 2 })
  io.println("")

  io.println("--- Result Try ---")
  let _ = echo result.try(Ok("1"), int.parse)
  let _ = echo result.try(Ok("no"), int.parse)
  let _ = echo result.try(Error(Nil), int.parse)
  io.println("")

  io.println("--- Result Unwrap ---")
  echo result.unwrap(Ok("1"), "default")
  echo result.unwrap(Error("error"), "default")
  io.println("")

  io.println("--- Pipeline ---")
  let _ = int.parse("-12")
  |> result.map(int.absolute_value)
  |> result.try(int.remainder(_, 5))
  |> result.unwrap(0)
  |> echo

  Nil
}

pub fn try_result() -> Nil {
  try_result_map()
}
