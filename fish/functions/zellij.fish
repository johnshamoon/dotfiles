function zellij --wraps zellij --argument-names subcommand1
  if test (count $argv) = 1 ; and test $subcommand1 = "detach"
      command zellij action detach
      return $status
  end
  command zellij $argv
end
