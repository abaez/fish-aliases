function rr -d "rustup run shorthand"
  switch "$argv[1]"
    case "s"
      command rustup run stable $argv[2..-1]
    case "b"
      command rustup run beta $argv[2..-1]
    case "n"
      command rustup run nightly $argv[2..-1]
    case "*"
      echo "usage: rr [s|b|n]"
  end
end
