app = Proc.new {
  [
    404,
    {"Content-Type" => "text/html"},
    ["Hello Ruby"]
  ]
}

run app