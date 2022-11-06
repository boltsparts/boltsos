/* Generated by BOLTS, do not modify */
function singlerowradialbearingimperial_table_0(idx) =
//d1, d2, B, r_fillet
idx == "RLS4" ? [0.5, 1.3125, 0.375, 0.03125] :
idx == "RLS5" ? [0.625, 1.5625, 0.4375, 0.03125] :
idx == "RLS6" ? [0.75, 1.875, 0.5625, 0.0625] :
idx == "RLS7" ? [0.875, 2.0, 0.5625, 0.0625] :
idx == "RLS8" ? [1.0, 2.25, 0.625, 0.0625] :
idx == "RLS9" ? [1.125, 2.5, 0.625, 0.0625] :
idx == "RLS10" ? [1.25, 2.75, 0.6875, 0.0625] :
idx == "RLS11" ? [1.375, 3.0, 0.6875, 0.0625] :
idx == "RLS12" ? [1.5, 3.25, 0.75, 0.09375] :
idx == "RLS13" ? [1.625, 3.5, 0.75, 0.09375] :
idx == "RLS14" ? [1.75, 3.75, 0.8125, 0.09375] :
idx == "RLS15" ? [1.875, 4.0, 0.8125, 0.09375] :
idx == "RLS16" ? [2.0, 4.0, 0.8125, 0.09375] :
idx == "RLS18" ? [2.25, 4.5, 0.875, 0.09375] :
idx == "RLS20" ? [2.5, 5.0, 0.9375, 0.09375] :
idx == "RLS22" ? [2.75, 5.25, 0.9375, 0.09375] :
idx == "RLS24" ? [3.0, 5.75, 1.0625, 0.09375] :
idx == "RLS26" ? [3.25, 6.0, 1.0625, 0.09375] :
idx == "RMS4" ? [0.5, 1.625, 0.625, 0.0625] :
idx == "RMS5" ? [0.625, 1.8125, 0.625, 0.0625] :
idx == "RMS6" ? [0.75, 2.0, 0.6875, 0.0625] :
idx == "RMS7" ? [0.875, 2.25, 0.6875, 0.0625] :
idx == "RMS8" ? [1.0, 2.5, 0.75, 0.09375] :
idx == "RMS9" ? [1.125, 2.8125, 0.8125, 0.09375] :
idx == "RMS10" ? [1.25, 3.125, 0.875, 0.09375] :
idx == "RMS11" ? [1.375, 3.5, 0.875, 0.09375] :
idx == "RMS12" ? [1.5, 3.75, 0.9375, 0.09375] :
idx == "RMS13" ? [1.625, 4.0, 0.9375, 0.09375] :
idx == "RMS14" ? [1.75, 4.25, 1.0625, 0.09375] :
idx == "RMS15" ? [1.875, 4.5, 1.0625, 0.09375] :
idx == "RMS16" ? [2.0, 4.5, 1.0625, 0.09375] :
idx == "RMS18" ? [2.25, 5.0, 1.25, 0.125] :
idx == "RMS20" ? [2.5, 5.5, 1.25, 0.125] :
idx == "RMS22" ? [2.75, 6.125, 1.375, 0.125] :
idx == "RMS24" ? [3.0, 7.0, 1.5625, 0.15625] :
idx == "RMS26" ? [3.25, 7.5, 1.5625, 0.15625] :
"Error";

function singlerowradialbearingimperial_dims(key="RLS8", part_mode="default") = [
	["d2", BOLTS_convert_to_default_unit(singlerowradialbearingimperial_table_0(key)[1],"in")],
	["B", BOLTS_convert_to_default_unit(singlerowradialbearingimperial_table_0(key)[2],"in")],
	["r_fillet", BOLTS_convert_to_default_unit(singlerowradialbearingimperial_table_0(key)[3],"in")],
	["key", key],
	["type", open],
	["d1", BOLTS_convert_to_default_unit(singlerowradialbearingimperial_table_0(key)[0],"in")]];

module singlerowradialbearingimperial_geo(key, part_mode){
	singlerowradialbearing(
		get_dim(singlerowradialbearingimperial_dims(key, part_mode),"d1"),
		get_dim(singlerowradialbearingimperial_dims(key, part_mode),"d2"),
		get_dim(singlerowradialbearingimperial_dims(key, part_mode),"B"),
		get_dim(singlerowradialbearingimperial_dims(key, part_mode),"type")
	);
};

module RadialBallBearingImperial(key="RLS8", part_mode="default"){
	BOLTS_check_parameter_type("RadialBallBearingImperial","key",key,"Table Index");
	if(BOLTS_MODE == "bom"){
		if(!(part_mode == "diff")){
			echo(str("imperial Radial Ball Bearing ",key,""));
		}
		cube();
	} else {
		singlerowradialbearingimperial_geo(key, part_mode);
	}
};

function RadialBallBearingImperial_dims(key="RLS8", part_mode="default") = singlerowradialbearingimperial_dims(key, part_mode);

function RadialBallBearingImperial_conn(location,key="RLS8", part_mode="default") = singlerowradialbearingimperial_conn(location,key, part_mode);

