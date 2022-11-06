/* Generated by BOLTS, do not modify */
function hexsocketheadcap_table_0(idx) =
//d1, d2, b, k, s, t_min, L
idx == "M1.4" ? [1.4, 2.6, "None", 1.4, 1.25, "None", 12.0] :
idx == "M1.6" ? [1.6, 3.0, 15.0, 1.6, 1.5, 0.7, 16.0] :
idx == "M1.8" ? [1.8, 3.4, "None", 1.8, 1.5, "None", 16.0] :
idx == "M2" ? [2.0, 3.8, 16.0, 2.0, 1.5, 1.0, 20.0] :
idx == "M2.5" ? [2.5, 4.5, 17.0, 2.5, 2.0, 1.1, 25.0] :
idx == "M3" ? [3.0, 5.5, 18.0, 3.0, 2.5, 1.3, 20.0] :
idx == "M4" ? [4.0, 7.0, 20.0, 4.0, 3.0, 2.0, 25.0] :
idx == "M5" ? [5.0, 8.5, 22.0, 5.0, 4.0, 2.5, 25.0] :
idx == "M6" ? [6.0, 10.0, 24.0, 6.0, 5.0, 3.0, 30.0] :
idx == "M8" ? [8.0, 13.0, 28.0, 8.0, 6.0, 4.0, 35.0] :
idx == "M10" ? [10.0, 16.0, 32.0, 10.0, 8.0, 5.0, 40.0] :
idx == "M12" ? [12.0, 18.0, 36.0, 12.0, 10.0, 6.0, 50.0] :
idx == "M14" ? [14.0, 21.0, 40.0, 14.0, 12.0, 7.0, 55.0] :
idx == "M16" ? [16.0, 24.0, 44.0, 16.0, 14.0, 8.0, 60.0] :
idx == "M18" ? [18.0, 27.0, 48.0, 18.0, 14.0, 9.0, 65.0] :
idx == "M20" ? [20.0, 30.0, 52.0, 20.0, 17.0, 10.0, 70.0] :
idx == "M22" ? [22.0, 33.0, 56.0, 22.0, 17.0, 11.0, 75.0] :
idx == "M24" ? [24.0, 36.0, 60.0, 24.0, 19.0, 12.0, 80.0] :
idx == "M27" ? [27.0, 40.0, 66.0, 27.0, 19.0, 13.5, 90.0] :
idx == "M30" ? [30.0, 45.0, 72.0, 30.0, 22.0, 15.5, 100.0] :
idx == "M33" ? [33.0, 50.0, 78.0, 33.0, 24.0, 18.0, 100.0] :
idx == "M36" ? [36.0, 54.0, 84.0, 36.0, 27.0, 19.0, 110.0] :
idx == "M42" ? [42.0, 63.0, 96.0, 42.0, 32.0, 24.0, 130.0] :
idx == "M48" ? [48.0, 72.0, 108.0, 48.0, 36.0, 28.0, 150.0] :
idx == "M52" ? [52.0, 78.0, 116.0, 52.0, 36.0, 31.0, "None"] :
idx == "M56" ? [56.0, 84.0, 124.0, 56.0, 41.0, 34.0, "None"] :
idx == "M64" ? [64.0, 96.0, 140.0, 64.0, 46.0, 38.0, "None"] :
"Error";

function hexsocketheadcap_dims(key="M3", l=20, part_mode="default") = [
	["k", BOLTS_convert_to_default_unit(hexsocketheadcap_table_0(key)[3],"mm")],
	["L", BOLTS_convert_to_default_unit(hexsocketheadcap_table_0(key)[6],"mm")],
	["d1", BOLTS_convert_to_default_unit(hexsocketheadcap_table_0(key)[0],"mm")],
	["b", BOLTS_convert_to_default_unit(hexsocketheadcap_table_0(key)[2],"mm")],
	["l", l],
	["s", BOLTS_convert_to_default_unit(hexsocketheadcap_table_0(key)[4],"mm")],
	["t_min", BOLTS_convert_to_default_unit(hexsocketheadcap_table_0(key)[5],"mm")],
	["d2", BOLTS_convert_to_default_unit(hexsocketheadcap_table_0(key)[1],"mm")],
	["key", key]];

