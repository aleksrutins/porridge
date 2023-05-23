-module(porridge_sync).

-export([start_link/0, init/1]).

start_link() ->
    gen_server:start_link(?MODULE, [], []).

init([]) ->
    receive
        {sync_all} ->
            io:format("Syncing...~n")
    end.