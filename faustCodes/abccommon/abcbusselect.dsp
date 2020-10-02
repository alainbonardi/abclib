//
import("stdfaust.lib");
//
//uses abclines.dsp file
//enables to switch between 2 buses of n signals, the left or the right one
//with a crossfade lasting ramp milliseconds
//
//--------------------------------------------------------------------------------------//
// CONTROL PARAMETERS
//--------------------------------------------------------------------------------------//
//
ramp = nentry("v:busselect/ramp [unit:msec]", 100, 0, 100000, 1); //transition ramp duration in msec//
leftOrRight = (nentry("v:busselect/leftOrRight", 0, 0, 1, 1), ramp) : line; //selection between left and right buses
//
//--------------------------------------------------------------------------------------//
// MIX TO ONE BUS
//--------------------------------------------------------------------------------------//
busselect(n) = (par(i, n, *(leftOrRight)), par(i, n, *(1-leftOrRight))) :> si.bus(n);