module hexsocketheadcap_geo(key, l, part_mode){
	hex_socket2(
		get_dim(hexsocketheadcap_dims(key, l, part_mode),"d1"),
		get_dim(hexsocketheadcap_dims(key, l, part_mode),"d2"),
		get_dim(hexsocketheadcap_dims(key, l, part_mode),"b"),
		get_dim(hexsocketheadcap_dims(key, l, part_mode),"k"),
		get_dim(hexsocketheadcap_dims(key, l, part_mode),"s"),
		get_dim(hexsocketheadcap_dims(key, l, part_mode),"t_min"),
		get_dim(hexsocketheadcap_dims(key, l, part_mode),"L"),
		get_dim(hexsocketheadcap_dims(key, l, part_mode),"l")
	);
};

module DIN912(key="M3", l=20, part_mode="default"){
	BOLTS_check_parameter_type("DIN912","key",key,"Table Index");
	BOLTS_check_parameter_type("DIN912","l",l,"Length (mm)");
	if(BOLTS_MODE == "bom"){
		if(!(part_mode == "diff")){
			echo(str("Hex socket head cap screw DIN 912 ",key," ",l,""));
		}
		cube();
	} else {
		hexsocketheadcap_geo(key, l, part_mode);
	}
};

function DIN912_dims(key="M3", l=20, part_mode="default") = hexsocketheadcap_dims(key, l, part_mode);

function DIN912_conn(location,key="M3", l=20, part_mode="default") = hexsocketheadcap_conn(location,key, l, part_mode);

module DINENISO4762(key="M3", l=20, part_mode="default"){
	BOLTS_check_parameter_type("DINENISO4762","key",key,"Table Index");
	BOLTS_check_parameter_type("DINENISO4762","l",l,"Length (mm)");
	if(BOLTS_MODE == "bom"){
		if(!(part_mode == "diff")){
			echo(str("Hex socket head cap screw DINENISO 4762 ",key," ",l,""));
		}
		cube();
	} else {
		hexsocketheadcap_geo(key, l, part_mode);
	}
};

function DINENISO4762_dims(key="M3", l=20, part_mode="default") = hexsocketheadcap_dims(key, l, part_mode);

function DINENISO4762_conn(location,key="M3", l=20, part_mode="default") = hexsocketheadcap_conn(location,key, l, part_mode);

module ISO4762(key="M3", l=20, part_mode="default"){
	BOLTS_check_parameter_type("ISO4762","key",key,"Table Index");
	BOLTS_check_parameter_type("ISO4762","l",l,"Length (mm)");
	if(BOLTS_MODE == "bom"){
		if(!(part_mode == "diff")){
			echo(str("Hex socket head cap screw ISO 4762 ",key," ",l,""));
		}
		cube();
	} else {
		hexsocketheadcap_geo(key, l, part_mode);
	}
};

function ISO4762_dims(key="M3", l=20, part_mode="default") = hexsocketheadcap_dims(key, l, part_mode);

function ISO4762_conn(location,key="M3", l=20, part_mode="default") = hexsocketheadcap_conn(location,key, l, part_mode);

module MetricHexSocketHeadCapScrew(key="M3", l=20, part_mode="default"){
	BOLTS_check_parameter_type("MetricHexSocketHeadCapScrew","key",key,"Table Index");
	BOLTS_check_parameter_type("MetricHexSocketHeadCapScrew","l",l,"Length (mm)");
	if(BOLTS_MODE == "bom"){
		if(!(part_mode == "diff")){
			echo(str("Hex socket head cap screw ",key," ",l,""));
		}
		cube();
	} else {
		hexsocketheadcap_geo(key, l, part_mode);
	}
};

function MetricHexSocketHeadCapScrew_dims(key="M3", l=20, part_mode="default") = hexsocketheadcap_dims(key, l, part_mode);

function MetricHexSocketHeadCapScrew_conn(location,key="M3", l=20, part_mode="default") = hexsocketheadcap_conn(location,key, l, part_mode);

