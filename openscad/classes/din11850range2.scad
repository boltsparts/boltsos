/* Generated by BOLTS, do not modify */
function din11850range2_table_0(idx) =
//id, od
idx == "6" ? [6.0, 8.0] :
idx == "8" ? [8.0, 10.0] :
idx == "10" ? [10.0, 13.0] :
idx == "15" ? [16.0, 19.0] :
idx == "20" ? [20.0, 23.0] :
idx == "25" ? [26.0, 29.0] :
idx == "32" ? [32.0, 35.0] :
idx == "40" ? [38.0, 41.0] :
idx == "50" ? [50.0, 53.0] :
idx == "65" ? [66.0, 70.0] :
idx == "80" ? [81.0, 85.0] :
idx == "100" ? [100.0, 104.0] :
idx == "125" ? [125.0, 129.0] :
idx == "150" ? [150.0, 154.0] :
idx == "200" ? [200.0, 204.0] :
"Error";

function din11850range2_dims(dn="10", l=1000, part_mode="default") = [
	["dn", dn],
	["l", l],
	["id", BOLTS_convert_to_default_unit(din11850range2_table_0(dn)[0],"mm")],
	["od", BOLTS_convert_to_default_unit(din11850range2_table_0(dn)[1],"mm")]];

function din11850range2_conn(location,dn="10", l=1000, part_mode="default") = new_cs(
	origin=pipeConn(l, location)[0],
	axes=pipeConn(l, location)[1]);

module din11850range2_geo(dn, l, part_mode){
	pipe(
		get_dim(din11850range2_dims(dn, l, part_mode),"id"),
		get_dim(din11850range2_dims(dn, l, part_mode),"od"),
		get_dim(din11850range2_dims(dn, l, part_mode),"l")
	);
};

module DIN11850Range2(dn="10", l=1000, part_mode="default"){
	BOLTS_check_parameter_type("DIN11850Range2","dn",dn,"Table Index");
	BOLTS_check_parameter_type("DIN11850Range2","l",l,"Length (mm)");
	if(BOLTS_MODE == "bom"){
		if(!(part_mode == "diff")){
			echo(str("DIN 11850 Range 2 DN ",dn," length ",l,""));
		}
		cube();
	} else {
		din11850range2_geo(dn, l, part_mode);
	}
};

function DIN11850Range2_dims(dn="10", l=1000, part_mode="default") = din11850range2_dims(dn, l, part_mode);

function DIN11850Range2_conn(location,dn="10", l=1000, part_mode="default") = din11850range2_conn(location,dn, l, part_mode);

