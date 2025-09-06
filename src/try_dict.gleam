import gleam/dict

pub fn try_dict() -> Nil {
  let first = dict.from_list([#("Dirga", 1), #("Yasa", 2)])
  echo first

  let second = dict.insert(first, "Dewa", 3)
  echo second

  let third = first
    |> dict.insert("Gede", 4)
  echo third

  let fourth = first
    |> dict.delete("Dirga")
  echo fourth

  first
    |> dict.insert("Dewa", 3)
    |> dict.insert("Gede", 4)
    |> dict.delete("Yasa")
    |> echo

  Nil
}
