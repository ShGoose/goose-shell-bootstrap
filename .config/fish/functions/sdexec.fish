function sdexec
  docker exec -it "$(docker ps -q -f name={$argv[1]} | head -n1)" $argv[2..]
end
