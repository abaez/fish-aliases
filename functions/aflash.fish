function aflash -d "usage: flash [*raw.xz] [/dev/sd*]"
  set -l raw ""
  set -l dev ""

  for v in $argv
    switch $v
      case "*.raw.xz" "*.img.xz"
        set raw $v
      case "/dev/sd*"
        set dev $v
      case "*"
        echo "usage: flash [*raw.xz] [/dev/sd*]"
        exit
    end
  end

  if test -n $raw
    command sudo xzcat $raw | dd bs=4M of=$dev iflag=fullblock oflag=direct
    command sudo sync
    echo "finish the run"
  else
    echo "usage: flash [*raw.xz] [/dev/sd*]"
  end
end
