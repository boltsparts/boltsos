/* Generated by BOLTS, do not modify */
function plainwasherchamfered_table_0(idx) =
//d1, d2, s
idx == "M1" ? [1.1, 3.0, 0.3] :
idx == "M1.2" ? [1.3, 3.5, 0.3] :
idx == "M1.4" ? [1.5, 4.0, 0.3] :
idx == "M1.6" ? [1.7, 4.0, 0.3] :
idx == "M1.7" ? [1.8, 4.5, 0.3] :
idx == "M2" ? [2.2, 5.0, 0.3] :
idx == "M2.2" ? [2.4, 6.0, 0.5] :
idx == "M2.3" ? [2.5, 6.0, 0.5] :
idx == "M2.5" ? [2.7, 6.0, 0.5] :
idx == "M2.6" ? [2.8, 7.0, 0.5] :
idx == "M3" ? [3.2, 7.0, 0.5] :
idx == "M3.5" ? [3.7, 8.0, 0.5] :
idx == "M4" ? [4.3, 9.0, 0.8] :
idx == "M5" ? [5.3, 10.0, 1.0] :
idx == "M6" ? [6.4, 12.0, 1.6] :
idx == "M7" ? [7.4, 14.0, 1.6] :
idx == "M8" ? [8.4, 16.0, 1.6] :
idx == "M10" ? [10.0, 20.0, 2.0] :
idx == "M12" ? [13.0, 24.0, 2.5] :
idx == "M14" ? [15.0, 28.0, 2.5] :
idx == "M16" ? [17.0, 30.0, 3.0] :
idx == "M18" ? [19.0, 34.0, 3.0] :
idx == "M20" ? [21.0, 37.0, 3.0] :
idx == "M22" ? [23.0, 39.0, 3.0] :
idx == "M24" ? [25.0, 44.0, 4.0] :
idx == "M27" ? [28.0, 50.0, 4.0] :
idx == "M30" ? [31.0, 56.0, 4.0] :
idx == "M33" ? [34.0, 60.0, 5.0] :
idx == "M36" ? [37.0, 66.0, 5.0] :
idx == "M39" ? [40.0, 72.0, 6.0] :
idx == "M42" ? [43.0, 78.0, 7.0] :
idx == "M45" ? [46.0, 85.0, 7.0] :
idx == "M48" ? [50.0, 92.0, 8.0] :
idx == "M52" ? [54.0, 98.0, 8.0] :
idx == "M56" ? [58.0, 105.0, 9.0] :
idx == "M60" ? [62.0, 110.0, 9.0] :
idx == "M64" ? [64.0, 115.0, 9.0] :
idx == "M68" ? [70.0, 120.0, 10.0] :
idx == "M72" ? [74.0, 125.0, 10.0] :
idx == "M76" ? [78.0, 135.0, 10.0] :
idx == "M80" ? [82.0, 140.0, 12.0] :
idx == "M85" ? [87.0, 145.0, 12.0] :
idx == "M90" ? [93.0, 160.0, 12.0] :
idx == "M100" ? [104.0, 175.0, 14.0] :
"Error";

function plainwasherchamfered_dims(key="M3", part_mode="default") = [
	["s", BOLTS_convert_to_default_unit(plainwasherchamfered_table_0(key)[2],"mm")],
	["d1", BOLTS_convert_to_default_unit(plainwasherchamfered_table_0(key)[0],"mm")],
	["d2", BOLTS_convert_to_default_unit(plainwasherchamfered_table_0(key)[1],"mm")],
	["key", key]];

function plainwasherchamfered_conn(location,key="M3", part_mode="default") = new_cs(
	origin=washerConn(BOLTS_convert_to_default_unit(plainwasherchamfered_table_0(key)[1],"mm"), BOLTS_convert_to_default_unit(plainwasherchamfered_table_0(key)[2],"mm"), location)[0],
	axes=washerConn(BOLTS_convert_to_default_unit(plainwasherchamfered_table_0(key)[1],"mm"), BOLTS_convert_to_default_unit(plainwasherchamfered_table_0(key)[2],"mm"), location)[1]);

module plainwasherchamfered_geo(key, part_mode){
	washer2(
		get_dim(plainwasherchamfered_dims(key, part_mode),"d1"),
		get_dim(plainwasherchamfered_dims(key, part_mode),"d2"),
		get_dim(plainwasherchamfered_dims(key, part_mode),"s")
	);
};

module DIN125B(key="M3", part_mode="default"){
	BOLTS_check_parameter_type("DIN125B","key",key,"Table Index");
	if(BOLTS_MODE == "bom"){
		if(!(part_mode == "diff")){
			echo(str("Plain washer chamfered DIN 125B ",key,""));
		}
		cube();
	} else {
		plainwasherchamfered_geo(key, part_mode);
	}
};

function DIN125B_dims(key="M3", part_mode="default") = plainwasherchamfered_dims(key, part_mode);

function DIN125B_conn(location,key="M3", part_mode="default") = plainwasherchamfered_conn(location,key, part_mode);

module DINENISO7090(key="M3", part_mode="default"){
	BOLTS_check_parameter_type("DINENISO7090","key",key,"Table Index");
	if(BOLTS_MODE == "bom"){
		if(!(part_mode == "diff")){
			echo(str("Plain washer chamfered DIN EN ISO 7090 ",key,""));
		}
		cube();
	} else {
		plainwasherchamfered_geo(key, part_mode);
	}
};

function DINENISO7090_dims(key="M3", part_mode="default") = plainwasherchamfered_dims(key, part_mode);

function DINENISO7090_conn(location,key="M3", part_mode="default") = plainwasherchamfered_conn(location,key, part_mode);

module DINISO7090(key="M3", part_mode="default"){
	BOLTS_check_parameter_type("DINISO7090","key",key,"Table Index");
	if(BOLTS_MODE == "bom"){
		if(!(part_mode == "diff")){
			echo(str("Plain washer chamfered DIN ISO 7090 ",key,""));
		}
		cube();
	} else {
		plainwasherchamfered_geo(key, part_mode);
	}
};

function DINISO7090_dims(key="M3", part_mode="default") = plainwasherchamfered_dims(key, part_mode);

function DINISO7090_conn(location,key="M3", part_mode="default") = plainwasherchamfered_conn(location,key, part_mode);

module ISO7090(key="M3", part_mode="default"){
	BOLTS_check_parameter_type("ISO7090","key",key,"Table Index");
	if(BOLTS_MODE == "bom"){
		if(!(part_mode == "diff")){
			echo(str("Plain washer chamfered ISO 7090 ",key,""));
		}
		cube();
	} else {
		plainwasherchamfered_geo(key, part_mode);
	}
};

function ISO7090_dims(key="M3", part_mode="default") = plainwasherchamfered_dims(key, part_mode);

function ISO7090_conn(location,key="M3", part_mode="default") = plainwasherchamfered_conn(location,key, part_mode);

module MetricPlainWasherWithChamfer(key="M3", part_mode="default"){
	BOLTS_check_parameter_type("MetricPlainWasherWithChamfer","key",key,"Table Index");
	if(BOLTS_MODE == "bom"){
		if(!(part_mode == "diff")){
			echo(str("Plain washer chamfered ",key,""));
		}
		cube();
	} else {
		plainwasherchamfered_geo(key, part_mode);
	}
};

function MetricPlainWasherWithChamfer_dims(key="M3", part_mode="default") = plainwasherchamfered_dims(key, part_mode);

function MetricPlainWasherWithChamfer_conn(location,key="M3", part_mode="default") = plainwasherchamfered_conn(location,key, part_mode);

