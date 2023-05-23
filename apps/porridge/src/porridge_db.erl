-module(porridge_db).

-export([start_link/0, init/1]).

start_link() ->
    gen_server:start_link(?MODULE, [], []).

init([]) ->
    Storage = ets:new(t, [ordered_set]),
    receive
        {From, select, Pattern} ->
            From ! ets:match(Storage, Pattern)
    end.