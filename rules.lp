mr_observation("病人1","mri1","无明显诱因发热",null,null,null,"新出现的","1w","1w").
mr_observation("病人1","mri3","咳嗽",null,null,"加重","新出现的","1w","1w").
mr_observation("病人1","mri4","咳黄痰",null,null,null,"新出现的","1w","1w").
mr_observation("病人1","mri5","胸闷",null,null,null,"新出现的","1w","1w").
mr_observation("病人1","mri6","胸持续性酸胀痛","右胸",null,null,"新出现的","1w","1w").
mr_observation("病人1","mri7","乏力",null,null,null,"新出现的","1w","1w").
mr_observation("病人1","mri22","呼吸音粗","双肺",null,null,"新出现的",null,null).
mr_observation("病人1","mri23","湿性啰音","双下肺",null,null,"新出现的",null,null).
mr_inspection_conclusion("病人1","mri26","血常规","未见明显异常",null,null,null,null).
mr_inspection_conclusion("病人1","mri27","胸部X线检查","片状浸润性阴影","双下肺",null,null,"新出现的").
mr_inspection_data("病人1","mri2","体温","39","℃","新出现的").
mr_inspection_data("病人1","mri9","T","39.4","℃","新出现的").
mr_inspection_data("病人1","mri10","P","120","次/分","新出现的").
mr_inspection_data("病人1","mri11","R","23","次/分","新出现的").
mr_inspection_data("病人1","mri12","BP","124/72","mmHg","新出现的").
mr_disease_history("病人1","mri8","颅脑外伤史","颅脑外伤",null,"10y",null).
factor(diseasediagnose1,factor11_1,factor11).
factor(diseasediagnose1,factor12_1,factor12).
factor(diseasediagnose1,factor13_1,factor13).
factor(diseasediagnose1,factor14_1,factor14).
factor(diseasediagnose1,factor15_1,factor15).
factor(diseasediagnose1,factor23_1,factor23).
factor(diseasediagnose1,factor16_1,factor16).
factor(diseasediagnose1,factor17_1,factor17).
factor(diseasediagnose1,factor18_1,factor18).
factor(diseasediagnose1,factor19_1,factor19).
factor(diseasediagnose1,factor20_1,factor20).
factor(diseasediagnose1,factor21_1,factor21).
factor(diseasediagnose1,factor22_1,factor22).
factor_observation(factor11,"咳嗽",null,null,null,"新出现的",null,null).
factor_observation(factor12,"咳痰",null,null,null,"新出现的",null,null).
factor_observation(factor13,"呼吸道症状",null,null,"加重","原有的",null,null).
factor_observation(factor14,"脓性痰",null,null,null,null,null,null).
factor_observation(factor15,"发热",null,null,null,null,null,null).
factor_observation(factor16,"肺实变","肺部",null,null,null,null,null).
factor_observation(factor17,"湿性啰音","肺部",null,null,null,null,null).
factor_inspection_data(factor18,"白细胞数量","0*0^9",null,"/L",null).
factor_inspection_data(factor19,"白细胞数量",null,"4*0^9","/L",null).
factor_inspection_data(factor23,"体温","38",null,"℃",null).
factor_inspectionConclusion(factor20,"胸部X线检查","片状浸润性阴影","肺部",null,null,"新出现的").
factor_inspectionConclusion(factor21,"胸部X线检查","斑片状浸润性阴影","肺部",null,null,"新出现的").
factor_inspectionConclusion(factor22,"胸部X线检查","间歇性改变","肺部",null,null,"新出现的").
logic_and(logic1).
logic_and(logic2).
logic_or(logic3).
logic_or(logic4).
logic_or(logic5).
logic_or(logic6).
logic_or(logic7).
logic_or(logic8).
logic_item(j12_or61).
logic_item(j12_or62).
logic_item(j12_or63).
logic_item(j12_or64).
logic_item(j12_and25).
edge_contains(diseasediagnose1,logic2).
edge_organizes(logic2,j12_and25).
edge_organizes(logic2,logic6).
edge_organizes(j12_and25,logic3).
edge_organizes(logic3,factor20_1).
edge_organizes(logic3,factor21_1).
edge_organizes(logic3,factor22_1).
edge_organizes(logic6,j12_or61).
edge_organizes(logic6,j12_or62).
edge_organizes(logic6,j12_or63).
edge_organizes(logic6,j12_or64).
edge_organizes(j12_or64,logic7).
edge_organizes(logic7,factor18_1).
edge_organizes(logic7,factor19_1).
edge_organizes(j12_or63,logic5).
edge_organizes(logic5,factor16_1).
edge_organizes(logic5,factor17_1).
edge_organizes(j12_or62,logic8).
edge_organizes(logic8,factor15_1).
edge_organizes(logic8,factor23_1).
edge_organizes(j12_or61,logic1).
edge_organizes(logic1,factor14_1).
edge_organizes(logic1,logic4).
edge_organizes(logic4,factor11_1).
edge_organizes(logic4,factor12_1).
edge_organizes(logic4,factor13_1).
patient("病人1").
term(null).
term("呼吸音粗").
term("血常规").
term("右胸").
term("左胸").
term("胸部").
term("双肺").
term("双下肺").
term("未见明显异常").
term("无明显诱因发热").
term("咳黄痰").
term("胸持续性酸胀痛").
term("乏力").
term("体温").
term("℃").
term("T").
term("次/分").
term("P").
term("R").
term("BP").
term("mmHg").
term("脉搏").
term("呼吸").
term("血压").
term("颅脑外伤史").
term("颅脑外伤").
value("10y").
value("39").
value("39.4").
value("120").
value("23").
value("124/72").
term("咳嗽").
term("呼吸道症状").
term("脓性痰").
term("白细胞数量").
term("胸部X线检查").
term("片状浸润性阴影").
term("肺部").
term("加重").
term("新出现的").
term("咳痰").
term("原有的").
term("肺实变").
term("发热").
term("湿性啰音").
term("斑片状浸润性阴影").
term("间歇性改变").
term("/L").
value("1w").
value(null).
value("10*10^9").
value("4*10^9").
value("38").
term_relation("T","体温","is a").
term_relation("P","脉搏","is a").
term_relation("R","呼吸","is a").
term_relation("BP","血压","is a").
term_relation("右胸","胸部","is a").
term_relation("左胸","胸部","is a").
term_relation("双肺","肺部","is a").
term_relation("双下肺","肺部","is a").
term_relation("咳黄痰","咳痰","is a").
term_relation("无明显诱因发热","发热","is a").
term_relation("胸持续性酸胀痛","胸痛","is a").
term_relation("咳痰","脓性痰","is a").
term_relation("咳嗽","呼吸道症状","is a").
term_relation("咳痰","呼吸道症状","is a").
term_relation("新出现的","原有的","is a").
disease_diagnose(diseasediagnose1,"社区获得性肺炎",icd10,icd10).
term_relation("咳黄痰","呼吸道症状","is a"):-term("呼吸道症状"),term("咳痰"),term("咳黄痰"),term_relation("咳痰","呼吸道症状","is a"),term_relation("咳黄痰","咳痰","is a").
term_relation("咳黄痰","脓性痰","is a"):-term("脓性痰"),term("咳痰"),term("咳黄痰"),term_relation("咳痰","脓性痰","is a"),term_relation("咳黄痰","咳痰","is a").
greater_than_or_equal_to("10y",null):-value(null),value("10y").
greater_than_or_equal_to("39",null):-value(null),value("39").
greater_than_or_equal_to("39.4",null):-value(null),value("39.4").
greater_than_or_equal_to("120",null):-value(null),value("120").
greater_than_or_equal_to("23",null):-value(null),value("23").
greater_than_or_equal_to("124/72",null):-value(null),value("124/72").
greater_than_or_equal_to("1w",null):-value(null),value("1w").
greater_than_or_equal_to(null,null):-value(null),value(null).
greater_than_or_equal_to("10*10^9",null):-value(null),value("10*10^9").
greater_than_or_equal_to("4*10^9",null):-value(null),value("4*10^9").
greater_than_or_equal_to("38",null):-value(null),value("38").
greater_than_or_equal_to("10y","10y"):-value("10y"),value("10y").
greater_than_or_equal_to("39","10y"):-value("10y"),value("39").
greater_than_or_equal_to("39.4","10y"):-value("10y"),value("39.4").
greater_than_or_equal_to("120","10y"):-value("10y"),value("120").
greater_than_or_equal_to("23","10y"):-value("10y"),value("23").
greater_than_or_equal_to("124/72","10y"):-value("10y"),value("124/72").
greater_than_or_equal_to("1w","10y"):-value("10y"),value("1w").
greater_than_or_equal_to("4*10^9","10y"):-value("10y"),value("4*10^9").
greater_than_or_equal_to("38","10y"):-value("10y"),value("38").
greater_than_or_equal_to("39","39"):-value("39"),value("39").
greater_than_or_equal_to("39.4","39"):-value("39"),value("39.4").
greater_than_or_equal_to("4*10^9","39"):-value("39"),value("4*10^9").
greater_than_or_equal_to("39.4","39.4"):-value("39.4"),value("39.4").
greater_than_or_equal_to("4*10^9","39.4"):-value("39.4"),value("4*10^9").
greater_than_or_equal_to("39","120"):-value("120"),value("39").
greater_than_or_equal_to("39.4","120"):-value("120"),value("39.4").
greater_than_or_equal_to("120","120"):-value("120"),value("120").
greater_than_or_equal_to("23","120"):-value("120"),value("23").
greater_than_or_equal_to("124/72","120"):-value("120"),value("124/72").
greater_than_or_equal_to("1w","120"):-value("120"),value("1w").
greater_than_or_equal_to("4*10^9","120"):-value("120"),value("4*10^9").
greater_than_or_equal_to("38","120"):-value("120"),value("38").
greater_than_or_equal_to("39","23"):-value("23"),value("39").
greater_than_or_equal_to("39.4","23"):-value("23"),value("39.4").
greater_than_or_equal_to("23","23"):-value("23"),value("23").
greater_than_or_equal_to("4*10^9","23"):-value("23"),value("4*10^9").
greater_than_or_equal_to("38","23"):-value("23"),value("38").
greater_than_or_equal_to("39","124/72"):-value("124/72"),value("39").
greater_than_or_equal_to("39.4","124/72"):-value("124/72"),value("39.4").
greater_than_or_equal_to("23","124/72"):-value("124/72"),value("23").
greater_than_or_equal_to("124/72","124/72"):-value("124/72"),value("124/72").
greater_than_or_equal_to("1w","124/72"):-value("124/72"),value("1w").
greater_than_or_equal_to("4*10^9","124/72"):-value("124/72"),value("4*10^9").
greater_than_or_equal_to("38","124/72"):-value("124/72"),value("38").
greater_than_or_equal_to("39","1w"):-value("1w"),value("39").
greater_than_or_equal_to("39.4","1w"):-value("1w"),value("39.4").
greater_than_or_equal_to("23","1w"):-value("1w"),value("23").
greater_than_or_equal_to("1w","1w"):-value("1w"),value("1w").
greater_than_or_equal_to("4*10^9","1w"):-value("1w"),value("4*10^9").
greater_than_or_equal_to("38","1w"):-value("1w"),value("38").
greater_than_or_equal_to("10y","10*10^9"):-value("10*10^9"),value("10y").
greater_than_or_equal_to("39","10*10^9"):-value("10*10^9"),value("39").
greater_than_or_equal_to("39.4","10*10^9"):-value("10*10^9"),value("39.4").
greater_than_or_equal_to("120","10*10^9"):-value("10*10^9"),value("120").
greater_than_or_equal_to("23","10*10^9"):-value("10*10^9"),value("23").
greater_than_or_equal_to("124/72","10*10^9"):-value("10*10^9"),value("124/72").
greater_than_or_equal_to("1w","10*10^9"):-value("10*10^9"),value("1w").
greater_than_or_equal_to("10*10^9","10*10^9"):-value("10*10^9"),value("10*10^9").
greater_than_or_equal_to("4*10^9","10*10^9"):-value("10*10^9"),value("4*10^9").
greater_than_or_equal_to("38","10*10^9"):-value("10*10^9"),value("38").
greater_than_or_equal_to("4*10^9","4*10^9"):-value("4*10^9"),value("4*10^9").
greater_than_or_equal_to("39","38"):-value("38"),value("39").
greater_than_or_equal_to("39.4","38"):-value("38"),value("39.4").
greater_than_or_equal_to("4*10^9","38"):-value("38"),value("4*10^9").
greater_than_or_equal_to("38","38"):-value("38"),value("38").
less_than_or_equal_to("10y",null):-value(null),value("10y").
less_than_or_equal_to("39",null):-value(null),value("39").
less_than_or_equal_to("39.4",null):-value(null),value("39.4").
less_than_or_equal_to("120",null):-value(null),value("120").
less_than_or_equal_to("23",null):-value(null),value("23").
less_than_or_equal_to("124/72",null):-value(null),value("124/72").
less_than_or_equal_to("1w",null):-value(null),value("1w").
less_than_or_equal_to(null,null):-value(null),value(null).
less_than_or_equal_to("10*10^9",null):-value(null),value("10*10^9").
less_than_or_equal_to("4*10^9",null):-value(null),value("4*10^9").
less_than_or_equal_to("38",null):-value(null),value("38").
less_than_or_equal_to("10y","10y"):-value("10y"),value("10y").
less_than_or_equal_to(null,"10y"):-value("10y"),value(null).
less_than_or_equal_to("10*10^9","10y"):-value("10y"),value("10*10^9").
less_than_or_equal_to("10y","39"):-value("39"),value("10y").
less_than_or_equal_to("39","39"):-value("39"),value("39").
less_than_or_equal_to("120","39"):-value("39"),value("120").
less_than_or_equal_to("23","39"):-value("39"),value("23").
less_than_or_equal_to("124/72","39"):-value("39"),value("124/72").
less_than_or_equal_to("1w","39"):-value("39"),value("1w").
less_than_or_equal_to(null,"39"):-value("39"),value(null).
less_than_or_equal_to("10*10^9","39"):-value("39"),value("10*10^9").
less_than_or_equal_to("38","39"):-value("39"),value("38").
less_than_or_equal_to("10y","39.4"):-value("39.4"),value("10y").
less_than_or_equal_to("39","39.4"):-value("39.4"),value("39").
less_than_or_equal_to("39.4","39.4"):-value("39.4"),value("39.4").
less_than_or_equal_to("120","39.4"):-value("39.4"),value("120").
less_than_or_equal_to("23","39.4"):-value("39.4"),value("23").
less_than_or_equal_to("124/72","39.4"):-value("39.4"),value("124/72").
less_than_or_equal_to("1w","39.4"):-value("39.4"),value("1w").
less_than_or_equal_to(null,"39.4"):-value("39.4"),value(null).
less_than_or_equal_to("10*10^9","39.4"):-value("39.4"),value("10*10^9").
less_than_or_equal_to("38","39.4"):-value("39.4"),value("38").
less_than_or_equal_to("10y","120"):-value("120"),value("10y").
less_than_or_equal_to("120","120"):-value("120"),value("120").
less_than_or_equal_to(null,"120"):-value("120"),value(null).
less_than_or_equal_to("10*10^9","120"):-value("120"),value("10*10^9").
less_than_or_equal_to("10y","23"):-value("23"),value("10y").
less_than_or_equal_to("120","23"):-value("23"),value("120").
less_than_or_equal_to("23","23"):-value("23"),value("23").
less_than_or_equal_to("124/72","23"):-value("23"),value("124/72").
less_than_or_equal_to("1w","23"):-value("23"),value("1w").
less_than_or_equal_to(null,"23"):-value("23"),value(null).
less_than_or_equal_to("10*10^9","23"):-value("23"),value("10*10^9").
less_than_or_equal_to("10y","124/72"):-value("124/72"),value("10y").
less_than_or_equal_to("120","124/72"):-value("124/72"),value("120").
less_than_or_equal_to("124/72","124/72"):-value("124/72"),value("124/72").
less_than_or_equal_to(null,"124/72"):-value("124/72"),value(null).
less_than_or_equal_to("10*10^9","124/72"):-value("124/72"),value("10*10^9").
less_than_or_equal_to("10y","1w"):-value("1w"),value("10y").
less_than_or_equal_to("120","1w"):-value("1w"),value("120").
less_than_or_equal_to("124/72","1w"):-value("1w"),value("124/72").
less_than_or_equal_to("1w","1w"):-value("1w"),value("1w").
less_than_or_equal_to(null,"1w"):-value("1w"),value(null).
less_than_or_equal_to("10*10^9","1w"):-value("1w"),value("10*10^9").
less_than_or_equal_to(null,"10*10^9"):-value("10*10^9"),value(null).
less_than_or_equal_to("10*10^9","10*10^9"):-value("10*10^9"),value("10*10^9").
less_than_or_equal_to("10y","4*10^9"):-value("4*10^9"),value("10y").
less_than_or_equal_to("39","4*10^9"):-value("4*10^9"),value("39").
less_than_or_equal_to("39.4","4*10^9"):-value("4*10^9"),value("39.4").
less_than_or_equal_to("120","4*10^9"):-value("4*10^9"),value("120").
less_than_or_equal_to("23","4*10^9"):-value("4*10^9"),value("23").
less_than_or_equal_to("124/72","4*10^9"):-value("4*10^9"),value("124/72").
less_than_or_equal_to("1w","4*10^9"):-value("4*10^9"),value("1w").
less_than_or_equal_to(null,"4*10^9"):-value("4*10^9"),value(null).
less_than_or_equal_to("10*10^9","4*10^9"):-value("4*10^9"),value("10*10^9").
less_than_or_equal_to("4*10^9","4*10^9"):-value("4*10^9"),value("4*10^9").
less_than_or_equal_to("38","4*10^9"):-value("4*10^9"),value("38").
less_than_or_equal_to("10y","38"):-value("38"),value("10y").
less_than_or_equal_to("120","38"):-value("38"),value("120").
less_than_or_equal_to("23","38"):-value("38"),value("23").
less_than_or_equal_to("124/72","38"):-value("38"),value("124/72").
less_than_or_equal_to("1w","38"):-value("38"),value("1w").
less_than_or_equal_to(null,"38"):-value("38"),value(null).
less_than_or_equal_to("10*10^9","38"):-value("38"),value("10*10^9").
less_than_or_equal_to("38","38"):-value("38"),value("38").
equal_to_or_stricter_than(null,null):-term(null),term(null).
equal_to_or_stricter_than("呼吸音粗","呼吸音粗"):-term("呼吸音粗"),term("呼吸音粗").
equal_to_or_stricter_than("血常规","血常规"):-term("血常规"),term("血常规").
equal_to_or_stricter_than("右胸","右胸"):-term("右胸"),term("右胸").
equal_to_or_stricter_than("左胸","左胸"):-term("左胸"),term("左胸").
equal_to_or_stricter_than("胸部","胸部"):-term("胸部"),term("胸部").
equal_to_or_stricter_than("双肺","双肺"):-term("双肺"),term("双肺").
equal_to_or_stricter_than("双下肺","双下肺"):-term("双下肺"),term("双下肺").
equal_to_or_stricter_than("未见明显异常","未见明显异常"):-term("未见明显异常"),term("未见明显异常").
equal_to_or_stricter_than("无明显诱因发热","无明显诱因发热"):-term("无明显诱因发热"),term("无明显诱因发热").
equal_to_or_stricter_than("咳黄痰","咳黄痰"):-term("咳黄痰"),term("咳黄痰").
equal_to_or_stricter_than("胸持续性酸胀痛","胸持续性酸胀痛"):-term("胸持续性酸胀痛"),term("胸持续性酸胀痛").
equal_to_or_stricter_than("乏力","乏力"):-term("乏力"),term("乏力").
equal_to_or_stricter_than("体温","体温"):-term("体温"),term("体温").
equal_to_or_stricter_than("℃","℃"):-term("℃"),term("℃").
equal_to_or_stricter_than("T","T"):-term("T"),term("T").
equal_to_or_stricter_than("次/分","次/分"):-term("次/分"),term("次/分").
equal_to_or_stricter_than("P","P"):-term("P"),term("P").
equal_to_or_stricter_than("R","R"):-term("R"),term("R").
equal_to_or_stricter_than("BP","BP"):-term("BP"),term("BP").
equal_to_or_stricter_than("mmHg","mmHg"):-term("mmHg"),term("mmHg").
equal_to_or_stricter_than("脉搏","脉搏"):-term("脉搏"),term("脉搏").
equal_to_or_stricter_than("呼吸","呼吸"):-term("呼吸"),term("呼吸").
equal_to_or_stricter_than("血压","血压"):-term("血压"),term("血压").
equal_to_or_stricter_than("颅脑外伤史","颅脑外伤史"):-term("颅脑外伤史"),term("颅脑外伤史").
equal_to_or_stricter_than("颅脑外伤","颅脑外伤"):-term("颅脑外伤"),term("颅脑外伤").
equal_to_or_stricter_than("咳嗽","咳嗽"):-term("咳嗽"),term("咳嗽").
equal_to_or_stricter_than("呼吸道症状","呼吸道症状"):-term("呼吸道症状"),term("呼吸道症状").
equal_to_or_stricter_than("脓性痰","脓性痰"):-term("脓性痰"),term("脓性痰").
equal_to_or_stricter_than("白细胞数量","白细胞数量"):-term("白细胞数量"),term("白细胞数量").
equal_to_or_stricter_than("胸部X线检查","胸部X线检查"):-term("胸部X线检查"),term("胸部X线检查").
equal_to_or_stricter_than("片状浸润性阴影","片状浸润性阴影"):-term("片状浸润性阴影"),term("片状浸润性阴影").
equal_to_or_stricter_than("肺部","肺部"):-term("肺部"),term("肺部").
equal_to_or_stricter_than("加重","加重"):-term("加重"),term("加重").
equal_to_or_stricter_than("新出现的","新出现的"):-term("新出现的"),term("新出现的").
equal_to_or_stricter_than("咳痰","咳痰"):-term("咳痰"),term("咳痰").
equal_to_or_stricter_than("原有的","原有的"):-term("原有的"),term("原有的").
equal_to_or_stricter_than("肺实变","肺实变"):-term("肺实变"),term("肺实变").
equal_to_or_stricter_than("发热","发热"):-term("发热"),term("发热").
equal_to_or_stricter_than("湿性啰音","湿性啰音"):-term("湿性啰音"),term("湿性啰音").
equal_to_or_stricter_than("斑片状浸润性阴影","斑片状浸润性阴影"):-term("斑片状浸润性阴影"),term("斑片状浸润性阴影").
equal_to_or_stricter_than("间歇性改变","间歇性改变"):-term("间歇性改变"),term("间歇性改变").
equal_to_or_stricter_than("/L","/L"):-term("/L"),term("/L").
equal_to_or_stricter_than("T","体温"):-term_relation("T","体温","is a"),term("体温"),term("T").
equal_to_or_stricter_than("P","脉搏"):-term_relation("P","脉搏","is a"),term("脉搏"),term("P").
equal_to_or_stricter_than("R","呼吸"):-term_relation("R","呼吸","is a"),term("呼吸"),term("R").
equal_to_or_stricter_than("BP","血压"):-term_relation("BP","血压","is a"),term("血压"),term("BP").
equal_to_or_stricter_than("右胸","胸部"):-term_relation("右胸","胸部","is a"),term("胸部"),term("右胸").
equal_to_or_stricter_than("左胸","胸部"):-term_relation("左胸","胸部","is a"),term("胸部"),term("左胸").
equal_to_or_stricter_than("双肺","肺部"):-term_relation("双肺","肺部","is a"),term("肺部"),term("双肺").
equal_to_or_stricter_than("双下肺","肺部"):-term_relation("双下肺","肺部","is a"),term("肺部"),term("双下肺").
equal_to_or_stricter_than("咳黄痰","咳痰"):-term_relation("咳黄痰","咳痰","is a"),term("咳痰"),term("咳黄痰").
equal_to_or_stricter_than("无明显诱因发热","发热"):-term_relation("无明显诱因发热","发热","is a"),term("发热"),term("无明显诱因发热").
equal_to_or_stricter_than("咳痰","脓性痰"):-term_relation("咳痰","脓性痰","is a"),term("脓性痰"),term("咳痰").
equal_to_or_stricter_than("咳嗽","呼吸道症状"):-term_relation("咳嗽","呼吸道症状","is a"),term("呼吸道症状"),term("咳嗽").
equal_to_or_stricter_than("咳痰","呼吸道症状"):-term_relation("咳痰","呼吸道症状","is a"),term("呼吸道症状"),term("咳痰").
equal_to_or_stricter_than("新出现的","原有的"):-term_relation("新出现的","原有的","is a"),term("原有的"),term("新出现的").
equal_to_or_stricter_than("咳黄痰","呼吸道症状"):-term_relation("咳黄痰","呼吸道症状","is a"),term("呼吸道症状"),term("咳黄痰").
equal_to_or_stricter_than("咳黄痰","脓性痰"):-term_relation("咳黄痰","脓性痰","is a"),term("脓性痰"),term("咳黄痰").
equal_to_or_stricter_than("呼吸音粗",null):-term(null),term("呼吸音粗").
equal_to_or_stricter_than("血常规",null):-term(null),term("血常规").
equal_to_or_stricter_than("右胸",null):-term(null),term("右胸").
equal_to_or_stricter_than("左胸",null):-term(null),term("左胸").
equal_to_or_stricter_than("胸部",null):-term(null),term("胸部").
equal_to_or_stricter_than("双肺",null):-term(null),term("双肺").
equal_to_or_stricter_than("双下肺",null):-term(null),term("双下肺").
equal_to_or_stricter_than("未见明显异常",null):-term(null),term("未见明显异常").
equal_to_or_stricter_than("无明显诱因发热",null):-term(null),term("无明显诱因发热").
equal_to_or_stricter_than("咳黄痰",null):-term(null),term("咳黄痰").
equal_to_or_stricter_than("胸持续性酸胀痛",null):-term(null),term("胸持续性酸胀痛").
equal_to_or_stricter_than("乏力",null):-term(null),term("乏力").
equal_to_or_stricter_than("体温",null):-term(null),term("体温").
equal_to_or_stricter_than("℃",null):-term(null),term("℃").
equal_to_or_stricter_than("T",null):-term(null),term("T").
equal_to_or_stricter_than("次/分",null):-term(null),term("次/分").
equal_to_or_stricter_than("P",null):-term(null),term("P").
equal_to_or_stricter_than("R",null):-term(null),term("R").
equal_to_or_stricter_than("BP",null):-term(null),term("BP").
equal_to_or_stricter_than("mmHg",null):-term(null),term("mmHg").
equal_to_or_stricter_than("脉搏",null):-term(null),term("脉搏").
equal_to_or_stricter_than("呼吸",null):-term(null),term("呼吸").
equal_to_or_stricter_than("血压",null):-term(null),term("血压").
equal_to_or_stricter_than("颅脑外伤史",null):-term(null),term("颅脑外伤史").
equal_to_or_stricter_than("颅脑外伤",null):-term(null),term("颅脑外伤").
equal_to_or_stricter_than("咳嗽",null):-term(null),term("咳嗽").
equal_to_or_stricter_than("呼吸道症状",null):-term(null),term("呼吸道症状").
equal_to_or_stricter_than("脓性痰",null):-term(null),term("脓性痰").
equal_to_or_stricter_than("白细胞数量",null):-term(null),term("白细胞数量").
equal_to_or_stricter_than("胸部X线检查",null):-term(null),term("胸部X线检查").
equal_to_or_stricter_than("片状浸润性阴影",null):-term(null),term("片状浸润性阴影").
equal_to_or_stricter_than("肺部",null):-term(null),term("肺部").
equal_to_or_stricter_than("加重",null):-term(null),term("加重").
equal_to_or_stricter_than("新出现的",null):-term(null),term("新出现的").
equal_to_or_stricter_than("咳痰",null):-term(null),term("咳痰").
equal_to_or_stricter_than("原有的",null):-term(null),term("原有的").
equal_to_or_stricter_than("肺实变",null):-term(null),term("肺实变").
equal_to_or_stricter_than("发热",null):-term(null),term("发热").
equal_to_or_stricter_than("湿性啰音",null):-term(null),term("湿性啰音").
equal_to_or_stricter_than("斑片状浸润性阴影",null):-term(null),term("斑片状浸润性阴影").
equal_to_or_stricter_than("间歇性改变",null):-term(null),term("间歇性改变").
equal_to_or_stricter_than("/L",null):-term(null),term("/L").
match("病人1","mri1",factor15_1):-greater_than_or_equal_to("1w",null),less_than_or_equal_to("1w",null),equal_to_or_stricter_than("新出现的",null),equal_to_or_stricter_than(null,null),equal_to_or_stricter_than(null,null),equal_to_or_stricter_than("无明显诱因发热","发热"),mr_observation("病人1","mri1","无明显诱因发热",null,null,null,"新出现的","1w","1w"),factor_observation(factor15,"发热",null,null,null,null,null,null),factor(diseasediagnose1,factor15_1,factor15).
match("病人1","mri3",factor11_1):-greater_than_or_equal_to("1w",null),less_than_or_equal_to("1w",null),equal_to_or_stricter_than("新出现的","新出现的"),equal_to_or_stricter_than("加重",null),equal_to_or_stricter_than(null,null),equal_to_or_stricter_than("咳嗽","咳嗽"),mr_observation("病人1","mri3","咳嗽",null,null,"加重","新出现的","1w","1w"),factor_observation(factor11,"咳嗽",null,null,null,"新出现的",null,null),factor(diseasediagnose1,factor11_1,factor11).
match("病人1","mri3",factor13_1):-greater_than_or_equal_to("1w",null),less_than_or_equal_to("1w",null),equal_to_or_stricter_than("新出现的","原有的"),equal_to_or_stricter_than("加重","加重"),equal_to_or_stricter_than(null,null),equal_to_or_stricter_than("咳嗽","呼吸道症状"),mr_observation("病人1","mri3","咳嗽",null,null,"加重","新出现的","1w","1w"),factor_observation(factor13,"呼吸道症状",null,null,"加重","原有的",null,null),factor(diseasediagnose1,factor13_1,factor13).
match("病人1","mri4",factor12_1):-greater_than_or_equal_to("1w",null),less_than_or_equal_to("1w",null),equal_to_or_stricter_than("新出现的","新出现的"),equal_to_or_stricter_than(null,null),equal_to_or_stricter_than(null,null),equal_to_or_stricter_than("咳黄痰","咳痰"),mr_observation("病人1","mri4","咳黄痰",null,null,null,"新出现的","1w","1w"),factor_observation(factor12,"咳痰",null,null,null,"新出现的",null,null),factor(diseasediagnose1,factor12_1,factor12).
match("病人1","mri4",factor14_1):-greater_than_or_equal_to("1w",null),less_than_or_equal_to("1w",null),equal_to_or_stricter_than("新出现的",null),equal_to_or_stricter_than(null,null),equal_to_or_stricter_than(null,null),equal_to_or_stricter_than("咳黄痰","脓性痰"),mr_observation("病人1","mri4","咳黄痰",null,null,null,"新出现的","1w","1w"),factor_observation(factor14,"脓性痰",null,null,null,null,null,null),factor(diseasediagnose1,factor14_1,factor14).
match("病人1","mri23",factor17_1):-greater_than_or_equal_to(null,null),less_than_or_equal_to(null,null),equal_to_or_stricter_than("新出现的",null),equal_to_or_stricter_than(null,null),equal_to_or_stricter_than(null,null),equal_to_or_stricter_than("湿性啰音","湿性啰音"),mr_observation("病人1","mri23","湿性啰音","双下肺",null,null,"新出现的",null,null),factor_observation(factor17,"湿性啰音","肺部",null,null,null,null,null),factor(diseasediagnose1,factor17_1,factor17).
match("病人1","mri27",factor20_1):-equal_to_or_stricter_than("片状浸润性阴影","片状浸润性阴影"),equal_to_or_stricter_than("新出现的","新出现的"),equal_to_or_stricter_than(null,null),equal_to_or_stricter_than(null,null),equal_to_or_stricter_than("胸部X线检查","胸部X线检查"),mr_inspection_conclusion("病人1","mri27","胸部X线检查","片状浸润性阴影","双下肺",null,null,"新出现的"),factor_inspectionConclusion(factor20,"胸部X线检查","片状浸润性阴影","肺部",null,null,"新出现的"),factor(diseasediagnose1,factor20_1,factor20).
match("病人1","mri2",factor23_1):-greater_than_or_equal_to("39","38"),less_than_or_equal_to("39",null),equal_to_or_stricter_than("新出现的",null),equal_to_or_stricter_than("℃","℃"),equal_to_or_stricter_than("体温","体温"),mr_inspection_data("病人1","mri2","体温","39","℃","新出现的"),factor_inspection_data(factor23,"体温","38",null,"℃",null),factor(diseasediagnose1,factor23_1,factor23).
match("病人1","mri9",factor23_1):-greater_than_or_equal_to("39.4","38"),less_than_or_equal_to("39.4",null),equal_to_or_stricter_than("新出现的",null),equal_to_or_stricter_than("℃","℃"),equal_to_or_stricter_than("T","体温"),mr_inspection_data("病人1","mri9","T","39.4","℃","新出现的"),factor_inspection_data(factor23,"体温","38",null,"℃",null),factor(diseasediagnose1,factor23_1,factor23).
match("病人1",factor15_1):-match("病人1","mri1",factor15_1).
match("病人1",factor11_1):-match("病人1","mri3",factor11_1).
match("病人1",factor13_1):-match("病人1","mri3",factor13_1).
match("病人1",factor12_1):-match("病人1","mri4",factor12_1).
match("病人1",factor14_1):-match("病人1","mri4",factor14_1).
match("病人1",factor17_1):-match("病人1","mri23",factor17_1).
match("病人1",factor20_1):-match("病人1","mri27",factor20_1).
match("病人1",factor23_1):-match("病人1","mri2",factor23_1).
start("病人1","mri1","1w"):-mr_observation("病人1","mri1","无明显诱因发热",null,null,null,"新出现的","1w","1w").
start("病人1","mri3","1w"):-mr_observation("病人1","mri3","咳嗽",null,null,"加重","新出现的","1w","1w").
start("病人1","mri4","1w"):-mr_observation("病人1","mri4","咳黄痰",null,null,null,"新出现的","1w","1w").
start("病人1","mri5","1w"):-mr_observation("病人1","mri5","胸闷",null,null,null,"新出现的","1w","1w").
start("病人1","mri6","1w"):-mr_observation("病人1","mri6","胸持续性酸胀痛","右胸",null,null,"新出现的","1w","1w").
start("病人1","mri7","1w"):-mr_observation("病人1","mri7","乏力",null,null,null,"新出现的","1w","1w").
start("病人1","mri22",null):-mr_observation("病人1","mri22","呼吸音粗","双肺",null,null,"新出现的",null,null).
start("病人1","mri23",null):-mr_observation("病人1","mri23","湿性啰音","双下肺",null,null,"新出现的",null,null).
start("病人1","mri8","10y"):-mr_disease_history("病人1","mri8","颅脑外伤史","颅脑外伤",null,"10y",null).
match("病人1",logic1):-patient("病人1"),logic_and(logic1),not -match("病人1",logic1).
match("病人1",logic2):-patient("病人1"),logic_and(logic2),not -match("病人1",logic2).
-match("病人1",logic1):-patient("病人1"),edge_organizes(logic1,logic4),logic_and(logic1),not match("病人1",logic4).
-match("病人1",logic2):-patient("病人1"),edge_organizes(logic2,j12_and25),logic_and(logic2),not match("病人1",j12_and25).
-match("病人1",logic2):-patient("病人1"),edge_organizes(logic2,logic6),logic_and(logic2),not match("病人1",logic6).
match("病人1",diseasediagnose1):-patient("病人1"),match("病人1",logic2),edge_contains(diseasediagnose1,logic2),disease_diagnose(diseasediagnose1,"社区获得性肺炎",icd10,icd10).
match("病人1",diseasediagnose1):-patient("病人1"),match("病人1",logic2),edge_contains(diseasediagnose1,logic2),disease_diagnose(diseasediagnose1,"社区获得性肺炎",icd10,icd10).
match("病人1",j12_or61):-match("病人1",logic1),patient("病人1"),edge_organizes(j12_or61,logic1),logic_item(j12_or61).
match("病人1",logic8):-match("病人1",factor23_1),patient("病人1"),edge_organizes(logic8,factor23_1),logic_or(logic8).
match("病人1",logic3):-match("病人1",factor20_1),patient("病人1"),edge_organizes(logic3,factor20_1),logic_or(logic3).
match("病人1",logic5):-match("病人1",factor17_1),patient("病人1"),edge_organizes(logic5,factor17_1),logic_or(logic5).
match("病人1",logic4):-match("病人1",factor12_1),patient("病人1"),edge_organizes(logic4,factor12_1),logic_or(logic4).
match("病人1",j12_or63):-match("病人1",logic5),patient("病人1"),edge_organizes(j12_or63,logic5),logic_item(j12_or63).
match("病人1",j12_and25):-match("病人1",logic3),patient("病人1"),edge_organizes(j12_and25,logic3),logic_item(j12_and25).
match("病人1",j12_or62):-match("病人1",logic8),patient("病人1"),edge_organizes(j12_or62,logic8),logic_item(j12_or62).
match("病人1",logic6):-match("病人1",j12_or61),patient("病人1"),edge_organizes(logic6,j12_or61),logic_or(logic6).
match("病人1",logic6):-match("病人1",j12_or62),patient("病人1"),edge_organizes(logic6,j12_or62),logic_or(logic6).
conclude("病人1",diseasediagnose1,"社区获得性肺炎"):-disease_diagnose(diseasediagnose1,"社区获得性肺炎",icd10,icd10),match("病人1",diseasediagnose1).
-conclude("病人1",diseasediagnose1,"社区获得性肺炎"):-disease_diagnose(diseasediagnose1,"社区获得性肺炎",icd10,icd10),patient("病人1"),not conclude("病人1",diseasediagnose1,"社区获得性肺炎").
:-match("病人1",logic1),-match("病人1",logic1).
:-match("病人1",logic2),-match("病人1",logic2).
:-conclude("病人1",diseasediagnose1,"社区获得性肺炎"),-conclude("病人1",diseasediagnose1,"社区获得性肺炎").
