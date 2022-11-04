/* Generated by BOLTS, do not modify */
function hexbolt2_table_0(idx) =
//d1, k, s, b1, b2, b3, e
idx == "M3" ? [3.0, 2.0, 5.5, 12.0, "None", "None", 6.01] :
idx == "M4" ? [4.0, 2.8, 7.0, 14.0, "None", "None", 7.66] :
idx == "M5" ? [5.0, 3.5, 8.0, 16.0, "None", "None", 8.79] :
idx == "M6" ? [6.0, 4.0, 10.0, 18.0, 24.0, "None", 11.05] :
idx == "M7" ? [7.0, 4.8, 11.0, 20.0, 26.0, "None", 12.12] :
idx == "M8" ? [8.0, 5.3, 13.0, 22.0, 28.0, "None", 14.38] :
idx == "M10" ? [10.0, 6.4, 16.0, 26.0, 32.0, 45.0, 18.9] :
idx == "M12" ? [12.0, 7.5, 18.0, 30.0, 36.0, 49.0, 21.1] :
idx == "M14" ? [14.0, 8.8, 21.0, 34.0, 40.0, 53.0, 24.49] :
idx == "M16" ? [16.0, 10.0, 24.0, 38.0, 44.0, 57.0, 26.75] :
idx == "M18" ? [18.0, 11.5, 27.0, 42.0, 48.0, 61.0, 30.14] :
idx == "M20" ? [20.0, 12.5, 30.0, 46.0, 52.0, 65.0, 33.53] :
idx == "M22" ? [22.0, 14.0, 34.0, 50.0, 56.0, 69.0, 35.72] :
idx == "M24" ? [24.0, 15.0, 36.0, 54.0, 60.0, 73.0, 39.98] :
idx == "M27" ? [27.0, 17.0, 41.0, 60.0, 66.0, 79.0, 45.2] :
idx == "M30" ? [30.0, 18.7, 46.0, 66.0, 72.0, 85.0, 50.85] :
idx == "M33" ? [33.0, 21.0, 50.0, 72.0, 78.0, 91.0, 55.37] :
idx == "M36" ? [36.0, 22.5, 55.0, 78.0, 84.0, 97.0, 60.79] :
idx == "M39" ? [39.0, 25.0, 60.0, 84.0, 90.0, 103.0, 66.44] :
idx == "M42" ? [42.0, 26.0, 65.0, 90.0, 96.0, 109.0, 71.3] :
idx == "M45" ? [45.0, 28.0, 70.0, 96.0, 102.0, 115.0, 76.95] :
idx == "M48" ? [48.0, 30.0, 75.0, 102.0, 108.0, 121.0, 82.6] :
idx == "M52" ? [52.0, 33.0, 80.0, "None", 116.0, 129.0, 88.25] :
idx == "M56" ? [56.0, 35.0, 85.0, "None", 124.0, 137.0, 93.56] :
idx == "M60" ? [60.0, 38.0, 90.0, "None", 132.0, 145.0, 99.21] :
idx == "M64" ? [64.0, 40.0, 95.0, "None", 140.0, 153.0, 104.86] :
"Error";

function hexbolt2_dims(key="M3", l=20, part_mode="default") = [
	["d1", BOLTS_convert_to_default_unit(hexbolt2_table_0(key)[0],"mm")],
	["e", BOLTS_convert_to_default_unit(hexbolt2_table_0(key)[6],"mm")],
	["b1", BOLTS_convert_to_default_unit(hexbolt2_table_0(key)[3],"mm")],
	["b3", BOLTS_convert_to_default_unit(hexbolt2_table_0(key)[5],"mm")],
	["key", key],
	["l", l],
	["s", BOLTS_convert_to_default_unit(hexbolt2_table_0(key)[2],"mm")],
	["k", BOLTS_convert_to_default_unit(hexbolt2_table_0(key)[1],"mm")],
	["b2", BOLTS_convert_to_default_unit(hexbolt2_table_0(key)[4],"mm")]];

function hexbolt2_conn(location,key="M3", l=20, part_mode="default") = new_cs(
	origin=hexConn(BOLTS_convert_to_default_unit(hexbolt2_table_0(key)[1],"mm"), l, location)[0],
	axes=hexConn(BOLTS_convert_to_default_unit(hexbolt2_table_0(key)[1],"mm"), l, location)[1]);

module hexbolt2_geo(key, l, part_mode){
	hex2(
		get_dim(hexbolt2_dims(key, l, part_mode),"d1"),
		get_dim(hexbolt2_dims(key, l, part_mode),"k"),
		get_dim(hexbolt2_dims(key, l, part_mode),"s"),
		get_dim(hexbolt2_dims(key, l, part_mode),"b1"),
		get_dim(hexbolt2_dims(key, l, part_mode),"b2"),
		get_dim(hexbolt2_dims(key, l, part_mode),"b3"),
		get_dim(hexbolt2_dims(key, l, part_mode),"l")
	);
};

module DINEN24014(key="M3", l=20, part_mode="default"){
	BOLTS_check_parameter_type("DINEN24014","key",key,"Table Index");
	BOLTS_check_parameter_type("DINEN24014","l",l,"Length (mm)");
	if(BOLTS_MODE == "bom"){
		if(!(part_mode == "diff")){
			echo(str("Hexagon head bolt DINEN 24014 ",key," - ",l,""));
		}
		cube();
	} else {
		hexbolt2_geo(key, l, part_mode);
	}
};

function DINEN24014_dims(key="M3", l=20, part_mode="default") = hexbolt2_dims(key, l, part_mode);

function DINEN24014_conn(location,key="M3", l=20, part_mode="default") = hexbolt2_conn(location,key, l, part_mode);

module DINENISO4014(key="M3", l=20, part_mode="default"){
	BOLTS_check_parameter_type("DINENISO4014","key",key,"Table Index");
	BOLTS_check_parameter_type("DINENISO4014","l",l,"Length (mm)");
	if(BOLTS_MODE == "bom"){
		if(!(part_mode == "diff")){
			echo(str("Hexagon head bolt DINENISO 4014 ",key," - ",l,""));
		}
		cube();
	} else {
		hexbolt2_geo(key, l, part_mode);
	}
};

function DINENISO4014_dims(key="M3", l=20, part_mode="default") = hexbolt2_dims(key, l, part_mode);

function DINENISO4014_conn(location,key="M3", l=20, part_mode="default") = hexbolt2_conn(location,key, l, part_mode);

module ISO4014(key="M3", l=20, part_mode="default"){
	BOLTS_check_parameter_type("ISO4014","key",key,"Table Index");
	BOLTS_check_parameter_type("ISO4014","l",l,"Length (mm)");
	if(BOLTS_MODE == "bom"){
		if(!(part_mode == "diff")){
			echo(str("Hexagon head bolt ISO 4014 ",key," - ",l,""));
		}
		cube();
	} else {
		hexbolt2_geo(key, l, part_mode);
	}
};

function ISO4014_dims(key="M3", l=20, part_mode="default") = hexbolt2_dims(key, l, part_mode);

function ISO4014_conn(location,key="M3", l=20, part_mode="default") = hexbolt2_conn(location,key, l, part_mode);

