#Execute command in shell
#mine
#Elixir
System.cmd(command, args, opts \\ [])
#Erlang
LsOut = os:cmd("ls"), % on unix platform
#theirs
System.cmd("date") #seems like this is gone as of Elixir > 1
System.cmd("date",[]) #this works