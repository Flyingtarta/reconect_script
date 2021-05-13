/*
	Author: [Calaveras] Tarta

	Description:
   	se ejecuta en pre-init inicializa variable y mission eventhandler

	Parameter(s):
		0:OBJECT - Objeto jugador
		1: INT - UID del jugador
	Returns:
	  nada
*/
if !(isserver) exitwith {};
TARTA_RECONECTADOS = [];

addMissionEventHandler ["HandleDisconnect", {
	params ["_unit", "_id", "_uid", "_name"];
   TARTA_RECONECTADOS pushBackUnique [_uid,getpos _unit];//agregamos al desconectado a la variable por si se vuelve a conectar
   false //que al morir no quede una IA en su lugar
}];
