/* Generated by BOLTS, do not modify */
function hexagonnut1_table_0(idx) =
//d1, s, m_max, e_min
idx == "M1" ? [1.0, 2.5, 0.8, 2.71] :
idx == "M1.2" ? [1.2, 3.0, 1.0, 3.28] :
idx == "M1.4" ? [1.4, 3.0, 1.2, 3.28] :
idx == "M1.6" ? [1.6, 3.2, 1.3, 3.48] :
idx == "M1.7" ? [1.7, 3.4, 1.4, 3.82] :
idx == "M1.8" ? [1.8, 3.5, 1.4, 3.82] :
idx == "M2" ? [2.0, 4.0, 1.6, 4.32] :
idx == "M2.3" ? [2.3, 4.5, 1.8, 4.88] :
idx == "M2.5" ? [2.5, 5.0, 2.0, 5.45] :
idx == "M3" ? [3.0, 5.5, 2.4, 6.01] :
idx == "M3.5" ? [3.5, 6.0, 2.8, 6.58] :
idx == "M4" ? [4.0, 7.0, 3.2, 7.66] :
idx == "M5" ? [5.0, 8.0, 4.7, 8.79] :
idx == "M6" ? [6.0, 10.0, 5.2, 11.05] :
idx == "M7" ? [7.0, 11.0, 5.5, 12.12] :
idx == "M8" ? [8.0, 13.0, 6.8, 14.38] :
idx == "M10" ? [10.0, 16.0, 8.4, 17.77] :
idx == "M12" ? [12.0, 18.0, 10.8, 20.03] :
idx == "M14" ? [14.0, 21.0, 12.8, 23.35] :
idx == "M16" ? [16.0, 24.0, 14.8, 26.75] :
idx == "M18" ? [18.0, 27.0, 15.8, 29.56] :
idx == "M20" ? [20.0, 30.0, 18.0, 32.95] :
idx == "M22" ? [22.0, 34.0, 19.4, 37.29] :
idx == "M24" ? [24.0, 36.0, 21.5, 39.55] :
idx == "M27" ? [27.0, 41.0, 23.8, 45.29] :
idx == "M30" ? [30.0, 46.0, 25.6, 50.85] :
idx == "M33" ? [33.0, 50.0, 28.7, 55.37] :
idx == "M36" ? [36.0, 55.0, 31.0, 60.79] :
idx == "M39" ? [39.0, 60.0, 33.4, 66.44] :
idx == "M42" ? [42.0, 65.0, 34.0, 71.3] :
idx == "M45" ? [45.0, 70.0, 36.0, 76.95] :
idx == "M48" ? [48.0, 75.0, 38.0, 82.6] :
idx == "M52" ? [52.0, 80.0, 42.0, 88.25] :
idx == "M56" ? [56.0, 85.0, 45.0, 93.56] :
idx == "M60" ? [60.0, 90.0, 48.0, 99.21] :
idx == "M64" ? [64.0, 95.0, 51.0, 104.86] :
idx == "M68" ? [68.0, 100.0, 54.0, 110.51] :
idx == "M72" ? [72.0, 105.0, 58.0, 116.16] :
idx == "M76" ? [76.0, 110.0, 61.0, 121.81] :
idx == "M80" ? [80.0, 115.0, 64.0, 127.46] :
idx == "M85" ? [85.0, 120.0, 68.0, 133.11] :
idx == "M90" ? [90.0, 130.0, 72.0, 144.08] :
idx == "M95" ? [95.0, 135.0, 76.0, 150.74] :
idx == "M100" ? [100.0, 145.0, 80.0, 161.02] :
idx == "M105" ? [105.0, 150.0, 84.0, 167.69] :
idx == "M110" ? [110.0, 155.0, 88.0, 172.32] :
idx == "M120" ? [120.0, 170.0, 96.0, 190.29] :
idx == "M125" ? [125.0, 180.0, 100.0, 200.57] :
idx == "M140" ? [140.0, 200.0, 112.0, 220.8] :
"Error";

function hexagonnut1_dims(key="M3", part_mode="default") = [
	["e_min", BOLTS_convert_to_default_unit(hexagonnut1_table_0(key)[3],"mm")],
	["s", BOLTS_convert_to_default_unit(hexagonnut1_table_0(key)[1],"mm")],
	["key", key],
	["m_max", BOLTS_convert_to_default_unit(hexagonnut1_table_0(key)[2],"mm")],
	["d1", BOLTS_convert_to_default_unit(hexagonnut1_table_0(key)[0],"mm")]];

function hexagonnut1_conn(location,key="M3", part_mode="default") = new_cs(
	origin=nutConn(BOLTS_convert_to_default_unit(hexagonnut1_table_0(key)[2],"mm"), location)[0],
	axes=nutConn(BOLTS_convert_to_default_unit(hexagonnut1_table_0(key)[2],"mm"), location)[1]);

module hexagonnut1_geo(key, part_mode){
	nut1(
		get_dim(hexagonnut1_dims(key, part_mode),"d1"),
		get_dim(hexagonnut1_dims(key, part_mode),"s"),
		get_dim(hexagonnut1_dims(key, part_mode),"m_max")
	);
};

module ISO4032(key="M3", part_mode="default"){
	BOLTS_check_parameter_type("ISO4032","key",key,"Table Index");
	if(BOLTS_MODE == "bom"){
		if(!(part_mode == "diff")){
			echo(str("Hexagon nut ISO 4032 ",key,""));
		}
		cube();
	} else {
		hexagonnut1_geo(key, part_mode);
	}
};

function ISO4032_dims(key="M3", part_mode="default") = hexagonnut1_dims(key, part_mode);

function ISO4032_conn(location,key="M3", part_mode="default") = hexagonnut1_conn(location,key, part_mode);

module MetricHexagonNut(key="M3", part_mode="default"){
	BOLTS_check_parameter_type("MetricHexagonNut","key",key,"Table Index");
	if(BOLTS_MODE == "bom"){
		if(!(part_mode == "diff")){
			echo(str("Metric hexagon nut ",key,""));
		}
		cube();
	} else {
		hexagonnut1_geo(key, part_mode);
	}
};

function MetricHexagonNut_dims(key="M3", part_mode="default") = hexagonnut1_dims(key, part_mode);

function MetricHexagonNut_conn(location,key="M3", part_mode="default") = hexagonnut1_conn(location,key, part_mode);

