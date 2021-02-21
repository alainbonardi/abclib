//
//--------------------------------------------------------------------------------------//
//ENVELOPE FOLLOWER
//--------------------------------------------------------------------------------------//
//
import("stdfaust.lib");
//
//does not require any .dsp file from abcutilities
//
//--------------------------------------------------------------------------------------//
//CONTROL PARAMETERS
//--------------------------------------------------------------------------------------//
attack = hslider("v:envfollower/attack [unit:sec]", 0.001, 0.0001, 1, 0.0001); //attack duration in seconds
release = hslider("v:envfollower/release [unit:sec]", 0.01, 0.0001, 1, 0.0001); //release duration in seconds
//
envfollower = an.amp_follower_ar(attack, release);
//
