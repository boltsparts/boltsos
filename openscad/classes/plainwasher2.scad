/* Generated by BOLTS, do not modify */
function plainwasher2_table_0(idx) =
//d1, d2, s
idx == "M5" ? [5.5, 10.0, 1.0] :
idx == "M6" ? [6.6, 12.0, 1.6] :
idx == "M7" ? [7.6, 14.0, 1.6] :
idx == "M8" ? [9.0, 16.0, 1.6] :
idx == "M10" ? [11.0, 20.0, 2.0] :
idx == "M12" ? [13.5, 24.0, 2.5] :
idx == "M14" ? [15.5, 28.0, 2.5] :
idx == "M16" ? [17.5, 30.0, 3.0] :
idx == "M20" ? [22.0, 37.0, 3.0] :
idx == "M22" ? [24.0, 39.0, 3.0] :
idx == "M24" ? [26.0, 44.0, 4.0] :
idx == "M27" ? [30.0, 50.0, 4.0] :
idx == "M30" ? [33.0, 56.0, 4.0] :
idx == "M33" ? [36.0, 60.0, 5.0] :
idx == "M36" ? [39.0, 66.0, 5.0] :
idx == "M39" ? [42.0, 72.0, 6.0] :
idx == "M42" ? [45.0, 78.0, 7.0] :
idx == "M45" ? [48.0, 85.0, 7.0] :
idx == "M48" ? [52.0, 92.0, 8.0] :
idx == "M52" ? [56.0, 98.0, 8.0] :
idx == "M56" ? [62.0, 105.0, 9.0] :
idx == "M60" ? [66.0, 110.0, 9.0] :
idx == "M64" ? [70.0, 115.0, 9.0] :
idx == "M72" ? [78.0, 125.0, 10.0] :
idx == "M80" ? [86.0, 140.0, 12.0] :
idx == "M90" ? [96.0, 160.0, 12.0] :
idx == "M100" ? [107.0, 175.0, 14.0] :
"Error";

function plainwasher2_dims(key="M10", part_mode="default") = [
	["key", key],
	["d1", BOLTS_convert_to_default_unit(plainwasher2_table_0(key)[0],"mm")],
	["d2", BOLTS_convert_to_default_unit(plainwasher2_table_0(key)[1],"mm")],
	["s", BOLTS_convert_to_default_unit(plainwasher2_table_0(key)[2],"mm")]];

function plainwasher2_conn(location,key="M10", part_mode="default") = new_cs(
	origin=washerConn(BOLTS_convert_to_default_unit(plainwasher2_table_0(key)[1],"mm"), BOLTS_convert_to_default_unit(plainwasher2_table_0(key)[2],"mm"), location)[0],
	axes=washerConn(BOLTS_convert_to_default_unit(plainwasher2_table_0(key)[1],"mm"), BOLTS_convert_to_default_unit(plainwasher2_table_0(key)[2],"mm"), location)[1]);

module plainwasher2_geo(key, part_mode){
	washer1(
		get_dim(plainwasher2_dims(key, part_mode),"d1"),
		get_dim(plainwasher2_dims(key, part_mode),"d2"),
		get_dim(plainwasher2_dims(key, part_mode),"s")
	);
};

module DIN126(key="M10", part_mode="default"){
	BOLTS_check_parameter_type("DIN126","key",key,"Table Index");
	if(BOLTS_MODE == "bom"){
		if(!(part_mode == "diff")){
			echo(str("Plain washer DIN 126 ",key,""));
		}
		cube();
	} else {
		plainwasher2_geo(key, part_mode);
	}
};

function DIN126_dims(key="M10", part_mode="default") = plainwasher2_dims(key, part_mode);

function DIN126_conn(location,key="M10", part_mode="default") = plainwasher2_conn(location,key, part_mode);

module DINENISO7091(key="M10", part_mode="default"){
	BOLTS_check_parameter_type("DINENISO7091","key",key,"Table Index");
	if(BOLTS_MODE == "bom"){
		if(!(part_mode == "diff")){
			echo(str("Plain washer DINENISO 7091 ",key,""));
		}
		cube();
	} else {
		plainwasher2_geo(key, part_mode);
	}
};

function DINENISO7091_dims(key="M10", part_mode="default") = plainwasher2_dims(key, part_mode);

function DINENISO7091_conn(location,key="M10", part_mode="default") = plainwasher2_conn(location,key, part_mode);

module DINISO7091(key="M10", part_mode="default"){
	BOLTS_check_parameter_type("DINISO7091","key",key,"Table Index");
	if(BOLTS_MODE == "bom"){
		if(!(part_mode == "diff")){
			echo(str("Plain washer DIN ISO 7091 ",key,""));
		}
		cube();
	} else {
		plainwasher2_geo(key, part_mode);
	}
};

function DINISO7091_dims(key="M10", part_mode="default") = plainwasher2_dims(key, part_mode);

function DINISO7091_conn(location,key="M10", part_mode="default") = plainwasher2_conn(location,key, part_mode);

module ISO7091(key="M10", part_mode="default"){
	BOLTS_check_parameter_type("ISO7091","key",key,"Table Index");
	if(BOLTS_MODE == "bom"){
		if(!(part_mode == "diff")){
			echo(str("Plain washer ISO 7091 ",key,""));
		}
		cube();
	} else {
		plainwasher2_geo(key, part_mode);
	}
};

function ISO7091_dims(key="M10", part_mode="default") = plainwasher2_dims(key, part_mode);

function ISO7091_conn(location,key="M10", part_mode="default") = plainwasher2_conn(location,key, part_mode);

