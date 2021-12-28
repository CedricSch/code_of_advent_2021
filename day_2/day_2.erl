-module(day_2).
-export([measure_sliding/1]).

measure_sliding([]) -> 
    measure_sliding([], 0, 0);
measure_sliding(List) -> 
    measure_sliding(List, 0, 0).

measure_sliding([], _, Acc) ->
    Acc;
measure_sliding([_,_], _, Acc) ->
    Acc;
measure_sliding([_], _, Acc) ->
    Acc;
measure_sliding([X,Y,Z|T], PrevSum, Acc) when PrevSum > 0 ->
    New_Prev_Sum = X+Y+Z,
    if New_Prev_Sum > PrevSum -> measure_sliding([Y,Z] ++ T, New_Prev_Sum, Acc+1);
       New_Prev_Sum =< PrevSum -> measure_sliding([Y,Z] ++ T, New_Prev_Sum, Acc)
    end;
measure_sliding([X,Y,Z|T], PrevSum, Acc) ->
    measure_sliding([Y,Z] ++ T, X+Y+Z, Acc).
