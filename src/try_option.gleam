import gleam/option.{ type Option, None, Some }

pub type Student {
  Student(name: String, favorite_teacher: Option(String))
}

pub fn try_option() -> Nil {
  let dirga = Student("Dirga", Some("Pak Tude"))
  let yasa = Student("Yasa", None)

  echo dirga
  echo yasa

  Nil
}
