private ["_x", "_res", "_structs"];

_res = [];
_structs = structMatrix select (_this select 0) select (_this select 1);
_structs = _structs - [objNull];

{ if ((alive _x) && ([getPos _x, _this select 0, stComm] call funcGetClosestStructure) select 1 < CCdistMax select (_this select 0) ) then {_res = _res + [_x]} } foreach _structs;
_res