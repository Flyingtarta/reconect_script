/*
	Author: [Calaveras] Tarta

	Description:
	verifica si se esta reconectando el jugador y en caso de hacerlo, lo mueve a la posicion donde se desconecto
   se ejecuta en servidor

	Parameter(s):
		0:OBJECT - Objeto jugador
		1: INT - UID del jugador
	Returns:
	  nada
*/

waituntil {sleep 1;!isnil "TARTA_RECONECTADOS"};
private _player = _this select 0;
private _uid = _this select 1;

_idx = TARTA_RECONECTADOS findif {_uid isequalto (_x select 0)};
if (_idx isnotequalto -1) then {
   _player setpos (TARTA_RECONECTADOS select _idx); //movemos al jugador a la posicion
   TARTA_RECONECTADOS deleteat _idx; //borramos el valor
};
