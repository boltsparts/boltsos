/* Generated by BOLTS, do not modify */
function singlerowradialbearing_table_0(idx) =
//d1, d2, B, r_fillet
idx == "607" ? [7.0, 19.0, 6.0, 0.5] :
idx == "608" ? [8.0, 22.0, 7.0, 0.5] :
idx == "609" ? [9.0, 24.0, 7.0, 0.5] :
idx == "623" ? [3.0, 10.0, 4.0, 0.3] :
idx == "624" ? [4.0, 13.0, 5.0, 0.4] :
idx == "625" ? [5.0, 16.0, 5.0, 0.5] :
idx == "626" ? [6.0, 19.0, 6.0, 0.5] :
idx == "627" ? [7.0, 22.0, 7.0, 0.5] :
idx == "629" ? [9.0, 26.0, 8.0, 1.0] :
idx == "634" ? [4.0, 16.0, 5.0, 0.5] :
idx == "635" ? [5.0, 19.0, 6.0, 0.5] :
idx == "16002" ? [15.0, 32.0, 8.0, 0.5] :
idx == "16003" ? [17.0, 35.0, 8.0, 0.5] :
idx == "16004" ? [20.0, 42.0, 8.0, 0.5] :
idx == "16005" ? [25.0, 47.0, 8.0, 0.5] :
idx == "16006" ? [30.0, 55.0, 9.0, 0.5] :
idx == "16007" ? [35.0, 62.0, 9.0, 0.5] :
idx == "16100" ? [10.0, 28.0, 8.0, 0.5] :
idx == "16101" ? [12.0, 30.0, 8.0, 0.5] :
idx == "6000" ? [10.0, 26.0, 8.0, 0.5] :
idx == "6001" ? [12.0, 28.0, 8.0, 0.5] :
idx == "6002" ? [15.0, 32.0, 9.0, 0.5] :
idx == "6003" ? [17.0, 35.0, 10.0, 0.5] :
idx == "6004" ? [20.0, 42.0, 12.0, 1.0] :
idx == "6005" ? [25.0, 47.0, 12.0, 1.0] :
idx == "6006" ? [30.0, 55.0, 13.0, 1.5] :
idx == "6007" ? [35.0, 62.0, 14.0, 1.5] :
idx == "6200" ? [10.0, 30.0, 9.0, 1.0] :
idx == "6201" ? [12.0, 32.0, 10.0, 1.0] :
idx == "6202" ? [15.0, 35.0, 11.0, 1.0] :
idx == "6203" ? [17.0, 40.0, 12.0, 1.0] :
idx == "6204" ? [20.0, 47.0, 14.0, 1.5] :
idx == "6205" ? [25.0, 52.0, 15.0, 1.5] :
idx == "6206" ? [30.0, 62.0, 16.0, 1.5] :
idx == "6300" ? [10.0, 35.0, 11.0, 1.0] :
idx == "6301" ? [12.0, 37.0, 12.0, 1.5] :
idx == "6302" ? [15.0, 42.0, 13.0, 1.5] :
idx == "6303" ? [17.0, 47.0, 14.0, 1.5] :
idx == "6304" ? [20.0, 52.0, 15.0, 2.0] :
idx == "6305" ? [25.0, 62.0, 17.0, 2.0] :
"Error";

function singlerowradialbearing_table_1(idx) =
//postfix
idx == "open" ? [""] :
idx == "shielded, single" ? ["-Z"] :
idx == "shielded, double" ? ["-ZZ"] :
idx == "sealed, single" ? ["-RS"] :
idx == "sealed, double" ? ["-2RS"] :
"Error";

function singlerowradialbearing_dims(key="608", type="open", part_mode="default") = [
	["d2", BOLTS_convert_to_default_unit(singlerowradialbearing_table_0(key)[1],"mm")],
	["postfix", singlerowradialbearing_table_1(type)[0]],
	["B", BOLTS_convert_to_default_unit(singlerowradialbearing_table_0(key)[2],"mm")],
	["r_fillet", BOLTS_convert_to_default_unit(singlerowradialbearing_table_0(key)[3],"mm")],
	["key", key],
	["type", type],
	["d1", BOLTS_convert_to_default_unit(singlerowradialbearing_table_0(key)[0],"mm")]];

module singlerowradialbearing_geo(key, type, part_mode){
	singlerowradialbearing(
		get_dim(singlerowradialbearing_dims(key, type, part_mode),"d1"),
		get_dim(singlerowradialbearing_dims(key, type, part_mode),"d2"),
		get_dim(singlerowradialbearing_dims(key, type, part_mode),"B"),
		get_dim(singlerowradialbearing_dims(key, type, part_mode),"type")
	);
};

module DIN625_1(key="608", type="open", part_mode="default"){
	BOLTS_check_parameter_type("DIN625_1","key",key,"Table Index");
	BOLTS_check_parameter_type("DIN625_1","type",type,"Table Index");
	if(BOLTS_MODE == "bom"){
		if(!(part_mode == "diff")){
			echo(str("Radial Ball Bearing DIN625-1 ",key,"",singlerowradialbearing_table_1(type)[0],""));
		}
		cube();
	} else {
		singlerowradialbearing_geo(key, type, part_mode);
	}
};

function DIN625_1_dims(key="608", type="open", part_mode="default") = singlerowradialbearing_dims(key, type, part_mode);

function DIN625_1_conn(location,key="608", type="open", part_mode="default") = singlerowradialbearing_conn(location,key, type, part_mode);

module RadialBallBearing(key="608", type="open", part_mode="default"){
	BOLTS_check_parameter_type("RadialBallBearing","key",key,"Table Index");
	BOLTS_check_parameter_type("RadialBallBearing","type",type,"Table Index");
	if(BOLTS_MODE == "bom"){
		if(!(part_mode == "diff")){
			echo(str("Radial Ball Bearing ",key,"",singlerowradialbearing_table_1(type)[0],""));
		}
		cube();
	} else {
		singlerowradialbearing_geo(key, type, part_mode);
	}
};

function RadialBallBearing_dims(key="608", type="open", part_mode="default") = singlerowradialbearing_dims(key, type, part_mode);

function RadialBallBearing_conn(location,key="608", type="open", part_mode="default") = singlerowradialbearing_conn(location,key, type, part_mode);

