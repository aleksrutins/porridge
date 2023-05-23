%%%-------------------------------------------------------------------
%% @doc porridge public API
%% @end
%%%-------------------------------------------------------------------

-module(porridge_app).

-behaviour(application).

-export([start/2, stop/1]).

start(_StartType, _StartArgs) ->
    porridge_sup:start_link().

stop(_State) ->
    ok.

%% internal functions
