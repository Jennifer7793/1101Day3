class Cat
  def call(envi)
    [
      200,
      {"Content-Type" => "text/html"},
      ["Hello From Cat"]
    ]
  end
end

kitty = Cat.new

run kitty

# app = Proc.new {
#   [
#     404,
#     {"Content-Type" => "text/html"},
#     ["Hello Ruby"]
#   ]
# }

# run app