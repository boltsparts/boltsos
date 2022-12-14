/* Generated by BOLTS, do not modify */
function hexagonnut3_table_0(idx) =
//d1, s, m_max
idx == "0.25 in" ? [0.25, 0.4375, 0.21875] :
idx == "0.3125 in" ? [0.3125, 0.5, 0.265625] :
idx == "0.375 in" ? [0.375, 0.5625, 0.328125] :
idx == "0.4375 in" ? [0.4375, 0.6875, 0.375] :
idx == "0.5 in" ? [0.5, 0.75, 0.4375] :
idx == "0.5625 in" ? [0.5625, 0.875, 0.484375] :
idx == "0.625 in" ? [0.625, 0.9375, 0.546875] :
idx == "0.75 in" ? [0.75, 1.125, 0.640625] :
idx == "0.875 in" ? [0.875, 1.3125, 0.75] :
idx == "1 in" ? [1.0, 1.5, 0.859375] :
idx == "1.125 in" ? [1.125, 1.6875, 0.96875] :
idx == "1.375 in" ? [1.375, 2.0625, 1.171875] :
idx == "1.5 in" ? [1.5, 2.25, 1.28125] :
idx == "1.625 in" ? [1.625, 2.4375, 1.390625] :
idx == "1.75 in" ? [1.75, 2.625, 1.5] :
idx == "2 in" ? [2.0, 3.0, 1.71875] :
idx == "2.25 in" ? [2.25, 3.375, 1.9375] :
idx == "2.5 in" ? [2.5, 3.75, 2.15625] :
idx == "2.75 in" ? [2.75, 4.125, 2.375] :
idx == "3 in" ? [3.0, 4.5, 2.59375] :
"Error";

function hexagonnut3_dims(key="0.375 in", part_mode="default") = [
	["d1", BOLTS_convert_to_default_unit(hexagonnut3_table_0(key)[0],"in")],
	["s", BOLTS_convert_to_default_unit(hexagonnut3_table_0(key)[1],"in")],
	["key", key],
	["m_max", BOLTS_convert_to_default_unit(hexagonnut3_table_0(key)[2],"in")]];

function hexagonnut3_conn(location,key="0.375 in", part_mode="default") = new_cs(
	origin=nutConn(BOLTS_convert_to_default_unit(hexagonnut3_table_0(key)[2],"in"), location)[0],
	axes=nutConn(BOLTS_convert_to_default_unit(hexagonnut3_table_0(key)[2],"in"), location)[1]);

module hexagonnut3_geo(key, part_mode){
	nut1(
		get_dim(hexagonnut3_dims(key, part_mode),"d1"),
		get_dim(hexagonnut3_dims(key, part_mode),"s"),
		get_dim(hexagonnut3_dims(key, part_mode),"m_max")
	);
};

module ANSIB1822(key="0.375 in", part_mode="default"){
	BOLTS_check_parameter_type("ANSIB1822","key",key,"Table Index");
	if(BOLTS_MODE == "bom"){
		if(!(part_mode == "diff")){
			echo(str("Hexagon nut ANSI B18.2.2 ",key,""));
		}
		cube();
	} else {
		hexagonnut3_geo(key, part_mode);
	}
};

function ANSIB1822_dims(key="0.375 in", part_mode="default") = hexagonnut3_dims(key, part_mode);

function ANSIB1822_conn(location,key="0.375 in", part_mode="default") = hexagonnut3_conn(location,key, part_mode);

module ASMEB1822(key="0.375 in", part_mode="default"){
	BOLTS_check_parameter_type("ASMEB1822","key",key,"Table Index");
	if(BOLTS_MODE == "bom"){
		if(!(part_mode == "diff")){
			echo(str("Hexagon nut ASME B18.2.2 ",key,""));
		}
		cube();
	} else {
		hexagonnut3_geo(key, part_mode);
	}
};

function ASMEB1822_dims(key="0.375 in", part_mode="default") = hexagonnut3_dims(key, part_mode);

function ASMEB1822_conn(location,key="0.375 in", part_mode="default") = hexagonnut3_conn(location,key, part_mode);

module ImperialHexagonNut(key="0.375 in", part_mode="default"){
	BOLTS_check_parameter_type("ImperialHexagonNut","key",key,"Table Index");
	if(BOLTS_MODE == "bom"){
		if(!(part_mode == "diff")){
			echo(str("Imperial hexagon nut"));
		}
		cube();
	} else {
		hexagonnut3_geo(key, part_mode);
	}
};

function ImperialHexagonNut_dims(key="0.375 in", part_mode="default") = hexagonnut3_dims(key, part_mode);

function ImperialHexagonNut_conn(location,key="0.375 in", part_mode="default") = hexagonnut3_conn(location,key, part_mode);

