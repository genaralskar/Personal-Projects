//Maya ASCII 2019 scene
//Name: Cake.ma
//Last modified: Sun, Mar 22, 2020 06:43:48 PM
//Codeset: 1252
requires maya "2019";
requires "mtoa" "3.1.2";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2019";
fileInfo "version" "2019";
fileInfo "cutIdentifier" "201812112215-434d8d9c04";
fileInfo "osv" "Microsoft Windows 10 Technical Preview  (Build 18362)\n";
fileInfo "license" "student";
createNode transform -s -n "persp";
	rename -uid "001D925C-4009-B69B-9759-FD834172F5A8";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -4.2499895056587969 2.4845355209757218 0.40174228921176092 ;
	setAttr ".r" -type "double3" -20.13835272970282 275.4000000000579 -1.6898372573445158e-14 ;
	setAttr ".rp" -type "double3" 8.3266726846886741e-17 -8.8817841970012523e-16 0 ;
	setAttr ".rpt" -type "double3" -5.5689811367738031e-16 2.3091515969388183e-16 7.2557910054093717e-17 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "66B1CB58-4DBE-EB70-CFD7-03B038EB0CFB";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 4.5469153858860221;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" -1.3724934659273269e-08 0.91908607180218416 0 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
	setAttr ".ai_translator" -type "string" "perspective";
createNode transform -s -n "top";
	rename -uid "9555EF7E-478B-91AC-0A9A-A5A08BC07798";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "50EA6646-4974-1EED-2545-30821BFB1888";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 999.17511830383216;
	setAttr ".ow" 0.18016368834375501;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".tp" -type "double3" 0 0.92488169616790716 0 ;
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "front";
	rename -uid "72CA843C-4F66-7875-38A8-7A866220969D";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -0.23927583363376945 0.40902254501911572 1000.1003716509422 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "EF30F930-489A-EE67-E241-DBBE0187701D";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1003718297561;
	setAttr ".ow" 3.7909582224753762;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".tp" -type "double3" -1.1920928955078125e-07 0.69615340232849121 -1.7881393432617188e-07 ;
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "side";
	rename -uid "B1F32106-44B8-7F22-DE77-F5956B5B087A";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1002422905214 0.69615340232849121 -1.7881393432617188e-07 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "DB003944-4D74-B98C-E8F1-7AA89D680CF8";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1002424097306;
	setAttr ".ow" 2.091270120520341;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".tp" -type "double3" -1.1920928955078125e-07 0.69615340232849121 -1.7881393432617188e-07 ;
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -n "Candle_Blue";
	rename -uid "37110481-4219-7A78-0EE2-AD8044182593";
	setAttr ".s" -type "double3" 0.25 0.25 0.25 ;
createNode mesh -n "Candle_BlueShape" -p "Candle_Blue";
	rename -uid "F4181A5A-4973-B96B-9671-A9BDAC8C0AC9";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.73525875806808472 0.93826735019683838 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 472 ".pt";
	setAttr ".pt[0]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[1]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[2]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[3]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[4]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[5]" -type "float3" -2.9802322e-08 0 -1.4901161e-08 ;
	setAttr ".pt[6]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[7]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[8]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[9]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[10]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[11]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[12]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[13]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[14]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[15]" -type "float3" -2.9802322e-08 0 1.4901161e-08 ;
	setAttr ".pt[16]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[17]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[18]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[19]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[20]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[21]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[22]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[23]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[24]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[25]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[26]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[27]" -type "float3" -2.9802322e-08 0 -1.4901161e-08 ;
	setAttr ".pt[28]" -type "float3" -8.9406967e-08 0 0 ;
	setAttr ".pt[29]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[30]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[31]" -type "float3" -2.9802322e-08 0 -1.4901161e-08 ;
	setAttr ".pt[32]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[33]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[34]" -type "float3" -2.9802322e-08 0 1.4901161e-08 ;
	setAttr ".pt[35]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[36]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[37]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[38]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[39]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[40]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[41]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[42]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[43]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[44]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[45]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[46]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[47]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[48]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[49]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[50]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[51]" -type "float3" -2.9802322e-08 0 -1.4901161e-08 ;
	setAttr ".pt[52]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[53]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[54]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[55]" -type "float3" -2.9802322e-08 0 -1.4901161e-08 ;
	setAttr ".pt[56]" -type "float3" -8.9406967e-08 0 0 ;
	setAttr ".pt[57]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[58]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[59]" -type "float3" -2.9802322e-08 0 1.4901161e-08 ;
	setAttr ".pt[60]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[61]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[62]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[63]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[64]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[65]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[66]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[67]" -type "float3" -2.9802322e-08 0 1.4901161e-08 ;
	setAttr ".pt[68]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[69]" -type "float3" -8.9406967e-08 0 0 ;
	setAttr ".pt[70]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[71]" -type "float3" -2.9802322e-08 0 -1.4901161e-08 ;
	setAttr ".pt[72]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[73]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[74]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[75]" -type "float3" -2.9802322e-08 0 -1.4901161e-08 ;
	setAttr ".pt[76]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[77]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[78]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[79]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[80]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[81]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[82]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[83]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[84]" -type "float3" -8.9406967e-08 0 0 ;
	setAttr ".pt[85]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[86]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[87]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[88]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[89]" -type "float3" -8.9406967e-08 0 0 ;
	setAttr ".pt[90]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[91]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[92]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[93]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[94]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[95]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[96]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[97]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[98]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[99]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[100]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[101]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[102]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[103]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[104]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[105]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[106]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[107]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[108]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[109]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[110]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[111]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[112]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[113]" -type "float3" -8.9406967e-08 0 0 ;
	setAttr ".pt[114]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[115]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[116]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[117]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[118]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[119]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[120]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[121]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[122]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[123]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[124]" -type "float3" -8.9406967e-08 0 0 ;
	setAttr ".pt[125]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[126]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[127]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[128]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[129]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[130]" -type "float3" -2.9802322e-08 0 -1.4901161e-08 ;
	setAttr ".pt[131]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[132]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[133]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[134]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[135]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[136]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[137]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[138]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[139]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[140]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[141]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[142]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[143]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[144]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[145]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[146]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[147]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[148]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[149]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[150]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[151]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[152]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[153]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[154]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[155]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[156]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[157]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[158]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[159]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[160]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[161]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[162]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[163]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[164]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[165]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[166]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[167]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[168]" -type "float3" -8.9406967e-08 0 0 ;
	setAttr ".pt[169]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[170]" -type "float3" -2.9802322e-08 0 -1.4901161e-08 ;
	setAttr ".pt[171]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[172]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[173]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[174]" -type "float3" -2.9802322e-08 0 -1.4901161e-08 ;
	setAttr ".pt[175]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[176]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[177]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[178]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[179]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[180]" -type "float3" -8.9406967e-08 0 0 ;
	setAttr ".pt[181]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[182]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[183]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[184]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[185]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[186]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[187]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[188]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[189]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[190]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[191]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[192]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[193]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[194]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[195]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[196]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[197]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[198]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[199]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[200]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[201]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[202]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[203]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[204]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[205]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[206]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[207]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[208]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[209]" -type "float3" -8.9406967e-08 0 0 ;
	setAttr ".pt[210]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[211]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[212]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[213]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[214]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[215]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[216]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[217]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[218]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[219]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[220]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[221]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[222]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[223]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[224]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[225]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[226]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[227]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[228]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[229]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[230]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[231]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[232]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[233]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[234]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[235]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[236]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[237]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[238]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[239]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[240]" -type "float3" -8.9406967e-08 0 0 ;
	setAttr ".pt[241]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[242]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[243]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[244]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[245]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[246]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[247]" -type "float3" -8.9406967e-08 0 0 ;
	setAttr ".pt[248]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[249]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[250]" -type "float3" -2.9802322e-08 0 1.4901161e-08 ;
	setAttr ".pt[251]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[252]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[253]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[254]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[255]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[256]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[257]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[258]" -type "float3" -2.9802322e-08 0 1.4901161e-08 ;
	setAttr ".pt[259]" -type "float3" -2.9802322e-08 0 1.4901161e-08 ;
	setAttr ".pt[260]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[261]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[262]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[263]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[264]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[265]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[266]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[267]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[268]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[269]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[270]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[271]" -type "float3" -2.9802322e-08 0 -1.4901161e-08 ;
	setAttr ".pt[272]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[273]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[274]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[275]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[276]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[277]" -type "float3" -2.9802322e-08 0 -1.4901161e-08 ;
	setAttr ".pt[278]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[279]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[280]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[281]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[282]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[283]" -type "float3" -2.9802322e-08 0 -1.4901161e-08 ;
	setAttr ".pt[284]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[285]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[286]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[287]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[288]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[289]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[290]" -type "float3" -2.9802322e-08 0 -1.4901161e-08 ;
	setAttr ".pt[291]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[292]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[293]" -type "float3" -2.9802322e-08 0 -1.4901161e-08 ;
	setAttr ".pt[294]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[295]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[296]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[297]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[298]" -type "float3" -2.9802322e-08 0 1.4901161e-08 ;
	setAttr ".pt[299]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[300]" -type "float3" -8.9406967e-08 0 0 ;
	setAttr ".pt[301]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[302]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[303]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[304]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[305]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[306]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[307]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[308]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[309]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[310]" -type "float3" -8.9406967e-08 0 0 ;
	setAttr ".pt[311]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[312]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[313]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[314]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[315]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[316]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[317]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[318]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[319]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[320]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[321]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[322]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[323]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[324]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[325]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[326]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[327]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[328]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[329]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[330]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[331]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[332]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[333]" -type "float3" -8.9406967e-08 0 0 ;
	setAttr ".pt[334]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[335]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[336]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[337]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[338]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[339]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[340]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[341]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[342]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[343]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[344]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[345]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[346]" -type "float3" -8.9406967e-08 0 0 ;
	setAttr ".pt[347]" -type "float3" -8.9406967e-08 0 0 ;
	setAttr ".pt[348]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[349]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[350]" -type "float3" -2.9802322e-08 0 -1.4901161e-08 ;
	setAttr ".pt[351]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[352]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[353]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[354]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[355]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[356]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[357]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[358]" -type "float3" -2.9802322e-08 0 1.4901161e-08 ;
	setAttr ".pt[359]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[360]" -type "float3" -2.9802322e-08 0 -1.4901161e-08 ;
	setAttr ".pt[361]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[362]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[363]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[364]" -type "float3" -2.9802322e-08 0 -1.4901161e-08 ;
	setAttr ".pt[365]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[366]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[367]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[368]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[369]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[370]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[371]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[372]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[373]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[374]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[375]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[376]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[377]" -type "float3" -2.9802322e-08 0 -1.4901161e-08 ;
	setAttr ".pt[378]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[379]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[380]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[381]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[382]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[383]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[384]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[385]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[386]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[387]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[388]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[389]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[390]" -type "float3" -2.9802322e-08 0 -1.4901161e-08 ;
	setAttr ".pt[391]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[392]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[393]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[394]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[395]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[396]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[397]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[398]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[399]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[408]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[409]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[410]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[411]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[412]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[413]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[414]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[415]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[416]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[417]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[418]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[419]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[420]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[421]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[422]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[423]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[424]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[425]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[426]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[427]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[428]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[429]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[430]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[431]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[432]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[433]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[434]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[435]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[436]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[437]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[438]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[439]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[440]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[441]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[442]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[443]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[444]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[445]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[446]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[447]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[448]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[449]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[450]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[451]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[452]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[453]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[454]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[455]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[456]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[457]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[458]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[459]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[460]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[461]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[462]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[463]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[464]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[465]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[466]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[467]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[468]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[469]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[470]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[471]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[472]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[473]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[474]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[475]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[476]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[477]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[478]" -type "float3" -8.9406967e-08 0 0 ;
	setAttr ".pt[479]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".dr" 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode mesh -n "polySurfaceShape1" -p "Candle_Blue";
	rename -uid "0B31FCA2-4140-C450-C60F-4F9981C77412";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 592 ".vt";
	setAttr ".vt[0:165]"  0.1 0 0 0.086602539 0 -0.050000001 0.049999997 0 -0.086602546
		 -4.371139e-09 0 -0.1 -0.050000008 0 -0.086602539 -0.086602539 0 -0.050000008 -0.1 0 8.742278e-09
		 -0.086602531 0 0.050000019 -0.049999993 0 0.086602546 1.1924881e-09 0 0.1 0.049999993 0 0.086602546
		 0.086602561 0 0.049999978 -0.07929448 2.000000238419 6.8842323e-09 -0.068671048 2.000000238419 -0.039647214
		 -0.039647236 2.000000238419 -0.06867104 -6.5393198e-09 2.000000238419 -0.079294473
		 0.039647229 2.000000238419 -0.068671033 0.068671025 2.000000238419 -0.039647263 0.07929448 2.000000238419 -1.3593036e-08
		 0.068671033 2.000000238419 0.039647244 0.039647251 2.000000238419 0.068671033 1.4911762e-08 2.000000238419 0.07929448
		 -0.039647233 2.000000238419 0.06867104 -0.068671033 2.000000238419 0.039647244 0.098289154 0.083333343 -0.012940052
		 0.060350973 0.083333343 0.078650869 0.012940053 0.083333343 0.098289154 -0.078650855 0.083333343 0.060350996
		 -0.098289154 0.083333343 0.012940059 -0.060350984 0.083333343 -0.078650862 -0.012940055 0.083333343 -0.098289154
		 0.078650862 0.083333343 -0.060350981 0.09492594 0.16666669 -0.025435328 0.069490604 0.16666669 0.069490612
		 0.02543533 0.16666669 0.09492594 -0.069490597 0.16666669 0.069490619 -0.094925933 0.16666669 0.025435338
		 -0.069490612 0.16666669 -0.069490604 -0.025435334 0.16666669 -0.09492594 0.069490604 0.16666669 -0.069490604
		 0.089996777 0.25000003 -0.037277889 0.077281982 0.25000003 0.059300553 0.037277889 0.25000003 0.089996777
		 -0.059300534 0.25000003 0.077282004 -0.08999677 0.25000003 0.037277896 -0.077281997 0.25000003 -0.059300549
		 -0.037277892 0.25000003 -0.08999677 0.059300553 0.25000003 -0.077281989 0.083613977 0.33333337 -0.048274528
		 0.083613947 0.33333337 0.048274569 0.048274532 0.33333337 0.083613977 -0.048274547 0.33333337 0.083613962
		 -0.083613969 0.33333337 0.048274536 -0.083613954 0.33333337 -0.048274554 -0.048274532 0.33333337 -0.083613969
		 0.048274558 0.33333337 -0.083613947 0.075913094 0.41666672 -0.058250148 0.088402651 0.41666672 0.036617603
		 0.058250148 0.41666672 0.075913094 -0.036617577 0.41666672 0.088402666 -0.075913087 0.41666672 0.058250155
		 -0.088402659 0.41666672 -0.036617581 -0.058250152 0.41666672 -0.075913087 0.036617588 0.41666672 -0.088402651
		 0.067050435 0.50000006 -0.067050435 0.091592595 0.50000006 0.02454217 0.067050435 0.50000006 0.067050435
		 -0.024542144 0.50000006 0.091592602 -0.067050427 0.50000006 0.067050442 -0.091592595 0.50000006 -0.024542155
		 -0.067050442 0.50000006 -0.067050427 0.02454216 0.50000006 -0.091592595 0.05719978 0.58333343 -0.074544184
		 0.093157038 0.58333343 0.012264374 0.074544184 0.58333343 0.05719978 -0.012264346 0.58333343 0.093157046
		 -0.057199769 0.58333343 0.074544191 -0.093157046 0.58333343 -0.012264363 -0.074544184 0.58333343 -0.057199772
		 0.01226437 0.58333343 -0.093157046 0.046549082 0.66666675 -0.080625378 0.093098164 0.66666675 9.0548697e-09
		 0.08062537 0.66666675 0.046549078 1.9972134e-08 0.66666675 0.093098171 -0.046549067 0.66666675 0.080625378
		 -0.093098164 0.66666675 8.7251975e-09 -0.080625378 0.66666675 -0.046549078 -7.7161766e-10 0.66666675 -0.093098164
		 0.035296977 0.75000006 -0.085214429 0.091446355 0.75000006 -0.012039126 0.085214429 0.75000006 0.035296977
		 0.012039156 0.75000006 0.091446355 -0.035296969 0.75000006 0.085214436 -0.091446348 0.75000006 0.012039149
		 -0.085214429 0.75000006 -0.035296969 -0.012039134 0.75000006 -0.09144634 0.023648962 0.83333343 -0.088259272
		 0.088259257 0.83333343 -0.023649028 0.088259272 0.83333343 0.023648962 0.023649052 0.83333343 0.08825925
		 -0.023648953 0.83333343 0.08825928 -0.08825925 0.83333343 0.023649041 -0.088259272 0.83333343 -0.023648955
		 -0.023649031 0.83333343 -0.08825925 0.01181391 0.91666675 -0.089735657 0.083620317 0.91666675 -0.034636673
		 0.08973565 0.91666675 0.011813906 0.034636702 0.91666675 0.08362031 -0.011813896 0.91666675 0.089735657
		 -0.08362031 0.91666675 0.034636691 -0.089735657 0.91666675 -0.011813903 -0.03463668 0.91666675 -0.08362031
		 6.0934291e-10 1.000000119209 -0.089647256 0.077636801 1.000000119209 -0.044823613
		 0.089647248 1.000000119209 -2.3005464e-10 0.044823647 1.000000119209 0.077636793
		 1.1911164e-08 1.000000119209 0.089647248 -0.077636793 1.000000119209 0.044823632
		 -0.089647256 1.000000119209 5.6742344e-09 -0.04482362 1.000000119209 -0.077636793
		 -0.011588687 1.083333492 -0.088024944 0.070437498 1.083333492 -0.054048561 0.088024944 1.083333492 -0.011588687
		 0.054048587 1.083333492 0.070437476 0.011588701 1.083333492 0.088024944 -0.070437483 1.083333492 0.054048579
		 -0.088024944 1.083333492 0.011588695 -0.054048568 1.083333492 -0.070437491 -0.022755826 1.16666687 -0.08492592
		 0.062170099 1.16666687 -0.062170085 0.08492592 1.16666687 -0.022755828 0.062170103 1.16666687 0.062170085
		 0.022755839 1.16666687 0.08492592 -0.062170092 1.16666687 0.062170096 -0.08492592 1.16666687 0.022755837
		 -0.062170085 1.16666687 -0.062170092 -0.033316068 1.25000024 -0.080432072 0.0529982 1.25000024 -0.069068596
		 0.080432072 1.25000024 -0.033316068 0.069068618 1.25000024 0.052998178 0.033316076 1.25000024 0.080432065
		 -0.052998181 1.25000024 0.069068611 -0.080432072 1.25000024 0.033316076 -0.069068596 1.25000024 -0.052998189
		 -0.043098152 1.33333349 -0.074648209 0.043098174 1.33333349 -0.074648201 0.074648201 1.33333349 -0.043098152
		 0.074648216 1.33333349 0.043098155 0.043098163 1.33333349 0.074648201 -0.043098163 1.33333349 0.074648209
		 -0.074648201 1.33333349 0.043098163 -0.074648194 1.33333349 -0.04309817 -0.051947813 1.41666687 -0.067699693
		 0.032655764 1.41666687 -0.078837968 0.067699693 1.41666687 -0.05194781 0.078837983 1.41666687 0.032655735
		 0.051947821 1.41666687 0.067699686 -0.032655746 1.41666687 0.078837983 -0.067699693 1.41666687 0.051947821
		 -0.078837968 1.41666687 -0.032655749 -0.059729919 1.50000012 -0.059729923 0.02186268 1.50000012 -0.08159259
		 0.059729919 1.50000012 -0.059729915 0.081592605 1.50000012 0.021862652 0.059729926 1.50000012 0.059729911
		 -0.021862661 1.50000012 0.081592597;
	setAttr ".vt[166:331]" -0.059729919 1.50000012 0.059729926 -0.081592582 1.50000012 -0.021862669
		 -0.066330776 1.58333349 -0.050897427 0.010913087 1.58333349 -0.082892857 0.050897423 1.58333349 -0.066330776
		 0.082892865 1.58333349 0.010913058 0.066330783 1.58333349 0.050897416 -0.010913068 1.58333349 0.082892857
		 -0.050897423 1.58333349 0.066330783 -0.08289285 1.58333349 -0.010913077 -0.071659617 1.66666687 -0.041372713
		 2.0211308e-08 1.66666687 -0.082745403 0.041372709 1.66666687 -0.071659617 0.082745411 1.66666687 -6.8406973e-09
		 0.071659625 1.66666687 0.041372702 -1.0107924e-09 1.66666687 0.082745411 -0.041372705 1.66666687 0.071659632
		 -0.082745403 1.66666687 -9.6235517e-09 -0.075649746 1.75000024 -0.031335134 -0.010687837 1.75000024 -0.081182167
		 0.031335134 1.75000024 -0.075649738 0.081182174 1.75000024 -0.010687867 0.075649746 1.75000024 0.031335127
		 0.010687856 1.75000024 0.081182167 -0.03133513 1.75000024 0.075649753 -0.081182167 1.75000024 0.010687848
		 -0.078259245 1.83333349 -0.020969508 -0.020969484 1.83333349 -0.078259259 0.020969506 1.83333349 -0.078259237
		 0.078259252 1.83333349 -0.020969514 0.078259245 1.83333349 0.020969499 0.020969503 1.83333349 0.078259252
		 -0.020969503 1.83333349 0.078259245 -0.078259252 1.83333349 0.020969495 -0.079471461 1.91666687 -0.010462605
		 -0.030674839 1.91666687 -0.07405562 0.010462604 1.91666687 -0.079471454 0.074055612 1.91666687 -0.030674869
		 0.079471461 1.91666687 0.010462595 0.030674858 1.91666687 0.074055612 -0.010462597 1.91666687 0.079471469
		 -0.074055612 1.91666687 0.030674849 0.1080073 0.010106593 0.010323178 0.095785886 0.010106774 0.054522518
		 0.10083051 0.083434939 0.041761748 0.10687181 0.085011534 -0.0018275175 0.065123618 0.010091209 0.084251985
		 0.074290365 0.081802174 0.07688728 0.10458556 0.1667683 0.028020203 0.10486282 0.16836958 -0.015540833
		 0.08306884 0.16511071 0.065921545 0.10649281 0.25010166 0.014016732 0.10113993 0.2516903 -0.02876295
		 0.09027835 0.24845666 0.053987511 0.10654858 0.333435 -3.252909e-06 0.095773265 0.33501101 -0.041284796
		 0.095805503 0.33180264 0.041308437 0.10478126 0.41676837 -0.013797994 0.088881016 0.41833168 -0.052905243
		 0.099580199 0.41514859 0.028117619 0.10125051 0.50010169 -0.027133366 0.080605626 0.50165236 -0.063441895
		 0.10156433 0.49849454 0.014653903 0.096045636 0.58343512 -0.039786905 0.071110815 0.58497304 -0.072733909
		 0.10175179 0.58184052 0.0011572214 0.089283571 0.66676843 -0.051551633 0.060578421 0.66829371 -0.080644555
		 0.10016837 0.66518652 -0.012135705 0.081106454 0.75010175 -0.062239237 0.04920502 0.75161433 -0.087063
		 0.096870586 0.74853247 -0.024995416 0.071678668 0.83343512 -0.071683273 0.037198149 0.83493501 -0.091905929
		 0.0919443 0.83187848 -0.037203807 0.061183725 0.91676843 -0.079741485 0.024772778 0.91825563 -0.095118359
		 0.085502774 0.91522449 -0.048557565 0.049820594 1.00010180473 -0.086298212 0.012147136 1.0015763044 -0.096674316
		 0.077684186 0.99857056 -0.058871932 0.037800059 1.083435178 -0.091265723 -0.00046086404 1.084896922 -0.096576549
		 0.068648785 1.081916571 -0.067983419 0.02534082 1.16676855 -0.094585501 -0.012837511 1.16821766 -0.094856232
		 0.058575764 1.1652627 -0.075752504 0.012665521 1.25010204 -0.096228607 -0.02477682 1.25153828 -0.091571651
		 0.047659691 1.24860871 -0.082065627 -3.1598477e-06 1.3334353 -0.09619581 -0.036083993 1.33485878 -0.086806946
		 0.036106855 1.33195472 -0.086836897 -0.012446603 1.41676867 -0.094517089 -0.046578728 1.41817939 -0.080670051
		 0.024131358 1.41530073 -0.090009242 -0.024453769 1.50010192 -0.091250531 -0.056097809 1.50149989 -0.07329046
		 0.011951214 1.49864674 -0.091554768 -0.035824958 1.5834353 -0.086480975 -0.064497881 1.58482051 -0.064816602
		 -0.0002156049 1.58199286 -0.091474995 -0.046375155 1.66676867 -0.08031787 -0.071657442 1.66814113 -0.055412836
		 -0.012155174 1.66533899 -0.089800194 -0.055936813 1.75010204 -0.072893113 -0.077478535 1.75146174 -0.045256414
		 -0.023661189 1.74868512 -0.086588509 -0.064362638 1.8334353 -0.064358249 -0.081887953 1.83478224 -0.03453416
		 -0.034538589 1.83203113 -0.081924297 -0.071528018 1.91676867 -0.054881446 -0.084847458 1.91806507 -0.023449242
		 -0.044627033 1.91541541 -0.075936258 -0.077343978 1.99010777 -0.045442384 -0.085121587 1.99009669 -0.013954277
		 -0.052879248 1.9901067 -0.070459291 -0.010323179 0.010106594 0.1080073 -0.054522533 0.010106775 0.095785871
		 -0.04176176 0.083434939 0.10083051 0.0018275166 0.085011534 0.10687181 -0.08425197 0.010091211 0.065123647
		 -0.076887257 0.081802174 0.074290395 -0.02802022 0.1667683 0.10458554 0.015540833 0.16836958 0.10486282
		 -0.065921523 0.16511071 0.083068848 -0.014016747 0.25010166 0.1064928 0.028762946 0.2516903 0.10113993
		 -0.053987496 0.24845666 0.090278372 3.2355756e-06 0.333435 0.10654858 0.041284796 0.33501101 0.095773272
		 -0.04130841 0.33180261 0.095805518 0.013797976 0.41676837 0.10478126 0.052905239 0.41833168 0.088881016
		 -0.02811759 0.41514859 0.099580206 0.027133346 0.50010169 0.10125051 0.063441895 0.50165236 0.080605626
		 -0.014653874 0.49849454 0.10156433 0.03978689 0.58343512 0.096045643 0.072733909 0.58497304 0.071110815
		 -0.0011571925 0.58184052 0.1017518 0.051551618 0.66676843 0.089283578 0.080644548 0.66829371 0.060578417
		 0.012135737 0.66518652 0.10016838 0.062239222 0.75010175 0.081106462 0.087063 0.75161433 0.04920502
		 0.024995446 0.74853247 0.096870586 0.071683258 0.83343512 0.071678676 0.091905929 0.83493501 0.037198152
		 0.037203833 0.83187848 0.091944285 0.079741463 0.91676843 0.061183736 0.095118351 0.91825563 0.024772778
		 0.048557594 0.91522449 0.085502766 0.086298198 1.00010180473 0.049820606 0.096674301 1.0015763044 0.012147137
		 0.05887197 0.99857056 0.077684171 0.091265708 1.083435178 0.037800081 0.096576549 1.084896922 -0.00046086125
		 0.067983441 1.081916571 0.068648763 0.094585501 1.16676855 0.025340836 0.094856225 1.16821766 -0.012837511
		 0.075752519 1.1652627 0.058575749 0.0962286 1.25010204 0.012665541 0.091571651 1.25153828 -0.02477682
		 0.082065649 1.24860871 0.047659665 0.09619581 1.3334353 -3.1415236e-06;
	setAttr ".vt[332:497]" 0.086806946 1.33485878 -0.036083993 0.086836912 1.33195472 0.036106832
		 0.094517082 1.41676867 -0.012446582 0.080670044 1.41817939 -0.046578724 0.09000925 1.41530073 0.024131324
		 0.091250531 1.50010192 -0.024453746 0.07329046 1.50149989 -0.056097802 0.091554776 1.49864674 0.011951182
		 0.086480968 1.5834353 -0.035824936 0.064816602 1.58482051 -0.064497873 0.091475002 1.58199286 -0.0002156375
		 0.080317877 1.66676867 -0.046375126 0.055412833 1.66814113 -0.071657442 0.089800201 1.66533899 -0.012155204
		 0.07289312 1.75010204 -0.055936791 0.045256414 1.75146174 -0.077478528 0.086588517 1.74868512 -0.023661219
		 0.064358264 1.8334353 -0.064362615 0.034534156 1.83478224 -0.081887946 0.081924289 1.83203113 -0.034538623
		 0.054881461 1.91676867 -0.071527995 0.023449242 1.91806507 -0.08484745 0.075936243 1.91541541 -0.044627059
		 0.045442399 1.99010777 -0.077343963 0.01395428 1.99009669 -0.085121579 0.070459276 1.9901067 -0.052879274
		 -0.1080073 0.010106594 -0.010323172 -0.095785864 0.010106775 -0.054522548 -0.1008305 0.083434947 -0.041761778
		 -0.10687181 0.085011542 0.0018275222 -0.065123633 0.010091209 -0.084251978 -0.07429038 0.081802174 -0.076887272
		 -0.10458554 0.1667683 -0.028020237 -0.10486282 0.16836958 0.015540838 -0.08306884 0.16511071 -0.06592153
		 -0.1064928 0.25010166 -0.014016764 -0.10113992 0.2516903 0.028762951 -0.090278365 0.24845666 -0.053987511
		 -0.10654858 0.333435 3.2198811e-06 -0.095773257 0.33501101 0.0412848 -0.095805503 0.33180261 -0.041308422
		 -0.10478126 0.41676837 0.013797959 -0.088881008 0.41833168 0.05290525 -0.099580206 0.41514859 -0.028117597
		 -0.10125052 0.50010169 0.027133336 -0.080605619 0.50165236 0.063441902 -0.10156433 0.49849454 -0.014653889
		 -0.096045643 0.58343512 0.039786868 -0.071110807 0.58497304 0.072733916 -0.1017518 0.58184052 -0.0011572102
		 -0.089283578 0.66676843 0.051551599 -0.060578406 0.66829371 0.080644555 -0.10016837 0.66518652 0.012135724
		 -0.081106469 0.75010175 0.062239207 -0.049205016 0.75161433 0.087063 -0.096870579 0.74853247 0.024995439
		 -0.071678683 0.83343512 0.071683243 -0.037198145 0.83493501 0.091905929 -0.091944292 0.83187848 0.037203822
		 -0.061183747 0.91676843 0.079741463 -0.024772763 0.91825563 0.095118359 -0.085502766 0.91522449 0.04855758
		 -0.049820621 1.00010180473 0.08629819 -0.012147124 1.0015763044 0.096674301 -0.077684179 0.99857056 0.058871951
		 -0.037800092 1.083435178 0.091265708 0.00046087615 1.084896922 0.096576549 -0.06864877 1.081916571 0.067983441
		 -0.02534085 1.16676855 0.094585501 0.012837525 1.16821766 0.094856232 -0.058575764 1.1652627 0.075752512
		 -0.012665554 1.25010204 0.096228607 0.024776828 1.25153828 0.091571644 -0.047659673 1.24860871 0.082065634
		 3.1261461e-06 1.3334353 0.09619581 0.036084004 1.33485878 0.086806946 -0.036106847 1.33195472 0.086836904
		 0.012446573 1.41676867 0.094517097 0.046578735 1.41817939 0.080670036 -0.024131339 1.41530073 0.090009257
		 0.024453733 1.50010192 0.091250539 0.056097817 1.50149989 0.073290445 -0.011951197 1.49864674 0.091554776
		 0.035824932 1.5834353 0.08648099 0.064497888 1.58482051 0.064816594 0.0002156226 1.58199286 0.091474988
		 0.046375122 1.66676867 0.080317892 0.071657449 1.66814113 0.055412825 0.012155193 1.66533899 0.089800209
		 0.055936787 1.75010204 0.072893143 0.077478535 1.75146174 0.045256406 0.023661207 1.74868512 0.086588509
		 0.064362623 1.8334353 0.064358279 0.081887953 1.83478224 0.034534149 0.034538612 1.83203113 0.081924297
		 0.071528003 1.91676867 0.05488148 0.084847458 1.91806507 0.023449231 0.044627048 1.91541541 0.07593625
		 0.077343963 1.99010777 0.045442417 0.085121587 1.99009669 0.013954271 0.052879263 1.9901067 0.070459284
		 0.010323175 0.010106592 -0.1080073 0.054522537 0.010106774 -0.095785871 0.041761767 0.083434939 -0.10083051
		 -0.0018275185 0.085011534 -0.10687181 0.084251978 0.010091211 -0.065123633 0.076887272 0.081802174 -0.07429038
		 0.028020227 0.1667683 -0.10458554 -0.015540836 0.16836958 -0.10486282 0.06592153 0.16511071 -0.08306884
		 0.014016752 0.25010166 -0.1064928 -0.028762951 0.2516903 -0.10113992 0.053987511 0.24845666 -0.090278357
		 -3.2277944e-06 0.333435 -0.10654858 -0.0412848 0.33501101 -0.095773257 0.041308425 0.33180261 -0.095805496
		 -0.013797969 0.41676837 -0.10478126 -0.052905247 0.41833168 -0.088881008 0.028117605 0.41514859 -0.099580199
		 -0.027133344 0.50010169 -0.10125051 -0.063441902 0.50165236 -0.080605619 0.014653894 0.49849454 -0.10156433
		 -0.039786886 0.58343512 -0.096045643 -0.072733909 0.58497304 -0.071110807 0.0011572186 0.58184052 -0.1017518
		 -0.051551614 0.66676843 -0.089283578 -0.080644555 0.66829371 -0.060578417 -0.012135714 0.66518652 -0.10016837
		 -0.062239219 0.75010175 -0.081106462 -0.087063 0.75161433 -0.049205013 -0.024995424 0.74853247 -0.096870571
		 -0.071683258 0.83343512 -0.071678676 -0.091905929 0.83493501 -0.037198145 -0.037203811 0.83187848 -0.091944292
		 -0.079741463 0.91676843 -0.061183736 -0.095118359 0.91825563 -0.024772774 -0.048557572 0.91522449 -0.085502766
		 -0.086298183 1.00010180473 -0.049820613 -0.096674301 1.0015763044 -0.012147132 -0.05887194 0.99857056 -0.077684179
		 -0.091265708 1.083435178 -0.037800081 -0.096576549 1.084896922 0.00046086963 -0.067983426 1.081916571 -0.068648778
		 -0.094585493 1.16676855 -0.025340836 -0.094856225 1.16821766 0.012837521 -0.075752504 1.1652627 -0.058575764
		 -0.0962286 1.25010204 -0.012665541 -0.091571644 1.25153828 0.024776828 -0.08206562 1.24860871 -0.04765968
		 -0.096195802 1.3334353 3.1372917e-06 -0.086806938 1.33485878 0.036084 -0.086836889 1.33195472 -0.036106855
		 -0.094517089 1.41676867 0.012446583 -0.080670044 1.41817939 0.046578735 -0.090009242 1.41530073 -0.024131345
		 -0.091250539 1.50010192 0.024453746 -0.07329046 1.50149989 0.056097813 -0.091554761 1.49864674 -0.011951206
		 -0.086480975 1.5834353 0.035824943 -0.064816602 1.58482051 0.064497881 -0.091474988 1.58199286 0.00021561421
		 -0.080317885 1.66676867 0.046375133 -0.055412825 1.66814113 0.071657456 -0.089800201 1.66533899 0.012155184
		 -0.072893135 1.75010204 0.055936795 -0.04525641 1.75146174 0.077478543;
	setAttr ".vt[498:591]" -0.086588509 1.74868512 0.0236612 -0.064358264 1.8334353 0.064362623
		 -0.034534153 1.83478224 0.081887953 -0.081924289 1.83203113 0.034538604 -0.054881465 1.91676867 0.071528003
		 -0.023449235 1.91806507 0.084847465 -0.07593625 1.91541541 0.044627041 -0.045442406 1.99010777 0.077343971
		 -0.013954271 1.99009669 0.085121587 -0.070459284 1.9901067 0.052879255 -0.054447852 2.012000322 3.8177972e-09
		 -0.047153234 2.012000322 -0.027223904 -0.027223922 2.012000322 -0.047153231 -8.4558414e-09 2.012000322 -0.054447845
		 0.027223922 2.012000322 -0.04715322 0.04715322 2.012000322 -0.027223943 0.054447852 2.012000322 -1.0143297e-08
		 0.04715322 2.012000322 0.027223933 0.027223935 2.012000322 0.047153223 1.1845327e-08 2.012000322 0.054447852
		 -0.027223919 2.012000322 0.047153227 -0.047153223 2.012000322 0.027223928 -0.012001529 2.018000364 -7.6588513e-10
		 -0.010393634 2.018000364 -0.0060007535 -0.0060007609 2.018000364 -0.010393634 -1.3039522e-08 2.018000364 -0.012001526
		 0.006000774 2.018000364 -0.01039362 0.010393631 2.018000364 -0.0060007703 0.012001522 2.018000364 -8.1788629e-09
		 0.010393623 2.018000364 0.006000774 0.0060007703 2.018000364 0.010393631 8.571269e-09 2.018000364 0.012001529
		 -0.0060007609 2.018000364 0.010393631 -0.010393631 2.018000364 0.0060007628 -0.012001529 2.1900003 -7.6588513e-10
		 -0.010393634 2.1900003 -0.0060007535 -0.0060007609 2.1900003 -0.010393634 -1.3039522e-08 2.1900003 -0.012001526
		 0.006000774 2.1900003 -0.01039362 0.010393631 2.1900003 -0.0060007703 0.012001522 2.1900003 -8.1788629e-09
		 0.010393623 2.1900003 0.006000774 0.0060007703 2.1900003 0.010393631 8.571269e-09 2.1900003 0.012001529
		 -0.0060007609 2.1900003 0.010393631 -0.010393631 2.1900003 0.0060007628 -0.017848855 2.050208092 -0.0070420019
		 -0.016205877 2.049582481 -0.013000503 -0.0118074 2.049482584 -0.017386636 -0.0058320281 2.049935102 -0.019025089
		 0.00011919969 2.050818682 -0.017476868 0.0044515966 2.051896572 -0.013156832 0.0060043242 2.052880049 -0.0072225025
		 0.0043613412 2.053505421 -0.0012639713 -3.7116097e-05 2.053605318 0.0031221369 -0.0060125007 2.053153038 0.0047605969
		 -0.011963712 2.052269459 0.0032123828 -0.01629612 2.051191568 -0.0011076707 -0.019717911 2.086139679 -0.0092929332
		 -0.018109456 2.086060286 -0.015293009 -0.013716492 2.086047411 -0.019685782 -0.0077161496 2.08610487 -0.021294164
		 -0.0017161574 2.086217403 -0.019687213 0.0026757307 2.086354256 -0.015295533 0.0042827362 2.086479425 -0.0092958352
		 0.0026742748 2.086558819 -0.0032957294 -0.0017186686 2.086571455 0.0010970198 -0.0077190236 2.086513996 0.0027054076
		 -0.013718999 2.086401701 0.0010984663 -0.018110899 2.08626461 -0.0032932337 -0.018893946 2.12177968 -0.0083006211
		 -0.017279079 2.12205958 -0.014292977 -0.012885091 2.12210417 -0.018684518 -0.0068893861 2.12190175 -0.020298483
		 -0.00089844852 2.12150669 -0.018702438 0.003482393 2.12102461 -0.01432406 0.0050793202 2.12058496 -0.0083365003
		 0.0034644485 2.12030506 -0.0023441154 -0.00092951878 2.12026048 0.0020474002 -0.0069252374 2.12046289 0.0036613718
		 -0.012916158 2.12085795 0.0020653354 -0.017297011 2.12134004 -0.0023130605 -0.016188048 2.15702438 -0.0050418694
		 -0.014552345 2.15758181 -0.011009133 -0.010155029 2.15767074 -0.015396664 -0.0041743936 2.15726781 -0.017028777
		 0.0017871123 2.15648055 -0.015468175 0.0061320476 2.15551996 -0.011133037 0.0076962151 2.15464377 -0.0051849289
		 0.0060605076 2.15408635 0.00078236411 0.0016632116 2.15399742 0.0051698703 -0.0043174364 2.15440059 0.0068019899
		 -0.010278925 2.15518785 0.0052413964 -0.014623872 2.1561482 0.00090624008;
	setAttr -s 1172 ".ed";
	setAttr ".ed[0:165]"  10 25 0 25 26 0 26 9 0 9 10 0 7 27 0 27 28 0 28 6 0
		 6 7 0 4 29 0 29 30 0 30 3 0 3 4 0 1 31 0 31 24 0 24 0 0 0 1 0 25 33 0 33 34 0 34 26 0
		 27 35 0 35 36 0 36 28 0 29 37 0 37 38 0 38 30 0 31 39 0 39 32 0 32 24 0 33 41 0 41 42 0
		 42 34 0 35 43 0 43 44 0 44 36 0 37 45 0 45 46 0 46 38 0 39 47 0 47 40 0 40 32 0 41 49 0
		 49 50 0 50 42 0 43 51 0 51 52 0 52 44 0 45 53 0 53 54 0 54 46 0 47 55 0 55 48 0 48 40 0
		 49 57 0 57 58 0 58 50 0 51 59 0 59 60 0 60 52 0 53 61 0 61 62 0 62 54 0 55 63 0 63 56 0
		 56 48 0 57 65 0 65 66 0 66 58 0 59 67 0 67 68 0 68 60 0 61 69 0 69 70 0 70 62 0 63 71 0
		 71 64 0 64 56 0 65 73 0 73 74 0 74 66 0 67 75 0 75 76 0 76 68 0 69 77 0 77 78 0 78 70 0
		 71 79 0 79 72 0 72 64 0 73 81 0 81 82 0 82 74 0 75 83 0 83 84 0 84 76 0 77 85 0 85 86 0
		 86 78 0 79 87 0 87 80 0 80 72 0 81 89 0 89 90 0 90 82 0 83 91 0 91 92 0 92 84 0 85 93 0
		 93 94 0 94 86 0 87 95 0 95 88 0 88 80 0 89 97 0 97 98 0 98 90 0 91 99 0 99 100 0
		 100 92 0 93 101 0 101 102 0 102 94 0 95 103 0 103 96 0 96 88 0 97 105 0 105 106 0
		 106 98 0 99 107 0 107 108 0 108 100 0 101 109 0 109 110 0 110 102 0 103 111 0 111 104 0
		 104 96 0 105 113 0 113 114 0 114 106 0 107 115 0 115 116 0 116 108 0 109 117 0 117 118 0
		 118 110 0 111 119 0 119 112 0 112 104 0 113 121 0 121 122 0 122 114 0 115 123 0 123 124 0
		 124 116 0 117 125 0 125 126 0 126 118 0 119 127 0 127 120 0 120 112 0 121 129 0 129 130 0
		 130 122 0 123 131 0 131 132 0 132 124 0;
	setAttr ".ed[166:331]" 125 133 0 133 134 0 134 126 0 127 135 0 135 128 0 128 120 0
		 129 137 0 137 138 0 138 130 0 131 139 0 139 140 0 140 132 0 133 141 0 141 142 0 142 134 0
		 135 143 0 143 136 0 136 128 0 137 145 0 145 146 0 146 138 0 139 147 0 147 148 0 148 140 0
		 141 149 0 149 150 0 150 142 0 143 151 0 151 144 0 144 136 0 145 153 0 153 154 0 154 146 0
		 147 155 0 155 156 0 156 148 0 149 157 0 157 158 0 158 150 0 151 159 0 159 152 0 152 144 0
		 153 161 0 161 162 0 162 154 0 155 163 0 163 164 0 164 156 0 157 165 0 165 166 0 166 158 0
		 159 167 0 167 160 0 160 152 0 161 169 0 169 170 0 170 162 0 163 171 0 171 172 0 172 164 0
		 165 173 0 173 174 0 174 166 0 167 175 0 175 168 0 168 160 0 169 177 0 177 178 0 178 170 0
		 171 179 0 179 180 0 180 172 0 173 181 0 181 182 0 182 174 0 175 183 0 183 176 0 176 168 0
		 177 185 0 185 186 0 186 178 0 179 187 0 187 188 0 188 180 0 181 189 0 189 190 0 190 182 0
		 183 191 0 191 184 0 184 176 0 185 193 0 193 194 0 194 186 0 187 195 0 195 196 0 196 188 0
		 189 197 0 197 198 0 198 190 0 191 199 0 199 192 0 192 184 0 193 201 0 201 202 0 202 194 0
		 195 203 0 203 204 0 204 196 0 197 205 0 205 206 0 206 198 0 199 207 0 207 200 0 200 192 0
		 201 14 0 14 15 0 15 202 0 203 17 0 17 18 0 18 204 0 205 20 0 20 21 0 21 206 0 207 23 0
		 23 12 0 12 200 0 208 211 0 211 210 0 210 209 0 209 208 0 210 213 0 213 212 0 212 209 0
		 211 215 0 215 214 0 214 210 0 214 216 0 216 213 0 215 218 0 218 217 0 217 214 0 217 219 0
		 219 216 0 218 221 0 221 220 0 220 217 0 220 222 0 222 219 0 221 224 0 224 223 0 223 220 0
		 223 225 0 225 222 0 224 227 0 227 226 0 226 223 0 226 228 0 228 225 0 227 230 0 230 229 0
		 229 226 0 229 231 0 231 228 0 230 233 0 233 232 0 232 229 0;
	setAttr ".ed[332:497]" 232 234 0 234 231 0 233 236 0 236 235 0 235 232 0 235 237 0
		 237 234 0 236 239 0 239 238 0 238 235 0 238 240 0 240 237 0 239 242 0 242 241 0 241 238 0
		 241 243 0 243 240 0 242 245 0 245 244 0 244 241 0 244 246 0 246 243 0 245 248 0 248 247 0
		 247 244 0 247 249 0 249 246 0 248 251 0 251 250 0 250 247 0 250 252 0 252 249 0 251 254 0
		 254 253 0 253 250 0 253 255 0 255 252 0 254 257 0 257 256 0 256 253 0 256 258 0 258 255 0
		 257 260 0 260 259 0 259 256 0 259 261 0 261 258 0 260 263 0 263 262 0 262 259 0 262 264 0
		 264 261 0 263 266 0 266 265 0 265 262 0 265 267 0 267 264 0 266 269 0 269 268 0 268 265 0
		 268 270 0 270 267 0 269 272 0 272 271 0 271 268 0 271 273 0 273 270 0 272 275 0 275 274 0
		 274 271 0 274 276 0 276 273 0 275 278 0 278 277 0 277 274 0 277 279 0 279 276 0 278 281 0
		 281 280 0 280 277 0 280 282 0 282 279 0 283 286 0 286 285 0 285 284 0 284 283 0 285 288 0
		 288 287 0 287 284 0 286 290 0 290 289 0 289 285 0 289 291 0 291 288 0 290 293 0 293 292 0
		 292 289 0 292 294 0 294 291 0 293 296 0 296 295 0 295 292 0 295 297 0 297 294 0 296 299 0
		 299 298 0 298 295 0 298 300 0 300 297 0 299 302 0 302 301 0 301 298 0 301 303 0 303 300 0
		 302 305 0 305 304 0 304 301 0 304 306 0 306 303 0 305 308 0 308 307 0 307 304 0 307 309 0
		 309 306 0 308 311 0 311 310 0 310 307 0 310 312 0 312 309 0 311 314 0 314 313 0 313 310 0
		 313 315 0 315 312 0 314 317 0 317 316 0 316 313 0 316 318 0 318 315 0 317 320 0 320 319 0
		 319 316 0 319 321 0 321 318 0 320 323 0 323 322 0 322 319 0 322 324 0 324 321 0 323 326 0
		 326 325 0 325 322 0 325 327 0 327 324 0 326 329 0 329 328 0 328 325 0 328 330 0 330 327 0
		 329 332 0 332 331 0 331 328 0 331 333 0 333 330 0 332 335 0 335 334 0;
	setAttr ".ed[498:663]" 334 331 0 334 336 0 336 333 0 335 338 0 338 337 0 337 334 0
		 337 339 0 339 336 0 338 341 0 341 340 0 340 337 0 340 342 0 342 339 0 341 344 0 344 343 0
		 343 340 0 343 345 0 345 342 0 344 347 0 347 346 0 346 343 0 346 348 0 348 345 0 347 350 0
		 350 349 0 349 346 0 349 351 0 351 348 0 350 353 0 353 352 0 352 349 0 352 354 0 354 351 0
		 353 356 0 356 355 0 355 352 0 355 357 0 357 354 0 358 361 0 361 360 0 360 359 0 359 358 0
		 360 363 0 363 362 0 362 359 0 361 365 0 365 364 0 364 360 0 364 366 0 366 363 0 365 368 0
		 368 367 0 367 364 0 367 369 0 369 366 0 368 371 0 371 370 0 370 367 0 370 372 0 372 369 0
		 371 374 0 374 373 0 373 370 0 373 375 0 375 372 0 374 377 0 377 376 0 376 373 0 376 378 0
		 378 375 0 377 380 0 380 379 0 379 376 0 379 381 0 381 378 0 380 383 0 383 382 0 382 379 0
		 382 384 0 384 381 0 383 386 0 386 385 0 385 382 0 385 387 0 387 384 0 386 389 0 389 388 0
		 388 385 0 388 390 0 390 387 0 389 392 0 392 391 0 391 388 0 391 393 0 393 390 0 392 395 0
		 395 394 0 394 391 0 394 396 0 396 393 0 395 398 0 398 397 0 397 394 0 397 399 0 399 396 0
		 398 401 0 401 400 0 400 397 0 400 402 0 402 399 0 401 404 0 404 403 0 403 400 0 403 405 0
		 405 402 0 404 407 0 407 406 0 406 403 0 406 408 0 408 405 0 407 410 0 410 409 0 409 406 0
		 409 411 0 411 408 0 410 413 0 413 412 0 412 409 0 412 414 0 414 411 0 413 416 0 416 415 0
		 415 412 0 415 417 0 417 414 0 416 419 0 419 418 0 418 415 0 418 420 0 420 417 0 419 422 0
		 422 421 0 421 418 0 421 423 0 423 420 0 422 425 0 425 424 0 424 421 0 424 426 0 426 423 0
		 425 428 0 428 427 0 427 424 0 427 429 0 429 426 0 428 431 0 431 430 0 430 427 0 430 432 0
		 432 429 0 433 436 0 436 435 0 435 434 0 434 433 0 435 438 0 438 437 0;
	setAttr ".ed[664:829]" 437 434 0 436 440 0 440 439 0 439 435 0 439 441 0 441 438 0
		 440 443 0 443 442 0 442 439 0 442 444 0 444 441 0 443 446 0 446 445 0 445 442 0 445 447 0
		 447 444 0 446 449 0 449 448 0 448 445 0 448 450 0 450 447 0 449 452 0 452 451 0 451 448 0
		 451 453 0 453 450 0 452 455 0 455 454 0 454 451 0 454 456 0 456 453 0 455 458 0 458 457 0
		 457 454 0 457 459 0 459 456 0 458 461 0 461 460 0 460 457 0 460 462 0 462 459 0 461 464 0
		 464 463 0 463 460 0 463 465 0 465 462 0 464 467 0 467 466 0 466 463 0 466 468 0 468 465 0
		 467 470 0 470 469 0 469 466 0 469 471 0 471 468 0 470 473 0 473 472 0 472 469 0 472 474 0
		 474 471 0 473 476 0 476 475 0 475 472 0 475 477 0 477 474 0 476 479 0 479 478 0 478 475 0
		 478 480 0 480 477 0 479 482 0 482 481 0 481 478 0 481 483 0 483 480 0 482 485 0 485 484 0
		 484 481 0 484 486 0 486 483 0 485 488 0 488 487 0 487 484 0 487 489 0 489 486 0 488 491 0
		 491 490 0 490 487 0 490 492 0 492 489 0 491 494 0 494 493 0 493 490 0 493 495 0 495 492 0
		 494 497 0 497 496 0 496 493 0 496 498 0 498 495 0 497 500 0 500 499 0 499 496 0 499 501 0
		 501 498 0 500 503 0 503 502 0 502 499 0 502 504 0 504 501 0 503 506 0 506 505 0 505 502 0
		 505 507 0 507 504 0 0 208 0 209 11 0 11 0 0 212 10 0 10 11 0 213 25 0 216 33 0 219 41 0
		 222 49 0 225 57 0 228 65 0 231 73 0 234 81 0 237 89 0 240 97 0 243 105 0 246 113 0
		 249 121 0 252 129 0 255 137 0 258 145 0 261 153 0 264 161 0 267 169 0 270 177 0 273 185 0
		 276 193 0 279 201 0 282 14 0 280 13 0 13 14 0 281 12 0 12 13 0 278 200 0 275 192 0
		 272 184 0 269 176 0 266 168 0 263 160 0 260 152 0 257 144 0 254 136 0 251 128 0 248 120 0
		 245 112 0 242 104 0 239 96 0 236 88 0 233 80 0 230 72 0;
	setAttr ".ed[830:995]" 227 64 0 224 56 0 221 48 0 218 40 0 215 32 0 211 24 0
		 9 283 0 284 8 0 8 9 0 287 7 0 7 8 0 288 27 0 291 35 0 294 43 0 297 51 0 300 59 0
		 303 67 0 306 75 0 309 83 0 312 91 0 315 99 0 318 107 0 321 115 0 324 123 0 327 131 0
		 330 139 0 333 147 0 336 155 0 339 163 0 342 171 0 345 179 0 348 187 0 351 195 0 354 203 0
		 357 17 0 355 16 0 16 17 0 356 15 0 15 16 0 353 202 0 350 194 0 347 186 0 344 178 0
		 341 170 0 338 162 0 335 154 0 332 146 0 329 138 0 326 130 0 323 122 0 320 114 0 317 106 0
		 314 98 0 311 90 0 308 82 0 305 74 0 302 66 0 299 58 0 296 50 0 293 42 0 290 34 0
		 286 26 0 6 358 0 359 5 0 5 6 0 362 4 0 4 5 0 363 29 0 366 37 0 369 45 0 372 53 0
		 375 61 0 378 69 0 381 77 0 384 85 0 387 93 0 390 101 0 393 109 0 396 117 0 399 125 0
		 402 133 0 405 141 0 408 149 0 411 157 0 414 165 0 417 173 0 420 181 0 423 189 0 426 197 0
		 429 205 0 432 20 0 430 19 0 19 20 0 431 18 0 18 19 0 428 204 0 425 196 0 422 188 0
		 419 180 0 416 172 0 413 164 0 410 156 0 407 148 0 404 140 0 401 132 0 398 124 0 395 116 0
		 392 108 0 389 100 0 386 92 0 383 84 0 380 76 0 377 68 0 374 60 0 371 52 0 368 44 0
		 365 36 0 361 28 0 3 433 0 434 2 0 2 3 0 437 1 0 1 2 0 438 31 0 441 39 0 444 47 0
		 447 55 0 450 63 0 453 71 0 456 79 0 459 87 0 462 95 0 465 103 0 468 111 0 471 119 0
		 474 127 0 477 135 0 480 143 0 483 151 0 486 159 0 489 167 0 492 175 0 495 183 0 498 191 0
		 501 199 0 504 207 0 507 23 0 505 22 0 22 23 0 506 21 0 21 22 0 503 206 0 500 198 0
		 497 190 0 494 182 0 491 174 0 488 166 0 485 158 0 482 150 0 479 142 0 476 134 0 473 126 0
		 470 118 0 467 110 0 464 102 0 461 94 0;
	setAttr ".ed[996:1161]" 458 86 0 455 78 0 452 70 0 449 62 0 446 54 0 443 46 0
		 440 38 0 436 30 0 12 508 0 508 509 0 509 13 0 509 510 0 510 14 0 510 511 0 511 15 0
		 511 512 0 512 16 0 512 513 0 513 17 0 513 514 0 514 18 0 514 515 0 515 19 0 515 516 0
		 516 20 0 516 517 0 517 21 0 517 518 0 518 22 0 518 519 0 519 23 0 519 508 0 508 520 0
		 520 521 0 521 509 0 521 522 0 522 510 0 522 523 0 523 511 0 523 524 0 524 512 0 524 525 0
		 525 513 0 525 526 0 526 514 0 526 527 0 527 515 0 527 528 0 528 516 0 528 529 0 529 517 0
		 529 530 0 530 518 0 530 531 0 531 519 0 531 520 0 532 543 0 543 542 0 542 541 0 541 540 0
		 540 539 0 539 538 0 538 537 0 537 536 0 536 535 0 535 534 0 534 533 0 533 532 0 520 544 0
		 544 545 0 545 521 0 545 546 0 546 522 0 546 547 0 547 523 0 547 548 0 548 524 0 548 549 0
		 549 525 0 549 550 0 550 526 0 550 551 0 551 527 0 551 552 0 552 528 0 552 553 0 553 529 0
		 553 554 0 554 530 0 554 555 0 555 531 0 555 544 0 544 556 0 556 557 0 557 545 0 557 558 0
		 558 546 0 558 559 0 559 547 0 559 560 0 560 548 0 560 561 0 561 549 0 561 562 0 562 550 0
		 562 563 0 563 551 0 563 564 0 564 552 0 564 565 0 565 553 0 565 566 0 566 554 0 566 567 0
		 567 555 0 567 556 0 556 568 0 568 569 0 569 557 0 569 570 0 570 558 0 570 571 0 571 559 0
		 571 572 0 572 560 0 572 573 0 573 561 0 573 574 0 574 562 0 574 575 0 575 563 0 575 576 0
		 576 564 0 576 577 0 577 565 0 577 578 0 578 566 0 578 579 0 579 567 0 579 568 0 568 580 0
		 580 581 0 581 569 0 581 582 0 582 570 0 582 583 0 583 571 0 583 584 0 584 572 0 584 585 0
		 585 573 0 585 586 0 586 574 0 586 587 0 587 575 0 587 588 0 588 576 0 588 589 0 589 577 0
		 589 590 0 590 578 0 590 591 0 591 579 0 591 580 0 580 532 0 533 581 0;
	setAttr ".ed[1162:1171]" 534 582 0 535 583 0 536 584 0 537 585 0 538 586 0 539 587 0
		 540 588 0 541 589 0 542 590 0 543 591 0;
	setAttr -s 2332 ".n";
	setAttr ".n[0:165]" -type "float3"  0.30991256 -0.12240923 0.94285208 0.26002637
		 0.068869255 0.9631424 0.4973087 -0.049958751 0.86613399 0.24210875 -0.27518523 0.93040663
		 -0.94285208 -0.12240928 0.30991262 -0.96314228 0.068869218 0.2600266 -0.86613399
		 -0.049958717 0.49730876 -0.93040663 -0.27518523 0.24210876 -0.30991262 -0.12240926
		 -0.9428522 -0.2600264 0.068869255 -0.9631424 -0.49730879 -0.049958754 -0.86613399
		 -0.24210882 -0.27518526 -0.93040657 0.94285208 -0.12240928 -0.30991253 0.96314245
		 0.068869278 -0.2600264 0.86613399 -0.049958754 -0.49730879 0.93040657 -0.27518523
		 -0.24210879 0.26002637 0.068869255 0.9631424 0.38370168 0.068333134 0.92092532 0.60570979
		 -0.049371108 0.79415244 0.4973087 -0.049958751 0.86613399 -0.96314228 0.068869218
		 0.2600266 -0.9209252 0.068333104 0.38370198 -0.79415244 -0.049371071 0.60570979 -0.86613399
		 -0.049958717 0.49730876 -0.2600264 0.068869255 -0.9631424 -0.38370201 0.068333052
		 -0.9209252 -0.60570985 -0.04937109 -0.79415244 -0.49730879 -0.049958754 -0.86613399
		 0.96314245 0.068869278 -0.2600264 0.92092538 0.06833306 -0.38370204 0.79415238 -0.04937112
		 -0.60570985 0.86613399 -0.049958754 -0.49730879 0.38370168 0.068333134 0.92092532
		 0.50063765 0.067816153 0.86299646 0.7042073 -0.048853368 0.70831174 0.60570979 -0.049371108
		 0.79415244 -0.9209252 0.068333104 0.38370198 -0.86299652 0.067816205 0.50063741 -0.70831174
		 -0.048853345 0.70420712 -0.79415244 -0.049371071 0.60570979 -0.38370201 0.068333052
		 -0.9209252 -0.50063741 0.06781622 -0.86299658 -0.70420712 -0.048853308 -0.70831174
		 -0.60570985 -0.04937109 -0.79415244 0.92092538 0.06833306 -0.38370204 0.86299658
		 0.067816183 -0.50063759 0.70831168 -0.048853368 -0.70420724 0.79415238 -0.04937112
		 -0.60570985 0.50063765 0.067816153 0.86299646 0.60901582 0.067299105 0.79029775 0.79065889
		 -0.048335522 0.61034596 0.7042073 -0.048853368 0.70831174 -0.86299652 0.067816205
		 0.50063741 -0.79029757 0.067299142 0.609016 -0.61034608 -0.048335511 0.79065889 -0.70831174
		 -0.048853345 0.70420712 -0.50063741 0.06781622 -0.86299658 -0.609016 0.067299195
		 -0.79029757 -0.79065889 -0.048335511 -0.61034596 -0.70420712 -0.048853308 -0.70831174
		 0.86299658 0.067816183 -0.50063759 0.79029757 0.067299172 -0.609016 0.61034596 -0.048335522
		 -0.79065889 0.70831168 -0.048853368 -0.70420724 0.60901582 0.067299105 0.79029775
		 0.7069822 0.066782057 0.70407134 0.86358458 -0.047817618 0.50193137 0.79065889 -0.048335522
		 0.61034596 -0.79029757 0.067299142 0.609016 -0.7040711 0.066782065 0.70698243 -0.50193125
		 -0.047817666 0.86358476 -0.61034608 -0.048335511 0.79065889 -0.609016 0.067299195
		 -0.79029757 -0.7069822 0.06678208 -0.70407128 -0.86358476 -0.047817688 -0.50193125
		 -0.79065889 -0.048335511 -0.61034596 0.79029757 0.067299172 -0.609016 0.70407128
		 0.066782042 -0.7069822 0.50193119 -0.04781767 -0.86358476 0.61034596 -0.048335522
		 -0.79065889 0.7069822 0.066782057 0.70407134 0.79285884 0.066264883 0.60579187 0.921736
		 -0.047299609 0.3849225 0.86358458 -0.047817618 0.50193137 -0.7040711 0.066782065
		 0.70698243 -0.60579169 0.06626489 0.79285896 -0.38492247 -0.047299623 0.92173612
		 -0.50193125 -0.047817666 0.86358476 -0.7069822 0.06678208 -0.70407128 -0.79285896
		 0.066264831 -0.60579181 -0.92173612 -0.047299605 -0.38492239 -0.86358476 -0.047817688
		 -0.50193125 0.70407128 0.066782042 -0.7069822 0.60579181 0.066264801 -0.79285896
		 0.3849225 -0.047299616 -0.92173612 0.50193119 -0.04781767 -0.86358476 0.79285884
		 0.066264883 0.60579187 0.86517578 0.065747693 0.49713987 0.96411747 -0.04678138 0.26132154
		 0.921736 -0.047299609 0.3849225 -0.60579169 0.06626489 0.79285896 -0.49713975 0.065747678
		 0.86517584 -0.26132149 -0.046781387 0.96411753 -0.38492247 -0.047299623 0.92173612
		 -0.79285896 0.066264831 -0.60579181 -0.86517578 0.065747701 -0.49713987 -0.96411747
		 -0.046781372 -0.26132163 -0.92173612 -0.047299605 -0.38492239 0.60579181 0.066264801
		 -0.79285896 0.4971399 0.065747701 -0.86517578 0.26132163 -0.046781417 -0.96411747
		 0.3849225 -0.047299616 -0.92173612 0.86517578 0.065747693 0.49713987 0.92269421 0.065230303
		 0.37997416 0.99000293 -0.046263341 0.13324361 0.96411747 -0.04678138 0.26132154 -0.49713975
		 0.065747678 0.86517584 -0.3799741 0.065230347 0.92269433 -0.13324358 -0.046263345
		 0.99000293 -0.26132149 -0.046781387 0.96411753 -0.86517578 0.065747701 -0.49713987
		 -0.92269427 0.065230392 -0.37997395 -0.99000293 -0.046263359 -0.13324347 -0.96411747
		 -0.046781372 -0.26132163 0.4971399 0.065747701 -0.86517578 0.37997404 0.065230422
		 -0.92269427 0.13324349 -0.046263359 -0.99000293 0.26132163 -0.046781417 -0.96411747
		 0.92269421 0.065230303 0.37997416 0.96442908 0.064713039 0.25629824 0.99894893 -0.045745254
		 0.0028797255 0.99000293 -0.046263341 0.13324361 -0.3799741 0.065230347 0.92269433
		 -0.25629809 0.064713098 0.96442908 -0.0028799118 -0.04574522 0.99894893 -0.13324358
		 -0.046263345 0.99000293 -0.92269427 0.065230392 -0.37997395 -0.96442908 0.064713068
		 -0.25629815 -0.99894899 -0.045745213 -0.0028796371 -0.99000293 -0.046263359 -0.13324347
		 0.37997404 0.065230422 -0.92269427 0.25629809 0.064713046 -0.96442914 0.0028795605
		 -0.04574522 -0.99894899 0.13324349 -0.046263359 -0.99000293 0.96442908 0.064713039
		 0.25629824 0.98966485 0.064195581 0.12822798 0.99080175 -0.045226932 -0.1275394 0.99894893
		 -0.045745254 0.0028797255 -0.25629809 0.064713098 0.96442908 -0.12822753 0.064195551
		 0.98966485 0.12753928 -0.045226917 0.99080175 -0.0028799118 -0.04574522 0.99894893
		 -0.96442908 0.064713068 -0.25629815 -0.98966485 0.064195558 -0.12822787 -0.99080175
		 -0.04522698 0.12753947 -0.99894899 -0.045745213 -0.0028796371 0.25629809 0.064713046
		 -0.96442914 0.12822789 0.064195521 -0.98966485 -0.1275395 -0.045226984 -0.99080175
		 0.0028795605 -0.04574522 -0.99894899 0.98966485 0.064195581 0.12822798 0.99796838
		 0.063678049 -0.0020448051 0.96570033 -0.044708405 -0.25578099 0.99080175 -0.045226932
		 -0.1275394 -0.12822753 0.064195551 0.98966485 0.002044939 0.063678034 0.99796838;
	setAttr ".n[166:331]" -type "float3"  0.25578123 -0.044708397 0.96570039 0.12753928
		 -0.045226917 0.99080175 -0.98966485 0.064195558 -0.12822787 -0.99796838 0.063678034
		 0.0020449271 -0.96570039 -0.044708475 0.25578114 -0.99080175 -0.04522698 0.12753947
		 0.12822789 0.064195521 -0.98966485 -0.0020449508 0.063678034 -0.99796838 -0.2557812
		 -0.044708479 -0.96570039 -0.1275395 -0.045226984 -0.99080175 0.99796838 0.063678049
		 -0.0020448051 0.98919648 0.063160561 -0.13229172 0.92407358 -0.044190016 -0.37965158
		 0.96570033 -0.044708405 -0.25578099 0.002044939 0.063678034 0.99796838 0.13229202
		 0.063160628 0.98919636 0.37965158 -0.044189982 0.92407352 0.25578123 -0.044708397
		 0.96570039 -0.99796838 0.063678034 0.0020449271 -0.98919648 0.063160606 0.13229187
		 -0.92407352 -0.044189971 0.37965146 -0.96570039 -0.044708475 0.25578114 -0.0020449508
		 0.063678034 -0.99796838 -0.1322919 0.063160568 -0.98919648 -0.37965193 -0.044190034
		 -0.92407346 -0.2557812 -0.044708479 -0.96570039 0.98919648 0.063160561 -0.13229172
		 0.96349764 0.062642932 -0.26028451 0.86663306 -0.043671615 -0.497031 0.92407358 -0.044190016
		 -0.37965158 0.13229202 0.063160628 0.98919636 0.26028472 0.062642962 0.96349764 0.49703118
		 -0.043671634 0.866633 0.37965158 -0.044189982 0.92407352 -0.98919648 0.063160606
		 0.13229187 -0.96349764 0.062642932 0.26028463 -0.86663306 -0.043671601 0.49703115
		 -0.92407352 -0.044189971 0.37965146 -0.1322919 0.063160568 -0.98919648 -0.2602846
		 0.062642947 -0.9634977 -0.49703109 -0.043671582 -0.86663306 -0.37965193 -0.044190034
		 -0.92407346 0.96349764 0.062642932 -0.26028451 0.92131072 0.062125247 -0.38383207
		 0.79436141 -0.043153297 -0.60591072 0.86663306 -0.043671615 -0.497031 0.26028472
		 0.062642962 0.96349764 0.38383222 0.062125236 0.92131066 0.60591102 -0.043153282
		 0.79436111 0.49703118 -0.043671634 0.866633 -0.96349764 0.062642932 0.26028463 -0.92131072
		 0.062125288 0.38383186 -0.79436141 -0.043153305 0.60591078 -0.86663306 -0.043671601
		 0.49703115 -0.2602846 0.062642947 -0.9634977 -0.38383186 0.062125295 -0.92131084
		 -0.6059109 -0.043153331 -0.79436117 -0.49703109 -0.043671582 -0.86663306 0.92131072
		 0.062125247 -0.38383207 0.86335588 0.061607629 -0.50082028 0.70849431 -0.042634681
		 -0.70442754 0.79436141 -0.043153297 -0.60591072 0.38383222 0.062125236 0.92131066
		 0.5008204 0.06160764 0.86335582 0.70442754 -0.042634681 0.70849431 0.60591102 -0.043153282
		 0.79436111 -0.92131072 0.062125288 0.38383186 -0.86335582 0.061607633 0.50082052
		 -0.70849437 -0.042634677 0.70442748 -0.79436141 -0.043153305 0.60591078 -0.38383186
		 0.062125295 -0.92131084 -0.50082052 0.061607603 -0.86335582 -0.70442754 -0.042634733
		 -0.70849431 -0.6059109 -0.043153331 -0.79436117 0.86335588 0.061607629 -0.50082028
		 0.79062414 0.061089844 -0.60924667 0.61050117 -0.042116158 -0.79089487 0.70849431
		 -0.042634681 -0.70442754 0.5008204 0.06160764 0.86335582 0.60924685 0.061089881 0.79062402
		 0.79089493 -0.042116188 0.61050111 0.70442754 -0.042634681 0.70849431 -0.86335582
		 0.061607633 0.50082052 -0.79062414 0.061089844 0.60924667 -0.61050129 -0.042116158
		 0.79089469 -0.70849437 -0.042634677 0.70442748 -0.50082052 0.061607603 -0.86335582
		 -0.60924667 0.061089858 -0.79062414 -0.79089487 -0.042116184 -0.61050117 -0.70442754
		 -0.042634733 -0.70849431 0.79062414 0.061089844 -0.60924667 0.70435834 0.060572051
		 -0.70725536 0.50205827 -0.041597519 -0.86383277 0.61050117 -0.042116158 -0.79089487
		 0.60924685 0.061089881 0.79062402 0.70725566 0.060572039 0.70435816 0.86383283 -0.041597512
		 0.50205815 0.79089493 -0.042116188 0.61050111 -0.79062414 0.061089844 0.60924667
		 -0.70435828 0.060572069 0.70725542 -0.50205821 -0.041597538 0.86383283 -0.61050129
		 -0.042116158 0.79089469 -0.60924667 0.061089858 -0.79062414 -0.70725548 0.06057208
		 -0.7043584 -0.86383295 -0.041597564 -0.50205809 -0.79089487 -0.042116184 -0.61050117
		 0.70435834 0.060572051 -0.70725536 0.60603452 0.060054149 -0.79316813 0.38502085
		 -0.041078694 -0.92199326 0.50205827 -0.041597519 -0.86383277 0.70725566 0.060572039
		 0.70435816 0.79316837 0.060054146 0.60603422 0.92199326 -0.04107869 0.38502073 0.86383283
		 -0.041597512 0.50205815 -0.70435828 0.060572069 0.70725542 -0.60603446 0.060054209
		 0.79316825 -0.38502073 -0.04107869 0.92199326 -0.50205821 -0.041597538 0.86383283
		 -0.70725548 0.06057208 -0.7043584 -0.79316825 0.060054161 -0.6060344 -0.92199332
		 -0.041078724 -0.38502058 -0.86383295 -0.041597564 -0.50205809 0.60603452 0.060054149
		 -0.79316813 0.49733379 0.059536282 -0.86551404 0.26139137 -0.040560033 -0.96438038
		 0.38502085 -0.041078694 -0.92199326 0.79316837 0.060054146 0.60603422 0.8655141 0.059536301
		 0.49733365 0.96438044 -0.040560052 0.26139101 0.92199326 -0.04107869 0.38502073 -0.60603446
		 0.060054209 0.79316825 -0.49733353 0.059536245 0.86551428 -0.26139119 -0.04056007
		 0.96438044 -0.38502073 -0.04107869 0.92199326 -0.79316825 0.060054161 -0.6060344
		 -0.8655141 0.059536241 -0.49733374 -0.96438044 -0.040560059 -0.26139095 -0.92199332
		 -0.041078724 -0.38502058 0.49733379 0.059536282 -0.86551404 0.38011497 0.05901834
		 -0.92305446 0.13328426 -0.040041436 -0.99026877 0.26139137 -0.040560033 -0.96438038
		 0.8655141 0.059536301 0.49733365 0.92305446 0.059018336 0.38011482 0.99026865 -0.040041436
		 0.13328418 0.96438044 -0.040560052 0.26139101 -0.49733353 0.059536245 0.86551428
		 -0.380115 0.059018347 0.92305446 -0.13328411 -0.040041491 0.99026871 -0.26139119
		 -0.04056007 0.96438044 -0.8655141 0.059536241 -0.49733374 -0.92305434 0.059018325
		 -0.38011512 -0.99026877 -0.04004148 -0.13328423 -0.96438044 -0.040560059 -0.26139095
		 0.38011497 0.05901834 -0.92305446 0.25638422 0.05850032 -0.96480304 0.0028920646
		 -0.039522443 -0.99921447 0.13328426 -0.040041436 -0.99026877 0.92305446 0.059018336
		 0.38011482 0.96480304 0.058500405 0.25638419 0.99921447 -0.039522447 0.0028920264
		 0.99026865 -0.040041436 0.13328418 -0.380115 0.059018347 0.92305446 -0.25638402 0.058500376
		 0.96480304 -0.0028918663 -0.039522428 0.99921453 -0.13328411 -0.040041491 0.99026871;
	setAttr ".n[332:497]" -type "float3"  -0.92305434 0.059018325 -0.38011512 -0.96480304
		 0.05850035 -0.2563841 -0.99921447 -0.039522499 -0.0028919643 -0.99026877 -0.04004148
		 -0.13328423 0.25638422 0.05850032 -0.96480304 0.12825827 0.057982288 -0.99004436
		 -0.12755373 -0.039003532 -0.99106443 0.0028920646 -0.039522443 -0.99921447 0.96480304
		 0.058500405 0.25638419 0.99004447 0.057982359 0.12825808 0.99106443 -0.039003555
		 -0.12755392 0.99921447 -0.039522447 0.0028920264 -0.25638402 0.058500376 0.96480304
		 -0.12825832 0.057982344 0.99004447 0.12755392 -0.039003555 0.99106443 -0.0028918663
		 -0.039522428 0.99921453 -0.96480304 0.05850035 -0.2563841 -0.99004447 0.057982314
		 -0.12825808 -0.99106443 -0.039003547 0.1275539 -0.99921447 -0.039522499 -0.0028919643
		 0.12825827 0.057982288 -0.99004436 -0.0013688861 0.057537008 -0.99834239 -0.25604677
		 -0.038505789 -0.96589708 -0.12755373 -0.039003532 -0.99106443 0.99004447 0.057982359
		 0.12825808 0.99834239 0.057537004 -0.0013692875 0.96589702 -0.038505815 -0.25604698
		 0.99106443 -0.039003555 -0.12755392 -0.12825832 0.057982344 0.99004447 0.0013691203
		 0.057536986 0.99834239 0.25604707 -0.038505834 0.96589702 0.12755392 -0.039003555
		 0.99106443 -0.99004447 0.057982314 -0.12825808 -0.99834239 0.057536989 0.0013690535
		 -0.96589702 -0.038505815 0.25604698 -0.99106443 -0.039003547 0.1275539 -0.0013688861
		 0.057537008 -0.99834239 -0.11959393 0.051189315 -0.99150234 -0.20461604 0.15403694
		 -0.96664619 -0.25604677 -0.038505789 -0.96589708 0.99834239 0.057537004 -0.0013692875
		 0.99150234 0.051189382 -0.1195942 0.96664619 0.15403686 -0.20461626 0.96589702 -0.038505815
		 -0.25604698 0.0013691203 0.057536986 0.99834239 0.1195941 0.051189307 0.99150234
		 0.2046162 0.15403695 0.96664619 0.25604707 -0.038505834 0.96589702 -0.99834239 0.057536989
		 0.0013690535 -0.99150234 0.051189303 0.1195941 -0.96664619 0.15403686 0.20461623
		 -0.96589702 -0.038505815 0.25604698 0.94875562 -0.30890423 -0.066640988 0.96789277
		 -0.021626962 -0.2504313 0.92433822 0.011690823 0.38139498 0.79901677 -0.34757668
		 0.49067566 0.79901677 -0.34757668 0.49067566 0.92433822 0.011690823 0.38139498 0.50708008
		 0.040639095 0.86094028 0.45411026 -0.25333238 0.85417008 0.96789277 -0.021626962
		 -0.2504313 0.92697793 -0.027928017 -0.37407479 0.96597499 0.010143185 0.25843674
		 0.92433822 0.011690823 0.38139498 0.92433822 0.011690823 0.38139498 0.96597499 0.010143185
		 0.25843674 0.61562818 0.048286129 0.78655607 0.50708008 0.040639095 0.86094028 0.92697793
		 -0.027928017 -0.37407479 0.87022853 -0.027876627 -0.49185881 0.99144363 0.010144086
		 0.13014057 0.96597499 0.010143185 0.25843674 0.96597499 0.010143185 0.25843674 0.99144363
		 0.010144086 0.13014057 0.71303189 0.048075892 0.69948155 0.61562818 0.048286129 0.78655607
		 0.87022853 -0.027876627 -0.49185881 0.7985841 -0.027724767 -0.60124433 0.99994856
		 0.010144981 -0.0003822271 0.99144363 0.010144086 0.13014057 0.99144363 0.010144086
		 0.13014057 0.99994856 0.010144981 -0.0003822271 0.79823428 0.047925737 0.6004374
		 0.71303189 0.048075892 0.69948155 0.7985841 -0.027724767 -0.60124433 0.71327448 -0.027572729
		 -0.70034224 0.99134386 0.010145888 -0.13089865 0.99994856 0.010144981 -0.0003822271
		 0.99994856 0.010144981 -0.0003822271 0.99134386 0.010145888 -0.13089865 0.86978221
		 0.047775362 0.49111766 0.79823428 0.047925737 0.6004374 0.71327448 -0.027572729 -0.70034224
		 0.61576003 -0.027420323 -0.78745645 0.96577686 0.010146672 -0.25917575 0.99134386
		 0.010145888 -0.13089865 0.99134386 0.010145888 -0.13089865 0.96577686 0.010146672
		 -0.25917575 0.92645007 0.047624636 0.3733927 0.86978221 0.047775362 0.49111766 0.61576003
		 -0.027420323 -0.78745645 0.50770932 -0.02726762 -0.86109698 0.92368525 0.010147805
		 -0.38301745 0.96577686 0.010146672 -0.25917575 0.96577686 0.010146672 -0.25917575
		 0.92368525 0.010147805 -0.38301745 0.96726787 0.047473837 0.24927694 0.92645007 0.047624636
		 0.3733927 0.50770932 -0.02726762 -0.86109698 0.39097124 -0.027114764 -0.92000335
		 0.865789 0.010148641 -0.50030649 0.92368525 0.010147805 -0.38301745 0.92368525 0.010147805
		 -0.38301745 0.865789 0.010148641 -0.50030649 0.99153692 0.047322568 0.12089327 0.96726787
		 0.047473837 0.24927694 0.39097124 -0.027114764 -0.92000335 0.26754367 -0.026961651
		 -0.96316844 0.7930786 0.010149556 -0.60903466 0.865789 0.010148641 -0.50030649 0.865789
		 0.010148641 -0.50030649 0.7930786 0.010149556 -0.60903466 0.99884105 0.047171157
		 -0.0095619718 0.99153692 0.047322568 0.12089327 0.26754367 -0.026961651 -0.96316844
		 0.13953778 -0.026808279 -0.9898538 0.70679814 0.010150363 -0.70734257 0.7930786 0.010149556
		 -0.60903466 0.7930786 0.010149556 -0.60903466 0.70679814 0.010150363 -0.70734257
		 0.98905468 0.047019377 -0.13985687 0.99884105 0.047171157 -0.0095619718 0.13953778
		 -0.026808279 -0.9898538 0.0091454787 -0.02665446 -0.99960291 0.60842431 0.010151323
		 -0.79354692 0.70679814 0.010150363 -0.70734257 0.70679814 0.010150363 -0.70734257
		 0.60842431 0.010151323 -0.79354692 0.96234488 0.046867535 -0.26776075 0.98905468
		 0.047019377 -0.13985687 0.0091454787 -0.02665446 -0.99960291 -0.12140366 -0.026500361
		 -0.99224949 0.49964029 0.01015232 -0.86617345 0.60842431 0.010151323 -0.79354692
		 0.60842431 0.010151323 -0.79354692 0.49964029 0.01015232 -0.86617345 0.91916782 0.046715505
		 -0.39108586 0.96234488 0.046867535 -0.26776075 -0.12140366 -0.026500361 -0.99224949
		 -0.24987547 -0.026346225 -0.96791953 0.38230702 0.010153234 -0.92397958 0.49964029
		 0.01015232 -0.86617345 0.49964029 0.01015232 -0.86617345 0.38230702 0.010153234 -0.92397958
		 0.86026138 0.046562955 -0.50772256 0.91916782 0.046715505 -0.39108586 -0.24987547
		 -0.026346225 -0.96791953 -0.37407216 -0.0261919 -0.92702973 0.258432 0.01015388 -0.96597606
		 0.38230702 0.010153234 -0.92397958 0.38230702 0.010153234 -0.92397958 0.258432 0.01015388
		 -0.96597606 0.78663331 0.046410162 -0.61567384 0.86026138 0.046562955 -0.50772256
		 -0.37407216 -0.0261919 -0.92702973 -0.49186936 -0.026037198 -0.87027961;
	setAttr ".n[498:663]" -type "float3"  0.13013506 0.010154807 -0.99144423 0.258432
		 0.01015388 -0.96597606 0.258432 0.01015388 -0.96597606 0.13013506 0.010154807 -0.99144423
		 0.69954258 0.046257298 -0.71309233 0.78663331 0.046410162 -0.61567384 -0.49186936
		 -0.026037198 -0.87027961 -0.60125095 -0.025882298 -0.79864097 -0.000388143 0.010155702
		 -0.99994832 0.13013506 0.010154807 -0.99144423 0.13013506 0.010154807 -0.99144423
		 -0.000388143 0.010155702 -0.99994832 0.60047942 0.046104167 -0.79831016 0.69954258
		 0.046257298 -0.71309233 -0.60125095 -0.025882298 -0.79864097 -0.70034665 -0.02572706
		 -0.71333915 -0.13090526 0.010156611 -0.9913429 -0.000388143 0.010155702 -0.99994832
		 -0.000388143 0.010155702 -0.99994832 -0.13090526 0.010156611 -0.9913429 0.49113765
		 0.045950636 -0.86986911 0.60047942 0.046104167 -0.79831016 -0.70034665 -0.02572706
		 -0.71333915 -0.78746068 -0.025571493 -0.61583418 -0.25918242 0.010157448 -0.96577501
		 -0.13090526 0.010156611 -0.9913429 -0.13090526 0.010156611 -0.9913429 -0.25918242
		 0.010157448 -0.96577501 0.3733888 0.045796953 -0.92654377 0.49113765 0.045950636
		 -0.86986911 -0.78746068 -0.025571493 -0.61583418 -0.86110342 -0.02541581 -0.50779444
		 -0.38302448 0.010158284 -0.92368233 -0.25918242 0.010157448 -0.96577501 -0.25918242
		 0.010157448 -0.96577501 -0.38302448 0.010158284 -0.92368233 0.24924774 0.04564314
		 -0.9673636 0.3733888 0.045796953 -0.92654377 -0.86110342 -0.02541581 -0.50779444
		 -0.92001516 -0.025259975 -0.39106789 -0.5003134 0.010159073 -0.86578482 -0.38302448
		 0.010158284 -0.92368233 -0.38302448 0.010158284 -0.92368233 -0.5003134 0.010159073
		 -0.86578482 0.12083758 0.045488946 -0.99162948 0.24924774 0.04564314 -0.9673636 -0.92001516
		 -0.025259975 -0.39106789 -0.96318865 -0.025103576 -0.26765171 -0.60904175 0.010160017
		 -0.793073 -0.5003134 0.010159073 -0.86578482 -0.5003134 0.010159073 -0.86578482 -0.60904175
		 0.010160017 -0.793073 -0.0096439384 0.045334473 -0.99892527 0.12083758 0.045488946
		 -0.99162948 -0.96318865 -0.025103576 -0.26765171 -0.98988414 -0.025018029 -0.13965479
		 -0.70734876 0.010160848 -0.7067917 -0.60904175 0.010160017 -0.793073 -0.60904175
		 0.010160017 -0.793073 -0.70734876 0.010160848 -0.7067917 -0.13994247 0.045045886
		 -0.98913449 -0.0096439384 0.045334473 -0.99892527 -0.98988414 -0.025018029 -0.13965479
		 -0.99980623 -0.017805861 -0.0084001832 -0.79324317 0.0083544934 -0.60884774 -0.70734876
		 0.010160848 -0.7067917 -0.70734876 0.010160848 -0.7067917 -0.79324317 0.0083544934
		 -0.60884774 -0.26760975 0.038664069 -0.96275133 -0.13994247 0.045045886 -0.98913449
		 -0.99980623 -0.017805861 -0.0084001832 -0.9609679 0.274149 0.037191294 -0.81804359
		 0.36741507 -0.44250518 -0.79324317 0.0083544934 -0.60884774 -0.79324317 0.0083544934
		 -0.60884774 -0.81804359 0.36741507 -0.44250518 -0.30697131 0.035822727 -0.95104438
		 -0.26760975 0.038664069 -0.96275133 0.066640861 -0.30890423 0.94875562 0.25043127
		 -0.021626964 0.96789277 -0.38139498 0.011690795 0.92433822 -0.49067566 -0.34757671
		 0.79901683 -0.49067566 -0.34757671 0.79901683 -0.38139498 0.011690795 0.92433822
		 -0.86094016 0.040639151 0.50708032 -0.85417002 -0.25333238 0.45411032 0.25043127
		 -0.021626964 0.96789277 0.37407458 -0.027927974 0.92697805 -0.25843692 0.010143259
		 0.96597487 -0.38139498 0.011690795 0.92433822 -0.38139498 0.011690795 0.92433822
		 -0.25843692 0.010143259 0.96597487 -0.78655589 0.048286095 0.61562842 -0.86094016
		 0.040639151 0.50708032 0.37407458 -0.027927974 0.92697805 0.4918586 -0.027876627
		 0.87022865 -0.13014048 0.010143982 0.99144369 -0.25843692 0.010143259 0.96597487
		 -0.25843692 0.010143259 0.96597487 -0.13014048 0.010143982 0.99144369 -0.69948149
		 0.048075862 0.71303189 -0.78655589 0.048286095 0.61562842 0.4918586 -0.027876627
		 0.87022865 0.60124427 -0.027724743 0.79858422 0.00038211886 0.010144952 0.9999485
		 -0.13014048 0.010143982 0.99144369 -0.13014048 0.010143982 0.99144369 0.00038211886
		 0.010144952 0.9999485 -0.6004371 0.0479258 0.79823458 -0.69948149 0.048075862 0.71303189
		 0.60124427 -0.027724743 0.79858422 0.70034212 -0.027572682 0.7132746 0.13089864 0.010145943
		 0.99134386 0.00038211886 0.010144952 0.9999485 0.00038211886 0.010144952 0.9999485
		 0.13089864 0.010145943 0.99134386 -0.49111742 0.047775362 0.86978239 -0.6004371 0.0479258
		 0.79823458 0.70034212 -0.027572682 0.7132746 0.78745645 -0.027420318 0.61576021 0.25917572
		 0.010146632 0.96577686 0.13089864 0.010145943 0.99134386 0.13089864 0.010145943 0.99134386
		 0.25917572 0.010146632 0.96577686 -0.37339249 0.047624584 0.92645019 -0.49111742
		 0.047775362 0.86978239 0.78745645 -0.027420318 0.61576021 0.86109686 -0.027267559
		 0.50770932 0.38301757 0.010147703 0.92368525 0.25917572 0.010146632 0.96577686 0.25917572
		 0.010146632 0.96577686 0.38301757 0.010147703 0.92368525 -0.24927692 0.04747384 0.96726799
		 -0.37339249 0.047624584 0.92645019 0.86109686 -0.027267559 0.50770932 0.92000335
		 -0.027114771 0.39097121 0.50030661 0.010148612 0.86578882 0.38301757 0.010147703
		 0.92368525 0.38301757 0.010147703 0.92368525 0.50030661 0.010148612 0.86578882 -0.12089305
		 0.047322582 0.99153692 -0.24927692 0.04747384 0.96726799 0.92000335 -0.027114771
		 0.39097121 0.96316844 -0.026961688 0.26754376 0.60903466 0.01014955 0.7930786 0.50030661
		 0.010148612 0.86578882 0.50030661 0.010148612 0.86578882 0.60903466 0.01014955 0.7930786
		 0.009562117 0.047171257 0.99884111 -0.12089305 0.047322582 0.99153692 0.96316844
		 -0.026961688 0.26754376 0.98985374 -0.026808199 0.13953795 0.70734245 0.010150391
		 0.70679814 0.60903466 0.01014955 0.7930786 0.60903466 0.01014955 0.7930786 0.70734245
		 0.010150391 0.70679814 0.13985711 0.047019396 0.98905468 0.009562117 0.047171257
		 0.99884111 0.98985374 -0.026808199 0.13953795 0.99960291 -0.026654346 0.0091456128
		 0.79354697 0.010151297 0.60842437 0.70734245 0.010150391 0.70679814 0.70734245 0.010150391
		 0.70679814 0.79354697 0.010151297 0.60842437 0.26776096 0.046867486 0.96234483 0.13985711
		 0.047019396 0.98905468;
	setAttr ".n[664:829]" -type "float3"  0.99960291 -0.026654346 0.0091456128
		 0.99224943 -0.026500376 -0.1214034 0.86617362 0.010152203 0.49964008 0.79354697 0.010151297
		 0.60842437 0.79354697 0.010151297 0.60842437 0.86617362 0.010152203 0.49964008 0.39108637
		 0.046715517 0.91916758 0.26776096 0.046867486 0.96234483 0.99224943 -0.026500376
		 -0.1214034 0.96791953 -0.026346229 -0.2498752 0.92397952 0.01015316 0.3823072 0.86617362
		 0.010152203 0.49964008 0.86617362 0.010152203 0.49964008 0.92397952 0.01015316 0.3823072
		 0.50772268 0.046563026 0.86026144 0.39108637 0.046715517 0.91916758 0.96791953 -0.026346229
		 -0.2498752 0.92702973 -0.026191898 -0.37407202 0.96597606 0.01015383 0.25843194 0.92397952
		 0.01015316 0.3823072 0.92397952 0.01015316 0.3823072 0.96597606 0.01015383 0.25843194
		 0.61567372 0.046410181 0.78663343 0.50772268 0.046563026 0.86026144 0.92702973 -0.026191898
		 -0.37407202 0.87027979 -0.026037211 -0.49186918 0.99144429 0.01015481 0.13013507
		 0.96597606 0.01015383 0.25843194 0.96597606 0.01015383 0.25843194 0.99144429 0.01015481
		 0.13013507 0.71309251 0.046257272 0.69954222 0.61567372 0.046410181 0.78663343 0.87027979
		 -0.026037211 -0.49186918 0.79864091 -0.025882246 -0.60125101 0.99994832 0.010155697
		 -0.00038816757 0.99144429 0.01015481 0.13013507 0.99144429 0.01015481 0.13013507
		 0.99994832 0.010155697 -0.00038816757 0.79831022 0.046104249 0.6004793 0.71309251
		 0.046257272 0.69954222 0.79864091 -0.025882246 -0.60125101 0.71333933 -0.025727013
		 -0.70034647 0.99134278 0.010156613 -0.13090524 0.99994832 0.010155697 -0.00038816757
		 0.99994832 0.010155697 -0.00038816757 0.99134278 0.010156613 -0.13090524 0.86986923
		 0.045950651 0.49113733 0.79831022 0.046104249 0.6004793 0.71333933 -0.025727013 -0.70034647
		 0.6158343 -0.025571467 -0.78746051 0.96577501 0.010157458 -0.25918242 0.99134278
		 0.010156613 -0.13090524 0.99134278 0.010156613 -0.13090524 0.96577501 0.010157458
		 -0.25918242 0.92654395 0.045796901 0.37338844 0.86986923 0.045950651 0.49113733 0.6158343
		 -0.025571467 -0.78746051 0.50779468 -0.025415769 -0.86110312 0.92368233 0.010158237
		 -0.3830246 0.96577501 0.010157458 -0.25918242 0.96577501 0.010157458 -0.25918242
		 0.92368233 0.010158237 -0.3830246 0.9673636 0.04564308 0.24924734 0.92654395 0.045796901
		 0.37338844 0.50779468 -0.025415769 -0.86110312 0.3910681 -0.025259946 -0.9200151
		 0.86578482 0.010158993 -0.5003134 0.92368233 0.010158237 -0.3830246 0.92368233 0.010158237
		 -0.3830246 0.86578482 0.010158993 -0.5003134 0.99162948 0.045488909 0.12083733 0.9673636
		 0.04564308 0.24924734 0.3910681 -0.025259946 -0.9200151 0.26765183 -0.025103521 -0.96318865
		 0.79307288 0.010159923 -0.60904199 0.86578482 0.010158993 -0.5003134 0.86578482 0.010158993
		 -0.5003134 0.79307288 0.010159923 -0.60904199 0.99892539 0.045334514 -0.0096442178
		 0.99162948 0.045488909 0.12083733 0.26765183 -0.025103521 -0.96318865 0.13965482
		 -0.025018029 -0.98988414 0.70679152 0.010160809 -0.70734882 0.79307288 0.010159923
		 -0.60904199 0.79307288 0.010159923 -0.60904199 0.70679152 0.010160809 -0.70734882
		 0.98913449 0.045045994 -0.13994268 0.99892539 0.045334514 -0.0096442178 0.13965482
		 -0.025018029 -0.98988414 0.0084003275 -0.017805854 -0.99980623 0.60884774 0.008354459
		 -0.79324317 0.70679152 0.010160809 -0.70734882 0.70679152 0.010160809 -0.70734882
		 0.60884774 0.008354459 -0.79324317 0.96275121 0.038664088 -0.26760998 0.98913449
		 0.045045994 -0.13994268 0.0084003275 -0.017805854 -0.99980623 -0.037191153 0.27414906
		 -0.96096784 0.44250509 0.36741504 -0.81804359 0.60884774 0.008354459 -0.79324317
		 0.60884774 0.008354459 -0.79324317 0.44250509 0.36741504 -0.81804359 0.95104438 0.035822712
		 -0.30697137 0.96275121 0.038664088 -0.26760998 -0.94875562 -0.30890423 0.066640824
		 -0.96789277 -0.021626884 0.25043109 -0.92433816 0.011690829 -0.3813951 -0.79901671
		 -0.34757668 -0.49067572 -0.79901671 -0.34757668 -0.49067572 -0.92433816 0.011690829
		 -0.3813951 -0.50708008 0.040639166 -0.86094028 -0.45411032 -0.25333241 -0.85417008
		 -0.96789277 -0.021626884 0.25043109 -0.92697805 -0.027927933 0.37407458 -0.96597487
		 0.010143223 -0.25843698 -0.92433816 0.011690829 -0.3813951 -0.92433816 0.011690829
		 -0.3813951 -0.96597487 0.010143223 -0.25843698 -0.61562842 0.048286073 -0.78655589
		 -0.50708008 0.040639166 -0.86094028 -0.92697805 -0.027927933 0.37407458 -0.87022871
		 -0.027876569 0.49185857 -0.99144369 0.010143944 -0.13014051 -0.96597487 0.010143223
		 -0.25843698 -0.96597487 0.010143223 -0.25843698 -0.99144369 0.010143944 -0.13014051
		 -0.71303195 0.04807587 -0.69948149 -0.61562842 0.048286073 -0.78655589 -0.87022871
		 -0.027876569 0.49185857 -0.79858416 -0.027724769 0.60124421 -0.9999485 0.010144923
		 0.00038203536 -0.99144369 0.010143944 -0.13014051 -0.99144369 0.010143944 -0.13014051
		 -0.9999485 0.010144923 0.00038203536 -0.79823434 0.047925826 -0.60043728 -0.71303195
		 0.04807587 -0.69948149 -0.79858416 -0.027724769 0.60124421 -0.7132746 -0.027572732
		 0.70034224 -0.99134392 0.010145861 0.13089854 -0.9999485 0.010144923 0.00038203536
		 -0.9999485 0.010144923 0.00038203536 -0.99134392 0.010145861 0.13089854 -0.86978221
		 0.047775347 -0.49111757 -0.79823434 0.047925826 -0.60043728 -0.7132746 -0.027572732
		 0.70034224 -0.61576009 -0.027420314 0.78745645 -0.96577686 0.010146652 0.25917563
		 -0.99134392 0.010145861 0.13089854 -0.99134392 0.010145861 0.13089854 -0.96577686
		 0.010146652 0.25917563 -0.92645007 0.047624633 -0.37339282 -0.86978221 0.047775347
		 -0.49111757 -0.61576009 -0.027420314 0.78745645 -0.50770944 -0.027267518 0.8610968
		 -0.92368537 0.010147831 0.38301742 -0.96577686 0.010146652 0.25917563 -0.96577686
		 0.010146652 0.25917563 -0.92368537 0.010147831 0.38301742 -0.96726799 0.047473826
		 -0.24927688 -0.92645007 0.047624633 -0.37339282 -0.50770944 -0.027267518 0.8610968
		 -0.3909713 -0.027114723 0.92000329 -0.865789 0.010148583 0.50030649 -0.92368537 0.010147831
		 0.38301742 -0.92368537 0.010147831 0.38301742 -0.865789 0.010148583 0.50030649;
	setAttr ".n[830:995]" -type "float3"  -0.99153692 0.047322642 -0.12089312 -0.96726799
		 0.047473826 -0.24927688 -0.3909713 -0.027114723 0.92000329 -0.26754409 -0.026961599
		 0.96316838 -0.79307878 0.01014953 0.60903454 -0.865789 0.010148583 0.50030649 -0.865789
		 0.010148583 0.50030649 -0.79307878 0.01014953 0.60903454 -0.99884105 0.047171202
		 0.0095620127 -0.99153692 0.047322642 -0.12089312 -0.26754409 -0.026961599 0.96316838
		 -0.13953832 -0.026808182 0.98985374 -0.7067982 0.010150325 0.70734251 -0.79307878
		 0.01014953 0.60903454 -0.79307878 0.01014953 0.60903454 -0.7067982 0.010150325 0.70734251
		 -0.98905468 0.047019389 0.13985693 -0.99884105 0.047171202 0.0095620127 -0.13953832
		 -0.026808182 0.98985374 -0.0091455104 -0.026654357 0.99960291 -0.60842437 0.010151261
		 0.79354686 -0.7067982 0.010150325 0.70734251 -0.7067982 0.010150325 0.70734251 -0.60842437
		 0.010151261 0.79354686 -0.96234488 0.046867538 0.26776075 -0.98905468 0.047019389
		 0.13985693 -0.0091455104 -0.026654357 0.99960291 0.12140344 -0.026500341 0.99224943
		 -0.49964026 0.010152234 0.86617351 -0.60842437 0.010151261 0.79354686 -0.60842437
		 0.010151261 0.79354686 -0.49964026 0.010152234 0.86617351 -0.91916782 0.046715509
		 0.39108598 -0.96234488 0.046867538 0.26776075 0.12140344 -0.026500341 0.99224943
		 0.24987526 -0.026346285 0.96791953 -0.38230717 0.010153128 0.92397952 -0.49964026
		 0.010152234 0.86617351 -0.49964026 0.010152234 0.86617351 -0.38230717 0.010153128
		 0.92397952 -0.86026138 0.046562947 0.50772268 -0.91916782 0.046715509 0.39108598
		 0.24987526 -0.026346285 0.96791953 0.3740721 -0.026191846 0.92702973 -0.25843206
		 0.01015381 0.96597606 -0.38230717 0.010153128 0.92397952 -0.38230717 0.010153128
		 0.92397952 -0.25843206 0.01015381 0.96597606 -0.78663355 0.046410285 0.61567342 -0.86026138
		 0.046562947 0.50772268 0.3740721 -0.026191846 0.92702973 0.49186939 -0.026037203
		 0.87027961 -0.13013521 0.010154823 0.99144423 -0.25843206 0.01015381 0.96597606 -0.25843206
		 0.01015381 0.96597606 -0.13013521 0.010154823 0.99144423 -0.69954252 0.046257332
		 0.71309227 -0.78663355 0.046410285 0.61567342 0.49186939 -0.026037203 0.87027961
		 0.60125095 -0.025882255 0.79864091 0.00038794643 0.010155684 0.99994832 -0.13013521
		 0.010154823 0.99144423 -0.13013521 0.010154823 0.99144423 0.00038794643 0.010155684
		 0.99994832 -0.60047948 0.046104159 0.79830998 -0.69954252 0.046257332 0.71309227
		 0.60125095 -0.025882255 0.79864091 0.70034653 -0.025726978 0.71333921 0.13090536
		 0.010156555 0.9913429 0.00038794643 0.010155684 0.99994832 0.00038794643 0.010155684
		 0.99994832 0.13090536 0.010156555 0.9913429 -0.49113759 0.04595064 0.86986917 -0.60047948
		 0.046104159 0.79830998 0.70034653 -0.025726978 0.71333921 0.78746057 -0.025571514
		 0.61583418 0.25918233 0.010157409 0.96577495 0.13090536 0.010156555 0.9913429 0.13090536
		 0.010156555 0.9913429 0.25918233 0.010157409 0.96577495 -0.37338886 0.045797076 0.92654377
		 -0.49113759 0.04595064 0.86986917 0.78746057 -0.025571514 0.61583418 0.86110336 -0.02541581
		 0.50779444 0.38302425 0.010158229 0.92368245 0.25918233 0.010157409 0.96577495 0.25918233
		 0.010157409 0.96577495 0.38302425 0.010158229 0.92368245 -0.2492478 0.045643121 0.9673636
		 -0.37338886 0.045797076 0.92654377 0.86110336 -0.02541581 0.50779444 0.92001516 -0.025259927
		 0.39106801 0.5003134 0.010158995 0.86578482 0.38302425 0.010158229 0.92368245 0.38302425
		 0.010158229 0.92368245 0.5003134 0.010158995 0.86578482 -0.12083771 0.045488909 0.99162948
		 -0.2492478 0.045643121 0.9673636 0.92001516 -0.025259927 0.39106801 0.96318865 -0.025103541
		 0.26765174 0.60904175 0.010159927 0.79307306 0.5003134 0.010158995 0.86578482 0.5003134
		 0.010158995 0.86578482 0.60904175 0.010159927 0.79307306 0.0096437931 0.045334585
		 0.99892527 -0.12083771 0.045488909 0.99162948 0.96318865 -0.025103541 0.26765174
		 0.98988414 -0.025018046 0.13965464 0.70734888 0.010160781 0.70679164 0.60904175 0.010159927
		 0.79307306 0.60904175 0.010159927 0.79307306 0.70734888 0.010160781 0.70679164 0.13994217
		 0.045045968 0.98913455 0.0096437931 0.045334585 0.99892527 0.98988414 -0.025018046
		 0.13965464 0.99980628 -0.017805884 0.0084001003 0.79324311 0.0083545018 0.6088478
		 0.70734888 0.010160781 0.70679164 0.70734888 0.010160781 0.70679164 0.79324311 0.0083545018
		 0.6088478 0.26760948 0.038664158 0.96275133 0.13994217 0.045045968 0.98913455 0.99980628
		 -0.017805884 0.0084001003 0.96096784 0.27414903 -0.037191175 0.81804347 0.36741513
		 0.44250527 0.79324311 0.0083545018 0.6088478 0.79324311 0.0083545018 0.6088478 0.81804347
		 0.36741513 0.44250527 0.30697113 0.035822731 0.95104432 0.26760948 0.038664158 0.96275133
		 -0.066640861 -0.30890426 -0.9487555 -0.2504313 -0.021626964 -0.96789277 0.38139501
		 0.011690795 -0.92433822 0.49067572 -0.34757674 -0.79901671 0.49067572 -0.34757674
		 -0.79901671 0.38139501 0.011690795 -0.92433822 0.86094034 0.040639177 -0.50708002
		 0.85417008 -0.25333244 -0.45411023 -0.2504313 -0.021626964 -0.96789277 -0.37407458
		 -0.027927946 -0.92697805 0.25843704 0.010143274 -0.96597487 0.38139501 0.011690795
		 -0.92433822 0.38139501 0.011690795 -0.92433822 0.25843704 0.010143274 -0.96597487
		 0.78655589 0.048286106 -0.61562836 0.86094034 0.040639177 -0.50708002 -0.37407458
		 -0.027927946 -0.92697805 -0.49185875 -0.027876571 -0.87022853 0.1301405 0.010143986
		 -0.99144363 0.25843704 0.010143274 -0.96597487 0.25843704 0.010143274 -0.96597487
		 0.1301405 0.010143986 -0.99144363 0.69948149 0.048075896 -0.71303189 0.78655589 0.048286106
		 -0.61562836 -0.49185875 -0.027876571 -0.87022853 -0.60124433 -0.027724775 -0.79858416
		 -0.00038199604 0.010144978 -0.9999485 0.1301405 0.010143986 -0.99144363 0.1301405
		 0.010143986 -0.99144363 -0.00038199604 0.010144978 -0.9999485 0.60043734 0.047925811
		 -0.79823434 0.69948149 0.048075896 -0.71303189 -0.60124433 -0.027724775 -0.79858416
		 -0.70034224 -0.02757274 -0.7132746 -0.13089854 0.010145911 -0.99134392 -0.00038199604
		 0.010144978 -0.9999485;
	setAttr ".n[996:1161]" -type "float3"  -0.00038199604 0.010144978 -0.9999485
		 -0.13089854 0.010145911 -0.99134392 0.49111766 0.047775324 -0.86978221 0.60043734
		 0.047925811 -0.79823434 -0.70034224 -0.02757274 -0.7132746 -0.78745645 -0.02742029
		 -0.61576009 -0.25917563 0.010146637 -0.96577686 -0.13089854 0.010145911 -0.99134392
		 -0.13089854 0.010145911 -0.99134392 -0.25917563 0.010146637 -0.96577686 0.3733927
		 0.047624569 -0.92645013 0.49111766 0.047775324 -0.86978221 -0.78745645 -0.02742029
		 -0.61576009 -0.86109698 -0.027267598 -0.50770932 -0.3830176 0.010147748 -0.92368537
		 -0.25917563 0.010146637 -0.96577686 -0.25917563 0.010146637 -0.96577686 -0.3830176
		 0.010147748 -0.92368537 0.24927701 0.04747384 -0.96726799 0.3733927 0.047624569 -0.92645013
		 -0.86109698 -0.027267598 -0.50770932 -0.92000335 -0.027114749 -0.39097136 -0.50030643
		 0.010148652 -0.865789 -0.3830176 0.010147748 -0.92368537 -0.3830176 0.010147748 -0.92368537
		 -0.50030643 0.010148652 -0.865789 0.12089325 0.047322702 -0.99153686 0.24927701 0.04747384
		 -0.96726799 -0.92000335 -0.027114749 -0.39097136 -0.96316844 -0.026961641 -0.26754376
		 -0.6090346 0.010149576 -0.79307878 -0.50030643 0.010148652 -0.865789 -0.50030643
		 0.010148652 -0.865789 -0.6090346 0.010149576 -0.79307878 -0.0095618377 0.047171231
		 -0.99884105 0.12089325 0.047322702 -0.99153686 -0.96316844 -0.026961641 -0.26754376
		 -0.98985374 -0.026808256 -0.13953789 -0.70734245 0.010150379 -0.70679814 -0.6090346
		 0.010149576 -0.79307878 -0.6090346 0.010149576 -0.79307878 -0.70734245 0.010150379
		 -0.70679814 -0.13985674 0.047019348 -0.98905468 -0.0095618377 0.047171231 -0.99884105
		 -0.98985374 -0.026808256 -0.13953789 -0.99960291 -0.026654325 -0.009145706 -0.79354686
		 0.010151376 -0.60842448 -0.70734245 0.010150379 -0.70679814 -0.70734245 0.010150379
		 -0.70679814 -0.79354686 0.010151376 -0.60842448 -0.26776081 0.04686752 -0.96234488
		 -0.13985674 0.047019348 -0.98905468 -0.99960291 -0.026654325 -0.009145706 -0.99224943
		 -0.026500279 0.12140304 -0.86617345 0.010152255 -0.49964041 -0.79354686 0.010151376
		 -0.60842448 -0.79354686 0.010151376 -0.60842448 -0.86617345 0.010152255 -0.49964041
		 -0.39108598 0.046715483 -0.91916782 -0.26776081 0.04686752 -0.96234488 -0.99224943
		 -0.026500279 0.12140304 -0.96791953 -0.026346242 0.24987522 -0.92397952 0.010153139
		 -0.38230723 -0.86617345 0.010152255 -0.49964041 -0.86617345 0.010152255 -0.49964041
		 -0.92397952 0.010153139 -0.38230723 -0.50772256 0.046562936 -0.86026138 -0.39108598
		 0.046715483 -0.91916782 -0.96791953 -0.026346242 0.24987522 -0.92702973 -0.026191831
		 0.37407193 -0.96597606 0.010153846 -0.258432 -0.92397952 0.010153139 -0.38230723
		 -0.92397952 0.010153139 -0.38230723 -0.96597606 0.010153846 -0.258432 -0.61567348
		 0.046410263 -0.78663349 -0.50772256 0.046562936 -0.86026138 -0.92702973 -0.026191831
		 0.37407193 -0.87027973 -0.026037155 0.49186918 -0.99144423 0.01015483 -0.13013524
		 -0.96597606 0.010153846 -0.258432 -0.96597606 0.010153846 -0.258432 -0.99144423 0.01015483
		 -0.13013524 -0.71309227 0.046257328 -0.69954252 -0.61567348 0.046410263 -0.78663349
		 -0.87027973 -0.026037155 0.49186918 -0.79864103 -0.025882265 0.60125089 -0.99994838
		 0.010155682 0.00038797109 -0.99144423 0.01015483 -0.13013524 -0.99144423 0.01015483
		 -0.13013524 -0.99994838 0.010155682 0.00038797109 -0.79830998 0.04610417 -0.6004796
		 -0.71309227 0.046257328 -0.69954252 -0.79864103 -0.025882265 0.60125089 -0.71333921
		 -0.025727058 0.70034653 -0.9913429 0.010156537 0.13090512 -0.99994838 0.010155682
		 0.00038797109 -0.99994838 0.010155682 0.00038797109 -0.9913429 0.010156537 0.13090512
		 -0.86986911 0.045950659 -0.49113765 -0.79830998 0.04610417 -0.6004796 -0.71333921
		 -0.025727058 0.70034653 -0.61583436 -0.025571452 0.78746051 -0.96577501 0.010157495
		 0.25918207 -0.9913429 0.010156537 0.13090512 -0.9913429 0.010156537 0.13090512 -0.96577501
		 0.010157495 0.25918207 -0.92654365 0.045797035 -0.37338912 -0.86986911 0.045950659
		 -0.49113765 -0.61583436 -0.025571452 0.78746051 -0.50779474 -0.025415774 0.86110318
		 -0.92368245 0.010158257 0.38302436 -0.96577501 0.010157495 0.25918207 -0.96577501
		 0.010157495 0.25918207 -0.92368245 0.010158257 0.38302436 -0.9673636 0.045643073
		 -0.2492478 -0.92654365 0.045797035 -0.37338912 -0.50779474 -0.025415774 0.86110318
		 -0.39106792 -0.025259985 0.9200151 -0.86578482 0.010158987 0.50031328 -0.92368245
		 0.010158257 0.38302436 -0.92368245 0.010158257 0.38302436 -0.86578482 0.010158987
		 0.50031328 -0.99162948 0.045488928 -0.1208378 -0.9673636 0.045643073 -0.2492478 -0.39106792
		 -0.025259985 0.9200151 -0.26765183 -0.025103489 0.96318865 -0.79307312 0.01016002
		 0.60904175 -0.86578482 0.010158987 0.50031328 -0.86578482 0.010158987 0.50031328
		 -0.79307312 0.01016002 0.60904175 -0.99892539 0.045334566 0.0096438453 -0.99162948
		 0.045488928 -0.1208378 -0.26765183 -0.025103489 0.96318865 -0.13965482 -0.025018027
		 0.98988414 -0.7067917 0.01016085 0.7073487 -0.79307312 0.01016002 0.60904175 -0.79307312
		 0.01016002 0.60904175 -0.7067917 0.01016085 0.7073487 -0.98913455 0.045045931 0.13994245
		 -0.99892539 0.045334566 0.0096438453 -0.13965482 -0.025018027 0.98988414 -0.0084003685
		 -0.017805835 0.99980623 -0.60884792 0.0083544636 0.79324299 -0.7067917 0.01016085
		 0.7073487 -0.7067917 0.01016085 0.7073487 -0.60884792 0.0083544636 0.79324299 -0.96275133
		 0.03866411 0.26760963 -0.98913455 0.045045931 0.13994245 -0.0084003685 -0.017805835
		 0.99980623 0.037191186 0.27414906 0.96096784 -0.44250524 0.36741507 0.81804347 -0.60884792
		 0.0083544636 0.79324299 -0.60884792 0.0083544636 0.79324299 -0.44250524 0.36741507
		 0.81804347 -0.95104432 0.035822738 0.30697113 -0.96275133 0.03866411 0.26760963 0.93040657
		 -0.27518523 -0.24210879 0.94875562 -0.30890423 -0.066640988 0.79901677 -0.34757668
		 0.49067566 0.60601175 -0.71060419 0.3574791 0.60601175 -0.71060419 0.3574791 0.79901677
		 -0.34757668 0.49067566 0.45411026 -0.25333238 0.85417008 0.30991256 -0.12240923 0.94285208
		 0.30991256 -0.12240923 0.94285208 0.45411026 -0.25333238 0.85417008;
	setAttr ".n[1162:1327]" -type "float3"  0.50708008 0.040639095 0.86094028 0.26002637
		 0.068869255 0.9631424 0.26002637 0.068869255 0.9631424 0.50708008 0.040639095 0.86094028
		 0.61562818 0.048286129 0.78655607 0.38370168 0.068333134 0.92092532 0.38370168 0.068333134
		 0.92092532 0.61562818 0.048286129 0.78655607 0.71303189 0.048075892 0.69948155 0.50063765
		 0.067816153 0.86299646 0.50063765 0.067816153 0.86299646 0.71303189 0.048075892 0.69948155
		 0.79823428 0.047925737 0.6004374 0.60901582 0.067299105 0.79029775 0.60901582 0.067299105
		 0.79029775 0.79823428 0.047925737 0.6004374 0.86978221 0.047775362 0.49111766 0.7069822
		 0.066782057 0.70407134 0.7069822 0.066782057 0.70407134 0.86978221 0.047775362 0.49111766
		 0.92645007 0.047624636 0.3733927 0.79285884 0.066264883 0.60579187 0.79285884 0.066264883
		 0.60579187 0.92645007 0.047624636 0.3733927 0.96726787 0.047473837 0.24927694 0.86517578
		 0.065747693 0.49713987 0.86517578 0.065747693 0.49713987 0.96726787 0.047473837 0.24927694
		 0.99153692 0.047322568 0.12089327 0.92269421 0.065230303 0.37997416 0.92269421 0.065230303
		 0.37997416 0.99153692 0.047322568 0.12089327 0.99884105 0.047171157 -0.0095619718
		 0.96442908 0.064713039 0.25629824 0.96442908 0.064713039 0.25629824 0.99884105 0.047171157
		 -0.0095619718 0.98905468 0.047019377 -0.13985687 0.98966485 0.064195581 0.12822798
		 0.98966485 0.064195581 0.12822798 0.98905468 0.047019377 -0.13985687 0.96234488 0.046867535
		 -0.26776075 0.99796838 0.063678049 -0.0020448051 0.99796838 0.063678049 -0.0020448051
		 0.96234488 0.046867535 -0.26776075 0.91916782 0.046715505 -0.39108586 0.98919648
		 0.063160561 -0.13229172 0.98919648 0.063160561 -0.13229172 0.91916782 0.046715505
		 -0.39108586 0.86026138 0.046562955 -0.50772256 0.96349764 0.062642932 -0.26028451
		 0.96349764 0.062642932 -0.26028451 0.86026138 0.046562955 -0.50772256 0.78663331
		 0.046410162 -0.61567384 0.92131072 0.062125247 -0.38383207 0.92131072 0.062125247
		 -0.38383207 0.78663331 0.046410162 -0.61567384 0.69954258 0.046257298 -0.71309233
		 0.86335588 0.061607629 -0.50082028 0.86335588 0.061607629 -0.50082028 0.69954258
		 0.046257298 -0.71309233 0.60047942 0.046104167 -0.79831016 0.79062414 0.061089844
		 -0.60924667 0.79062414 0.061089844 -0.60924667 0.60047942 0.046104167 -0.79831016
		 0.49113765 0.045950636 -0.86986911 0.70435834 0.060572051 -0.70725536 0.70435834
		 0.060572051 -0.70725536 0.49113765 0.045950636 -0.86986911 0.3733888 0.045796953
		 -0.92654377 0.60603452 0.060054149 -0.79316813 0.60603452 0.060054149 -0.79316813
		 0.3733888 0.045796953 -0.92654377 0.24924774 0.04564314 -0.9673636 0.49733379 0.059536282
		 -0.86551404 0.49733379 0.059536282 -0.86551404 0.24924774 0.04564314 -0.9673636 0.12083758
		 0.045488946 -0.99162948 0.38011497 0.05901834 -0.92305446 0.38011497 0.05901834 -0.92305446
		 0.12083758 0.045488946 -0.99162948 -0.0096439384 0.045334473 -0.99892527 0.25638422
		 0.05850032 -0.96480304 0.25638422 0.05850032 -0.96480304 -0.0096439384 0.045334473
		 -0.99892527 -0.13994247 0.045045886 -0.98913449 0.12825827 0.057982288 -0.99004436
		 0.12825827 0.057982288 -0.99004436 -0.13994247 0.045045886 -0.98913449 -0.26760975
		 0.038664069 -0.96275133 -0.0013688861 0.057537008 -0.99834239 -0.0013688861 0.057537008
		 -0.99834239 -0.26760975 0.038664069 -0.96275133 -0.30697131 0.035822727 -0.95104438
		 -0.11959393 0.051189315 -0.99150234 -0.29640833 0.86192352 -0.41137552 -0.48511088
		 0.73456043 -0.47443491 -0.81804359 0.36741507 -0.44250518 -0.50911576 0.81051093
		 -0.28960848 -0.50911576 0.81051093 -0.28960848 -0.81804359 0.36741507 -0.44250518
		 -0.9609679 0.274149 0.037191294 -0.96664619 0.15403686 0.20461623 -0.96664619 0.15403686
		 0.20461623 -0.9609679 0.274149 0.037191294 -0.99980623 -0.017805861 -0.0084001832
		 -0.96589702 -0.038505815 0.25604698 -0.96589702 -0.038505815 0.25604698 -0.99980623
		 -0.017805861 -0.0084001832 -0.98988414 -0.025018029 -0.13965479 -0.99106443 -0.039003547
		 0.1275539 -0.99106443 -0.039003547 0.1275539 -0.98988414 -0.025018029 -0.13965479
		 -0.96318865 -0.025103576 -0.26765171 -0.99921447 -0.039522499 -0.0028919643 -0.99921447
		 -0.039522499 -0.0028919643 -0.96318865 -0.025103576 -0.26765171 -0.92001516 -0.025259975
		 -0.39106789 -0.99026877 -0.04004148 -0.13328423 -0.99026877 -0.04004148 -0.13328423
		 -0.92001516 -0.025259975 -0.39106789 -0.86110342 -0.02541581 -0.50779444 -0.96438044
		 -0.040560059 -0.26139095 -0.96438044 -0.040560059 -0.26139095 -0.86110342 -0.02541581
		 -0.50779444 -0.78746068 -0.025571493 -0.61583418 -0.92199332 -0.041078724 -0.38502058
		 -0.92199332 -0.041078724 -0.38502058 -0.78746068 -0.025571493 -0.61583418 -0.70034665
		 -0.02572706 -0.71333915 -0.86383295 -0.041597564 -0.50205809 -0.86383295 -0.041597564
		 -0.50205809 -0.70034665 -0.02572706 -0.71333915 -0.60125095 -0.025882298 -0.79864097
		 -0.79089487 -0.042116184 -0.61050117 -0.79089487 -0.042116184 -0.61050117 -0.60125095
		 -0.025882298 -0.79864097 -0.49186936 -0.026037198 -0.87027961 -0.70442754 -0.042634733
		 -0.70849431 -0.70442754 -0.042634733 -0.70849431 -0.49186936 -0.026037198 -0.87027961
		 -0.37407216 -0.0261919 -0.92702973 -0.6059109 -0.043153331 -0.79436117 -0.6059109
		 -0.043153331 -0.79436117 -0.37407216 -0.0261919 -0.92702973 -0.24987547 -0.026346225
		 -0.96791953 -0.49703109 -0.043671582 -0.86663306 -0.49703109 -0.043671582 -0.86663306
		 -0.24987547 -0.026346225 -0.96791953 -0.12140366 -0.026500361 -0.99224949 -0.37965193
		 -0.044190034 -0.92407346 -0.37965193 -0.044190034 -0.92407346 -0.12140366 -0.026500361
		 -0.99224949 0.0091454787 -0.02665446 -0.99960291 -0.2557812 -0.044708479 -0.96570039
		 -0.2557812 -0.044708479 -0.96570039 0.0091454787 -0.02665446 -0.99960291 0.13953778
		 -0.026808279 -0.9898538 -0.1275395 -0.045226984 -0.99080175 -0.1275395 -0.045226984
		 -0.99080175 0.13953778 -0.026808279 -0.9898538 0.26754367 -0.026961651 -0.96316844
		 0.0028795605 -0.04574522 -0.99894899 0.0028795605 -0.04574522 -0.99894899 0.26754367
		 -0.026961651 -0.96316844 0.39097124 -0.027114764 -0.92000335 0.13324349 -0.046263359
		 -0.99000293;
	setAttr ".n[1328:1493]" -type "float3"  0.13324349 -0.046263359 -0.99000293 0.39097124
		 -0.027114764 -0.92000335 0.50770932 -0.02726762 -0.86109698 0.26132163 -0.046781417
		 -0.96411747 0.26132163 -0.046781417 -0.96411747 0.50770932 -0.02726762 -0.86109698
		 0.61576003 -0.027420323 -0.78745645 0.3849225 -0.047299616 -0.92173612 0.3849225
		 -0.047299616 -0.92173612 0.61576003 -0.027420323 -0.78745645 0.71327448 -0.027572729
		 -0.70034224 0.50193119 -0.04781767 -0.86358476 0.50193119 -0.04781767 -0.86358476
		 0.71327448 -0.027572729 -0.70034224 0.7985841 -0.027724767 -0.60124433 0.61034596
		 -0.048335522 -0.79065889 0.61034596 -0.048335522 -0.79065889 0.7985841 -0.027724767
		 -0.60124433 0.87022853 -0.027876627 -0.49185881 0.70831168 -0.048853368 -0.70420724
		 0.70831168 -0.048853368 -0.70420724 0.87022853 -0.027876627 -0.49185881 0.92697793
		 -0.027928017 -0.37407479 0.79415238 -0.04937112 -0.60570985 0.79415238 -0.04937112
		 -0.60570985 0.92697793 -0.027928017 -0.37407479 0.96789277 -0.021626962 -0.2504313
		 0.86613399 -0.049958754 -0.49730879 0.86613399 -0.049958754 -0.49730879 0.96789277
		 -0.021626962 -0.2504313 0.94875562 -0.30890423 -0.066640988 0.93040657 -0.27518523
		 -0.24210879 0.24210875 -0.27518523 0.93040663 0.066640861 -0.30890423 0.94875562
		 -0.49067566 -0.34757671 0.79901683 -0.35747913 -0.71060425 0.60601181 -0.35747913
		 -0.71060425 0.60601181 -0.49067566 -0.34757671 0.79901683 -0.85417002 -0.25333238
		 0.45411032 -0.94285208 -0.12240928 0.30991262 -0.94285208 -0.12240928 0.30991262
		 -0.85417002 -0.25333238 0.45411032 -0.86094016 0.040639151 0.50708032 -0.96314228
		 0.068869218 0.2600266 -0.96314228 0.068869218 0.2600266 -0.86094016 0.040639151 0.50708032
		 -0.78655589 0.048286095 0.61562842 -0.9209252 0.068333104 0.38370198 -0.9209252 0.068333104
		 0.38370198 -0.78655589 0.048286095 0.61562842 -0.69948149 0.048075862 0.71303189
		 -0.86299652 0.067816205 0.50063741 -0.86299652 0.067816205 0.50063741 -0.69948149
		 0.048075862 0.71303189 -0.6004371 0.0479258 0.79823458 -0.79029757 0.067299142 0.609016
		 -0.79029757 0.067299142 0.609016 -0.6004371 0.0479258 0.79823458 -0.49111742 0.047775362
		 0.86978239 -0.7040711 0.066782065 0.70698243 -0.7040711 0.066782065 0.70698243 -0.49111742
		 0.047775362 0.86978239 -0.37339249 0.047624584 0.92645019 -0.60579169 0.06626489
		 0.79285896 -0.60579169 0.06626489 0.79285896 -0.37339249 0.047624584 0.92645019 -0.24927692
		 0.04747384 0.96726799 -0.49713975 0.065747678 0.86517584 -0.49713975 0.065747678
		 0.86517584 -0.24927692 0.04747384 0.96726799 -0.12089305 0.047322582 0.99153692 -0.3799741
		 0.065230347 0.92269433 -0.3799741 0.065230347 0.92269433 -0.12089305 0.047322582
		 0.99153692 0.009562117 0.047171257 0.99884111 -0.25629809 0.064713098 0.96442908
		 -0.25629809 0.064713098 0.96442908 0.009562117 0.047171257 0.99884111 0.13985711
		 0.047019396 0.98905468 -0.12822753 0.064195551 0.98966485 -0.12822753 0.064195551
		 0.98966485 0.13985711 0.047019396 0.98905468 0.26776096 0.046867486 0.96234483 0.002044939
		 0.063678034 0.99796838 0.002044939 0.063678034 0.99796838 0.26776096 0.046867486
		 0.96234483 0.39108637 0.046715517 0.91916758 0.13229202 0.063160628 0.98919636 0.13229202
		 0.063160628 0.98919636 0.39108637 0.046715517 0.91916758 0.50772268 0.046563026 0.86026144
		 0.26028472 0.062642962 0.96349764 0.26028472 0.062642962 0.96349764 0.50772268 0.046563026
		 0.86026144 0.61567372 0.046410181 0.78663343 0.38383222 0.062125236 0.92131066 0.38383222
		 0.062125236 0.92131066 0.61567372 0.046410181 0.78663343 0.71309251 0.046257272 0.69954222
		 0.5008204 0.06160764 0.86335582 0.5008204 0.06160764 0.86335582 0.71309251 0.046257272
		 0.69954222 0.79831022 0.046104249 0.6004793 0.60924685 0.061089881 0.79062402 0.60924685
		 0.061089881 0.79062402 0.79831022 0.046104249 0.6004793 0.86986923 0.045950651 0.49113733
		 0.70725566 0.060572039 0.70435816 0.70725566 0.060572039 0.70435816 0.86986923 0.045950651
		 0.49113733 0.92654395 0.045796901 0.37338844 0.79316837 0.060054146 0.60603422 0.79316837
		 0.060054146 0.60603422 0.92654395 0.045796901 0.37338844 0.9673636 0.04564308 0.24924734
		 0.8655141 0.059536301 0.49733365 0.8655141 0.059536301 0.49733365 0.9673636 0.04564308
		 0.24924734 0.99162948 0.045488909 0.12083733 0.92305446 0.059018336 0.38011482 0.92305446
		 0.059018336 0.38011482 0.99162948 0.045488909 0.12083733 0.99892539 0.045334514 -0.0096442178
		 0.96480304 0.058500405 0.25638419 0.96480304 0.058500405 0.25638419 0.99892539 0.045334514
		 -0.0096442178 0.98913449 0.045045994 -0.13994268 0.99004447 0.057982359 0.12825808
		 0.99004447 0.057982359 0.12825808 0.98913449 0.045045994 -0.13994268 0.96275121 0.038664088
		 -0.26760998 0.99834239 0.057537004 -0.0013692875 0.99834239 0.057537004 -0.0013692875
		 0.96275121 0.038664088 -0.26760998 0.95104438 0.035822712 -0.30697137 0.99150234
		 0.051189382 -0.1195942 0.41137552 0.86192352 -0.29640844 0.4744347 0.73456049 -0.48511088
		 0.44250509 0.36741504 -0.81804359 0.28960842 0.81051093 -0.5091157 0.28960842 0.81051093
		 -0.5091157 0.44250509 0.36741504 -0.81804359 -0.037191153 0.27414906 -0.96096784
		 -0.20461604 0.15403694 -0.96664619 -0.20461604 0.15403694 -0.96664619 -0.037191153
		 0.27414906 -0.96096784 0.0084003275 -0.017805854 -0.99980623 -0.25604677 -0.038505789
		 -0.96589708 -0.25604677 -0.038505789 -0.96589708 0.0084003275 -0.017805854 -0.99980623
		 0.13965482 -0.025018029 -0.98988414 -0.12755373 -0.039003532 -0.99106443 -0.12755373
		 -0.039003532 -0.99106443 0.13965482 -0.025018029 -0.98988414 0.26765183 -0.025103521
		 -0.96318865 0.0028920646 -0.039522443 -0.99921447 0.0028920646 -0.039522443 -0.99921447
		 0.26765183 -0.025103521 -0.96318865 0.3910681 -0.025259946 -0.9200151 0.13328426
		 -0.040041436 -0.99026877 0.13328426 -0.040041436 -0.99026877 0.3910681 -0.025259946
		 -0.9200151 0.50779468 -0.025415769 -0.86110312 0.26139137 -0.040560033 -0.96438038
		 0.26139137 -0.040560033 -0.96438038 0.50779468 -0.025415769 -0.86110312;
	setAttr ".n[1494:1659]" -type "float3"  0.6158343 -0.025571467 -0.78746051 0.38502085
		 -0.041078694 -0.92199326 0.38502085 -0.041078694 -0.92199326 0.6158343 -0.025571467
		 -0.78746051 0.71333933 -0.025727013 -0.70034647 0.50205827 -0.041597519 -0.86383277
		 0.50205827 -0.041597519 -0.86383277 0.71333933 -0.025727013 -0.70034647 0.79864091
		 -0.025882246 -0.60125101 0.61050117 -0.042116158 -0.79089487 0.61050117 -0.042116158
		 -0.79089487 0.79864091 -0.025882246 -0.60125101 0.87027979 -0.026037211 -0.49186918
		 0.70849431 -0.042634681 -0.70442754 0.70849431 -0.042634681 -0.70442754 0.87027979
		 -0.026037211 -0.49186918 0.92702973 -0.026191898 -0.37407202 0.79436141 -0.043153297
		 -0.60591072 0.79436141 -0.043153297 -0.60591072 0.92702973 -0.026191898 -0.37407202
		 0.96791953 -0.026346229 -0.2498752 0.86663306 -0.043671615 -0.497031 0.86663306 -0.043671615
		 -0.497031 0.96791953 -0.026346229 -0.2498752 0.99224943 -0.026500376 -0.1214034 0.92407358
		 -0.044190016 -0.37965158 0.92407358 -0.044190016 -0.37965158 0.99224943 -0.026500376
		 -0.1214034 0.99960291 -0.026654346 0.0091456128 0.96570033 -0.044708405 -0.25578099
		 0.96570033 -0.044708405 -0.25578099 0.99960291 -0.026654346 0.0091456128 0.98985374
		 -0.026808199 0.13953795 0.99080175 -0.045226932 -0.1275394 0.99080175 -0.045226932
		 -0.1275394 0.98985374 -0.026808199 0.13953795 0.96316844 -0.026961688 0.26754376
		 0.99894893 -0.045745254 0.0028797255 0.99894893 -0.045745254 0.0028797255 0.96316844
		 -0.026961688 0.26754376 0.92000335 -0.027114771 0.39097121 0.99000293 -0.046263341
		 0.13324361 0.99000293 -0.046263341 0.13324361 0.92000335 -0.027114771 0.39097121
		 0.86109686 -0.027267559 0.50770932 0.96411747 -0.04678138 0.26132154 0.96411747 -0.04678138
		 0.26132154 0.86109686 -0.027267559 0.50770932 0.78745645 -0.027420318 0.61576021
		 0.921736 -0.047299609 0.3849225 0.921736 -0.047299609 0.3849225 0.78745645 -0.027420318
		 0.61576021 0.70034212 -0.027572682 0.7132746 0.86358458 -0.047817618 0.50193137 0.86358458
		 -0.047817618 0.50193137 0.70034212 -0.027572682 0.7132746 0.60124427 -0.027724743
		 0.79858422 0.79065889 -0.048335522 0.61034596 0.79065889 -0.048335522 0.61034596
		 0.60124427 -0.027724743 0.79858422 0.4918586 -0.027876627 0.87022865 0.7042073 -0.048853368
		 0.70831174 0.7042073 -0.048853368 0.70831174 0.4918586 -0.027876627 0.87022865 0.37407458
		 -0.027927974 0.92697805 0.60570979 -0.049371108 0.79415244 0.60570979 -0.049371108
		 0.79415244 0.37407458 -0.027927974 0.92697805 0.25043127 -0.021626964 0.96789277
		 0.4973087 -0.049958751 0.86613399 0.4973087 -0.049958751 0.86613399 0.25043127 -0.021626964
		 0.96789277 0.066640861 -0.30890423 0.94875562 0.24210875 -0.27518523 0.93040663 -0.93040663
		 -0.27518523 0.24210876 -0.94875562 -0.30890423 0.066640824 -0.79901671 -0.34757668
		 -0.49067572 -0.60601175 -0.71060419 -0.35747913 -0.60601175 -0.71060419 -0.35747913
		 -0.79901671 -0.34757668 -0.49067572 -0.45411032 -0.25333241 -0.85417008 -0.30991262
		 -0.12240926 -0.9428522 -0.30991262 -0.12240926 -0.9428522 -0.45411032 -0.25333241
		 -0.85417008 -0.50708008 0.040639166 -0.86094028 -0.2600264 0.068869255 -0.9631424
		 -0.2600264 0.068869255 -0.9631424 -0.50708008 0.040639166 -0.86094028 -0.61562842
		 0.048286073 -0.78655589 -0.38370201 0.068333052 -0.9209252 -0.38370201 0.068333052
		 -0.9209252 -0.61562842 0.048286073 -0.78655589 -0.71303195 0.04807587 -0.69948149
		 -0.50063741 0.06781622 -0.86299658 -0.50063741 0.06781622 -0.86299658 -0.71303195
		 0.04807587 -0.69948149 -0.79823434 0.047925826 -0.60043728 -0.609016 0.067299195
		 -0.79029757 -0.609016 0.067299195 -0.79029757 -0.79823434 0.047925826 -0.60043728
		 -0.86978221 0.047775347 -0.49111757 -0.7069822 0.06678208 -0.70407128 -0.7069822
		 0.06678208 -0.70407128 -0.86978221 0.047775347 -0.49111757 -0.92645007 0.047624633
		 -0.37339282 -0.79285896 0.066264831 -0.60579181 -0.79285896 0.066264831 -0.60579181
		 -0.92645007 0.047624633 -0.37339282 -0.96726799 0.047473826 -0.24927688 -0.86517578
		 0.065747701 -0.49713987 -0.86517578 0.065747701 -0.49713987 -0.96726799 0.047473826
		 -0.24927688 -0.99153692 0.047322642 -0.12089312 -0.92269427 0.065230392 -0.37997395
		 -0.92269427 0.065230392 -0.37997395 -0.99153692 0.047322642 -0.12089312 -0.99884105
		 0.047171202 0.0095620127 -0.96442908 0.064713068 -0.25629815 -0.96442908 0.064713068
		 -0.25629815 -0.99884105 0.047171202 0.0095620127 -0.98905468 0.047019389 0.13985693
		 -0.98966485 0.064195558 -0.12822787 -0.98966485 0.064195558 -0.12822787 -0.98905468
		 0.047019389 0.13985693 -0.96234488 0.046867538 0.26776075 -0.99796838 0.063678034
		 0.0020449271 -0.99796838 0.063678034 0.0020449271 -0.96234488 0.046867538 0.26776075
		 -0.91916782 0.046715509 0.39108598 -0.98919648 0.063160606 0.13229187 -0.98919648
		 0.063160606 0.13229187 -0.91916782 0.046715509 0.39108598 -0.86026138 0.046562947
		 0.50772268 -0.96349764 0.062642932 0.26028463 -0.96349764 0.062642932 0.26028463
		 -0.86026138 0.046562947 0.50772268 -0.78663355 0.046410285 0.61567342 -0.92131072
		 0.062125288 0.38383186 -0.92131072 0.062125288 0.38383186 -0.78663355 0.046410285
		 0.61567342 -0.69954252 0.046257332 0.71309227 -0.86335582 0.061607633 0.50082052
		 -0.86335582 0.061607633 0.50082052 -0.69954252 0.046257332 0.71309227 -0.60047948
		 0.046104159 0.79830998 -0.79062414 0.061089844 0.60924667 -0.79062414 0.061089844
		 0.60924667 -0.60047948 0.046104159 0.79830998 -0.49113759 0.04595064 0.86986917 -0.70435828
		 0.060572069 0.70725542 -0.70435828 0.060572069 0.70725542 -0.49113759 0.04595064
		 0.86986917 -0.37338886 0.045797076 0.92654377 -0.60603446 0.060054209 0.79316825
		 -0.60603446 0.060054209 0.79316825 -0.37338886 0.045797076 0.92654377 -0.2492478
		 0.045643121 0.9673636 -0.49733353 0.059536245 0.86551428 -0.49733353 0.059536245
		 0.86551428 -0.2492478 0.045643121 0.9673636 -0.12083771 0.045488909 0.99162948 -0.380115
		 0.059018347 0.92305446 -0.380115 0.059018347 0.92305446 -0.12083771 0.045488909 0.99162948
		 0.0096437931 0.045334585 0.99892527 -0.25638402 0.058500376 0.96480304;
	setAttr ".n[1660:1825]" -type "float3"  -0.25638402 0.058500376 0.96480304 0.0096437931
		 0.045334585 0.99892527 0.13994217 0.045045968 0.98913455 -0.12825832 0.057982344
		 0.99004447 -0.12825832 0.057982344 0.99004447 0.13994217 0.045045968 0.98913455 0.26760948
		 0.038664158 0.96275133 0.0013691203 0.057536986 0.99834239 0.0013691203 0.057536986
		 0.99834239 0.26760948 0.038664158 0.96275133 0.30697113 0.035822731 0.95104432 0.1195941
		 0.051189307 0.99150234 0.29640836 0.86192364 0.41137555 0.48511076 0.73456031 0.47443503
		 0.81804347 0.36741513 0.44250527 0.5091157 0.81051099 0.28960848 0.5091157 0.81051099
		 0.28960848 0.81804347 0.36741513 0.44250527 0.96096784 0.27414903 -0.037191175 0.96664619
		 0.15403686 -0.20461626 0.96664619 0.15403686 -0.20461626 0.96096784 0.27414903 -0.037191175
		 0.99980628 -0.017805884 0.0084001003 0.96589702 -0.038505815 -0.25604698 0.96589702
		 -0.038505815 -0.25604698 0.99980628 -0.017805884 0.0084001003 0.98988414 -0.025018046
		 0.13965464 0.99106443 -0.039003555 -0.12755392 0.99106443 -0.039003555 -0.12755392
		 0.98988414 -0.025018046 0.13965464 0.96318865 -0.025103541 0.26765174 0.99921447
		 -0.039522447 0.0028920264 0.99921447 -0.039522447 0.0028920264 0.96318865 -0.025103541
		 0.26765174 0.92001516 -0.025259927 0.39106801 0.99026865 -0.040041436 0.13328418
		 0.99026865 -0.040041436 0.13328418 0.92001516 -0.025259927 0.39106801 0.86110336
		 -0.02541581 0.50779444 0.96438044 -0.040560052 0.26139101 0.96438044 -0.040560052
		 0.26139101 0.86110336 -0.02541581 0.50779444 0.78746057 -0.025571514 0.61583418 0.92199326
		 -0.04107869 0.38502073 0.92199326 -0.04107869 0.38502073 0.78746057 -0.025571514
		 0.61583418 0.70034653 -0.025726978 0.71333921 0.86383283 -0.041597512 0.50205815
		 0.86383283 -0.041597512 0.50205815 0.70034653 -0.025726978 0.71333921 0.60125095
		 -0.025882255 0.79864091 0.79089493 -0.042116188 0.61050111 0.79089493 -0.042116188
		 0.61050111 0.60125095 -0.025882255 0.79864091 0.49186939 -0.026037203 0.87027961
		 0.70442754 -0.042634681 0.70849431 0.70442754 -0.042634681 0.70849431 0.49186939
		 -0.026037203 0.87027961 0.3740721 -0.026191846 0.92702973 0.60591102 -0.043153282
		 0.79436111 0.60591102 -0.043153282 0.79436111 0.3740721 -0.026191846 0.92702973 0.24987526
		 -0.026346285 0.96791953 0.49703118 -0.043671634 0.866633 0.49703118 -0.043671634
		 0.866633 0.24987526 -0.026346285 0.96791953 0.12140344 -0.026500341 0.99224943 0.37965158
		 -0.044189982 0.92407352 0.37965158 -0.044189982 0.92407352 0.12140344 -0.026500341
		 0.99224943 -0.0091455104 -0.026654357 0.99960291 0.25578123 -0.044708397 0.96570039
		 0.25578123 -0.044708397 0.96570039 -0.0091455104 -0.026654357 0.99960291 -0.13953832
		 -0.026808182 0.98985374 0.12753928 -0.045226917 0.99080175 0.12753928 -0.045226917
		 0.99080175 -0.13953832 -0.026808182 0.98985374 -0.26754409 -0.026961599 0.96316838
		 -0.0028799118 -0.04574522 0.99894893 -0.0028799118 -0.04574522 0.99894893 -0.26754409
		 -0.026961599 0.96316838 -0.3909713 -0.027114723 0.92000329 -0.13324358 -0.046263345
		 0.99000293 -0.13324358 -0.046263345 0.99000293 -0.3909713 -0.027114723 0.92000329
		 -0.50770944 -0.027267518 0.8610968 -0.26132149 -0.046781387 0.96411753 -0.26132149
		 -0.046781387 0.96411753 -0.50770944 -0.027267518 0.8610968 -0.61576009 -0.027420314
		 0.78745645 -0.38492247 -0.047299623 0.92173612 -0.38492247 -0.047299623 0.92173612
		 -0.61576009 -0.027420314 0.78745645 -0.7132746 -0.027572732 0.70034224 -0.50193125
		 -0.047817666 0.86358476 -0.50193125 -0.047817666 0.86358476 -0.7132746 -0.027572732
		 0.70034224 -0.79858416 -0.027724769 0.60124421 -0.61034608 -0.048335511 0.79065889
		 -0.61034608 -0.048335511 0.79065889 -0.79858416 -0.027724769 0.60124421 -0.87022871
		 -0.027876569 0.49185857 -0.70831174 -0.048853345 0.70420712 -0.70831174 -0.048853345
		 0.70420712 -0.87022871 -0.027876569 0.49185857 -0.92697805 -0.027927933 0.37407458
		 -0.79415244 -0.049371071 0.60570979 -0.79415244 -0.049371071 0.60570979 -0.92697805
		 -0.027927933 0.37407458 -0.96789277 -0.021626884 0.25043109 -0.86613399 -0.049958717
		 0.49730876 -0.86613399 -0.049958717 0.49730876 -0.96789277 -0.021626884 0.25043109
		 -0.94875562 -0.30890423 0.066640824 -0.93040663 -0.27518523 0.24210876 -0.24210882
		 -0.27518526 -0.93040657 -0.066640861 -0.30890426 -0.9487555 0.49067572 -0.34757674
		 -0.79901671 0.35747916 -0.71060419 -0.60601175 0.35747916 -0.71060419 -0.60601175
		 0.49067572 -0.34757674 -0.79901671 0.85417008 -0.25333244 -0.45411023 0.94285208
		 -0.12240928 -0.30991253 0.94285208 -0.12240928 -0.30991253 0.85417008 -0.25333244
		 -0.45411023 0.86094034 0.040639177 -0.50708002 0.96314245 0.068869278 -0.2600264
		 0.96314245 0.068869278 -0.2600264 0.86094034 0.040639177 -0.50708002 0.78655589 0.048286106
		 -0.61562836 0.92092538 0.06833306 -0.38370204 0.92092538 0.06833306 -0.38370204 0.78655589
		 0.048286106 -0.61562836 0.69948149 0.048075896 -0.71303189 0.86299658 0.067816183
		 -0.50063759 0.86299658 0.067816183 -0.50063759 0.69948149 0.048075896 -0.71303189
		 0.60043734 0.047925811 -0.79823434 0.79029757 0.067299172 -0.609016 0.79029757 0.067299172
		 -0.609016 0.60043734 0.047925811 -0.79823434 0.49111766 0.047775324 -0.86978221 0.70407128
		 0.066782042 -0.7069822 0.70407128 0.066782042 -0.7069822 0.49111766 0.047775324 -0.86978221
		 0.3733927 0.047624569 -0.92645013 0.60579181 0.066264801 -0.79285896 0.60579181 0.066264801
		 -0.79285896 0.3733927 0.047624569 -0.92645013 0.24927701 0.04747384 -0.96726799 0.4971399
		 0.065747701 -0.86517578 0.4971399 0.065747701 -0.86517578 0.24927701 0.04747384 -0.96726799
		 0.12089325 0.047322702 -0.99153686 0.37997404 0.065230422 -0.92269427 0.37997404
		 0.065230422 -0.92269427 0.12089325 0.047322702 -0.99153686 -0.0095618377 0.047171231
		 -0.99884105 0.25629809 0.064713046 -0.96442914 0.25629809 0.064713046 -0.96442914
		 -0.0095618377 0.047171231 -0.99884105 -0.13985674 0.047019348 -0.98905468 0.12822789
		 0.064195521 -0.98966485 0.12822789 0.064195521 -0.98966485 -0.13985674 0.047019348
		 -0.98905468;
	setAttr ".n[1826:1991]" -type "float3"  -0.26776081 0.04686752 -0.96234488 -0.0020449508
		 0.063678034 -0.99796838 -0.0020449508 0.063678034 -0.99796838 -0.26776081 0.04686752
		 -0.96234488 -0.39108598 0.046715483 -0.91916782 -0.1322919 0.063160568 -0.98919648
		 -0.1322919 0.063160568 -0.98919648 -0.39108598 0.046715483 -0.91916782 -0.50772256
		 0.046562936 -0.86026138 -0.2602846 0.062642947 -0.9634977 -0.2602846 0.062642947
		 -0.9634977 -0.50772256 0.046562936 -0.86026138 -0.61567348 0.046410263 -0.78663349
		 -0.38383186 0.062125295 -0.92131084 -0.38383186 0.062125295 -0.92131084 -0.61567348
		 0.046410263 -0.78663349 -0.71309227 0.046257328 -0.69954252 -0.50082052 0.061607603
		 -0.86335582 -0.50082052 0.061607603 -0.86335582 -0.71309227 0.046257328 -0.69954252
		 -0.79830998 0.04610417 -0.6004796 -0.60924667 0.061089858 -0.79062414 -0.60924667
		 0.061089858 -0.79062414 -0.79830998 0.04610417 -0.6004796 -0.86986911 0.045950659
		 -0.49113765 -0.70725548 0.06057208 -0.7043584 -0.70725548 0.06057208 -0.7043584 -0.86986911
		 0.045950659 -0.49113765 -0.92654365 0.045797035 -0.37338912 -0.79316825 0.060054161
		 -0.6060344 -0.79316825 0.060054161 -0.6060344 -0.92654365 0.045797035 -0.37338912
		 -0.9673636 0.045643073 -0.2492478 -0.8655141 0.059536241 -0.49733374 -0.8655141 0.059536241
		 -0.49733374 -0.9673636 0.045643073 -0.2492478 -0.99162948 0.045488928 -0.1208378
		 -0.92305434 0.059018325 -0.38011512 -0.92305434 0.059018325 -0.38011512 -0.99162948
		 0.045488928 -0.1208378 -0.99892539 0.045334566 0.0096438453 -0.96480304 0.05850035
		 -0.2563841 -0.96480304 0.05850035 -0.2563841 -0.99892539 0.045334566 0.0096438453
		 -0.98913455 0.045045931 0.13994245 -0.99004447 0.057982314 -0.12825808 -0.99004447
		 0.057982314 -0.12825808 -0.98913455 0.045045931 0.13994245 -0.96275133 0.03866411
		 0.26760963 -0.99834239 0.057536989 0.0013690535 -0.99834239 0.057536989 0.0013690535
		 -0.96275133 0.03866411 0.26760963 -0.95104432 0.035822738 0.30697113 -0.99150234
		 0.051189303 0.1195941 -0.41137552 0.86192358 0.29640827 -0.47443512 0.73456037 0.48511076
		 -0.44250524 0.36741507 0.81804347 -0.28960848 0.81051093 0.50911564 -0.28960848 0.81051093
		 0.50911564 -0.44250524 0.36741507 0.81804347 0.037191186 0.27414906 0.96096784 0.2046162
		 0.15403695 0.96664619 0.2046162 0.15403695 0.96664619 0.037191186 0.27414906 0.96096784
		 -0.0084003685 -0.017805835 0.99980623 0.25604707 -0.038505834 0.96589702 0.25604707
		 -0.038505834 0.96589702 -0.0084003685 -0.017805835 0.99980623 -0.13965482 -0.025018027
		 0.98988414 0.12755392 -0.039003555 0.99106443 0.12755392 -0.039003555 0.99106443
		 -0.13965482 -0.025018027 0.98988414 -0.26765183 -0.025103489 0.96318865 -0.0028918663
		 -0.039522428 0.99921453 -0.0028918663 -0.039522428 0.99921453 -0.26765183 -0.025103489
		 0.96318865 -0.39106792 -0.025259985 0.9200151 -0.13328411 -0.040041491 0.99026871
		 -0.13328411 -0.040041491 0.99026871 -0.39106792 -0.025259985 0.9200151 -0.50779474
		 -0.025415774 0.86110318 -0.26139119 -0.04056007 0.96438044 -0.26139119 -0.04056007
		 0.96438044 -0.50779474 -0.025415774 0.86110318 -0.61583436 -0.025571452 0.78746051
		 -0.38502073 -0.04107869 0.92199326 -0.38502073 -0.04107869 0.92199326 -0.61583436
		 -0.025571452 0.78746051 -0.71333921 -0.025727058 0.70034653 -0.50205821 -0.041597538
		 0.86383283 -0.50205821 -0.041597538 0.86383283 -0.71333921 -0.025727058 0.70034653
		 -0.79864103 -0.025882265 0.60125089 -0.61050129 -0.042116158 0.79089469 -0.61050129
		 -0.042116158 0.79089469 -0.79864103 -0.025882265 0.60125089 -0.87027973 -0.026037155
		 0.49186918 -0.70849437 -0.042634677 0.70442748 -0.70849437 -0.042634677 0.70442748
		 -0.87027973 -0.026037155 0.49186918 -0.92702973 -0.026191831 0.37407193 -0.79436141
		 -0.043153305 0.60591078 -0.79436141 -0.043153305 0.60591078 -0.92702973 -0.026191831
		 0.37407193 -0.96791953 -0.026346242 0.24987522 -0.86663306 -0.043671601 0.49703115
		 -0.86663306 -0.043671601 0.49703115 -0.96791953 -0.026346242 0.24987522 -0.99224943
		 -0.026500279 0.12140304 -0.92407352 -0.044189971 0.37965146 -0.92407352 -0.044189971
		 0.37965146 -0.99224943 -0.026500279 0.12140304 -0.99960291 -0.026654325 -0.009145706
		 -0.96570039 -0.044708475 0.25578114 -0.96570039 -0.044708475 0.25578114 -0.99960291
		 -0.026654325 -0.009145706 -0.98985374 -0.026808256 -0.13953789 -0.99080175 -0.04522698
		 0.12753947 -0.99080175 -0.04522698 0.12753947 -0.98985374 -0.026808256 -0.13953789
		 -0.96316844 -0.026961641 -0.26754376 -0.99894899 -0.045745213 -0.0028796371 -0.99894899
		 -0.045745213 -0.0028796371 -0.96316844 -0.026961641 -0.26754376 -0.92000335 -0.027114749
		 -0.39097136 -0.99000293 -0.046263359 -0.13324347 -0.99000293 -0.046263359 -0.13324347
		 -0.92000335 -0.027114749 -0.39097136 -0.86109698 -0.027267598 -0.50770932 -0.96411747
		 -0.046781372 -0.26132163 -0.96411747 -0.046781372 -0.26132163 -0.86109698 -0.027267598
		 -0.50770932 -0.78745645 -0.02742029 -0.61576009 -0.92173612 -0.047299605 -0.38492239
		 -0.92173612 -0.047299605 -0.38492239 -0.78745645 -0.02742029 -0.61576009 -0.70034224
		 -0.02757274 -0.7132746 -0.86358476 -0.047817688 -0.50193125 -0.86358476 -0.047817688
		 -0.50193125 -0.70034224 -0.02757274 -0.7132746 -0.60124433 -0.027724775 -0.79858416
		 -0.79065889 -0.048335511 -0.61034596 -0.79065889 -0.048335511 -0.61034596 -0.60124433
		 -0.027724775 -0.79858416 -0.49185875 -0.027876571 -0.87022853 -0.70420712 -0.048853308
		 -0.70831174 -0.70420712 -0.048853308 -0.70831174 -0.49185875 -0.027876571 -0.87022853
		 -0.37407458 -0.027927946 -0.92697805 -0.60570985 -0.04937109 -0.79415244 -0.60570985
		 -0.04937109 -0.79415244 -0.37407458 -0.027927946 -0.92697805 -0.2504313 -0.021626964
		 -0.96789277 -0.49730879 -0.049958754 -0.86613399 -0.49730879 -0.049958754 -0.86613399
		 -0.2504313 -0.021626964 -0.96789277 -0.066640861 -0.30890426 -0.9487555 -0.24210882
		 -0.27518526 -0.93040657 -0.4349007 0.90047842 5.6163174e-08 -0.31404459 0.94940823
		 4.1278838e-08 -0.27197063 0.94940817 -0.15702218 -0.50911576 0.81051093 -0.28960848
		 -0.50911576 0.81051093 -0.28960848 -0.27197063 0.94940817 -0.15702218 -0.1570223
		 0.94940817 -0.27197063 -0.29640833 0.86192352 -0.41137552;
	setAttr ".n[1992:2157]" -type "float3"  -0.29640833 0.86192352 -0.41137552 -0.1570223
		 0.94940817 -0.27197063 4.1885876e-08 0.94940817 -0.31404459 3.3697901e-08 0.90047842
		 -0.43490073 3.3697901e-08 0.90047842 -0.43490073 4.1885876e-08 0.94940817 -0.31404459
		 0.15702221 0.94940817 -0.27197063 0.28960842 0.81051093 -0.5091157 0.28960842 0.81051093
		 -0.5091157 0.15702221 0.94940817 -0.27197063 0.2719706 0.94940823 -0.1570224 0.41137552
		 0.86192352 -0.29640844 0.41137552 0.86192352 -0.29640844 0.2719706 0.94940823 -0.1570224
		 0.31404459 0.94940823 -1.2140835e-08 0.43490067 0.90047842 -6.739581e-08 0.43490067
		 0.90047842 -6.739581e-08 0.31404459 0.94940823 -1.2140835e-08 0.2719706 0.94940823
		 0.15702228 0.5091157 0.81051099 0.28960848 0.5091157 0.81051099 0.28960848 0.2719706
		 0.94940823 0.15702228 0.15702233 0.94940823 0.2719706 0.29640836 0.86192364 0.41137555
		 0.29640836 0.86192364 0.41137555 0.15702233 0.94940823 0.2719706 2.7316879e-08 0.94940823
		 0.31404459 5.6163174e-08 0.90047842 0.43490073 5.6163174e-08 0.90047842 0.43490073
		 2.7316879e-08 0.94940823 0.31404459 -0.15702227 0.94940823 0.27197063 -0.28960848
		 0.81051093 0.50911564 -0.28960848 0.81051093 0.50911564 -0.15702227 0.94940823 0.27197063
		 -0.27197057 0.94940823 0.15702233 -0.41137552 0.86192358 0.29640827 -0.41137552 0.86192358
		 0.29640827 -0.27197057 0.94940823 0.15702233 -0.31404459 0.94940823 4.1278838e-08
		 -0.4349007 0.90047842 5.6163174e-08 -0.31404459 0.94940823 4.1278838e-08 -0.13996455
		 0.99015653 8.1486187e-09 -0.1212129 0.99015653 -0.069982201 -0.27197063 0.94940817
		 -0.15702218 -0.27197063 0.94940817 -0.15702218 -0.1212129 0.99015653 -0.069982201
		 -0.06998229 0.99015647 -0.12121284 -0.1570223 0.94940817 -0.27197063 -0.1570223 0.94940817
		 -0.27197063 -0.06998229 0.99015647 -0.12121284 5.7040332e-08 0.99015653 -0.13996457
		 4.1885876e-08 0.94940817 -0.31404459 4.1885876e-08 0.94940817 -0.31404459 5.7040332e-08
		 0.99015653 -0.13996457 0.069982238 0.99015647 -0.1212129 0.15702221 0.94940817 -0.27197063
		 0.15702221 0.94940817 -0.27197063 0.069982238 0.99015647 -0.1212129 0.12121288 0.99015659
		 -0.069982246 0.2719706 0.94940823 -0.1570224 0.2719706 0.94940823 -0.1570224 0.12121288
		 0.99015659 -0.069982246 0.13996452 0.99015653 2.6483026e-08 0.31404459 0.94940823
		 -1.2140835e-08 0.31404459 0.94940823 -1.2140835e-08 0.13996452 0.99015653 2.6483026e-08
		 0.12121291 0.99015653 0.069982179 0.2719706 0.94940823 0.15702228 0.2719706 0.94940823
		 0.15702228 0.12121291 0.99015653 0.069982179 0.069982305 0.99015653 0.12121284 0.15702233
		 0.94940823 0.2719706 0.15702233 0.94940823 0.2719706 0.069982305 0.99015653 0.12121284
		 2.4445857e-08 0.99015653 0.13996455 2.7316879e-08 0.94940823 0.31404459 2.7316879e-08
		 0.94940823 0.31404459 2.4445857e-08 0.99015653 0.13996455 -0.069982231 0.99015647
		 0.12121288 -0.15702227 0.94940823 0.27197063 -0.15702227 0.94940823 0.27197063 -0.069982231
		 0.99015647 0.12121288 -0.12121286 0.99015653 0.069982275 -0.27197057 0.94940823 0.15702233
		 -0.27197057 0.94940823 0.15702233 -0.12121286 0.99015653 0.069982275 -0.13996455
		 0.99015653 8.1486187e-09 -0.31404459 0.94940823 4.1278838e-08 0 1 0 0 1 0 0 1 0 0
		 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 -0.98463225 -0.17091027 0.035903726
		 -0.99330181 -0.11547123 -0.0042312215 -0.85343432 -0.16911539 -0.49300095 -0.84445357
		 -0.25928798 -0.46868739 -0.84445357 -0.25928798 -0.46868739 -0.85343432 -0.16911539
		 -0.49300095 -0.49202368 -0.17773113 -0.85224664 -0.47406444 -0.27335262 -0.83698344
		 -0.47406444 -0.27335262 -0.83698344 -0.49202368 -0.17773113 -0.85224664 -0.0021799728
		 -0.13881718 -0.99031568 0.029966967 -0.20948148 -0.97735333 0.029966967 -0.20948148
		 -0.97735333 -0.0021799728 -0.13881718 -0.99031568 0.49078259 -0.063621238 -0.86895621
		 0.53492039 -0.085553423 -0.84055984 0.53492039 -0.085553423 -0.84055984 0.49078259
		 -0.063621238 -0.86895621 0.85680687 0.026611736 -0.51495034 0.88521445 0.057729997
		 -0.46158713 0.88521445 0.057729997 -0.46158713 0.85680687 0.026611736 -0.51495034
		 0.99403089 0.10745843 -0.018850522 0.9839496 0.17567106 0.031347994 0.9839496 0.17567106
		 0.031347994 0.99403089 0.10745843 -0.018850522 0.86003989 0.15815018 0.48509789 0.8332094
		 0.24317512 0.49661657 0.8332094 0.24317512 0.49661657 0.86003989 0.15815018 0.48509789
		 0.4887763 0.16619596 0.8564325 0.48929799 0.2534008 0.83449119 0.48929799 0.2534008
		 0.83449119 0.4887763 0.16619596 0.8564325 -0.016799295 0.12964824 0.99141765 0.02550883
		 0.20586754 0.97824734 0.02550883 0.20586754 0.97824734 -0.016799295 0.12964824 0.99141765
		 -0.51564491 0.057430174 0.8548755 -0.46236965 0.1040711 0.88055867 -0.46236965 0.1040711
		 0.88055867 -0.51564491 0.057430174 0.8548755 -0.87181413 -0.032217838 0.48877606
		 -0.84241235 -0.034647573 0.53771836 -0.84241235 -0.034647573 0.53771836 -0.87181413
		 -0.032217838 0.48877606 -0.99330181 -0.11547123 -0.0042312215 -0.98463225 -0.17091027
		 0.035903726 -0.99330181 -0.11547123 -0.0042312215 -0.99986821 -0.014524314 -0.0072477423
		 -0.86420923 -0.021317312 -0.5026809 -0.85343432 -0.16911539 -0.49300095 -0.85343432
		 -0.16911539 -0.49300095 -0.86420923 -0.021317312 -0.5026809 -0.50123143 -0.022408919
		 -0.86502302 -0.49202368 -0.17773113 -0.85224664 -0.49202368 -0.17773113 -0.85224664
		 -0.50123143 -0.022408919 -0.86502302 -0.0059879683 -0.017483089 -0.99982929 -0.0021799728
		 -0.13881718 -0.99031568 -0.0021799728 -0.13881718 -0.99031568 -0.0059879683 -0.017483089
		 -0.99982929 0.49223042 -0.0079465508 -0.87042868 0.49078259 -0.063621238 -0.86895621
		 0.49078259 -0.063621238 -0.86895621 0.49223042 -0.0079465508 -0.87042868;
	setAttr ".n[2158:2323]" -type "float3"  0.86120385 0.0035103452 -0.50824755 0.85680687
		 0.026611736 -0.51495034 0.85680687 0.026611736 -0.51495034 0.86120385 0.0035103452
		 -0.50824755 0.99987662 0.013765193 -0.0075690551 0.99403089 0.10745843 -0.018850522
		 0.99403089 0.10745843 -0.018850522 0.99987662 0.013765193 -0.0075690551 0.86756587
		 0.020176493 0.49691287 0.86003989 0.15815018 0.48509789 0.86003989 0.15815018 0.48509789
		 0.86756587 0.020176493 0.49691287 0.49843588 0.021192215 0.86666751 0.4887763 0.16619596
		 0.8564325 0.4887763 0.16619596 0.8564325 0.49843588 0.021192215 0.86666751 -0.0063099666
		 0.016574766 0.99984264 -0.016799295 0.12964824 0.99141765 -0.016799295 0.12964824
		 0.99141765 -0.0063099666 0.016574766 0.99984264 -0.50788349 0.0074223904 0.86139381
		 -0.51564491 0.057430174 0.8548755 -0.51564491 0.057430174 0.8548755 -0.50788349 0.0074223904
		 0.86139381 -0.87070221 -0.0039604618 0.49179456 -0.87181413 -0.032217838 0.48877606
		 -0.87181413 -0.032217838 0.48877606 -0.87070221 -0.0039604618 0.49179456 -0.99986821
		 -0.014524314 -0.0072477423 -0.99330181 -0.11547123 -0.0042312215 -0.99986821 -0.014524314
		 -0.0072477423 -0.99874115 0.050021365 -0.0037533659 -0.86302614 0.072997652 -0.49985725
		 -0.86420923 -0.021317312 -0.5026809 -0.86420923 -0.021317312 -0.5026809 -0.86302614
		 0.072997652 -0.49985725 -0.49908635 0.076655753 -0.86315519 -0.50123143 -0.022408919
		 -0.86502302 -0.50123143 -0.022408919 -0.86502302 -0.49908635 0.076655753 -0.86315519
		 -0.0028624029 0.060062587 -0.99819046 -0.0059879683 -0.017483089 -0.99982929 -0.0059879683
		 -0.017483089 -0.99982929 -0.0028624029 0.060062587 -0.99819046 0.49511442 0.027475629
		 -0.86839324 0.49223042 -0.0079465508 -0.87042868 0.49223042 -0.0079465508 -0.87042868
		 0.49511442 0.027475629 -0.86839324 0.86230505 -0.012619674 -0.50623202 0.86120385
		 0.0035103452 -0.50824755 0.86120385 0.0035103452 -0.50824755 0.86230505 -0.012619674
		 -0.50623202 0.9987492 -0.049537126 -0.0067935814 0.99987662 0.013765193 -0.0075690551
		 0.99987662 0.013765193 -0.0075690551 0.9987492 -0.049537126 -0.0067935814 0.86539304
		 -0.073186181 0.49572036 0.86756587 0.020176493 0.49691287 0.86756587 0.020176493
		 0.49691287 0.86539304 -0.073186181 0.49572036 0.49706653 -0.076976918 0.86429131
		 0.49843588 0.021192215 0.86666751 0.49843588 0.021192215 0.86666751 0.49706653 -0.076976918
		 0.86429131 -0.0059027425 -0.059841193 0.99819052 -0.0063099666 0.016574766 0.99984264
		 -0.0063099666 0.016574766 0.99984264 -0.0059027425 -0.059841193 0.99819052 -0.50624019
		 -0.026578238 0.86198276 -0.50788349 0.0074223904 0.86139381 -0.50788349 0.0074223904
		 0.86139381 -0.50624019 -0.026578238 0.86198276 -0.86904347 0.013648771 0.49454749
		 -0.87070221 -0.0039604618 0.49179456 -0.87070221 -0.0039604618 0.49179456 -0.86904347
		 0.013648771 0.49454749 -0.99874115 0.050021365 -0.0037533659 -0.99986821 -0.014524314
		 -0.0072477423 -0.99874115 0.050021365 -0.0037533659 -0.99488223 0.10103289 0.0013250471
		 -0.85735893 0.1484977 -0.49283275 -0.86302614 0.072997652 -0.49985725 -0.86302614
		 0.072997652 -0.49985725 -0.85735893 0.1484977 -0.49283275 -0.49299487 0.15611361
		 -0.85591155 -0.49908635 0.076655753 -0.86315519 -0.49908635 0.076655753 -0.86315519
		 -0.49299487 0.15611361 -0.85591155 0.0021181866 0.12169972 -0.99256462 -0.0028624029
		 0.060062587 -0.99819046 -0.0028624029 0.060062587 -0.99819046 0.0021181866 0.12169972
		 -0.99256462 0.4977777 0.055068042 -0.86555463 0.49511442 0.027475629 -0.86839324
		 0.49511442 0.027475629 -0.86839324 0.4977777 0.055068042 -0.86555463 0.86185277 -0.025203928
		 -0.50653201 0.86230505 -0.012619674 -0.50623202 0.86230505 -0.012619674 -0.50623202
		 0.86185277 -0.025203928 -0.50653201 0.99518442 -0.097491816 -0.01016147 0.9987492
		 -0.049537126 -0.0067935814 0.9987492 -0.049537126 -0.0067935814 0.99518442 -0.097491816
		 -0.01016147 0.85997623 -0.14300784 0.48988724 0.86539304 -0.073186181 0.49572036
		 0.86539304 -0.073186181 0.49572036 0.85997623 -0.14300784 0.48988724 0.49183124 -0.15024659
		 0.85762936 0.49706653 -0.076976918 0.86429131 0.49706653 -0.076976918 0.86429131
		 0.49183124 -0.15024659 0.85762936 -0.0093686953 -0.11739822 0.99304062 -0.0059027425
		 -0.059841193 0.99819052 -0.0059027425 -0.059841193 0.99819052 -0.0093686953 -0.11739822
		 0.99304062 -0.50732809 -0.052716058 0.86013907 -0.50624019 -0.026578238 0.86198276
		 -0.50624019 -0.026578238 0.86198276 -0.50732809 -0.052716058 0.86013907 -0.86763066
		 0.027175779 0.49646586 -0.86904347 0.013648771 0.49454749 -0.86904347 0.013648771
		 0.49454749 -0.86763066 0.027175779 0.49646586 -0.99488223 0.10103289 0.0013250471
		 -0.99874115 0.050021365 -0.0037533659 -0.99488223 0.10103289 0.0013250471 -0.99219507
		 0.1220864 0.02537409 -0.85692513 0.1842953 -0.48136753 -0.85735893 0.1484977 -0.49283275
		 -0.85735893 0.1484977 -0.49283275 -0.85692513 0.1842953 -0.48136753 -0.48557997 0.19429423
		 -0.85232729 -0.49299487 0.15611361 -0.85591155 -0.49299487 0.15611361 -0.85591155
		 -0.48557997 0.19429423 -0.85232729 0.021199018 0.14913011 -0.98859036 0.0021181866
		 0.12169972 -0.99256462 0.0021181866 0.12169972 -0.99256462 0.021199018 0.14913011
		 -0.98859036 0.52513403 0.062475286 -0.84872323 0.4977777 0.055068042 -0.86555463
		 0.4977777 0.055068042 -0.86555463 0.52513403 0.062475286 -0.84872323 0.88034695 -0.03843604
		 -0.47277048 0.86185277 -0.025203928 -0.50653201 0.86185277 -0.025203928 -0.50653201
		 0.88034695 -0.03843604 -0.47277048 0.99199665 -0.12416001 0.022954296 0.99518442
		 -0.097491816 -0.01016147 0.99518442 -0.097491816 -0.01016147 0.99199665 -0.12416001
		 0.022954296 0.84759581 -0.17505249 0.50093704 0.85997623 -0.14300784 0.48988724 0.85997623
		 -0.14300784 0.48988724 0.84759581 -0.17505249 0.50093704 0.49575707 -0.18290901 0.84898126
		 0.49183124 -0.15024659 0.85762936 0.49183124 -0.15024659 0.85762936 0.49575707 -0.18290901
		 0.84898126 0.018804653 -0.14672934 0.98899794 -0.0093686953 -0.11739822 0.99304062
		 -0.0093686953 -0.11739822 0.99304062 0.018804653 -0.14672934 0.98899794 -0.47357202
		 -0.071720526 0.87783009 -0.50732809 -0.052716058 0.86013907;
	setAttr ".n[2324:2331]" -type "float3"  -0.50732809 -0.052716058 0.86013907 -0.47357202
		 -0.071720526 0.87783009 -0.84949178 0.026856834 0.52691787 -0.86763066 0.027175779
		 0.49646586 -0.86763066 0.027175779 0.49646586 -0.84949178 0.026856834 0.52691787
		 -0.99219507 0.1220864 0.02537409 -0.99488223 0.10103289 0.0013250471;
	setAttr -s 581 -ch 2332 ".fc";
	setAttr ".fc[0:499]" -type "polyFaces" 
		f 4 0 1 2 3
		f 4 4 5 6 7
		f 4 8 9 10 11
		f 4 12 13 14 15
		f 4 16 17 18 -2
		f 4 19 20 21 -6
		f 4 22 23 24 -10
		f 4 25 26 27 -14
		f 4 28 29 30 -18
		f 4 31 32 33 -21
		f 4 34 35 36 -24
		f 4 37 38 39 -27
		f 4 40 41 42 -30
		f 4 43 44 45 -33
		f 4 46 47 48 -36
		f 4 49 50 51 -39
		f 4 52 53 54 -42
		f 4 55 56 57 -45
		f 4 58 59 60 -48
		f 4 61 62 63 -51
		f 4 64 65 66 -54
		f 4 67 68 69 -57
		f 4 70 71 72 -60
		f 4 73 74 75 -63
		f 4 76 77 78 -66
		f 4 79 80 81 -69
		f 4 82 83 84 -72
		f 4 85 86 87 -75
		f 4 88 89 90 -78
		f 4 91 92 93 -81
		f 4 94 95 96 -84
		f 4 97 98 99 -87
		f 4 100 101 102 -90
		f 4 103 104 105 -93
		f 4 106 107 108 -96
		f 4 109 110 111 -99
		f 4 112 113 114 -102
		f 4 115 116 117 -105
		f 4 118 119 120 -108
		f 4 121 122 123 -111
		f 4 124 125 126 -114
		f 4 127 128 129 -117
		f 4 130 131 132 -120
		f 4 133 134 135 -123
		f 4 136 137 138 -126
		f 4 139 140 141 -129
		f 4 142 143 144 -132
		f 4 145 146 147 -135
		f 4 148 149 150 -138
		f 4 151 152 153 -141
		f 4 154 155 156 -144
		f 4 157 158 159 -147
		f 4 160 161 162 -150
		f 4 163 164 165 -153
		f 4 166 167 168 -156
		f 4 169 170 171 -159
		f 4 172 173 174 -162
		f 4 175 176 177 -165
		f 4 178 179 180 -168
		f 4 181 182 183 -171
		f 4 184 185 186 -174
		f 4 187 188 189 -177
		f 4 190 191 192 -180
		f 4 193 194 195 -183
		f 4 196 197 198 -186
		f 4 199 200 201 -189
		f 4 202 203 204 -192
		f 4 205 206 207 -195
		f 4 208 209 210 -198
		f 4 211 212 213 -201
		f 4 214 215 216 -204
		f 4 217 218 219 -207
		f 4 220 221 222 -210
		f 4 223 224 225 -213
		f 4 226 227 228 -216
		f 4 229 230 231 -219
		f 4 232 233 234 -222
		f 4 235 236 237 -225
		f 4 238 239 240 -228
		f 4 241 242 243 -231
		f 4 244 245 246 -234
		f 4 247 248 249 -237
		f 4 250 251 252 -240
		f 4 253 254 255 -243
		f 4 256 257 258 -246
		f 4 259 260 261 -249
		f 4 262 263 264 -252
		f 4 265 266 267 -255
		f 4 268 269 270 -258
		f 4 271 272 273 -261
		f 4 274 275 276 -264
		f 4 277 278 279 -267
		f 4 280 281 282 -270
		f 4 283 284 285 -273
		f 4 286 287 288 -276
		f 4 289 290 291 -279
		f 4 292 293 294 295
		f 4 -295 296 297 298
		f 4 299 300 301 -294
		f 4 -302 302 303 -297
		f 4 304 305 306 -301
		f 4 -307 307 308 -303
		f 4 309 310 311 -306
		f 4 -312 312 313 -308
		f 4 314 315 316 -311
		f 4 -317 317 318 -313
		f 4 319 320 321 -316
		f 4 -322 322 323 -318
		f 4 324 325 326 -321
		f 4 -327 327 328 -323
		f 4 329 330 331 -326
		f 4 -332 332 333 -328
		f 4 334 335 336 -331
		f 4 -337 337 338 -333
		f 4 339 340 341 -336
		f 4 -342 342 343 -338
		f 4 344 345 346 -341
		f 4 -347 347 348 -343
		f 4 349 350 351 -346
		f 4 -352 352 353 -348
		f 4 354 355 356 -351
		f 4 -357 357 358 -353
		f 4 359 360 361 -356
		f 4 -362 362 363 -358
		f 4 364 365 366 -361
		f 4 -367 367 368 -363
		f 4 369 370 371 -366
		f 4 -372 372 373 -368
		f 4 374 375 376 -371
		f 4 -377 377 378 -373
		f 4 379 380 381 -376
		f 4 -382 382 383 -378
		f 4 384 385 386 -381
		f 4 -387 387 388 -383
		f 4 389 390 391 -386
		f 4 -392 392 393 -388
		f 4 394 395 396 -391
		f 4 -397 397 398 -393
		f 4 399 400 401 -396
		f 4 -402 402 403 -398
		f 4 404 405 406 -401
		f 4 -407 407 408 -403
		f 4 409 410 411 -406
		f 4 -412 412 413 -408
		f 4 414 415 416 417
		f 4 -417 418 419 420
		f 4 421 422 423 -416
		f 4 -424 424 425 -419
		f 4 426 427 428 -423
		f 4 -429 429 430 -425
		f 4 431 432 433 -428
		f 4 -434 434 435 -430
		f 4 436 437 438 -433
		f 4 -439 439 440 -435
		f 4 441 442 443 -438
		f 4 -444 444 445 -440
		f 4 446 447 448 -443
		f 4 -449 449 450 -445
		f 4 451 452 453 -448
		f 4 -454 454 455 -450
		f 4 456 457 458 -453
		f 4 -459 459 460 -455
		f 4 461 462 463 -458
		f 4 -464 464 465 -460
		f 4 466 467 468 -463
		f 4 -469 469 470 -465
		f 4 471 472 473 -468
		f 4 -474 474 475 -470
		f 4 476 477 478 -473
		f 4 -479 479 480 -475
		f 4 481 482 483 -478
		f 4 -484 484 485 -480
		f 4 486 487 488 -483
		f 4 -489 489 490 -485
		f 4 491 492 493 -488
		f 4 -494 494 495 -490
		f 4 496 497 498 -493
		f 4 -499 499 500 -495
		f 4 501 502 503 -498
		f 4 -504 504 505 -500
		f 4 506 507 508 -503
		f 4 -509 509 510 -505
		f 4 511 512 513 -508
		f 4 -514 514 515 -510
		f 4 516 517 518 -513
		f 4 -519 519 520 -515
		f 4 521 522 523 -518
		f 4 -524 524 525 -520
		f 4 526 527 528 -523
		f 4 -529 529 530 -525
		f 4 531 532 533 -528
		f 4 -534 534 535 -530
		f 4 536 537 538 539
		f 4 -539 540 541 542
		f 4 543 544 545 -538
		f 4 -546 546 547 -541
		f 4 548 549 550 -545
		f 4 -551 551 552 -547
		f 4 553 554 555 -550
		f 4 -556 556 557 -552
		f 4 558 559 560 -555
		f 4 -561 561 562 -557
		f 4 563 564 565 -560
		f 4 -566 566 567 -562
		f 4 568 569 570 -565
		f 4 -571 571 572 -567
		f 4 573 574 575 -570
		f 4 -576 576 577 -572
		f 4 578 579 580 -575
		f 4 -581 581 582 -577
		f 4 583 584 585 -580
		f 4 -586 586 587 -582
		f 4 588 589 590 -585
		f 4 -591 591 592 -587
		f 4 593 594 595 -590
		f 4 -596 596 597 -592
		f 4 598 599 600 -595
		f 4 -601 601 602 -597
		f 4 603 604 605 -600
		f 4 -606 606 607 -602
		f 4 608 609 610 -605
		f 4 -611 611 612 -607
		f 4 613 614 615 -610
		f 4 -616 616 617 -612
		f 4 618 619 620 -615
		f 4 -621 621 622 -617
		f 4 623 624 625 -620
		f 4 -626 626 627 -622
		f 4 628 629 630 -625
		f 4 -631 631 632 -627
		f 4 633 634 635 -630
		f 4 -636 636 637 -632
		f 4 638 639 640 -635
		f 4 -641 641 642 -637
		f 4 643 644 645 -640
		f 4 -646 646 647 -642
		f 4 648 649 650 -645
		f 4 -651 651 652 -647
		f 4 653 654 655 -650
		f 4 -656 656 657 -652
		f 4 658 659 660 661
		f 4 -661 662 663 664
		f 4 665 666 667 -660
		f 4 -668 668 669 -663
		f 4 670 671 672 -667
		f 4 -673 673 674 -669
		f 4 675 676 677 -672
		f 4 -678 678 679 -674
		f 4 680 681 682 -677
		f 4 -683 683 684 -679
		f 4 685 686 687 -682
		f 4 -688 688 689 -684
		f 4 690 691 692 -687
		f 4 -693 693 694 -689
		f 4 695 696 697 -692
		f 4 -698 698 699 -694
		f 4 700 701 702 -697
		f 4 -703 703 704 -699
		f 4 705 706 707 -702
		f 4 -708 708 709 -704
		f 4 710 711 712 -707
		f 4 -713 713 714 -709
		f 4 715 716 717 -712
		f 4 -718 718 719 -714
		f 4 720 721 722 -717
		f 4 -723 723 724 -719
		f 4 725 726 727 -722
		f 4 -728 728 729 -724
		f 4 730 731 732 -727
		f 4 -733 733 734 -729
		f 4 735 736 737 -732
		f 4 -738 738 739 -734
		f 4 740 741 742 -737
		f 4 -743 743 744 -739
		f 4 745 746 747 -742
		f 4 -748 748 749 -744
		f 4 750 751 752 -747
		f 4 -753 753 754 -749
		f 4 755 756 757 -752
		f 4 -758 758 759 -754
		f 4 760 761 762 -757
		f 4 -763 763 764 -759
		f 4 765 766 767 -762
		f 4 -768 768 769 -764
		f 4 770 771 772 -767
		f 4 -773 773 774 -769
		f 4 775 776 777 -772
		f 4 -778 778 779 -774
		f 4 780 -296 781 782
		f 4 -782 -299 783 784
		f 4 -784 -298 785 -1
		f 4 -786 -304 786 -17
		f 4 -787 -309 787 -29
		f 4 -788 -314 788 -41
		f 4 -789 -319 789 -53
		f 4 -790 -324 790 -65
		f 4 -791 -329 791 -77
		f 4 -792 -334 792 -89
		f 4 -793 -339 793 -101
		f 4 -794 -344 794 -113
		f 4 -795 -349 795 -125
		f 4 -796 -354 796 -137
		f 4 -797 -359 797 -149
		f 4 -798 -364 798 -161
		f 4 -799 -369 799 -173
		f 4 -800 -374 800 -185
		f 4 -801 -379 801 -197
		f 4 -802 -384 802 -209
		f 4 -803 -389 803 -221
		f 4 -804 -394 804 -233
		f 4 -805 -399 805 -245
		f 4 -806 -404 806 -257
		f 4 -807 -409 807 -269
		f 4 -808 -414 808 -281
		f 4 -809 -413 809 810
		f 4 -810 -411 811 812
		f 4 -812 -410 813 -292
		f 4 -814 -405 814 -280
		f 4 -815 -400 815 -268
		f 4 -816 -395 816 -256
		f 4 -817 -390 817 -244
		f 4 -818 -385 818 -232
		f 4 -819 -380 819 -220
		f 4 -820 -375 820 -208
		f 4 -821 -370 821 -196
		f 4 -822 -365 822 -184
		f 4 -823 -360 823 -172
		f 4 -824 -355 824 -160
		f 4 -825 -350 825 -148
		f 4 -826 -345 826 -136
		f 4 -827 -340 827 -124
		f 4 -828 -335 828 -112
		f 4 -829 -330 829 -100
		f 4 -830 -325 830 -88
		f 4 -831 -320 831 -76
		f 4 -832 -315 832 -64
		f 4 -833 -310 833 -52
		f 4 -834 -305 834 -40
		f 4 -835 -300 835 -28
		f 4 -836 -293 -781 -15
		f 4 836 -418 837 838
		f 4 -838 -421 839 840
		f 4 -840 -420 841 -5
		f 4 -842 -426 842 -20
		f 4 -843 -431 843 -32
		f 4 -844 -436 844 -44
		f 4 -845 -441 845 -56
		f 4 -846 -446 846 -68
		f 4 -847 -451 847 -80
		f 4 -848 -456 848 -92
		f 4 -849 -461 849 -104
		f 4 -850 -466 850 -116
		f 4 -851 -471 851 -128
		f 4 -852 -476 852 -140
		f 4 -853 -481 853 -152
		f 4 -854 -486 854 -164
		f 4 -855 -491 855 -176
		f 4 -856 -496 856 -188
		f 4 -857 -501 857 -200
		f 4 -858 -506 858 -212
		f 4 -859 -511 859 -224
		f 4 -860 -516 860 -236
		f 4 -861 -521 861 -248
		f 4 -862 -526 862 -260
		f 4 -863 -531 863 -272
		f 4 -864 -536 864 -284
		f 4 -865 -535 865 866
		f 4 -866 -533 867 868
		f 4 -868 -532 869 -283
		f 4 -870 -527 870 -271
		f 4 -871 -522 871 -259
		f 4 -872 -517 872 -247
		f 4 -873 -512 873 -235
		f 4 -874 -507 874 -223
		f 4 -875 -502 875 -211
		f 4 -876 -497 876 -199
		f 4 -877 -492 877 -187
		f 4 -878 -487 878 -175
		f 4 -879 -482 879 -163
		f 4 -880 -477 880 -151
		f 4 -881 -472 881 -139
		f 4 -882 -467 882 -127
		f 4 -883 -462 883 -115
		f 4 -884 -457 884 -103
		f 4 -885 -452 885 -91
		f 4 -886 -447 886 -79
		f 4 -887 -442 887 -67
		f 4 -888 -437 888 -55
		f 4 -889 -432 889 -43
		f 4 -890 -427 890 -31
		f 4 -891 -422 891 -19
		f 4 -892 -415 -837 -3
		f 4 892 -540 893 894
		f 4 -894 -543 895 896
		f 4 -896 -542 897 -9
		f 4 -898 -548 898 -23
		f 4 -899 -553 899 -35
		f 4 -900 -558 900 -47
		f 4 -901 -563 901 -59
		f 4 -902 -568 902 -71
		f 4 -903 -573 903 -83
		f 4 -904 -578 904 -95
		f 4 -905 -583 905 -107
		f 4 -906 -588 906 -119
		f 4 -907 -593 907 -131
		f 4 -908 -598 908 -143
		f 4 -909 -603 909 -155
		f 4 -910 -608 910 -167
		f 4 -911 -613 911 -179
		f 4 -912 -618 912 -191
		f 4 -913 -623 913 -203
		f 4 -914 -628 914 -215
		f 4 -915 -633 915 -227
		f 4 -916 -638 916 -239
		f 4 -917 -643 917 -251
		f 4 -918 -648 918 -263
		f 4 -919 -653 919 -275
		f 4 -920 -658 920 -287
		f 4 -921 -657 921 922
		f 4 -922 -655 923 924
		f 4 -924 -654 925 -286
		f 4 -926 -649 926 -274
		f 4 -927 -644 927 -262
		f 4 -928 -639 928 -250
		f 4 -929 -634 929 -238
		f 4 -930 -629 930 -226
		f 4 -931 -624 931 -214
		f 4 -932 -619 932 -202
		f 4 -933 -614 933 -190
		f 4 -934 -609 934 -178
		f 4 -935 -604 935 -166
		f 4 -936 -599 936 -154
		f 4 -937 -594 937 -142
		f 4 -938 -589 938 -130
		f 4 -939 -584 939 -118
		f 4 -940 -579 940 -106
		f 4 -941 -574 941 -94
		f 4 -942 -569 942 -82
		f 4 -943 -564 943 -70
		f 4 -944 -559 944 -58
		f 4 -945 -554 945 -46
		f 4 -946 -549 946 -34
		f 4 -947 -544 947 -22
		f 4 -948 -537 -893 -7
		f 4 948 -662 949 950
		f 4 -950 -665 951 952
		f 4 -952 -664 953 -13
		f 4 -954 -670 954 -26
		f 4 -955 -675 955 -38
		f 4 -956 -680 956 -50
		f 4 -957 -685 957 -62
		f 4 -958 -690 958 -74
		f 4 -959 -695 959 -86
		f 4 -960 -700 960 -98
		f 4 -961 -705 961 -110
		f 4 -962 -710 962 -122
		f 4 -963 -715 963 -134
		f 4 -964 -720 964 -146
		f 4 -965 -725 965 -158
		f 4 -966 -730 966 -170
		f 4 -967 -735 967 -182
		f 4 -968 -740 968 -194
		f 4 -969 -745 969 -206
		f 4 -970 -750 970 -218
		f 4 -971 -755 971 -230
		f 4 -972 -760 972 -242
		f 4 -973 -765 973 -254
		f 4 -974 -770 974 -266
		f 4 -975 -775 975 -278
		f 4 -976 -780 976 -290
		f 4 -977 -779 977 978
		f 4 -978 -777 979 980
		f 4 -980 -776 981 -289
		f 4 -982 -771 982 -277
		f 4 -983 -766 983 -265
		f 4 -984 -761 984 -253
		f 4 -985 -756 985 -241
		f 4 -986 -751 986 -229
		f 4 -987 -746 987 -217
		f 4 -988 -741 988 -205
		f 4 -989 -736 989 -193
		f 4 -990 -731 990 -181
		f 4 -991 -726 991 -169
		f 4 -992 -721 992 -157
		f 4 -993 -716 993 -145
		f 4 -994 -711 994 -133
		f 4 -995 -706 995 -121
		f 4 -996 -701 996 -109
		f 4 -997 -696 997 -97
		f 4 -998 -691 998 -85
		f 4 -999 -686 999 -73
		f 4 -1000 -681 1000 -61
		f 4 -1001 -676 1001 -49
		f 4 -1002 -671 1002 -37
		f 4 -1003 -666 1003 -25
		f 4 -1004 -659 -949 -11
		f 4 1004 1005 1006 -813
		f 4 -1007 1007 1008 -811
		f 4 -1009 1009 1010 -282
		f 4 -1011 1011 1012 -869;
	setAttr ".fc[500:580]"
		f 4 -1013 1013 1014 -867
		f 4 -1015 1015 1016 -285
		f 4 -1017 1017 1018 -925
		f 4 -1019 1019 1020 -923
		f 4 -1021 1021 1022 -288
		f 4 -1023 1023 1024 -981
		f 4 -1025 1025 1026 -979
		f 4 -1027 1027 -1005 -291
		f 4 1028 1029 1030 -1006
		f 4 -1031 1031 1032 -1008
		f 4 -1033 1033 1034 -1010
		f 4 -1035 1035 1036 -1012
		f 4 -1037 1037 1038 -1014
		f 4 -1039 1039 1040 -1016
		f 4 -1041 1041 1042 -1018
		f 4 -1043 1043 1044 -1020
		f 4 -1045 1045 1046 -1022
		f 4 -1047 1047 1048 -1024
		f 4 -1049 1049 1050 -1026
		f 4 -1051 1051 -1029 -1028
		f 12 1052 1053 1054 1055 1056 1057 1058 1059 1060 1061 1062 1063
		f 4 1064 1065 1066 -1030
		f 4 -1067 1067 1068 -1032
		f 4 -1069 1069 1070 -1034
		f 4 -1071 1071 1072 -1036
		f 4 -1073 1073 1074 -1038
		f 4 -1075 1075 1076 -1040
		f 4 -1077 1077 1078 -1042
		f 4 -1079 1079 1080 -1044
		f 4 -1081 1081 1082 -1046
		f 4 -1083 1083 1084 -1048
		f 4 -1085 1085 1086 -1050
		f 4 -1087 1087 -1065 -1052
		f 4 1088 1089 1090 -1066
		f 4 -1091 1091 1092 -1068
		f 4 -1093 1093 1094 -1070
		f 4 -1095 1095 1096 -1072
		f 4 -1097 1097 1098 -1074
		f 4 -1099 1099 1100 -1076
		f 4 -1101 1101 1102 -1078
		f 4 -1103 1103 1104 -1080
		f 4 -1105 1105 1106 -1082
		f 4 -1107 1107 1108 -1084
		f 4 -1109 1109 1110 -1086
		f 4 -1111 1111 -1089 -1088
		f 4 1112 1113 1114 -1090
		f 4 -1115 1115 1116 -1092
		f 4 -1117 1117 1118 -1094
		f 4 -1119 1119 1120 -1096
		f 4 -1121 1121 1122 -1098
		f 4 -1123 1123 1124 -1100
		f 4 -1125 1125 1126 -1102
		f 4 -1127 1127 1128 -1104
		f 4 -1129 1129 1130 -1106
		f 4 -1131 1131 1132 -1108
		f 4 -1133 1133 1134 -1110
		f 4 -1135 1135 -1113 -1112
		f 4 1136 1137 1138 -1114
		f 4 -1139 1139 1140 -1116
		f 4 -1141 1141 1142 -1118
		f 4 -1143 1143 1144 -1120
		f 4 -1145 1145 1146 -1122
		f 4 -1147 1147 1148 -1124
		f 4 -1149 1149 1150 -1126
		f 4 -1151 1151 1152 -1128
		f 4 -1153 1153 1154 -1130
		f 4 -1155 1155 1156 -1132
		f 4 -1157 1157 1158 -1134
		f 4 -1159 1159 -1137 -1136
		f 4 1160 -1064 1161 -1138
		f 4 -1162 -1063 1162 -1140
		f 4 -1163 -1062 1163 -1142
		f 4 -1164 -1061 1164 -1144
		f 4 -1165 -1060 1165 -1146
		f 4 -1166 -1059 1166 -1148
		f 4 -1167 -1058 1167 -1150
		f 4 -1168 -1057 1168 -1152
		f 4 -1169 -1056 1169 -1154
		f 4 -1170 -1055 1170 -1156
		f 4 -1171 -1054 1171 -1158
		f 4 -1172 -1053 -1161 -1160;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "Candle_Green";
	rename -uid "C0BBFBA9-4559-32AF-23FC-039031F60491";
	setAttr ".s" -type "double3" 0.25 0.25 0.25 ;
createNode mesh -n "Candle_GreenShape" -p "Candle_Green";
	rename -uid "FA94065E-4FFB-1874-1F2B-EA848D604B0F";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.47712184488773346 0.93325945734977722 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 692 ".uvst[0].uvsp";
	setAttr ".uvst[0].uvsp[0:249]" -type "float2" 0.61625391 0.99817598 0.61504811
		 0.99817598 0.61416543 0.99817598 0.61384237 0.99817598 0.61416543 0.99817598 0.61504811
		 0.99817598 0.61625391 0.99817598 0.61745965 0.99817598 0.61834234 0.99817598 0.6186654
		 0.99817598 0.61834234 0.99817598 0.61745965 0.99817598 0.61625391 0.84557402 0.61766887
		 0.87414932 0.61886615 0.87359428 0.61745965 0.84557402 0.61974746 0.87350577 0.61834234
		 0.84557402 0.62007672 0.87390709 0.6186654 0.84557402 0.61976564 0.87469095 0.61834234
		 0.84557402 0.61889756 0.87564749 0.61745965 0.84557402 0.61770517 0.87652004 0.61625391
		 0.84557402 0.61650789 0.87707472 0.61504811 0.84557402 0.61562651 0.87716323 0.61416543
		 0.84557402 0.61529732 0.87676215 0.61384237 0.84557402 0.61560839 0.87597805 0.61416543
		 0.84557402 0.61647648 0.87502193 0.61504811 0.84557402 0.61812115 0.90602851 0.61932677
		 0.90595812 0.62020946 0.90594673 0.62053263 0.90599763 0.62020975 0.90609753 0.61932731
		 0.90621889 0.61812174 0.90633011 0.61691612 0.90640056 0.61603343 0.90641159 0.61571026
		 0.90636063 0.6160332 0.90626115 0.61691564 0.90613937 0.61792177 0.93764925 0.61912584
		 0.93789756 0.62000829 0.93793714 0.6203326 0.93775749 0.62001187 0.93740714 0.6191321
		 0.93697929 0.61792898 0.93658912 0.61672491 0.93634081 0.61584252 0.93630135 0.61551821
		 0.93648088 0.61583889 0.93683147 0.61671865 0.9372592 0.61726695 0.96891904 0.61846602
		 0.96941352 0.61934763 0.96949232 0.61967558 0.96913493 0.619362 0.96843648 0.61849093
		 0.96758413 0.61729574 0.96680701 0.61609668 0.96631217 0.61521506 0.96623337 0.61488712
		 0.96659112 0.6152007 0.96728957 0.61607182 0.96814156 0.4768075 0.87540853 0.47717747
		 0.87978607 0.47478056 0.8795985 0.47455633 0.87540764 0.47759509 0.88465762 0.47511446
		 0.88446718 0.47799769 0.88952702 0.47547787 0.88933808 0.47837898 0.89439642 0.47586396
		 0.89420891 0.47873285 0.89926583 0.47626567 0.8990798 0.47905368 0.90413523 0.4766756
		 0.90395069 0.47933665 0.90900463 0.47708663 0.90882152 0.47957757 0.91387397 0.47749138
		 0.91369241 0.47977301 0.91874337 0.47788295 0.91856331 0.47992048 0.92361277 0.47825471
		 0.92343414 0.48001829 0.92848217 0.47860044 0.92830503 0.48006567 0.93335164 0.47891453
		 0.93317592 0.48006269 0.93822098 0.47919199 0.93804681 0.48001036 0.94309032 0.47942862
		 0.9429177 0.47991028 0.94795978 0.47962078 0.94778848 0.47976521 0.95282912 0.4797661
		 0.95265937 0.47957835 0.95769858 0.47986272 0.95753026 0.47935358 0.96256793 0.47990975
		 0.96240115 0.47909555 0.96743727 0.47990736 0.96727204 0.47880921 0.97230673 0.47985634
		 0.97214293 0.47849992 0.97717601 0.47975859 0.97701377 0.47817343 0.98204535 0.47961649
		 0.98188466 0.47783589 0.98691255 0.47943422 0.9867577 0.47754675 0.99112219 0.47926739
		 0.99112278 0.47383291 0.87540853 0.47386748 0.87978607 0.4748596 0.8795985 0.47513878
		 0.87540764 0.47392866 0.88465762 0.47459227 0.88446718 0.47404203 0.88952702 0.47437277
		 0.88933808 0.47420543 0.89439642 0.47420448 0.89420891 0.47441536 0.89926583 0.47408953
		 0.8990798 0.47466731 0.90413523 0.47402912 0.90395069 0.47495645 0.90900463 0.4740234
		 0.90882152 0.47527713 0.91387397 0.47407162 0.91369241 0.47562349 0.91874337 0.47417203
		 0.91856331 0.47598913 0.92361277 0.47432205 0.92343414 0.47636747 0.92848217 0.47451821
		 0.92830503 0.47675195 0.93335164 0.47475624 0.93317592 0.47713587 0.93822098 0.47503144
		 0.93804681 0.47751278 0.94309032 0.47533816 0.9429177 0.47787631 0.94795978 0.47567058
		 0.94778848 0.47822061 0.95282912 0.47602236 0.95265937 0.47854018 0.95769858 0.47638702
		 0.95753026 0.47883007 0.96256793 0.47675791 0.96240115 0.47908586 0.96743727 0.47712842
		 0.96727204 0.47930387 0.97230673 0.47749197 0.97214293 0.47948119 0.97717601 0.47784233
		 0.97701377 0.47961542 0.98204535 0.47817355 0.98188466 0.47970554 0.98691255 0.47848076
		 0.9867577 0.47971389 0.99112219 0.47873205 0.99112278 0.47743618 0.87540853 0.47706619
		 0.87978607 0.47946313 0.8795985 0.47968742 0.87540764 0.4766486 0.88465762 0.4791292
		 0.88446718 0.476246 0.88952702 0.47876582 0.88933808 0.47586468 0.89439642 0.4783797
		 0.89420891 0.47551084 0.89926583 0.47797802 0.8990798 0.47518998 0.90413523 0.47756803
		 0.90395069 0.47490698 0.90900463 0.47715709 0.90882152 0.47466612 0.91387397 0.47675231
		 0.91369241 0.47447067 0.91874337 0.47636071 0.91856331 0.47432321 0.92361277 0.47598898
		 0.92343414 0.4742254 0.92848217 0.47564322 0.92830503 0.47417802 0.93335164 0.47532916
		 0.93317592 0.474181 0.93822098 0.47505164 0.93804681 0.47423339 0.94309032 0.47481513
		 0.9429177 0.47433341 0.94795978 0.47462285 0.94778848 0.47447848 0.95282912 0.47447759
		 0.95265937 0.47466534 0.95769858 0.47438097 0.95753026 0.47489011 0.96256793 0.47433391
		 0.96240115 0.47514814 0.96743727 0.47433633 0.96727204 0.47543448 0.97230673 0.47438732
		 0.97214293 0.47574374 0.97717601 0.47448516 0.97701377 0.47607026 0.98204535 0.4746272
		 0.98188466 0.4764078 0.98691255 0.47480947 0.9867577 0.47669694 0.99112219 0.47497624
		 0.99112278 0.48041078 0.87540853 0.48037621 0.87978607 0.47938403 0.8795985 0.47910491
		 0.87540764 0.48031506 0.88465762 0.47965142 0.88446718 0.48020169 0.88952702 0.47987089
		 0.88933808 0.48003826 0.89439642 0.48003921 0.89420891 0.47982833 0.89926583 0.48015413
		 0.8990798 0.47957638 0.90413523 0.48021457 0.90395069 0.47928721 0.90900463 0.48022029
		 0.90882152 0.4789665 0.91387397 0.48017207 0.91369241 0.47862017 0.91874337 0.48007163
		 0.91856331 0.47825456 0.92361277 0.47992167 0.92343414 0.47787619 0.92848217 0.47972551
		 0.92830503 0.47749174 0.93335164 0.47948739 0.93317592 0.47710779 0.93822098 0.47921225
		 0.93804681;
	setAttr ".uvst[0].uvsp[250:499]" 0.47673091 0.94309032 0.4789055 0.9429177
		 0.47636735 0.94795978 0.47857311 0.94778848 0.47602308 0.95282912 0.47822133 0.95265937
		 0.47570348 0.95769858 0.47785664 0.95753026 0.47541362 0.96256793 0.47748572 0.96240115
		 0.4751578 0.96743727 0.4771153 0.96727204 0.47493982 0.97230673 0.47675171 0.97214293
		 0.4747625 0.97717601 0.47640133 0.97701377 0.47462827 0.98204535 0.47607014 0.98188466
		 0.47453815 0.98691255 0.4757629 0.9867577 0.47452983 0.99112219 0.47551161 0.99112278
		 0.47448474 0.87481785 0.47712186 0.87481785 0.47472686 0.87968802 0.47500581 0.88455814
		 0.47531611 0.88942826 0.47565186 0.89429837 0.47600681 0.89916855 0.47637451 0.90403867
		 0.47674838 0.90890878 0.47712186 0.9137789 0.4774884 0.91864902 0.47784197 0.92351913
		 0.47817653 0.92838931 0.47848675 0.93325949 0.47876766 0.93812966 0.47901496 0.94299972
		 0.47922504 0.9478699 0.479395 0.95274007 0.47952256 0.95761013 0.47960642 0.96248019
		 0.47964606 0.96735036 0.47964153 0.97222054 0.47959396 0.97709054 0.47950491 0.98196071
		 0.47937688 0.98683077 0.47921291 0.99170107 0.47712186 0.99170107 0.47744042 0.98683077
		 0.47776037 0.98196071 0.47807601 0.97709054 0.47838166 0.97222054 0.4786717 0.96735036
		 0.47894067 0.96248019 0.47918335 0.95761013 0.479395 0.95274007 0.47957107 0.9478699
		 0.47970793 0.94299972 0.47980234 0.93812966 0.47985169 0.93325949 0.47985438 0.92838931
		 0.47980943 0.92351913 0.47971675 0.91864902 0.47957698 0.9137789 0.47939178 0.90890878
		 0.47916359 0.90403867 0.4788956 0.89916855 0.47859183 0.89429837 0.47825697 0.88942826
		 0.47789636 0.88455814 0.47751588 0.87968802 0.47559929 0.87481785 0.47407675 0.87481785
		 0.4752841 0.87968802 0.47500581 0.88455814 0.47476852 0.88942826 0.4745757 0.89429837
		 0.47442994 0.89916855 0.47433275 0.90403867 0.47428513 0.90890878 0.47428691 0.9137789
		 0.47433722 0.91864902 0.47443429 0.92351913 0.47457552 0.92838931 0.47475773 0.93325949
		 0.47497696 0.93812966 0.47522873 0.94299972 0.47550803 0.9478699 0.47580945 0.95274007
		 0.47612748 0.95761013 0.47645611 0.96248019 0.4767895 0.96735036 0.47712186 0.97222054
		 0.47744727 0.97709054 0.47776037 0.98196071 0.47805589 0.98683077 0.47832912 0.99170107
		 0.47953644 0.99170107 0.47954187 0.98683077 0.47950491 0.98196071 0.47942546 0.97709054
		 0.47930393 0.97222054 0.47914165 0.96735036 0.47894067 0.96248019 0.47870368 0.95761013
		 0.47843421 0.95274007 0.47813633 0.9478699 0.47781476 0.94299972 0.47747475 0.93812966
		 0.47712186 0.93325949 0.47676209 0.92838931 0.47640172 0.92351913 0.47604704 0.91864902
		 0.47570437 0.9137789 0.47538006 0.90890878 0.47508007 0.90403867 0.47481024 0.89916855
		 0.4745757 0.89429837 0.47438136 0.88942826 0.47423124 0.88455814 0.47412884 0.87968802
		 0.47975895 0.87481785 0.47712186 0.87481785 0.47951683 0.87968802 0.47923788 0.88455814
		 0.47892758 0.88942826 0.47859183 0.89429837 0.47823688 0.89916855 0.47786915 0.90403867
		 0.47749531 0.90890878 0.47712186 0.9137789 0.47675523 0.91864902 0.47640169 0.92351913
		 0.47606716 0.92838931 0.47575691 0.93325949 0.47547603 0.93812966 0.47522873 0.94299972
		 0.47501862 0.9478699 0.47484869 0.95274007 0.47472113 0.95761013 0.47463727 0.96248019
		 0.47459763 0.96735036 0.47460216 0.97222054 0.47464973 0.97709054 0.47473878 0.98196071
		 0.47486675 0.98683077 0.47503078 0.99170107 0.47712186 0.99170107 0.47680327 0.98683077
		 0.47648329 0.98196071 0.47616768 0.97709054 0.475862 0.97222054 0.47557199 0.96735036
		 0.47530299 0.96248019 0.47506034 0.95761013 0.47484869 0.95274007 0.47467262 0.9478699
		 0.47453576 0.94299972 0.47444144 0.93812966 0.474392 0.93325949 0.47438931 0.92838931
		 0.47443429 0.92351913 0.47452697 0.91864902 0.47466671 0.9137789 0.47485191 0.90890878
		 0.47508007 0.90403867 0.47534806 0.89916855 0.47565186 0.89429837 0.47598672 0.88942826
		 0.4763473 0.88455814 0.47672781 0.87968802 0.47864437 0.87481785 0.48016694 0.87481785
		 0.47895956 0.87968802 0.47923788 0.88455814 0.47947517 0.88942826 0.47966799 0.89429837
		 0.47981378 0.89916855 0.47991094 0.90403867 0.47995856 0.90890878 0.47995678 0.9137789
		 0.47990647 0.91864902 0.47980943 0.92351913 0.47966817 0.92838931 0.47948596 0.93325949
		 0.4792667 0.93812966 0.47901496 0.94299972 0.47873566 0.9478699 0.47843421 0.95274007
		 0.47811621 0.95761013 0.47778755 0.96248019 0.47745413 0.96735036 0.47712186 0.97222054
		 0.47679642 0.97709054 0.47648329 0.98196071 0.4761878 0.98683077 0.47591457 0.99170107
		 0.47470725 0.99170107 0.47470182 0.98683077 0.47473878 0.98196071 0.47481823 0.97709054
		 0.4749397 0.97222054 0.47510201 0.96735036 0.47530299 0.96248019 0.47553998 0.95761013
		 0.47580945 0.95274007 0.47610736 0.9478699 0.4764289 0.94299972 0.47676894 0.93812966
		 0.47712186 0.93325949 0.4774816 0.92838931 0.47784197 0.92351913 0.47819665 0.91864902
		 0.47853929 0.9137789 0.47886363 0.90890878 0.47916359 0.90403867 0.47943351 0.89916855
		 0.47966799 0.89429837 0.4798623 0.88942826 0.48001245 0.88455814 0.48011485 0.87968802
		 0.73178864 0.88381749 0.73210728 0.88831449 0.73132032 0.88831449 0.73125148 0.88381749
		 0.73325539 0.88381749 0.73284054 0.88831449 0.73474038 0.88831449 0.73525894 0.88381749
		 0.73872912 0.88381749 0.73841059 0.88831449 0.73919749 0.88831449 0.73926604 0.88381749
		 0.73726255 0.88381749 0.73767728 0.88831449 0.73577738 0.88831449 0.73525894 0.88381749
		 0.73247433 0.89281154 0.73145509 0.89281154 0.73247433 0.89281154 0.7342397 0.89281154
		 0.73804343 0.89281154 0.73906267 0.89281154 0.73804343 0.89281154 0.73627824 0.89281154
		 0.73288268 0.89730853 0.73165262 0.89730853 0.73216212 0.89730853 0.73376513 0.89730853;
	setAttr ".uvst[0].uvsp[500:691]" 0.7376352 0.89730853 0.73886514 0.89730853
		 0.73835564 0.89730853 0.73675281 0.89730853 0.73332453 0.90180558 0.73190838 0.90180558
		 0.73190838 0.90180558 0.73332453 0.90180558 0.73719335 0.90180558 0.73860943 0.90180558
		 0.73860943 0.90180558 0.73719335 0.90180558 0.73379159 0.90630257 0.73221695 0.90630257
		 0.73171651 0.90630257 0.73292476 0.90630257 0.73672622 0.90630257 0.73830092 0.90630257
		 0.73880124 0.90630257 0.73759311 0.90630257 0.73427546 0.91079956 0.73257214 0.91079956
		 0.73158866 0.91079956 0.73257214 0.91079956 0.73624247 0.91079956 0.73794568 0.91079956
		 0.73892915 0.91079956 0.73794568 0.91079956 0.73476744 0.91529661 0.73296684 0.91529661
		 0.73152602 0.91529661 0.73227179 0.91529661 0.73575032 0.91529661 0.73755091 0.91529661
		 0.73899186 0.91529661 0.73824596 0.91529661 0.73525894 0.91979361 0.73339355 0.91979361
		 0.73152834 0.91979361 0.73202813 0.91979361 0.73525894 0.91979361 0.73712426 0.91979361
		 0.73898947 0.91979361 0.73848963 0.91979361 0.73574126 0.92429066 0.73384452 0.92429066
		 0.73159456 0.92429066 0.73184425 0.92429066 0.7347765 0.92429066 0.73667341 0.92429066
		 0.73892331 0.92429066 0.73867357 0.92429066 0.73620653 0.92878771 0.73431122 0.92878771
		 0.73172224 0.92878771 0.73172224 0.92878771 0.73431122 0.92878771 0.73620653 0.92878771
		 0.73879552 0.92878771 0.73879552 0.92878771 0.73664695 0.9332847 0.73478544 0.9332847
		 0.73190808 0.9332847 0.73166311 0.9332847 0.73387098 0.9332847 0.73573232 0.9332847
		 0.73860967 0.9332847 0.73885477 0.9332847 0.73705506 0.93778175 0.73525894 0.93778175
		 0.73214787 0.93778175 0.73166662 0.93778175 0.73346281 0.93778175 0.73525894 0.93778175
		 0.73836994 0.93778175 0.73885119 0.93778175 0.73742473 0.9422788 0.73572326 0.9422788
		 0.73243636 0.9422788 0.73173165 0.9422788 0.73309308 0.9422788 0.7347945 0.9422788
		 0.73808146 0.9422788 0.73878622 0.9422788 0.73775005 0.94677585 0.73617083 0.94677585
		 0.73276764 0.94677585 0.73185581 0.94677585 0.73276764 0.94677585 0.73434711 0.94677585
		 0.73775005 0.94677585 0.738662 0.94677585 0.7380265 0.95127279 0.73659402 0.95127279
		 0.73313522 0.95127279 0.73203588 0.95127279 0.73249125 0.95127279 0.73392391 0.95127279
		 0.73738265 0.95127279 0.738482 0.95127279 0.73825026 0.95576984 0.73698592 0.95576984
		 0.73353195 0.95576984 0.73226768 0.95576984 0.73226768 0.95576984 0.73353195 0.95576984
		 0.73698592 0.95576984 0.73825026 0.95576984 0.73841798 0.96026689 0.73734057 0.96026689
		 0.73395038 0.96026689 0.73254609 0.96026689 0.73209977 0.96026689 0.7331773 0.96026689
		 0.73656756 0.96026689 0.73797166 0.96026689 0.73852849 0.96476376 0.73765242 0.96476376
		 0.73438287 0.96476376 0.73286545 0.96476376 0.73198938 0.96476376 0.73286545 0.96476376
		 0.73613495 0.96476376 0.73765242 0.96476376 0.73858047 0.96926093 0.73791683 0.96926093
		 0.73482168 0.96926093 0.73321939 0.96926093 0.73193729 0.96926093 0.73260093 0.96926093
		 0.7356962 0.96926093 0.73729849 0.96926093 0.73857462 0.97375786 0.73813045 0.97375786
		 0.73525894 0.97375786 0.73360097 0.97375786 0.73194319 0.97375786 0.73238742 0.97375786
		 0.73525894 0.97375786 0.7369169 0.97375786 0.73851204 0.97825485 0.73829031 0.97825485
		 0.73568714 0.97825485 0.73400331 0.97825485 0.73200583 0.97825485 0.7322275 0.97825485
		 0.73483062 0.97825485 0.73651463 0.97825485 0.73839486 0.98275185 0.73839486 0.98275185
		 0.73609912 0.98275185 0.73441863 0.98275185 0.73212296 0.98275185 0.73212296 0.98275185
		 0.73441863 0.98275185 0.73609912 0.98275185 0.73822641 0.9872489 0.73844349 0.9872489
		 0.73648816 0.9872489 0.73483956 0.9872489 0.7322914 0.9872489 0.73207438 0.9872489
		 0.73402977 0.9872489 0.73567808 0.9872489 0.73801064 0.99174595 0.73843634 0.99174595
		 0.7368477 0.99174595 0.73525894 0.99174595 0.73250717 0.99174595 0.73208147 0.99174595
		 0.73367023 0.99174595 0.73525894 0.99174595 0.73525894 0.99239349 0.7371484 0.99239349
		 0.73744071 0.99239349 0.73634988 0.99239349 0.73525894 0.99239349 0.73336947 0.99239349
		 0.73307711 0.99239349 0.73416805 0.99239349 0.73525894 0.99271721 0.73549938 0.99271721
		 0.73567533 0.99271721 0.73573983 0.99271721 0.73567533 0.99271721 0.73549938 0.99271721
		 0.73525894 0.99271721 0.73501849 0.99271721 0.73484242 0.99271721 0.73477793 0.99271721
		 0.73484242 0.99271721 0.73501849 0.99271721;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 472 ".pt";
	setAttr ".pt[0]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[1]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[2]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[3]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[4]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[5]" -type "float3" -2.9802322e-08 0 -1.4901161e-08 ;
	setAttr ".pt[6]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[7]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[8]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[9]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[10]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[11]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[12]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[13]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[14]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[15]" -type "float3" -2.9802322e-08 0 1.4901161e-08 ;
	setAttr ".pt[16]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[17]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[18]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[19]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[20]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[21]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[22]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[23]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[24]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[25]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[26]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[27]" -type "float3" -2.9802322e-08 0 -1.4901161e-08 ;
	setAttr ".pt[28]" -type "float3" -8.9406967e-08 0 0 ;
	setAttr ".pt[29]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[30]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[31]" -type "float3" -2.9802322e-08 0 -1.4901161e-08 ;
	setAttr ".pt[32]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[33]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[34]" -type "float3" -2.9802322e-08 0 1.4901161e-08 ;
	setAttr ".pt[35]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[36]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[37]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[38]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[39]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[40]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[41]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[42]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[43]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[44]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[45]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[46]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[47]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[48]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[49]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[50]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[51]" -type "float3" -2.9802322e-08 0 -1.4901161e-08 ;
	setAttr ".pt[52]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[53]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[54]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[55]" -type "float3" -2.9802322e-08 0 -1.4901161e-08 ;
	setAttr ".pt[56]" -type "float3" -8.9406967e-08 0 0 ;
	setAttr ".pt[57]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[58]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[59]" -type "float3" -2.9802322e-08 0 1.4901161e-08 ;
	setAttr ".pt[60]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[61]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[62]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[63]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[64]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[65]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[66]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[67]" -type "float3" -2.9802322e-08 0 1.4901161e-08 ;
	setAttr ".pt[68]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[69]" -type "float3" -8.9406967e-08 0 0 ;
	setAttr ".pt[70]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[71]" -type "float3" -2.9802322e-08 0 -1.4901161e-08 ;
	setAttr ".pt[72]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[73]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[74]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[75]" -type "float3" -2.9802322e-08 0 -1.4901161e-08 ;
	setAttr ".pt[76]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[77]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[78]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[79]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[80]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[81]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[82]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[83]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[84]" -type "float3" -8.9406967e-08 0 0 ;
	setAttr ".pt[85]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[86]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[87]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[88]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[89]" -type "float3" -8.9406967e-08 0 0 ;
	setAttr ".pt[90]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[91]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[92]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[93]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[94]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[95]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[96]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[97]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[98]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[99]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[100]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[101]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[102]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[103]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[104]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[105]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[106]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[107]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[108]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[109]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[110]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[111]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[112]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[113]" -type "float3" -8.9406967e-08 0 0 ;
	setAttr ".pt[114]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[115]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[116]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[117]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[118]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[119]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[120]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[121]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[122]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[123]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[124]" -type "float3" -8.9406967e-08 0 0 ;
	setAttr ".pt[125]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[126]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[127]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[128]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[129]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[130]" -type "float3" -2.9802322e-08 0 -1.4901161e-08 ;
	setAttr ".pt[131]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[132]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[133]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[134]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[135]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[136]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[137]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[138]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[139]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[140]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[141]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[142]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[143]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[144]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[145]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[146]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[147]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[148]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[149]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[150]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[151]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[152]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[153]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[154]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[155]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[156]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[157]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[158]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[159]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[160]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[161]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[162]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[163]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[164]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[165]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[166]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[167]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[168]" -type "float3" -8.9406967e-08 0 0 ;
	setAttr ".pt[169]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[170]" -type "float3" -2.9802322e-08 0 -1.4901161e-08 ;
	setAttr ".pt[171]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[172]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[173]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[174]" -type "float3" -2.9802322e-08 0 -1.4901161e-08 ;
	setAttr ".pt[175]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[176]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[177]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[178]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[179]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[180]" -type "float3" -8.9406967e-08 0 0 ;
	setAttr ".pt[181]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[182]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[183]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[184]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[185]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[186]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[187]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[188]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[189]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[190]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[191]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[192]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[193]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[194]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[195]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[196]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[197]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[198]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[199]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[200]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[201]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[202]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[203]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[204]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[205]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[206]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[207]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[208]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[209]" -type "float3" -8.9406967e-08 0 0 ;
	setAttr ".pt[210]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[211]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[212]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[213]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[214]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[215]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[216]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[217]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[218]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[219]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[220]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[221]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[222]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[223]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[224]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[225]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[226]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[227]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[228]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[229]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[230]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[231]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[232]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[233]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[234]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[235]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[236]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[237]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[238]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[239]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[240]" -type "float3" -8.9406967e-08 0 0 ;
	setAttr ".pt[241]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[242]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[243]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[244]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[245]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[246]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[247]" -type "float3" -8.9406967e-08 0 0 ;
	setAttr ".pt[248]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[249]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[250]" -type "float3" -2.9802322e-08 0 1.4901161e-08 ;
	setAttr ".pt[251]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[252]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[253]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[254]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[255]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[256]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[257]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[258]" -type "float3" -2.9802322e-08 0 1.4901161e-08 ;
	setAttr ".pt[259]" -type "float3" -2.9802322e-08 0 1.4901161e-08 ;
	setAttr ".pt[260]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[261]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[262]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[263]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[264]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[265]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[266]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[267]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[268]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[269]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[270]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[271]" -type "float3" -2.9802322e-08 0 -1.4901161e-08 ;
	setAttr ".pt[272]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[273]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[274]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[275]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[276]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[277]" -type "float3" -2.9802322e-08 0 -1.4901161e-08 ;
	setAttr ".pt[278]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[279]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[280]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[281]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[282]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[283]" -type "float3" -2.9802322e-08 0 -1.4901161e-08 ;
	setAttr ".pt[284]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[285]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[286]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[287]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[288]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[289]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[290]" -type "float3" -2.9802322e-08 0 -1.4901161e-08 ;
	setAttr ".pt[291]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[292]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[293]" -type "float3" -2.9802322e-08 0 -1.4901161e-08 ;
	setAttr ".pt[294]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[295]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[296]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[297]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[298]" -type "float3" -2.9802322e-08 0 1.4901161e-08 ;
	setAttr ".pt[299]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[300]" -type "float3" -8.9406967e-08 0 0 ;
	setAttr ".pt[301]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[302]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[303]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[304]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[305]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[306]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[307]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[308]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[309]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[310]" -type "float3" -8.9406967e-08 0 0 ;
	setAttr ".pt[311]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[312]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[313]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[314]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[315]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[316]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[317]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[318]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[319]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[320]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[321]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[322]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[323]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[324]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[325]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[326]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[327]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[328]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[329]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[330]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[331]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[332]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[333]" -type "float3" -8.9406967e-08 0 0 ;
	setAttr ".pt[334]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[335]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[336]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[337]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[338]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[339]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[340]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[341]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[342]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[343]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[344]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[345]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[346]" -type "float3" -8.9406967e-08 0 0 ;
	setAttr ".pt[347]" -type "float3" -8.9406967e-08 0 0 ;
	setAttr ".pt[348]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[349]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[350]" -type "float3" -2.9802322e-08 0 -1.4901161e-08 ;
	setAttr ".pt[351]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[352]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[353]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[354]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[355]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[356]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[357]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[358]" -type "float3" -2.9802322e-08 0 1.4901161e-08 ;
	setAttr ".pt[359]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[360]" -type "float3" -2.9802322e-08 0 -1.4901161e-08 ;
	setAttr ".pt[361]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[362]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[363]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[364]" -type "float3" -2.9802322e-08 0 -1.4901161e-08 ;
	setAttr ".pt[365]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[366]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[367]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[368]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[369]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[370]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[371]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[372]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[373]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[374]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[375]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[376]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[377]" -type "float3" -2.9802322e-08 0 -1.4901161e-08 ;
	setAttr ".pt[378]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[379]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[380]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[381]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[382]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[383]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[384]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[385]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[386]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[387]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[388]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[389]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[390]" -type "float3" -2.9802322e-08 0 -1.4901161e-08 ;
	setAttr ".pt[391]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[392]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[393]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[394]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[395]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[396]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[397]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[398]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[399]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[408]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[409]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[410]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[411]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[412]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[413]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[414]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[415]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[416]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[417]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[418]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[419]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[420]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[421]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[422]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[423]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[424]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[425]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[426]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[427]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[428]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[429]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[430]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[431]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[432]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[433]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[434]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[435]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[436]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[437]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[438]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[439]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[440]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[441]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[442]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[443]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[444]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[445]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[446]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[447]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[448]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[449]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[450]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[451]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[452]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[453]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[454]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[455]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[456]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[457]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[458]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[459]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[460]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[461]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[462]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[463]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[464]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[465]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[466]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[467]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[468]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[469]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[470]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[471]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[472]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[473]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[474]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[475]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[476]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[477]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[478]" -type "float3" -8.9406967e-08 0 0 ;
	setAttr ".pt[479]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr -s 480 ".vt";
	setAttr ".vt[0:165]"  0.099999972 0 0 0.086602509 0 -0.050000001 -3.4173461e-08 0 -0.1
		 -0.050000038 0 -0.086602539 -0.10000003 0 8.742278e-09 -0.086602561 0 0.050000004
		 -2.8609835e-08 0 0.1 0.049999963 0 0.086602546 -0.07929451 2.000000238419 6.8842323e-09
		 -0.039647266 2.000000238419 -0.06867104 -3.6341643e-08 2.000000238419 -0.079294473
		 0.068670996 2.000000238419 -0.039647263 0.079294451 2.000000238419 -1.3593036e-08
		 0.039647222 2.000000238419 0.068671033 -1.489056e-08 2.000000238419 0.07929448 -0.068671063 2.000000238419 0.039647259
		 0.098289125 0.083333313 -0.012940052 0.060350943 0.083333313 0.078650869 0.012940023 0.083333313 0.098289154
		 -0.078650884 0.083333313 0.060350996 -0.098289184 0.083333313 0.012940059 -0.060351014 0.083333313 -0.078650862
		 -0.012940085 0.083333313 -0.098289154 0.078650832 0.083333313 -0.060350981 0.09492591 0.16666669 -0.025435328
		 0.069490574 0.16666669 0.069490612 0.025435301 0.16666669 0.09492594 -0.069490626 0.16666669 0.069490604
		 -0.094926022 0.16666669 0.025435338 -0.069490641 0.16666669 -0.069490604 -0.025435364 0.16666669 -0.09492594
		 0.069490574 0.16666669 -0.069490619 0.089996748 0.25000006 -0.037277889 0.077281952 0.25000006 0.059300553
		 0.037277859 0.25000006 0.089996792 -0.059300564 0.25000006 0.077282004 -0.0899968 0.25000006 0.037277896
		 -0.077282026 0.25000006 -0.059300549 -0.037277922 0.25000006 -0.08999677 0.059300523 0.25000006 -0.077281989
		 0.083613947 0.33333331 -0.048274528 0.083613917 0.33333331 0.048274569 0.048274502 0.33333331 0.083613977
		 -0.048274577 0.33333331 0.083613962 -0.083613999 0.33333331 0.048274536 -0.083613984 0.33333331 -0.048274554
		 -0.048274562 0.33333331 -0.083613969 0.048274528 0.33333331 -0.083613947 0.075913064 0.41666669 -0.058250148
		 0.088402621 0.41666669 0.036617603 0.058250118 0.41666669 0.075913094 -0.036617607 0.41666669 0.088402651
		 -0.075913116 0.41666669 0.058250155 -0.088402689 0.41666669 -0.036617581 -0.058250181 0.41666669 -0.075913087
		 0.036617558 0.41666669 -0.088402666 0.067050345 0.50000006 -0.067050435 0.091592565 0.50000006 0.02454217
		 0.067050405 0.50000006 0.067050435 -0.024542173 0.50000006 0.091592617 -0.067050457 0.50000006 0.067050442
		 -0.091592625 0.50000006 -0.024542155 -0.067050472 0.50000006 -0.067050427 0.024542131 0.50000006 -0.091592595
		 0.05719975 0.58333343 -0.074544184 0.093157008 0.58333343 0.012264374 0.074544154 0.58333343 0.05719978
		 -0.012264376 0.58333343 0.09315706 -0.057199799 0.58333343 0.074544191 -0.093157135 0.58333343 -0.012264363
		 -0.074544214 0.58333343 -0.057199772 0.01226434 0.58333343 -0.09315706 0.046549052 0.66666681 -0.080625378
		 0.093098134 0.66666681 9.0548697e-09 0.08062534 0.66666681 0.046549078 -9.8301882e-09 0.66666681 0.093098156
		 -0.046549097 0.66666681 0.080625378 -0.093098193 0.66666681 8.7251975e-09 -0.080625407 0.66666681 -0.046549078
		 -3.057394e-08 0.66666681 -0.093098164 0.035296947 0.75000006 -0.085214429 0.091446325 0.75000006 -0.012039126
		 0.085214399 0.75000006 0.035296977 0.012039126 0.75000006 0.091446355 -0.035297059 0.75000006 0.085214436
		 -0.091446377 0.75000006 0.012039149 -0.085214458 0.75000006 -0.035296969 -0.012039164 0.75000006 -0.09144634
		 0.023648933 0.83333343 -0.088259272 0.088259168 0.83333343 -0.023649028 0.088259242 0.83333343 0.023648962
		 0.023649022 0.83333343 0.08825925 -0.023648983 0.83333343 0.08825928 -0.08825928 0.83333343 0.023649041
		 -0.088259302 0.83333343 -0.023648955 -0.023649061 0.83333343 -0.08825925 0.01181388 0.91666681 -0.089735657
		 0.083620287 0.91666681 -0.034636673 0.08973562 0.91666681 0.011813906 0.034636673 0.91666681 0.08362031
		 -0.011813926 0.91666681 0.089735657 -0.08362034 0.91666681 0.034636691 -0.089735687 0.91666681 -0.011813903
		 -0.03463671 0.91666681 -0.08362031 -2.9192979e-08 1 -0.089647256 0.077636771 1 -0.044823613
		 0.089647219 1 -2.3005464e-10 0.044823617 1 0.077636793 -1.7891159e-08 1 0.089647248
		 -0.077636823 1 0.044823632 -0.089647286 1 5.6742344e-09 -0.04482365 1 -0.077636793
		 -0.011588717 1.083333492 -0.088024944 0.070437409 1.083333492 -0.054048561 0.088024914 1.083333492 -0.011588687
		 0.054048557 1.083333492 0.070437476 0.011588671 1.083333492 0.088024944 -0.070437513 1.083333492 0.054048579
		 -0.088024974 1.083333492 0.011588695 -0.054048598 1.083333492 -0.070437491 -0.022755856 1.16666675 -0.08492592
		 0.06217007 1.16666675 -0.062170085 0.08492589 1.16666675 -0.022755828 0.062170073 1.16666675 0.062170085
		 0.02275575 1.16666675 0.08492592 -0.062170122 1.16666675 0.062170096 -0.08492595 1.16666675 0.022755837
		 -0.062170114 1.16666675 -0.062170092 -0.033316098 1.25000024 -0.080432072 0.05299817 1.25000024 -0.069068596
		 0.080432042 1.25000024 -0.033316083 0.069068588 1.25000024 0.052998178 0.033316046 1.25000024 0.080432065
		 -0.052998211 1.25000024 0.069068611 -0.080432102 1.25000024 0.033316076 -0.069068626 1.25000024 -0.052998189
		 -0.043098181 1.33333349 -0.074648209 0.043098144 1.33333349 -0.074648201 0.074648172 1.33333349 -0.043098152
		 0.074648187 1.33333349 0.043098155 0.043098133 1.33333349 0.074648201 -0.043098193 1.33333349 0.074648209
		 -0.074648231 1.33333349 0.043098163 -0.074648224 1.33333349 -0.04309817 -0.051947843 1.41666675 -0.067699693
		 0.032655735 1.41666675 -0.078837968 0.067699663 1.41666675 -0.05194781 0.078837954 1.41666675 0.032655735
		 0.051947791 1.41666675 0.067699686 -0.032655776 1.41666675 0.078837983 -0.067699723 1.41666675 0.051947821
		 -0.078837998 1.41666675 -0.032655749 -0.059729949 1.5 -0.059729923 0.02186265 1.5 -0.08159259
		 0.059729889 1.5 -0.059729915 0.081592575 1.5 0.021862652 0.059729896 1.5 0.059729911
		 -0.021862691 1.5 0.081592597 -0.059729949 1.5 0.059729926 -0.081592612 1.5 -0.021862669
		 -0.066330805 1.58333349 -0.050897427 0.010913057 1.58333349 -0.082892857 0.050897393 1.58333349 -0.066330776
		 0.082892835 1.58333349 0.010913058 0.066330753 1.58333349 0.050897416 -0.010913098 1.58333349 0.082892857;
	setAttr ".vt[166:331]" -0.050897453 1.58333349 0.066330783 -0.08289288 1.58333349 -0.010913077
		 -0.071659707 1.66666675 -0.041372713 -9.5910142e-09 1.66666675 -0.082745403 0.041372679 1.66666675 -0.071659632
		 0.082745381 1.66666675 -6.8406973e-09 0.071659595 1.66666675 0.041372702 -3.0813116e-08 1.66666675 0.082745411
		 -0.041372735 1.66666675 0.071659617 -0.082745433 1.66666675 -9.6235517e-09 -0.075649776 1.75000024 -0.031335134
		 -0.010687867 1.75000024 -0.081182167 0.031335104 1.75000024 -0.075649738 0.081182145 1.75000024 -0.010687867
		 0.075649656 1.75000024 0.031335127 0.010687826 1.75000024 0.081182167 -0.03133516 1.75000024 0.075649753
		 -0.081182197 1.75000024 0.010687848 -0.078259274 1.83333349 -0.020969508 -0.020969514 1.83333349 -0.078259259
		 0.020969477 1.83333349 -0.078259237 0.078259222 1.83333349 -0.020969514 0.078259215 1.83333349 0.020969499
		 0.020969473 1.83333349 0.078259252 -0.020969532 1.83333349 0.078259245 -0.078259282 1.83333349 0.020969495
		 -0.079471491 1.91666675 -0.010462605 -0.030674869 1.91666675 -0.07405562 0.010462575 1.91666675 -0.079471454
		 0.074055582 1.91666675 -0.030674869 0.079471432 1.91666675 0.010462595 0.030674828 1.91666675 0.074055612
		 -0.010462627 1.91666675 0.079471469 -0.074055642 1.91666675 0.030674849 0.10800727 0.010106623 0.010323178
		 0.10687178 0.085011542 -0.0018275175 0.065123588 0.010091186 0.084251985 0.074290335 0.081802189 0.07688728
		 0.10486279 0.16836959 -0.015540833 0.08306881 0.16511071 0.065921545 0.1011399 0.25169033 -0.02876295
		 0.09027832 0.24845666 0.053987511 0.095773235 0.33501107 -0.041284796 0.095805414 0.33180267 0.041308437
		 0.088880986 0.41833168 -0.052905243 0.099580169 0.41514856 0.028117619 0.080605596 0.5016523 -0.063441895
		 0.1015643 0.49849457 0.014653903 0.071110785 0.58497304 -0.072733909 0.10175176 0.58184057 0.0011572214
		 0.060578391 0.66829377 -0.080644555 0.10016834 0.66518646 -0.012135705 0.04920499 0.75161439 -0.087063
		 0.096870556 0.74853247 -0.024995416 0.037198119 0.83493501 -0.091905929 0.09194427 0.83187848 -0.037203807
		 0.024772748 0.91825563 -0.095118359 0.085502744 0.91522449 -0.048557565 0.012147106 1.0015761852 -0.096674316
		 0.077684157 0.9985705 -0.058871932 -0.00046089385 1.084896803 -0.096576549 0.068648756 1.081916571 -0.067983419
		 -0.012837541 1.16821766 -0.094856232 0.058575734 1.1652627 -0.075752504 -0.02477685 1.25153828 -0.091571651
		 0.047659662 1.24860859 -0.082065627 -0.036084022 1.33485866 -0.086806946 0.036106825 1.33195472 -0.086836897
		 -0.046578757 1.41817927 -0.080670051 0.024131328 1.41530061 -0.090009242 -0.056097839 1.50149989 -0.07329046
		 0.011951184 1.49864674 -0.091554768 -0.06449791 1.58482051 -0.064816602 -0.0002156347 1.58199286 -0.091474995
		 -0.071657531 1.66814113 -0.055412836 -0.012155204 1.66533899 -0.089800194 -0.077478565 1.75146174 -0.045256414
		 -0.023661219 1.74868512 -0.086588509 -0.081887983 1.83478212 -0.03453416 -0.034538619 1.83203101 -0.081924297
		 -0.084847488 1.91806507 -0.023449242 -0.044627123 1.91541529 -0.075936258 -0.085121617 1.99009657 -0.013954277
		 -0.052879278 1.99010658 -0.070459291 -0.010323209 0.010106623 0.10800732 0.0018274868 0.085011542 0.10687181
		 -0.084252 0.010091186 0.065123647 -0.076887287 0.081802189 0.074290395 0.015540803 0.16836959 0.10486282
		 -0.065921552 0.16511071 0.083068848 0.028762916 0.25169033 0.10113993 -0.053987525 0.24845666 0.090278372
		 0.041284766 0.33501107 0.095773287 -0.04130844 0.33180267 0.095805533 0.052905209 0.41833168 0.088881016
		 -0.028117619 0.41514856 0.099580206 0.063441865 0.5016523 0.080605626 -0.014653903 0.49849457 0.10156433
		 0.072733879 0.58497304 0.071110815 -0.0011572223 0.58184057 0.1017518 0.080644518 0.66829377 0.060578417
		 0.012135707 0.66518646 0.10016838 0.08706297 0.75161439 0.04920502 0.024995416 0.74853247 0.096870586
		 0.091905899 0.83493501 0.037198152 0.037203804 0.83187848 0.09194427 0.095118321 0.91825563 0.024772778
		 0.048557565 0.91522449 0.085502766 0.096674271 1.0015761852 0.012147137 0.05887194 0.9985705 0.077684171
		 0.096576519 1.084896803 -0.00046086125 0.067983411 1.081916571 0.068648748 0.094856195 1.16821766 -0.012837511
		 0.075752489 1.1652627 0.058575749 0.091571622 1.25153828 -0.02477682 0.08206562 1.24860859 0.047659665
		 0.086806916 1.33485866 -0.036083993 0.086836882 1.33195472 0.036106817 0.080670014 1.41817927 -0.046578724
		 0.09000922 1.41530061 0.024131324 0.07329043 1.50149989 -0.056097802 0.091554746 1.49864674 0.011951182
		 0.064816572 1.58482051 -0.064497873 0.091474973 1.58199286 -0.0002156375 0.055412803 1.66814113 -0.071657456
		 0.089800172 1.66533899 -0.012155204 0.045256384 1.75146174 -0.077478528 0.086588487 1.74868512 -0.023661233
		 0.034534127 1.83478212 -0.081887946 0.08192426 1.83203101 -0.034538623 0.023449212 1.91806507 -0.08484745
		 0.075936213 1.91541529 -0.044627059 0.01395425 1.99009657 -0.085121565 0.070459247 1.99010658 -0.052879274
		 -0.10800739 0.010106623 -0.010323172 -0.10687184 0.085011542 0.0018275222 -0.065123662 0.010091186 -0.084251978
		 -0.07429041 0.081802189 -0.076887272 -0.10486285 0.16836959 0.015540838 -0.08306887 0.16511071 -0.06592153
		 -0.10113995 0.25169033 0.028762951 -0.090278395 0.24845666 -0.053987511 -0.095773287 0.33501107 0.0412848
		 -0.095805533 0.33180267 -0.041308422 -0.088881098 0.41833168 0.05290525 -0.099580236 0.41514856 -0.028117597
		 -0.080605648 0.5016523 0.063441902 -0.10156436 0.49849457 -0.014653889 -0.071110837 0.58497304 0.072733916
		 -0.10175183 0.58184057 -0.0011572102 -0.060578436 0.66829377 0.080644555 -0.1001684 0.66518646 0.012135724
		 -0.049205046 0.75161439 0.087063 -0.096870609 0.74853247 0.024995439 -0.037198175 0.83493501 0.091905929
		 -0.091944322 0.83187848 0.037203822 -0.024772793 0.91825563 0.095118359 -0.085502796 0.91522449 0.04855758
		 -0.012147154 1.0015761852 0.096674301 -0.077684209 0.9985705 0.058871951 0.00046084635 1.084896803 0.096576549
		 -0.0686488 1.081916571 0.067983441 0.012837495 1.16821766 0.094856232 -0.058575794 1.1652627 0.075752512
		 0.024776798 1.25153828 0.091571644 -0.047659703 1.24860859 0.082065634;
	setAttr ".vt[332:479]" 0.036083974 1.33485866 0.086806946 -0.036106937 1.33195472 0.086836904
		 0.046578705 1.41817927 0.080670036 -0.024131369 1.41530061 0.090009257 0.056097787 1.50149989 0.073290445
		 -0.011951227 1.49864674 0.091554776 0.064497858 1.58482051 0.064816594 0.00021559279 1.58199286 0.091474988
		 0.071657419 1.66814113 0.055412825 0.012155163 1.66533899 0.089800209 0.077478506 1.75146174 0.045256406
		 0.023661178 1.74868512 0.086588509 0.081887923 1.83478212 0.034534149 0.034538582 1.83203101 0.081924297
		 0.084847368 1.91806507 0.023449231 0.044626959 1.91541529 0.07593625 0.085121557 1.99009657 0.013954271
		 0.052879233 1.99010658 0.070459284 0.010323145 0.010106564 -0.10800732 -0.0018275483 0.085011542 -0.10687181
		 0.084251948 0.010091186 -0.065123633 0.076887242 0.081802189 -0.07429038 -0.015540866 0.16836959 -0.10486282
		 0.0659215 0.16511071 -0.08306884 -0.028762981 0.25169033 -0.10113992 0.053987481 0.24845666 -0.090278357
		 -0.041284829 0.33501107 -0.095773242 0.041308396 0.33180267 -0.095805496 -0.052905276 0.41833168 -0.088881023
		 0.028117575 0.41514856 -0.099580199 -0.063441932 0.5016523 -0.080605619 0.014653864 0.49849457 -0.10156433
		 -0.072733939 0.58497304 -0.071110822 0.0011571888 0.58184057 -0.1017518 -0.080644585 0.66829377 -0.060578417
		 -0.012135744 0.66518646 -0.10016837 -0.087063029 0.75161439 -0.049205013 -0.024995454 0.74853247 -0.096870571
		 -0.091905959 0.83493501 -0.037198145 -0.037203841 0.83187848 -0.091944292 -0.095118389 0.91825563 -0.024772774
		 -0.048557602 0.91522449 -0.085502766 -0.096674331 1.0015761852 -0.012147132 -0.05887197 0.9985705 -0.077684179
		 -0.096576579 1.084896803 0.00046086963 -0.067983456 1.081916571 -0.068648793 -0.094856255 1.16821766 0.012837521
		 -0.075752534 1.1652627 -0.058575764 -0.091571674 1.25153828 0.024776828 -0.082065649 1.24860859 -0.04765968
		 -0.086806968 1.33485866 0.036084 -0.086836919 1.33195472 -0.036106855 -0.080670074 1.41817927 0.046578735
		 -0.090009272 1.41530061 -0.024131345 -0.07329049 1.50149989 0.056097813 -0.091554791 1.49864674 -0.011951206
		 -0.064816631 1.58482051 0.064497881 -0.091475017 1.58199286 0.00021561421 -0.055412855 1.66814113 0.071657442
		 -0.089800231 1.66533899 0.012155184 -0.04525644 1.75146174 0.077478543 -0.086588539 1.74868512 0.0236612
		 -0.034534182 1.83478212 0.081887953 -0.081924319 1.83203101 0.034538604 -0.023449264 1.91806507 0.084847465
		 -0.07593628 1.91541529 0.044627041 -0.0139543 1.99009657 0.085121587 -0.070459314 1.99010658 0.052879255
		 -0.054447852 2.012000322 3.8177972e-09 -0.027223922 2.012000322 -0.047153231 -8.4558414e-09 2.012000322 -0.054447845
		 0.04715322 2.012000322 -0.027223943 0.054447852 2.012000322 -1.0143297e-08 0.027223935 2.012000322 0.047153223
		 1.1845327e-08 2.012000322 0.054447852 -0.047153223 2.012000322 0.027223928 -0.012001559 2.018000364 -7.6588513e-10
		 -0.010393664 2.018000364 -0.0060007535 -0.0060007907 2.018000364 -0.010393634 -4.2841844e-08 2.018000364 -0.012001526
		 0.0060007442 2.018000364 -0.01039362 0.010393601 2.018000364 -0.0060007703 0.012001492 2.018000364 -8.1788629e-09
		 0.010393593 2.018000364 0.006000774 0.0060007405 2.018000364 0.010393631 -2.1231052e-08 2.018000364 0.012001529
		 -0.0060007907 2.018000364 0.010393631 -0.010393661 2.018000364 0.0060007628 -0.012001559 2.1900003 -7.6588513e-10
		 -0.010393664 2.1900003 -0.0060007535 -0.0060007907 2.1900003 -0.010393634 -4.2841844e-08 2.1900003 -0.012001526
		 0.0060007442 2.1900003 -0.01039362 0.010393601 2.1900003 -0.0060007703 0.012001492 2.1900003 -8.1788629e-09
		 0.010393593 2.1900003 0.006000774 0.0060007405 2.1900003 0.010393631 -2.1231052e-08 2.1900003 0.012001529
		 -0.0060007907 2.1900003 0.010393631 -0.010393661 2.1900003 0.0060007628 -0.017848885 2.050208092 -0.0070420019
		 -0.016205907 2.049582481 -0.013000503 -0.01180743 2.049482584 -0.017386636 -0.0058320579 2.049935102 -0.019025089
		 0.00011916988 2.050818682 -0.017476868 0.0044515668 2.051896572 -0.013156832 0.0060042944 2.052880049 -0.0072225025
		 0.0043613114 2.053505421 -0.0012639713 -3.7145899e-05 2.053605318 0.0031221369 -0.0060125305 2.053153038 0.0047605969
		 -0.011963742 2.052269459 0.0032123828 -0.01629615 2.051191568 -0.0011076707 -0.019717941 2.086139679 -0.0092929332
		 -0.018109486 2.086060286 -0.015293009 -0.013716522 2.086047411 -0.019685782 -0.0077161794 2.08610487 -0.021294164
		 -0.0017161872 2.086217403 -0.019687213 0.0026757009 2.086354256 -0.015295533 0.0042827064 2.086479425 -0.0092958352
		 0.002674245 2.086558819 -0.0032957294 -0.0017186984 2.086571455 0.0010970198 -0.0077190534 2.086513996 0.0027054076
		 -0.013719029 2.086401701 0.0010984663 -0.018110929 2.08626461 -0.0032932337 -0.018893976 2.12177968 -0.0083006211
		 -0.017279109 2.12205958 -0.014292977 -0.012885121 2.12210417 -0.018684518 -0.0068894159 2.12190175 -0.020298483
		 -0.00089847832 2.12150669 -0.018702438 0.0034823632 2.12102461 -0.01432406 0.0050792904 2.12058496 -0.0083365003
		 0.0034644187 2.12030506 -0.0023441154 -0.00092954858 2.12026048 0.0020474002 -0.0069252672 2.12046289 0.0036613718
		 -0.012916188 2.12085795 0.0020653354 -0.017297041 2.12134004 -0.0023130605 -0.016188078 2.15702438 -0.0050418694
		 -0.014552374 2.15758181 -0.011009133 -0.010155058 2.15767074 -0.015396664 -0.0041744234 2.15726781 -0.017028777
		 0.0017870825 2.15648055 -0.015468175 0.0061320178 2.15551996 -0.011133037 0.0076961853 2.15464377 -0.0051849289
		 0.0060604778 2.15408635 0.00078236411 0.0016631818 2.15399742 0.0051698703 -0.0043174662 2.15440059 0.0068019899
		 -0.010279015 2.15518785 0.0052413964 -0.014623902 2.1561482 0.00090624008;
	setAttr -s 948 ".ed";
	setAttr ".ed[0:165]"  7 17 0 17 18 0 18 6 0 6 7 0 5 19 0 19 20 0 20 4 0 4 5 0
		 3 21 0 21 22 0 22 2 0 2 3 0 1 23 0 23 16 0 16 0 0 0 1 0 17 25 0 25 26 0 26 18 0 19 27 0
		 27 28 0 28 20 0 21 29 0 29 30 0 30 22 0 23 31 0 31 24 0 24 16 0 25 33 0 33 34 0 34 26 0
		 27 35 0 35 36 0 36 28 0 29 37 0 37 38 0 38 30 0 31 39 0 39 32 0 32 24 0 33 41 0 41 42 0
		 42 34 0 35 43 0 43 44 0 44 36 0 37 45 0 45 46 0 46 38 0 39 47 0 47 40 0 40 32 0 41 49 0
		 49 50 0 50 42 0 43 51 0 51 52 0 52 44 0 45 53 0 53 54 0 54 46 0 47 55 0 55 48 0 48 40 0
		 49 57 0 57 58 0 58 50 0 51 59 0 59 60 0 60 52 0 53 61 0 61 62 0 62 54 0 55 63 0 63 56 0
		 56 48 0 57 65 0 65 66 0 66 58 0 59 67 0 67 68 0 68 60 0 61 69 0 69 70 0 70 62 0 63 71 0
		 71 64 0 64 56 0 65 73 0 73 74 0 74 66 0 67 75 0 75 76 0 76 68 0 69 77 0 77 78 0 78 70 0
		 71 79 0 79 72 0 72 64 0 73 81 0 81 82 0 82 74 0 75 83 0 83 84 0 84 76 0 77 85 0 85 86 0
		 86 78 0 79 87 0 87 80 0 80 72 0 81 89 0 89 90 0 90 82 0 83 91 0 91 92 0 92 84 0 85 93 0
		 93 94 0 94 86 0 87 95 0 95 88 0 88 80 0 89 97 0 97 98 0 98 90 0 91 99 0 99 100 0
		 100 92 0 93 101 0 101 102 0 102 94 0 95 103 0 103 96 0 96 88 0 97 105 0 105 106 0
		 106 98 0 99 107 0 107 108 0 108 100 0 101 109 0 109 110 0 110 102 0 103 111 0 111 104 0
		 104 96 0 105 113 0 113 114 0 114 106 0 107 115 0 115 116 0 116 108 0 109 117 0 117 118 0
		 118 110 0 111 119 0 119 112 0 112 104 0 113 121 0 121 122 0 122 114 0 115 123 0 123 124 0
		 124 116 0;
	setAttr ".ed[166:331]" 117 125 0 125 126 0 126 118 0 119 127 0 127 120 0 120 112 0
		 121 129 0 129 130 0 130 122 0 123 131 0 131 132 0 132 124 0 125 133 0 133 134 0 134 126 0
		 127 135 0 135 128 0 128 120 0 129 137 0 137 138 0 138 130 0 131 139 0 139 140 0 140 132 0
		 133 141 0 141 142 0 142 134 0 135 143 0 143 136 0 136 128 0 137 145 0 145 146 0 146 138 0
		 139 147 0 147 148 0 148 140 0 141 149 0 149 150 0 150 142 0 143 151 0 151 144 0 144 136 0
		 145 153 0 153 154 0 154 146 0 147 155 0 155 156 0 156 148 0 149 157 0 157 158 0 158 150 0
		 151 159 0 159 152 0 152 144 0 153 161 0 161 162 0 162 154 0 155 163 0 163 164 0 164 156 0
		 157 165 0 165 166 0 166 158 0 159 167 0 167 160 0 160 152 0 161 169 0 169 170 0 170 162 0
		 163 171 0 171 172 0 172 164 0 165 173 0 173 174 0 174 166 0 167 175 0 175 168 0 168 160 0
		 169 177 0 177 178 0 178 170 0 171 179 0 179 180 0 180 172 0 173 181 0 181 182 0 182 174 0
		 175 183 0 183 176 0 176 168 0 177 185 0 185 186 0 186 178 0 179 187 0 187 188 0 188 180 0
		 181 189 0 189 190 0 190 182 0 183 191 0 191 184 0 184 176 0 185 193 0 193 194 0 194 186 0
		 187 195 0 195 196 0 196 188 0 189 197 0 197 198 0 198 190 0 191 199 0 199 192 0 192 184 0
		 193 9 0 9 10 0 10 194 0 195 11 0 11 12 0 12 196 0 197 13 0 13 14 0 14 198 0 199 15 0
		 15 8 0 8 192 0 200 201 0 201 203 0 203 202 0 202 200 0 201 204 0 204 205 0 205 203 0
		 204 206 0 206 207 0 207 205 0 206 208 0 208 209 0 209 207 0 208 210 0 210 211 0 211 209 0
		 210 212 0 212 213 0 213 211 0 212 214 0 214 215 0 215 213 0 214 216 0 216 217 0 217 215 0
		 216 218 0 218 219 0 219 217 0 218 220 0 220 221 0 221 219 0 220 222 0 222 223 0 223 221 0
		 222 224 0 224 225 0 225 223 0 224 226 0 226 227 0 227 225 0;
	setAttr ".ed[332:497]" 226 228 0 228 229 0 229 227 0 228 230 0 230 231 0 231 229 0
		 230 232 0 232 233 0 233 231 0 232 234 0 234 235 0 235 233 0 234 236 0 236 237 0 237 235 0
		 236 238 0 238 239 0 239 237 0 238 240 0 240 241 0 241 239 0 240 242 0 242 243 0 243 241 0
		 242 244 0 244 245 0 245 243 0 244 246 0 246 247 0 247 245 0 246 248 0 248 249 0 249 247 0
		 250 251 0 251 253 0 253 252 0 252 250 0 251 254 0 254 255 0 255 253 0 254 256 0 256 257 0
		 257 255 0 256 258 0 258 259 0 259 257 0 258 260 0 260 261 0 261 259 0 260 262 0 262 263 0
		 263 261 0 262 264 0 264 265 0 265 263 0 264 266 0 266 267 0 267 265 0 266 268 0 268 269 0
		 269 267 0 268 270 0 270 271 0 271 269 0 270 272 0 272 273 0 273 271 0 272 274 0 274 275 0
		 275 273 0 274 276 0 276 277 0 277 275 0 276 278 0 278 279 0 279 277 0 278 280 0 280 281 0
		 281 279 0 280 282 0 282 283 0 283 281 0 282 284 0 284 285 0 285 283 0 284 286 0 286 287 0
		 287 285 0 286 288 0 288 289 0 289 287 0 288 290 0 290 291 0 291 289 0 290 292 0 292 293 0
		 293 291 0 292 294 0 294 295 0 295 293 0 294 296 0 296 297 0 297 295 0 296 298 0 298 299 0
		 299 297 0 300 301 0 301 303 0 303 302 0 302 300 0 301 304 0 304 305 0 305 303 0 304 306 0
		 306 307 0 307 305 0 306 308 0 308 309 0 309 307 0 308 310 0 310 311 0 311 309 0 310 312 0
		 312 313 0 313 311 0 312 314 0 314 315 0 315 313 0 314 316 0 316 317 0 317 315 0 316 318 0
		 318 319 0 319 317 0 318 320 0 320 321 0 321 319 0 320 322 0 322 323 0 323 321 0 322 324 0
		 324 325 0 325 323 0 324 326 0 326 327 0 327 325 0 326 328 0 328 329 0 329 327 0 328 330 0
		 330 331 0 331 329 0 330 332 0 332 333 0 333 331 0 332 334 0 334 335 0 335 333 0 334 336 0
		 336 337 0 337 335 0 336 338 0 338 339 0 339 337 0 338 340 0 340 341 0;
	setAttr ".ed[498:663]" 341 339 0 340 342 0 342 343 0 343 341 0 342 344 0 344 345 0
		 345 343 0 344 346 0 346 347 0 347 345 0 346 348 0 348 349 0 349 347 0 350 351 0 351 353 0
		 353 352 0 352 350 0 351 354 0 354 355 0 355 353 0 354 356 0 356 357 0 357 355 0 356 358 0
		 358 359 0 359 357 0 358 360 0 360 361 0 361 359 0 360 362 0 362 363 0 363 361 0 362 364 0
		 364 365 0 365 363 0 364 366 0 366 367 0 367 365 0 366 368 0 368 369 0 369 367 0 368 370 0
		 370 371 0 371 369 0 370 372 0 372 373 0 373 371 0 372 374 0 374 375 0 375 373 0 374 376 0
		 376 377 0 377 375 0 376 378 0 378 379 0 379 377 0 378 380 0 380 381 0 381 379 0 380 382 0
		 382 383 0 383 381 0 382 384 0 384 385 0 385 383 0 384 386 0 386 387 0 387 385 0 386 388 0
		 388 389 0 389 387 0 388 390 0 390 391 0 391 389 0 390 392 0 392 393 0 393 391 0 392 394 0
		 394 395 0 395 393 0 394 396 0 396 397 0 397 395 0 396 398 0 398 399 0 399 397 0 0 200 0
		 7 0 0 202 7 0 203 17 0 205 25 0 207 33 0 209 41 0 211 49 0 213 57 0 215 65 0 217 73 0
		 219 81 0 221 89 0 223 97 0 225 105 0 227 113 0 229 121 0 231 129 0 233 137 0 235 145 0
		 237 153 0 239 161 0 241 169 0 243 177 0 245 185 0 247 193 0 249 9 0 248 8 0 8 9 0
		 246 192 0 244 184 0 242 176 0 240 168 0 238 160 0 236 152 0 234 144 0 232 136 0 230 128 0
		 228 120 0 226 112 0 224 104 0 222 96 0 220 88 0 218 80 0 216 72 0 214 64 0 212 56 0
		 210 48 0 208 40 0 206 32 0 204 24 0 201 16 0 6 250 0 5 6 0 252 5 0 253 19 0 255 27 0
		 257 35 0 259 43 0 261 51 0 263 59 0 265 67 0 267 75 0 269 83 0 271 91 0 273 99 0
		 275 107 0 277 115 0 279 123 0 281 131 0 283 139 0 285 147 0 287 155 0 289 163 0 291 171 0
		 293 179 0 295 187 0 297 195 0 299 11 0 298 10 0;
	setAttr ".ed[664:829]" 10 11 0 296 194 0 294 186 0 292 178 0 290 170 0 288 162 0
		 286 154 0 284 146 0 282 138 0 280 130 0 278 122 0 276 114 0 274 106 0 272 98 0 270 90 0
		 268 82 0 266 74 0 264 66 0 262 58 0 260 50 0 258 42 0 256 34 0 254 26 0 251 18 0
		 4 300 0 3 4 0 302 3 0 303 21 0 305 29 0 307 37 0 309 45 0 311 53 0 313 61 0 315 69 0
		 317 77 0 319 85 0 321 93 0 323 101 0 325 109 0 327 117 0 329 125 0 331 133 0 333 141 0
		 335 149 0 337 157 0 339 165 0 341 173 0 343 181 0 345 189 0 347 197 0 349 13 0 348 12 0
		 12 13 0 346 196 0 344 188 0 342 180 0 340 172 0 338 164 0 336 156 0 334 148 0 332 140 0
		 330 132 0 328 124 0 326 116 0 324 108 0 322 100 0 320 92 0 318 84 0 316 76 0 314 68 0
		 312 60 0 310 52 0 308 44 0 306 36 0 304 28 0 301 20 0 2 350 0 1 2 0 352 1 0 353 23 0
		 355 31 0 357 39 0 359 47 0 361 55 0 363 63 0 365 71 0 367 79 0 369 87 0 371 95 0
		 373 103 0 375 111 0 377 119 0 379 127 0 381 135 0 383 143 0 385 151 0 387 159 0 389 167 0
		 391 175 0 393 183 0 395 191 0 397 199 0 399 15 0 398 14 0 14 15 0 396 198 0 394 190 0
		 392 182 0 390 174 0 388 166 0 386 158 0 384 150 0 382 142 0 380 134 0 378 126 0 376 118 0
		 374 110 0 372 102 0 370 94 0 368 86 0 366 78 0 364 70 0 362 62 0 360 54 0 358 46 0
		 356 38 0 354 30 0 351 22 0 8 400 0 400 401 0 401 9 0 401 402 0 402 10 0 402 403 0
		 403 11 0 403 404 0 404 12 0 404 405 0 405 13 0 405 406 0 406 14 0 406 407 0 407 15 0
		 407 400 0 400 408 0 408 409 0 409 410 0 410 401 0 410 411 0 411 402 0 411 412 0 412 413 0
		 413 403 0 413 414 0 414 404 0 414 415 0 415 416 0 416 405 0 416 417 0 417 406 0 417 418 0
		 418 419 0 419 407 0 419 408 0 420 431 0 431 430 0;
	setAttr ".ed[830:947]" 430 429 0 429 428 0 428 427 0 427 426 0 426 425 0 425 424 0
		 424 423 0 423 422 0 422 421 0 421 420 0 408 432 0 432 433 0 433 409 0 433 434 0 434 410 0
		 434 435 0 435 411 0 435 436 0 436 412 0 436 437 0 437 413 0 437 438 0 438 414 0 438 439 0
		 439 415 0 439 440 0 440 416 0 440 441 0 441 417 0 441 442 0 442 418 0 442 443 0 443 419 0
		 443 432 0 432 444 0 444 445 0 445 433 0 445 446 0 446 434 0 446 447 0 447 435 0 447 448 0
		 448 436 0 448 449 0 449 437 0 449 450 0 450 438 0 450 451 0 451 439 0 451 452 0 452 440 0
		 452 453 0 453 441 0 453 454 0 454 442 0 454 455 0 455 443 0 455 444 0 444 456 0 456 457 0
		 457 445 0 457 458 0 458 446 0 458 459 0 459 447 0 459 460 0 460 448 0 460 461 0 461 449 0
		 461 462 0 462 450 0 462 463 0 463 451 0 463 464 0 464 452 0 464 465 0 465 453 0 465 466 0
		 466 454 0 466 467 0 467 455 0 467 456 0 456 468 0 468 469 0 469 457 0 469 470 0 470 458 0
		 470 471 0 471 459 0 471 472 0 472 460 0 472 473 0 473 461 0 473 474 0 474 462 0 474 475 0
		 475 463 0 475 476 0 476 464 0 476 477 0 477 465 0 477 478 0 478 466 0 478 479 0 479 467 0
		 479 468 0 468 420 0 421 469 0 422 470 0 423 471 0 424 472 0 425 473 0 426 474 0 427 475 0
		 428 476 0 429 477 0 430 478 0 431 479 0;
	setAttr -s 1888 ".n";
	setAttr ".n[0:165]" -type "float3"  0.30991256 -0.12240923 0.94285208 0.26002637
		 0.068869255 0.9631424 0.4973087 -0.049958751 0.86613399 0.24210875 -0.27518523 0.93040663
		 -0.94285208 -0.12240928 0.30991262 -0.96314228 0.068869218 0.2600266 -0.86613399
		 -0.049958717 0.49730876 -0.93040663 -0.27518523 0.24210876 -0.30991262 -0.12240926
		 -0.9428522 -0.2600264 0.068869255 -0.9631424 -0.49730879 -0.049958754 -0.86613399
		 -0.24210882 -0.27518526 -0.93040657 0.94285208 -0.12240928 -0.30991253 0.96314245
		 0.068869278 -0.2600264 0.86613399 -0.049958754 -0.49730879 0.93040657 -0.27518523
		 -0.24210879 0.26002637 0.068869255 0.9631424 0.38370168 0.068333134 0.92092532 0.60570979
		 -0.049371108 0.79415244 0.4973087 -0.049958751 0.86613399 -0.96314228 0.068869218
		 0.2600266 -0.9209252 0.068333104 0.38370198 -0.79415244 -0.049371071 0.60570979 -0.86613399
		 -0.049958717 0.49730876 -0.2600264 0.068869255 -0.9631424 -0.38370201 0.068333052
		 -0.9209252 -0.60570985 -0.04937109 -0.79415244 -0.49730879 -0.049958754 -0.86613399
		 0.96314245 0.068869278 -0.2600264 0.92092538 0.06833306 -0.38370204 0.79415238 -0.04937112
		 -0.60570985 0.86613399 -0.049958754 -0.49730879 0.38370168 0.068333134 0.92092532
		 0.50063765 0.067816153 0.86299646 0.7042073 -0.048853368 0.70831174 0.60570979 -0.049371108
		 0.79415244 -0.9209252 0.068333104 0.38370198 -0.86299652 0.067816205 0.50063741 -0.70831174
		 -0.048853345 0.70420712 -0.79415244 -0.049371071 0.60570979 -0.38370201 0.068333052
		 -0.9209252 -0.50063741 0.06781622 -0.86299658 -0.70420712 -0.048853308 -0.70831174
		 -0.60570985 -0.04937109 -0.79415244 0.92092538 0.06833306 -0.38370204 0.86299658
		 0.067816183 -0.50063759 0.70831168 -0.048853368 -0.70420724 0.79415238 -0.04937112
		 -0.60570985 0.50063765 0.067816153 0.86299646 0.60901582 0.067299105 0.79029775 0.79065889
		 -0.048335522 0.61034596 0.7042073 -0.048853368 0.70831174 -0.86299652 0.067816205
		 0.50063741 -0.79029757 0.067299142 0.609016 -0.61034608 -0.048335511 0.79065889 -0.70831174
		 -0.048853345 0.70420712 -0.50063741 0.06781622 -0.86299658 -0.609016 0.067299195
		 -0.79029757 -0.79065889 -0.048335511 -0.61034596 -0.70420712 -0.048853308 -0.70831174
		 0.86299658 0.067816183 -0.50063759 0.79029757 0.067299172 -0.609016 0.61034596 -0.048335522
		 -0.79065889 0.70831168 -0.048853368 -0.70420724 0.60901582 0.067299105 0.79029775
		 0.7069822 0.066782057 0.70407134 0.86358458 -0.047817618 0.50193137 0.79065889 -0.048335522
		 0.61034596 -0.79029757 0.067299142 0.609016 -0.7040711 0.066782065 0.70698243 -0.50193125
		 -0.047817666 0.86358476 -0.61034608 -0.048335511 0.79065889 -0.609016 0.067299195
		 -0.79029757 -0.7069822 0.06678208 -0.70407128 -0.86358476 -0.047817688 -0.50193125
		 -0.79065889 -0.048335511 -0.61034596 0.79029757 0.067299172 -0.609016 0.70407128
		 0.066782042 -0.7069822 0.50193119 -0.04781767 -0.86358476 0.61034596 -0.048335522
		 -0.79065889 0.7069822 0.066782057 0.70407134 0.79285884 0.066264883 0.60579187 0.921736
		 -0.047299609 0.3849225 0.86358458 -0.047817618 0.50193137 -0.7040711 0.066782065
		 0.70698243 -0.60579169 0.06626489 0.79285896 -0.38492247 -0.047299623 0.92173612
		 -0.50193125 -0.047817666 0.86358476 -0.7069822 0.06678208 -0.70407128 -0.79285896
		 0.066264831 -0.60579181 -0.92173612 -0.047299605 -0.38492239 -0.86358476 -0.047817688
		 -0.50193125 0.70407128 0.066782042 -0.7069822 0.60579181 0.066264801 -0.79285896
		 0.3849225 -0.047299616 -0.92173612 0.50193119 -0.04781767 -0.86358476 0.79285884
		 0.066264883 0.60579187 0.86517578 0.065747693 0.49713987 0.96411747 -0.04678138 0.26132154
		 0.921736 -0.047299609 0.3849225 -0.60579169 0.06626489 0.79285896 -0.49713975 0.065747678
		 0.86517584 -0.26132149 -0.046781387 0.96411753 -0.38492247 -0.047299623 0.92173612
		 -0.79285896 0.066264831 -0.60579181 -0.86517578 0.065747701 -0.49713987 -0.96411747
		 -0.046781372 -0.26132163 -0.92173612 -0.047299605 -0.38492239 0.60579181 0.066264801
		 -0.79285896 0.4971399 0.065747701 -0.86517578 0.26132163 -0.046781417 -0.96411747
		 0.3849225 -0.047299616 -0.92173612 0.86517578 0.065747693 0.49713987 0.92269421 0.065230303
		 0.37997416 0.99000293 -0.046263341 0.13324361 0.96411747 -0.04678138 0.26132154 -0.49713975
		 0.065747678 0.86517584 -0.3799741 0.065230347 0.92269433 -0.13324358 -0.046263345
		 0.99000293 -0.26132149 -0.046781387 0.96411753 -0.86517578 0.065747701 -0.49713987
		 -0.92269427 0.065230392 -0.37997395 -0.99000293 -0.046263359 -0.13324347 -0.96411747
		 -0.046781372 -0.26132163 0.4971399 0.065747701 -0.86517578 0.37997404 0.065230422
		 -0.92269427 0.13324349 -0.046263359 -0.99000293 0.26132163 -0.046781417 -0.96411747
		 0.92269421 0.065230303 0.37997416 0.96442908 0.064713039 0.25629824 0.99894893 -0.045745254
		 0.0028797255 0.99000293 -0.046263341 0.13324361 -0.3799741 0.065230347 0.92269433
		 -0.25629809 0.064713098 0.96442908 -0.0028799118 -0.04574522 0.99894893 -0.13324358
		 -0.046263345 0.99000293 -0.92269427 0.065230392 -0.37997395 -0.96442908 0.064713068
		 -0.25629815 -0.99894899 -0.045745213 -0.0028796371 -0.99000293 -0.046263359 -0.13324347
		 0.37997404 0.065230422 -0.92269427 0.25629809 0.064713046 -0.96442914 0.0028795605
		 -0.04574522 -0.99894899 0.13324349 -0.046263359 -0.99000293 0.96442908 0.064713039
		 0.25629824 0.98966485 0.064195581 0.12822798 0.99080175 -0.045226932 -0.1275394 0.99894893
		 -0.045745254 0.0028797255 -0.25629809 0.064713098 0.96442908 -0.12822753 0.064195551
		 0.98966485 0.12753928 -0.045226917 0.99080175 -0.0028799118 -0.04574522 0.99894893
		 -0.96442908 0.064713068 -0.25629815 -0.98966485 0.064195558 -0.12822787 -0.99080175
		 -0.04522698 0.12753947 -0.99894899 -0.045745213 -0.0028796371 0.25629809 0.064713046
		 -0.96442914 0.12822789 0.064195521 -0.98966485 -0.1275395 -0.045226984 -0.99080175
		 0.0028795605 -0.04574522 -0.99894899 0.98966485 0.064195581 0.12822798 0.99796838
		 0.063678049 -0.0020448051 0.96570033 -0.044708405 -0.25578099 0.99080175 -0.045226932
		 -0.1275394 -0.12822753 0.064195551 0.98966485 0.002044939 0.063678034 0.99796838;
	setAttr ".n[166:331]" -type "float3"  0.25578123 -0.044708397 0.96570039 0.12753928
		 -0.045226917 0.99080175 -0.98966485 0.064195558 -0.12822787 -0.99796838 0.063678034
		 0.0020449271 -0.96570039 -0.044708475 0.25578114 -0.99080175 -0.04522698 0.12753947
		 0.12822789 0.064195521 -0.98966485 -0.0020449508 0.063678034 -0.99796838 -0.2557812
		 -0.044708479 -0.96570039 -0.1275395 -0.045226984 -0.99080175 0.99796838 0.063678049
		 -0.0020448051 0.98919648 0.063160561 -0.13229172 0.92407358 -0.044190016 -0.37965158
		 0.96570033 -0.044708405 -0.25578099 0.002044939 0.063678034 0.99796838 0.13229202
		 0.063160628 0.98919636 0.37965158 -0.044189982 0.92407352 0.25578123 -0.044708397
		 0.96570039 -0.99796838 0.063678034 0.0020449271 -0.98919648 0.063160606 0.13229187
		 -0.92407352 -0.044189971 0.37965146 -0.96570039 -0.044708475 0.25578114 -0.0020449508
		 0.063678034 -0.99796838 -0.1322919 0.063160568 -0.98919648 -0.37965193 -0.044190034
		 -0.92407346 -0.2557812 -0.044708479 -0.96570039 0.98919648 0.063160561 -0.13229172
		 0.96349764 0.062642932 -0.26028451 0.86663306 -0.043671615 -0.497031 0.92407358 -0.044190016
		 -0.37965158 0.13229202 0.063160628 0.98919636 0.26028472 0.062642962 0.96349764 0.49703118
		 -0.043671634 0.866633 0.37965158 -0.044189982 0.92407352 -0.98919648 0.063160606
		 0.13229187 -0.96349764 0.062642932 0.26028463 -0.86663306 -0.043671601 0.49703115
		 -0.92407352 -0.044189971 0.37965146 -0.1322919 0.063160568 -0.98919648 -0.2602846
		 0.062642947 -0.9634977 -0.49703109 -0.043671582 -0.86663306 -0.37965193 -0.044190034
		 -0.92407346 0.96349764 0.062642932 -0.26028451 0.92131072 0.062125247 -0.38383207
		 0.79436141 -0.043153297 -0.60591072 0.86663306 -0.043671615 -0.497031 0.26028472
		 0.062642962 0.96349764 0.38383222 0.062125236 0.92131066 0.60591102 -0.043153282
		 0.79436111 0.49703118 -0.043671634 0.866633 -0.96349764 0.062642932 0.26028463 -0.92131072
		 0.062125288 0.38383186 -0.79436141 -0.043153305 0.60591078 -0.86663306 -0.043671601
		 0.49703115 -0.2602846 0.062642947 -0.9634977 -0.38383186 0.062125295 -0.92131084
		 -0.6059109 -0.043153331 -0.79436117 -0.49703109 -0.043671582 -0.86663306 0.92131072
		 0.062125247 -0.38383207 0.86335588 0.061607629 -0.50082028 0.70849431 -0.042634681
		 -0.70442754 0.79436141 -0.043153297 -0.60591072 0.38383222 0.062125236 0.92131066
		 0.5008204 0.06160764 0.86335582 0.70442754 -0.042634681 0.70849431 0.60591102 -0.043153282
		 0.79436111 -0.92131072 0.062125288 0.38383186 -0.86335582 0.061607633 0.50082052
		 -0.70849437 -0.042634677 0.70442748 -0.79436141 -0.043153305 0.60591078 -0.38383186
		 0.062125295 -0.92131084 -0.50082052 0.061607603 -0.86335582 -0.70442754 -0.042634733
		 -0.70849431 -0.6059109 -0.043153331 -0.79436117 0.86335588 0.061607629 -0.50082028
		 0.79062414 0.061089844 -0.60924667 0.61050117 -0.042116158 -0.79089487 0.70849431
		 -0.042634681 -0.70442754 0.5008204 0.06160764 0.86335582 0.60924685 0.061089881 0.79062402
		 0.79089493 -0.042116188 0.61050111 0.70442754 -0.042634681 0.70849431 -0.86335582
		 0.061607633 0.50082052 -0.79062414 0.061089844 0.60924667 -0.61050129 -0.042116158
		 0.79089469 -0.70849437 -0.042634677 0.70442748 -0.50082052 0.061607603 -0.86335582
		 -0.60924667 0.061089858 -0.79062414 -0.79089487 -0.042116184 -0.61050117 -0.70442754
		 -0.042634733 -0.70849431 0.79062414 0.061089844 -0.60924667 0.70435834 0.060572051
		 -0.70725536 0.50205827 -0.041597519 -0.86383277 0.61050117 -0.042116158 -0.79089487
		 0.60924685 0.061089881 0.79062402 0.70725566 0.060572039 0.70435816 0.86383283 -0.041597512
		 0.50205815 0.79089493 -0.042116188 0.61050111 -0.79062414 0.061089844 0.60924667
		 -0.70435828 0.060572069 0.70725542 -0.50205821 -0.041597538 0.86383283 -0.61050129
		 -0.042116158 0.79089469 -0.60924667 0.061089858 -0.79062414 -0.70725548 0.06057208
		 -0.7043584 -0.86383295 -0.041597564 -0.50205809 -0.79089487 -0.042116184 -0.61050117
		 0.70435834 0.060572051 -0.70725536 0.60603452 0.060054149 -0.79316813 0.38502085
		 -0.041078694 -0.92199326 0.50205827 -0.041597519 -0.86383277 0.70725566 0.060572039
		 0.70435816 0.79316837 0.060054146 0.60603422 0.92199326 -0.04107869 0.38502073 0.86383283
		 -0.041597512 0.50205815 -0.70435828 0.060572069 0.70725542 -0.60603446 0.060054209
		 0.79316825 -0.38502073 -0.04107869 0.92199326 -0.50205821 -0.041597538 0.86383283
		 -0.70725548 0.06057208 -0.7043584 -0.79316825 0.060054161 -0.6060344 -0.92199332
		 -0.041078724 -0.38502058 -0.86383295 -0.041597564 -0.50205809 0.60603452 0.060054149
		 -0.79316813 0.49733379 0.059536282 -0.86551404 0.26139137 -0.040560033 -0.96438038
		 0.38502085 -0.041078694 -0.92199326 0.79316837 0.060054146 0.60603422 0.8655141 0.059536301
		 0.49733365 0.96438044 -0.040560052 0.26139101 0.92199326 -0.04107869 0.38502073 -0.60603446
		 0.060054209 0.79316825 -0.49733353 0.059536245 0.86551428 -0.26139119 -0.04056007
		 0.96438044 -0.38502073 -0.04107869 0.92199326 -0.79316825 0.060054161 -0.6060344
		 -0.8655141 0.059536241 -0.49733374 -0.96438044 -0.040560059 -0.26139095 -0.92199332
		 -0.041078724 -0.38502058 0.49733379 0.059536282 -0.86551404 0.38011497 0.05901834
		 -0.92305446 0.13328426 -0.040041436 -0.99026877 0.26139137 -0.040560033 -0.96438038
		 0.8655141 0.059536301 0.49733365 0.92305446 0.059018336 0.38011482 0.99026865 -0.040041436
		 0.13328418 0.96438044 -0.040560052 0.26139101 -0.49733353 0.059536245 0.86551428
		 -0.380115 0.059018347 0.92305446 -0.13328411 -0.040041491 0.99026871 -0.26139119
		 -0.04056007 0.96438044 -0.8655141 0.059536241 -0.49733374 -0.92305434 0.059018325
		 -0.38011512 -0.99026877 -0.04004148 -0.13328423 -0.96438044 -0.040560059 -0.26139095
		 0.38011497 0.05901834 -0.92305446 0.25638422 0.05850032 -0.96480304 0.0028920646
		 -0.039522443 -0.99921447 0.13328426 -0.040041436 -0.99026877 0.92305446 0.059018336
		 0.38011482 0.96480304 0.058500405 0.25638419 0.99921447 -0.039522447 0.0028920264
		 0.99026865 -0.040041436 0.13328418 -0.380115 0.059018347 0.92305446 -0.25638402 0.058500376
		 0.96480304 -0.0028918663 -0.039522428 0.99921453 -0.13328411 -0.040041491 0.99026871;
	setAttr ".n[332:497]" -type "float3"  -0.92305434 0.059018325 -0.38011512 -0.96480304
		 0.05850035 -0.2563841 -0.99921447 -0.039522499 -0.0028919643 -0.99026877 -0.04004148
		 -0.13328423 0.25638422 0.05850032 -0.96480304 0.12825827 0.057982288 -0.99004436
		 -0.12755373 -0.039003532 -0.99106443 0.0028920646 -0.039522443 -0.99921447 0.96480304
		 0.058500405 0.25638419 0.99004447 0.057982359 0.12825808 0.99106443 -0.039003555
		 -0.12755392 0.99921447 -0.039522447 0.0028920264 -0.25638402 0.058500376 0.96480304
		 -0.12825832 0.057982344 0.99004447 0.12755392 -0.039003555 0.99106443 -0.0028918663
		 -0.039522428 0.99921453 -0.96480304 0.05850035 -0.2563841 -0.99004447 0.057982314
		 -0.12825808 -0.99106443 -0.039003547 0.1275539 -0.99921447 -0.039522499 -0.0028919643
		 0.12825827 0.057982288 -0.99004436 -0.0013688861 0.057537008 -0.99834239 -0.25604677
		 -0.038505789 -0.96589708 -0.12755373 -0.039003532 -0.99106443 0.99004447 0.057982359
		 0.12825808 0.99834239 0.057537004 -0.0013692875 0.96589702 -0.038505815 -0.25604698
		 0.99106443 -0.039003555 -0.12755392 -0.12825832 0.057982344 0.99004447 0.0013691203
		 0.057536986 0.99834239 0.25604707 -0.038505834 0.96589702 0.12755392 -0.039003555
		 0.99106443 -0.99004447 0.057982314 -0.12825808 -0.99834239 0.057536989 0.0013690535
		 -0.96589702 -0.038505815 0.25604698 -0.99106443 -0.039003547 0.1275539 -0.0013688861
		 0.057537008 -0.99834239 -0.11959393 0.051189315 -0.99150234 -0.20461604 0.15403694
		 -0.96664619 -0.25604677 -0.038505789 -0.96589708 0.99834239 0.057537004 -0.0013692875
		 0.99150234 0.051189382 -0.1195942 0.96664619 0.15403686 -0.20461626 0.96589702 -0.038505815
		 -0.25604698 0.0013691203 0.057536986 0.99834239 0.1195941 0.051189307 0.99150234
		 0.2046162 0.15403695 0.96664619 0.25604707 -0.038505834 0.96589702 -0.99834239 0.057536989
		 0.0013690535 -0.99150234 0.051189303 0.1195941 -0.96664619 0.15403686 0.20461623
		 -0.96589702 -0.038505815 0.25604698 0.94875562 -0.30890423 -0.066640988 0.96789277
		 -0.021626962 -0.2504313 0.50708008 0.040639095 0.86094028 0.45411026 -0.25333238
		 0.85417008 0.50708008 0.040639095 0.86094028 0.96789277 -0.021626962 -0.2504313 0.92697793
		 -0.027928017 -0.37407479 0.61562818 0.048286129 0.78655607 0.61562818 0.048286129
		 0.78655607 0.92697793 -0.027928017 -0.37407479 0.87022853 -0.027876627 -0.49185881
		 0.71303189 0.048075892 0.69948155 0.71303189 0.048075892 0.69948155 0.87022853 -0.027876627
		 -0.49185881 0.7985841 -0.027724767 -0.60124433 0.79823428 0.047925737 0.6004374 0.79823428
		 0.047925737 0.6004374 0.7985841 -0.027724767 -0.60124433 0.71327448 -0.027572729
		 -0.70034224 0.86978221 0.047775362 0.49111766 0.86978221 0.047775362 0.49111766 0.71327448
		 -0.027572729 -0.70034224 0.61576003 -0.027420323 -0.78745645 0.92645007 0.047624636
		 0.3733927 0.92645007 0.047624636 0.3733927 0.61576003 -0.027420323 -0.78745645 0.50770932
		 -0.02726762 -0.86109698 0.96726787 0.047473837 0.24927694 0.96726787 0.047473837
		 0.24927694 0.50770932 -0.02726762 -0.86109698 0.39097124 -0.027114764 -0.92000335
		 0.99153692 0.047322568 0.12089327 0.99153692 0.047322568 0.12089327 0.39097124 -0.027114764
		 -0.92000335 0.26754367 -0.026961651 -0.96316844 0.99884105 0.047171157 -0.0095619718
		 0.99884105 0.047171157 -0.0095619718 0.26754367 -0.026961651 -0.96316844 0.13953778
		 -0.026808279 -0.9898538 0.98905468 0.047019377 -0.13985687 0.98905468 0.047019377
		 -0.13985687 0.13953778 -0.026808279 -0.9898538 0.0091454787 -0.02665446 -0.99960291
		 0.96234488 0.046867535 -0.26776075 0.96234488 0.046867535 -0.26776075 0.0091454787
		 -0.02665446 -0.99960291 -0.12140366 -0.026500361 -0.99224949 0.91916782 0.046715505
		 -0.39108586 0.91916782 0.046715505 -0.39108586 -0.12140366 -0.026500361 -0.99224949
		 -0.24987547 -0.026346225 -0.96791953 0.86026138 0.046562955 -0.50772256 0.86026138
		 0.046562955 -0.50772256 -0.24987547 -0.026346225 -0.96791953 -0.37407216 -0.0261919
		 -0.92702973 0.78663331 0.046410162 -0.61567384 0.78663331 0.046410162 -0.61567384
		 -0.37407216 -0.0261919 -0.92702973 -0.49186936 -0.026037198 -0.87027961 0.69954258
		 0.046257298 -0.71309233 0.69954258 0.046257298 -0.71309233 -0.49186936 -0.026037198
		 -0.87027961 -0.60125095 -0.025882298 -0.79864097 0.60047942 0.046104167 -0.79831016
		 0.60047942 0.046104167 -0.79831016 -0.60125095 -0.025882298 -0.79864097 -0.70034665
		 -0.02572706 -0.71333915 0.49113765 0.045950636 -0.86986911 0.49113765 0.045950636
		 -0.86986911 -0.70034665 -0.02572706 -0.71333915 -0.78746068 -0.025571493 -0.61583418
		 0.3733888 0.045796953 -0.92654377 0.3733888 0.045796953 -0.92654377 -0.78746068 -0.025571493
		 -0.61583418 -0.86110342 -0.02541581 -0.50779444 0.24924774 0.04564314 -0.9673636
		 0.24924774 0.04564314 -0.9673636 -0.86110342 -0.02541581 -0.50779444 -0.92001516
		 -0.025259975 -0.39106789 0.12083758 0.045488946 -0.99162948 0.12083758 0.045488946
		 -0.99162948 -0.92001516 -0.025259975 -0.39106789 -0.96318865 -0.025103576 -0.26765171
		 -0.0096439384 0.045334473 -0.99892527 -0.0096439384 0.045334473 -0.99892527 -0.96318865
		 -0.025103576 -0.26765171 -0.98988414 -0.025018029 -0.13965479 -0.13994247 0.045045886
		 -0.98913449 -0.13994247 0.045045886 -0.98913449 -0.98988414 -0.025018029 -0.13965479
		 -0.99980623 -0.017805861 -0.0084001832 -0.26760975 0.038664069 -0.96275133 -0.26760975
		 0.038664069 -0.96275133 -0.99980623 -0.017805861 -0.0084001832 -0.9609679 0.274149
		 0.037191294 -0.30697131 0.035822727 -0.95104438 0.066640861 -0.30890423 0.94875562
		 0.25043127 -0.021626964 0.96789277 -0.86094016 0.040639151 0.50708032 -0.85417002
		 -0.25333238 0.45411032 -0.86094016 0.040639151 0.50708032 0.25043127 -0.021626964
		 0.96789277 0.37407458 -0.027927974 0.92697805 -0.78655589 0.048286095 0.61562842
		 -0.78655589 0.048286095 0.61562842 0.37407458 -0.027927974 0.92697805 0.4918586 -0.027876627
		 0.87022865 -0.69948149 0.048075862 0.71303189 -0.69948149 0.048075862 0.71303189
		 0.4918586 -0.027876627 0.87022865 0.60124427 -0.027724743 0.79858422 -0.6004371 0.0479258
		 0.79823458 -0.6004371 0.0479258 0.79823458 0.60124427 -0.027724743 0.79858422;
	setAttr ".n[498:663]" -type "float3"  0.70034212 -0.027572682 0.7132746 -0.49111742
		 0.047775362 0.86978239 -0.49111742 0.047775362 0.86978239 0.70034212 -0.027572682
		 0.7132746 0.78745645 -0.027420318 0.61576021 -0.37339249 0.047624584 0.92645019 -0.37339249
		 0.047624584 0.92645019 0.78745645 -0.027420318 0.61576021 0.86109686 -0.027267559
		 0.50770932 -0.24927692 0.04747384 0.96726799 -0.24927692 0.04747384 0.96726799 0.86109686
		 -0.027267559 0.50770932 0.92000335 -0.027114771 0.39097121 -0.12089305 0.047322582
		 0.99153692 -0.12089305 0.047322582 0.99153692 0.92000335 -0.027114771 0.39097121
		 0.96316844 -0.026961688 0.26754376 0.009562117 0.047171257 0.99884111 0.009562117
		 0.047171257 0.99884111 0.96316844 -0.026961688 0.26754376 0.98985374 -0.026808199
		 0.13953795 0.13985711 0.047019396 0.98905468 0.13985711 0.047019396 0.98905468 0.98985374
		 -0.026808199 0.13953795 0.99960291 -0.026654346 0.0091456128 0.26776096 0.046867486
		 0.96234483 0.26776096 0.046867486 0.96234483 0.99960291 -0.026654346 0.0091456128
		 0.99224943 -0.026500376 -0.1214034 0.39108637 0.046715517 0.91916758 0.39108637 0.046715517
		 0.91916758 0.99224943 -0.026500376 -0.1214034 0.96791953 -0.026346229 -0.2498752
		 0.50772268 0.046563026 0.86026144 0.50772268 0.046563026 0.86026144 0.96791953 -0.026346229
		 -0.2498752 0.92702973 -0.026191898 -0.37407202 0.61567372 0.046410181 0.78663343
		 0.61567372 0.046410181 0.78663343 0.92702973 -0.026191898 -0.37407202 0.87027979
		 -0.026037211 -0.49186918 0.71309251 0.046257272 0.69954222 0.71309251 0.046257272
		 0.69954222 0.87027979 -0.026037211 -0.49186918 0.79864091 -0.025882246 -0.60125101
		 0.79831022 0.046104249 0.6004793 0.79831022 0.046104249 0.6004793 0.79864091 -0.025882246
		 -0.60125101 0.71333933 -0.025727013 -0.70034647 0.86986923 0.045950651 0.49113733
		 0.86986923 0.045950651 0.49113733 0.71333933 -0.025727013 -0.70034647 0.6158343 -0.025571467
		 -0.78746051 0.92654395 0.045796901 0.37338844 0.92654395 0.045796901 0.37338844 0.6158343
		 -0.025571467 -0.78746051 0.50779468 -0.025415769 -0.86110312 0.9673636 0.04564308
		 0.24924734 0.9673636 0.04564308 0.24924734 0.50779468 -0.025415769 -0.86110312 0.3910681
		 -0.025259946 -0.9200151 0.99162948 0.045488909 0.12083733 0.99162948 0.045488909
		 0.12083733 0.3910681 -0.025259946 -0.9200151 0.26765183 -0.025103521 -0.96318865
		 0.99892539 0.045334514 -0.0096442178 0.99892539 0.045334514 -0.0096442178 0.26765183
		 -0.025103521 -0.96318865 0.13965482 -0.025018029 -0.98988414 0.98913449 0.045045994
		 -0.13994268 0.98913449 0.045045994 -0.13994268 0.13965482 -0.025018029 -0.98988414
		 0.0084003275 -0.017805854 -0.99980623 0.96275121 0.038664088 -0.26760998 0.96275121
		 0.038664088 -0.26760998 0.0084003275 -0.017805854 -0.99980623 -0.037191153 0.27414906
		 -0.96096784 0.95104438 0.035822712 -0.30697137 -0.94875562 -0.30890423 0.066640824
		 -0.96789277 -0.021626884 0.25043109 -0.50708008 0.040639166 -0.86094028 -0.45411032
		 -0.25333241 -0.85417008 -0.50708008 0.040639166 -0.86094028 -0.96789277 -0.021626884
		 0.25043109 -0.92697805 -0.027927933 0.37407458 -0.61562842 0.048286073 -0.78655589
		 -0.61562842 0.048286073 -0.78655589 -0.92697805 -0.027927933 0.37407458 -0.87022871
		 -0.027876569 0.49185857 -0.71303195 0.04807587 -0.69948149 -0.71303195 0.04807587
		 -0.69948149 -0.87022871 -0.027876569 0.49185857 -0.79858416 -0.027724769 0.60124421
		 -0.79823434 0.047925826 -0.60043728 -0.79823434 0.047925826 -0.60043728 -0.79858416
		 -0.027724769 0.60124421 -0.7132746 -0.027572732 0.70034224 -0.86978221 0.047775347
		 -0.49111757 -0.86978221 0.047775347 -0.49111757 -0.7132746 -0.027572732 0.70034224
		 -0.61576009 -0.027420314 0.78745645 -0.92645007 0.047624633 -0.37339282 -0.92645007
		 0.047624633 -0.37339282 -0.61576009 -0.027420314 0.78745645 -0.50770944 -0.027267518
		 0.8610968 -0.96726799 0.047473826 -0.24927688 -0.96726799 0.047473826 -0.24927688
		 -0.50770944 -0.027267518 0.8610968 -0.3909713 -0.027114723 0.92000329 -0.99153692
		 0.047322642 -0.12089312 -0.99153692 0.047322642 -0.12089312 -0.3909713 -0.027114723
		 0.92000329 -0.26754409 -0.026961599 0.96316838 -0.99884105 0.047171202 0.0095620127
		 -0.99884105 0.047171202 0.0095620127 -0.26754409 -0.026961599 0.96316838 -0.13953832
		 -0.026808182 0.98985374 -0.98905468 0.047019389 0.13985693 -0.98905468 0.047019389
		 0.13985693 -0.13953832 -0.026808182 0.98985374 -0.0091455104 -0.026654357 0.99960291
		 -0.96234488 0.046867538 0.26776075 -0.96234488 0.046867538 0.26776075 -0.0091455104
		 -0.026654357 0.99960291 0.12140344 -0.026500341 0.99224943 -0.91916782 0.046715509
		 0.39108598 -0.91916782 0.046715509 0.39108598 0.12140344 -0.026500341 0.99224943
		 0.24987526 -0.026346285 0.96791953 -0.86026138 0.046562947 0.50772268 -0.86026138
		 0.046562947 0.50772268 0.24987526 -0.026346285 0.96791953 0.3740721 -0.026191846
		 0.92702973 -0.78663355 0.046410285 0.61567342 -0.78663355 0.046410285 0.61567342
		 0.3740721 -0.026191846 0.92702973 0.49186939 -0.026037203 0.87027961 -0.69954252
		 0.046257332 0.71309227 -0.69954252 0.046257332 0.71309227 0.49186939 -0.026037203
		 0.87027961 0.60125095 -0.025882255 0.79864091 -0.60047948 0.046104159 0.79830998
		 -0.60047948 0.046104159 0.79830998 0.60125095 -0.025882255 0.79864091 0.70034653
		 -0.025726978 0.71333921 -0.49113759 0.04595064 0.86986917 -0.49113759 0.04595064
		 0.86986917 0.70034653 -0.025726978 0.71333921 0.78746057 -0.025571514 0.61583418
		 -0.37338886 0.045797076 0.92654377 -0.37338886 0.045797076 0.92654377 0.78746057
		 -0.025571514 0.61583418 0.86110336 -0.02541581 0.50779444 -0.2492478 0.045643121
		 0.9673636 -0.2492478 0.045643121 0.9673636 0.86110336 -0.02541581 0.50779444 0.92001516
		 -0.025259927 0.39106801 -0.12083771 0.045488909 0.99162948 -0.12083771 0.045488909
		 0.99162948 0.92001516 -0.025259927 0.39106801 0.96318865 -0.025103541 0.26765174
		 0.0096437931 0.045334585 0.99892527 0.0096437931 0.045334585 0.99892527 0.96318865
		 -0.025103541 0.26765174 0.98988414 -0.025018046 0.13965464 0.13994217 0.045045968
		 0.98913455;
	setAttr ".n[664:829]" -type "float3"  0.13994217 0.045045968 0.98913455 0.98988414
		 -0.025018046 0.13965464 0.99980628 -0.017805884 0.0084001003 0.26760948 0.038664158
		 0.96275133 0.26760948 0.038664158 0.96275133 0.99980628 -0.017805884 0.0084001003
		 0.96096784 0.27414903 -0.037191175 0.30697113 0.035822731 0.95104432 -0.066640861
		 -0.30890426 -0.9487555 -0.2504313 -0.021626964 -0.96789277 0.86094034 0.040639177
		 -0.50708002 0.85417008 -0.25333244 -0.45411023 0.86094034 0.040639177 -0.50708002
		 -0.2504313 -0.021626964 -0.96789277 -0.37407458 -0.027927946 -0.92697805 0.78655589
		 0.048286106 -0.61562836 0.78655589 0.048286106 -0.61562836 -0.37407458 -0.027927946
		 -0.92697805 -0.49185875 -0.027876571 -0.87022853 0.69948149 0.048075896 -0.71303189
		 0.69948149 0.048075896 -0.71303189 -0.49185875 -0.027876571 -0.87022853 -0.60124433
		 -0.027724775 -0.79858416 0.60043734 0.047925811 -0.79823434 0.60043734 0.047925811
		 -0.79823434 -0.60124433 -0.027724775 -0.79858416 -0.70034224 -0.02757274 -0.7132746
		 0.49111766 0.047775324 -0.86978221 0.49111766 0.047775324 -0.86978221 -0.70034224
		 -0.02757274 -0.7132746 -0.78745645 -0.02742029 -0.61576009 0.3733927 0.047624569
		 -0.92645013 0.3733927 0.047624569 -0.92645013 -0.78745645 -0.02742029 -0.61576009
		 -0.86109698 -0.027267598 -0.50770932 0.24927701 0.04747384 -0.96726799 0.24927701
		 0.04747384 -0.96726799 -0.86109698 -0.027267598 -0.50770932 -0.92000335 -0.027114749
		 -0.39097136 0.12089325 0.047322702 -0.99153686 0.12089325 0.047322702 -0.99153686
		 -0.92000335 -0.027114749 -0.39097136 -0.96316844 -0.026961641 -0.26754376 -0.0095618377
		 0.047171231 -0.99884105 -0.0095618377 0.047171231 -0.99884105 -0.96316844 -0.026961641
		 -0.26754376 -0.98985374 -0.026808256 -0.13953789 -0.13985674 0.047019348 -0.98905468
		 -0.13985674 0.047019348 -0.98905468 -0.98985374 -0.026808256 -0.13953789 -0.99960291
		 -0.026654325 -0.009145706 -0.26776081 0.04686752 -0.96234488 -0.26776081 0.04686752
		 -0.96234488 -0.99960291 -0.026654325 -0.009145706 -0.99224943 -0.026500279 0.12140304
		 -0.39108598 0.046715483 -0.91916782 -0.39108598 0.046715483 -0.91916782 -0.99224943
		 -0.026500279 0.12140304 -0.96791953 -0.026346242 0.24987522 -0.50772256 0.046562936
		 -0.86026138 -0.50772256 0.046562936 -0.86026138 -0.96791953 -0.026346242 0.24987522
		 -0.92702973 -0.026191831 0.37407193 -0.61567348 0.046410263 -0.78663349 -0.61567348
		 0.046410263 -0.78663349 -0.92702973 -0.026191831 0.37407193 -0.87027973 -0.026037155
		 0.49186918 -0.71309227 0.046257328 -0.69954252 -0.71309227 0.046257328 -0.69954252
		 -0.87027973 -0.026037155 0.49186918 -0.79864103 -0.025882265 0.60125089 -0.79830998
		 0.04610417 -0.6004796 -0.79830998 0.04610417 -0.6004796 -0.79864103 -0.025882265
		 0.60125089 -0.71333921 -0.025727058 0.70034653 -0.86986911 0.045950659 -0.49113765
		 -0.86986911 0.045950659 -0.49113765 -0.71333921 -0.025727058 0.70034653 -0.61583436
		 -0.025571452 0.78746051 -0.92654365 0.045797035 -0.37338912 -0.92654365 0.045797035
		 -0.37338912 -0.61583436 -0.025571452 0.78746051 -0.50779474 -0.025415774 0.86110318
		 -0.9673636 0.045643073 -0.2492478 -0.9673636 0.045643073 -0.2492478 -0.50779474 -0.025415774
		 0.86110318 -0.39106792 -0.025259985 0.9200151 -0.99162948 0.045488928 -0.1208378
		 -0.99162948 0.045488928 -0.1208378 -0.39106792 -0.025259985 0.9200151 -0.26765183
		 -0.025103489 0.96318865 -0.99892539 0.045334566 0.0096438453 -0.99892539 0.045334566
		 0.0096438453 -0.26765183 -0.025103489 0.96318865 -0.13965482 -0.025018027 0.98988414
		 -0.98913455 0.045045931 0.13994245 -0.98913455 0.045045931 0.13994245 -0.13965482
		 -0.025018027 0.98988414 -0.0084003685 -0.017805835 0.99980623 -0.96275133 0.03866411
		 0.26760963 -0.96275133 0.03866411 0.26760963 -0.0084003685 -0.017805835 0.99980623
		 0.037191186 0.27414906 0.96096784 -0.95104432 0.035822738 0.30697113 0.30991256 -0.12240923
		 0.94285208 0.93040657 -0.27518523 -0.24210879 0.94875562 -0.30890423 -0.066640988
		 0.45411026 -0.25333238 0.85417008 0.30991256 -0.12240923 0.94285208 0.45411026 -0.25333238
		 0.85417008 0.50708008 0.040639095 0.86094028 0.26002637 0.068869255 0.9631424 0.26002637
		 0.068869255 0.9631424 0.50708008 0.040639095 0.86094028 0.61562818 0.048286129 0.78655607
		 0.38370168 0.068333134 0.92092532 0.38370168 0.068333134 0.92092532 0.61562818 0.048286129
		 0.78655607 0.71303189 0.048075892 0.69948155 0.50063765 0.067816153 0.86299646 0.50063765
		 0.067816153 0.86299646 0.71303189 0.048075892 0.69948155 0.79823428 0.047925737 0.6004374
		 0.60901582 0.067299105 0.79029775 0.60901582 0.067299105 0.79029775 0.79823428 0.047925737
		 0.6004374 0.86978221 0.047775362 0.49111766 0.7069822 0.066782057 0.70407134 0.7069822
		 0.066782057 0.70407134 0.86978221 0.047775362 0.49111766 0.92645007 0.047624636 0.3733927
		 0.79285884 0.066264883 0.60579187 0.79285884 0.066264883 0.60579187 0.92645007 0.047624636
		 0.3733927 0.96726787 0.047473837 0.24927694 0.86517578 0.065747693 0.49713987 0.86517578
		 0.065747693 0.49713987 0.96726787 0.047473837 0.24927694 0.99153692 0.047322568 0.12089327
		 0.92269421 0.065230303 0.37997416 0.92269421 0.065230303 0.37997416 0.99153692 0.047322568
		 0.12089327 0.99884105 0.047171157 -0.0095619718 0.96442908 0.064713039 0.25629824
		 0.96442908 0.064713039 0.25629824 0.99884105 0.047171157 -0.0095619718 0.98905468
		 0.047019377 -0.13985687 0.98966485 0.064195581 0.12822798 0.98966485 0.064195581
		 0.12822798 0.98905468 0.047019377 -0.13985687 0.96234488 0.046867535 -0.26776075
		 0.99796838 0.063678049 -0.0020448051 0.99796838 0.063678049 -0.0020448051 0.96234488
		 0.046867535 -0.26776075 0.91916782 0.046715505 -0.39108586 0.98919648 0.063160561
		 -0.13229172 0.98919648 0.063160561 -0.13229172 0.91916782 0.046715505 -0.39108586
		 0.86026138 0.046562955 -0.50772256 0.96349764 0.062642932 -0.26028451 0.96349764
		 0.062642932 -0.26028451 0.86026138 0.046562955 -0.50772256 0.78663331 0.046410162
		 -0.61567384 0.92131072 0.062125247 -0.38383207 0.92131072 0.062125247 -0.38383207
		 0.78663331 0.046410162 -0.61567384;
	setAttr ".n[830:995]" -type "float3"  0.69954258 0.046257298 -0.71309233 0.86335588
		 0.061607629 -0.50082028 0.86335588 0.061607629 -0.50082028 0.69954258 0.046257298
		 -0.71309233 0.60047942 0.046104167 -0.79831016 0.79062414 0.061089844 -0.60924667
		 0.79062414 0.061089844 -0.60924667 0.60047942 0.046104167 -0.79831016 0.49113765
		 0.045950636 -0.86986911 0.70435834 0.060572051 -0.70725536 0.70435834 0.060572051
		 -0.70725536 0.49113765 0.045950636 -0.86986911 0.3733888 0.045796953 -0.92654377
		 0.60603452 0.060054149 -0.79316813 0.60603452 0.060054149 -0.79316813 0.3733888 0.045796953
		 -0.92654377 0.24924774 0.04564314 -0.9673636 0.49733379 0.059536282 -0.86551404 0.49733379
		 0.059536282 -0.86551404 0.24924774 0.04564314 -0.9673636 0.12083758 0.045488946 -0.99162948
		 0.38011497 0.05901834 -0.92305446 0.38011497 0.05901834 -0.92305446 0.12083758 0.045488946
		 -0.99162948 -0.0096439384 0.045334473 -0.99892527 0.25638422 0.05850032 -0.96480304
		 0.25638422 0.05850032 -0.96480304 -0.0096439384 0.045334473 -0.99892527 -0.13994247
		 0.045045886 -0.98913449 0.12825827 0.057982288 -0.99004436 0.12825827 0.057982288
		 -0.99004436 -0.13994247 0.045045886 -0.98913449 -0.26760975 0.038664069 -0.96275133
		 -0.0013688861 0.057537008 -0.99834239 -0.0013688861 0.057537008 -0.99834239 -0.26760975
		 0.038664069 -0.96275133 -0.30697131 0.035822727 -0.95104438 -0.11959393 0.051189315
		 -0.99150234 -0.29640833 0.86192352 -0.41137552 -0.48511088 0.73456043 -0.47443491
		 -0.9609679 0.274149 0.037191294 -0.96664619 0.15403686 0.20461623 -0.96664619 0.15403686
		 0.20461623 -0.9609679 0.274149 0.037191294 -0.99980623 -0.017805861 -0.0084001832
		 -0.96589702 -0.038505815 0.25604698 -0.96589702 -0.038505815 0.25604698 -0.99980623
		 -0.017805861 -0.0084001832 -0.98988414 -0.025018029 -0.13965479 -0.99106443 -0.039003547
		 0.1275539 -0.99106443 -0.039003547 0.1275539 -0.98988414 -0.025018029 -0.13965479
		 -0.96318865 -0.025103576 -0.26765171 -0.99921447 -0.039522499 -0.0028919643 -0.99921447
		 -0.039522499 -0.0028919643 -0.96318865 -0.025103576 -0.26765171 -0.92001516 -0.025259975
		 -0.39106789 -0.99026877 -0.04004148 -0.13328423 -0.99026877 -0.04004148 -0.13328423
		 -0.92001516 -0.025259975 -0.39106789 -0.86110342 -0.02541581 -0.50779444 -0.96438044
		 -0.040560059 -0.26139095 -0.96438044 -0.040560059 -0.26139095 -0.86110342 -0.02541581
		 -0.50779444 -0.78746068 -0.025571493 -0.61583418 -0.92199332 -0.041078724 -0.38502058
		 -0.92199332 -0.041078724 -0.38502058 -0.78746068 -0.025571493 -0.61583418 -0.70034665
		 -0.02572706 -0.71333915 -0.86383295 -0.041597564 -0.50205809 -0.86383295 -0.041597564
		 -0.50205809 -0.70034665 -0.02572706 -0.71333915 -0.60125095 -0.025882298 -0.79864097
		 -0.79089487 -0.042116184 -0.61050117 -0.79089487 -0.042116184 -0.61050117 -0.60125095
		 -0.025882298 -0.79864097 -0.49186936 -0.026037198 -0.87027961 -0.70442754 -0.042634733
		 -0.70849431 -0.70442754 -0.042634733 -0.70849431 -0.49186936 -0.026037198 -0.87027961
		 -0.37407216 -0.0261919 -0.92702973 -0.6059109 -0.043153331 -0.79436117 -0.6059109
		 -0.043153331 -0.79436117 -0.37407216 -0.0261919 -0.92702973 -0.24987547 -0.026346225
		 -0.96791953 -0.49703109 -0.043671582 -0.86663306 -0.49703109 -0.043671582 -0.86663306
		 -0.24987547 -0.026346225 -0.96791953 -0.12140366 -0.026500361 -0.99224949 -0.37965193
		 -0.044190034 -0.92407346 -0.37965193 -0.044190034 -0.92407346 -0.12140366 -0.026500361
		 -0.99224949 0.0091454787 -0.02665446 -0.99960291 -0.2557812 -0.044708479 -0.96570039
		 -0.2557812 -0.044708479 -0.96570039 0.0091454787 -0.02665446 -0.99960291 0.13953778
		 -0.026808279 -0.9898538 -0.1275395 -0.045226984 -0.99080175 -0.1275395 -0.045226984
		 -0.99080175 0.13953778 -0.026808279 -0.9898538 0.26754367 -0.026961651 -0.96316844
		 0.0028795605 -0.04574522 -0.99894899 0.0028795605 -0.04574522 -0.99894899 0.26754367
		 -0.026961651 -0.96316844 0.39097124 -0.027114764 -0.92000335 0.13324349 -0.046263359
		 -0.99000293 0.13324349 -0.046263359 -0.99000293 0.39097124 -0.027114764 -0.92000335
		 0.50770932 -0.02726762 -0.86109698 0.26132163 -0.046781417 -0.96411747 0.26132163
		 -0.046781417 -0.96411747 0.50770932 -0.02726762 -0.86109698 0.61576003 -0.027420323
		 -0.78745645 0.3849225 -0.047299616 -0.92173612 0.3849225 -0.047299616 -0.92173612
		 0.61576003 -0.027420323 -0.78745645 0.71327448 -0.027572729 -0.70034224 0.50193119
		 -0.04781767 -0.86358476 0.50193119 -0.04781767 -0.86358476 0.71327448 -0.027572729
		 -0.70034224 0.7985841 -0.027724767 -0.60124433 0.61034596 -0.048335522 -0.79065889
		 0.61034596 -0.048335522 -0.79065889 0.7985841 -0.027724767 -0.60124433 0.87022853
		 -0.027876627 -0.49185881 0.70831168 -0.048853368 -0.70420724 0.70831168 -0.048853368
		 -0.70420724 0.87022853 -0.027876627 -0.49185881 0.92697793 -0.027928017 -0.37407479
		 0.79415238 -0.04937112 -0.60570985 0.79415238 -0.04937112 -0.60570985 0.92697793
		 -0.027928017 -0.37407479 0.96789277 -0.021626962 -0.2504313 0.86613399 -0.049958754
		 -0.49730879 0.86613399 -0.049958754 -0.49730879 0.96789277 -0.021626962 -0.2504313
		 0.94875562 -0.30890423 -0.066640988 0.93040657 -0.27518523 -0.24210879 -0.94285208
		 -0.12240928 0.30991262 0.24210875 -0.27518523 0.93040663 0.066640861 -0.30890423
		 0.94875562 -0.85417002 -0.25333238 0.45411032 -0.94285208 -0.12240928 0.30991262
		 -0.85417002 -0.25333238 0.45411032 -0.86094016 0.040639151 0.50708032 -0.96314228
		 0.068869218 0.2600266 -0.96314228 0.068869218 0.2600266 -0.86094016 0.040639151 0.50708032
		 -0.78655589 0.048286095 0.61562842 -0.9209252 0.068333104 0.38370198 -0.9209252 0.068333104
		 0.38370198 -0.78655589 0.048286095 0.61562842 -0.69948149 0.048075862 0.71303189
		 -0.86299652 0.067816205 0.50063741 -0.86299652 0.067816205 0.50063741 -0.69948149
		 0.048075862 0.71303189 -0.6004371 0.0479258 0.79823458 -0.79029757 0.067299142 0.609016
		 -0.79029757 0.067299142 0.609016 -0.6004371 0.0479258 0.79823458 -0.49111742 0.047775362
		 0.86978239 -0.7040711 0.066782065 0.70698243 -0.7040711 0.066782065 0.70698243 -0.49111742
		 0.047775362 0.86978239 -0.37339249 0.047624584 0.92645019 -0.60579169 0.06626489
		 0.79285896;
	setAttr ".n[996:1161]" -type "float3"  -0.60579169 0.06626489 0.79285896 -0.37339249
		 0.047624584 0.92645019 -0.24927692 0.04747384 0.96726799 -0.49713975 0.065747678
		 0.86517584 -0.49713975 0.065747678 0.86517584 -0.24927692 0.04747384 0.96726799 -0.12089305
		 0.047322582 0.99153692 -0.3799741 0.065230347 0.92269433 -0.3799741 0.065230347 0.92269433
		 -0.12089305 0.047322582 0.99153692 0.009562117 0.047171257 0.99884111 -0.25629809
		 0.064713098 0.96442908 -0.25629809 0.064713098 0.96442908 0.009562117 0.047171257
		 0.99884111 0.13985711 0.047019396 0.98905468 -0.12822753 0.064195551 0.98966485 -0.12822753
		 0.064195551 0.98966485 0.13985711 0.047019396 0.98905468 0.26776096 0.046867486 0.96234483
		 0.002044939 0.063678034 0.99796838 0.002044939 0.063678034 0.99796838 0.26776096
		 0.046867486 0.96234483 0.39108637 0.046715517 0.91916758 0.13229202 0.063160628 0.98919636
		 0.13229202 0.063160628 0.98919636 0.39108637 0.046715517 0.91916758 0.50772268 0.046563026
		 0.86026144 0.26028472 0.062642962 0.96349764 0.26028472 0.062642962 0.96349764 0.50772268
		 0.046563026 0.86026144 0.61567372 0.046410181 0.78663343 0.38383222 0.062125236 0.92131066
		 0.38383222 0.062125236 0.92131066 0.61567372 0.046410181 0.78663343 0.71309251 0.046257272
		 0.69954222 0.5008204 0.06160764 0.86335582 0.5008204 0.06160764 0.86335582 0.71309251
		 0.046257272 0.69954222 0.79831022 0.046104249 0.6004793 0.60924685 0.061089881 0.79062402
		 0.60924685 0.061089881 0.79062402 0.79831022 0.046104249 0.6004793 0.86986923 0.045950651
		 0.49113733 0.70725566 0.060572039 0.70435816 0.70725566 0.060572039 0.70435816 0.86986923
		 0.045950651 0.49113733 0.92654395 0.045796901 0.37338844 0.79316837 0.060054146 0.60603422
		 0.79316837 0.060054146 0.60603422 0.92654395 0.045796901 0.37338844 0.9673636 0.04564308
		 0.24924734 0.8655141 0.059536301 0.49733365 0.8655141 0.059536301 0.49733365 0.9673636
		 0.04564308 0.24924734 0.99162948 0.045488909 0.12083733 0.92305446 0.059018336 0.38011482
		 0.92305446 0.059018336 0.38011482 0.99162948 0.045488909 0.12083733 0.99892539 0.045334514
		 -0.0096442178 0.96480304 0.058500405 0.25638419 0.96480304 0.058500405 0.25638419
		 0.99892539 0.045334514 -0.0096442178 0.98913449 0.045045994 -0.13994268 0.99004447
		 0.057982359 0.12825808 0.99004447 0.057982359 0.12825808 0.98913449 0.045045994 -0.13994268
		 0.96275121 0.038664088 -0.26760998 0.99834239 0.057537004 -0.0013692875 0.99834239
		 0.057537004 -0.0013692875 0.96275121 0.038664088 -0.26760998 0.95104438 0.035822712
		 -0.30697137 0.99150234 0.051189382 -0.1195942 0.41137552 0.86192352 -0.29640844 0.4744347
		 0.73456049 -0.48511088 -0.037191153 0.27414906 -0.96096784 -0.20461604 0.15403694
		 -0.96664619 -0.20461604 0.15403694 -0.96664619 -0.037191153 0.27414906 -0.96096784
		 0.0084003275 -0.017805854 -0.99980623 -0.25604677 -0.038505789 -0.96589708 -0.25604677
		 -0.038505789 -0.96589708 0.0084003275 -0.017805854 -0.99980623 0.13965482 -0.025018029
		 -0.98988414 -0.12755373 -0.039003532 -0.99106443 -0.12755373 -0.039003532 -0.99106443
		 0.13965482 -0.025018029 -0.98988414 0.26765183 -0.025103521 -0.96318865 0.0028920646
		 -0.039522443 -0.99921447 0.0028920646 -0.039522443 -0.99921447 0.26765183 -0.025103521
		 -0.96318865 0.3910681 -0.025259946 -0.9200151 0.13328426 -0.040041436 -0.99026877
		 0.13328426 -0.040041436 -0.99026877 0.3910681 -0.025259946 -0.9200151 0.50779468
		 -0.025415769 -0.86110312 0.26139137 -0.040560033 -0.96438038 0.26139137 -0.040560033
		 -0.96438038 0.50779468 -0.025415769 -0.86110312 0.6158343 -0.025571467 -0.78746051
		 0.38502085 -0.041078694 -0.92199326 0.38502085 -0.041078694 -0.92199326 0.6158343
		 -0.025571467 -0.78746051 0.71333933 -0.025727013 -0.70034647 0.50205827 -0.041597519
		 -0.86383277 0.50205827 -0.041597519 -0.86383277 0.71333933 -0.025727013 -0.70034647
		 0.79864091 -0.025882246 -0.60125101 0.61050117 -0.042116158 -0.79089487 0.61050117
		 -0.042116158 -0.79089487 0.79864091 -0.025882246 -0.60125101 0.87027979 -0.026037211
		 -0.49186918 0.70849431 -0.042634681 -0.70442754 0.70849431 -0.042634681 -0.70442754
		 0.87027979 -0.026037211 -0.49186918 0.92702973 -0.026191898 -0.37407202 0.79436141
		 -0.043153297 -0.60591072 0.79436141 -0.043153297 -0.60591072 0.92702973 -0.026191898
		 -0.37407202 0.96791953 -0.026346229 -0.2498752 0.86663306 -0.043671615 -0.497031
		 0.86663306 -0.043671615 -0.497031 0.96791953 -0.026346229 -0.2498752 0.99224943 -0.026500376
		 -0.1214034 0.92407358 -0.044190016 -0.37965158 0.92407358 -0.044190016 -0.37965158
		 0.99224943 -0.026500376 -0.1214034 0.99960291 -0.026654346 0.0091456128 0.96570033
		 -0.044708405 -0.25578099 0.96570033 -0.044708405 -0.25578099 0.99960291 -0.026654346
		 0.0091456128 0.98985374 -0.026808199 0.13953795 0.99080175 -0.045226932 -0.1275394
		 0.99080175 -0.045226932 -0.1275394 0.98985374 -0.026808199 0.13953795 0.96316844
		 -0.026961688 0.26754376 0.99894893 -0.045745254 0.0028797255 0.99894893 -0.045745254
		 0.0028797255 0.96316844 -0.026961688 0.26754376 0.92000335 -0.027114771 0.39097121
		 0.99000293 -0.046263341 0.13324361 0.99000293 -0.046263341 0.13324361 0.92000335
		 -0.027114771 0.39097121 0.86109686 -0.027267559 0.50770932 0.96411747 -0.04678138
		 0.26132154 0.96411747 -0.04678138 0.26132154 0.86109686 -0.027267559 0.50770932 0.78745645
		 -0.027420318 0.61576021 0.921736 -0.047299609 0.3849225 0.921736 -0.047299609 0.3849225
		 0.78745645 -0.027420318 0.61576021 0.70034212 -0.027572682 0.7132746 0.86358458 -0.047817618
		 0.50193137 0.86358458 -0.047817618 0.50193137 0.70034212 -0.027572682 0.7132746 0.60124427
		 -0.027724743 0.79858422 0.79065889 -0.048335522 0.61034596 0.79065889 -0.048335522
		 0.61034596 0.60124427 -0.027724743 0.79858422 0.4918586 -0.027876627 0.87022865 0.7042073
		 -0.048853368 0.70831174 0.7042073 -0.048853368 0.70831174 0.4918586 -0.027876627
		 0.87022865 0.37407458 -0.027927974 0.92697805 0.60570979 -0.049371108 0.79415244
		 0.60570979 -0.049371108 0.79415244 0.37407458 -0.027927974 0.92697805;
	setAttr ".n[1162:1327]" -type "float3"  0.25043127 -0.021626964 0.96789277 0.4973087
		 -0.049958751 0.86613399 0.4973087 -0.049958751 0.86613399 0.25043127 -0.021626964
		 0.96789277 0.066640861 -0.30890423 0.94875562 0.24210875 -0.27518523 0.93040663 -0.30991262
		 -0.12240926 -0.9428522 -0.93040663 -0.27518523 0.24210876 -0.94875562 -0.30890423
		 0.066640824 -0.45411032 -0.25333241 -0.85417008 -0.30991262 -0.12240926 -0.9428522
		 -0.45411032 -0.25333241 -0.85417008 -0.50708008 0.040639166 -0.86094028 -0.2600264
		 0.068869255 -0.9631424 -0.2600264 0.068869255 -0.9631424 -0.50708008 0.040639166
		 -0.86094028 -0.61562842 0.048286073 -0.78655589 -0.38370201 0.068333052 -0.9209252
		 -0.38370201 0.068333052 -0.9209252 -0.61562842 0.048286073 -0.78655589 -0.71303195
		 0.04807587 -0.69948149 -0.50063741 0.06781622 -0.86299658 -0.50063741 0.06781622
		 -0.86299658 -0.71303195 0.04807587 -0.69948149 -0.79823434 0.047925826 -0.60043728
		 -0.609016 0.067299195 -0.79029757 -0.609016 0.067299195 -0.79029757 -0.79823434 0.047925826
		 -0.60043728 -0.86978221 0.047775347 -0.49111757 -0.7069822 0.06678208 -0.70407128
		 -0.7069822 0.06678208 -0.70407128 -0.86978221 0.047775347 -0.49111757 -0.92645007
		 0.047624633 -0.37339282 -0.79285896 0.066264831 -0.60579181 -0.79285896 0.066264831
		 -0.60579181 -0.92645007 0.047624633 -0.37339282 -0.96726799 0.047473826 -0.24927688
		 -0.86517578 0.065747701 -0.49713987 -0.86517578 0.065747701 -0.49713987 -0.96726799
		 0.047473826 -0.24927688 -0.99153692 0.047322642 -0.12089312 -0.92269427 0.065230392
		 -0.37997395 -0.92269427 0.065230392 -0.37997395 -0.99153692 0.047322642 -0.12089312
		 -0.99884105 0.047171202 0.0095620127 -0.96442908 0.064713068 -0.25629815 -0.96442908
		 0.064713068 -0.25629815 -0.99884105 0.047171202 0.0095620127 -0.98905468 0.047019389
		 0.13985693 -0.98966485 0.064195558 -0.12822787 -0.98966485 0.064195558 -0.12822787
		 -0.98905468 0.047019389 0.13985693 -0.96234488 0.046867538 0.26776075 -0.99796838
		 0.063678034 0.0020449271 -0.99796838 0.063678034 0.0020449271 -0.96234488 0.046867538
		 0.26776075 -0.91916782 0.046715509 0.39108598 -0.98919648 0.063160606 0.13229187
		 -0.98919648 0.063160606 0.13229187 -0.91916782 0.046715509 0.39108598 -0.86026138
		 0.046562947 0.50772268 -0.96349764 0.062642932 0.26028463 -0.96349764 0.062642932
		 0.26028463 -0.86026138 0.046562947 0.50772268 -0.78663355 0.046410285 0.61567342
		 -0.92131072 0.062125288 0.38383186 -0.92131072 0.062125288 0.38383186 -0.78663355
		 0.046410285 0.61567342 -0.69954252 0.046257332 0.71309227 -0.86335582 0.061607633
		 0.50082052 -0.86335582 0.061607633 0.50082052 -0.69954252 0.046257332 0.71309227
		 -0.60047948 0.046104159 0.79830998 -0.79062414 0.061089844 0.60924667 -0.79062414
		 0.061089844 0.60924667 -0.60047948 0.046104159 0.79830998 -0.49113759 0.04595064
		 0.86986917 -0.70435828 0.060572069 0.70725542 -0.70435828 0.060572069 0.70725542
		 -0.49113759 0.04595064 0.86986917 -0.37338886 0.045797076 0.92654377 -0.60603446
		 0.060054209 0.79316825 -0.60603446 0.060054209 0.79316825 -0.37338886 0.045797076
		 0.92654377 -0.2492478 0.045643121 0.9673636 -0.49733353 0.059536245 0.86551428 -0.49733353
		 0.059536245 0.86551428 -0.2492478 0.045643121 0.9673636 -0.12083771 0.045488909 0.99162948
		 -0.380115 0.059018347 0.92305446 -0.380115 0.059018347 0.92305446 -0.12083771 0.045488909
		 0.99162948 0.0096437931 0.045334585 0.99892527 -0.25638402 0.058500376 0.96480304
		 -0.25638402 0.058500376 0.96480304 0.0096437931 0.045334585 0.99892527 0.13994217
		 0.045045968 0.98913455 -0.12825832 0.057982344 0.99004447 -0.12825832 0.057982344
		 0.99004447 0.13994217 0.045045968 0.98913455 0.26760948 0.038664158 0.96275133 0.0013691203
		 0.057536986 0.99834239 0.0013691203 0.057536986 0.99834239 0.26760948 0.038664158
		 0.96275133 0.30697113 0.035822731 0.95104432 0.1195941 0.051189307 0.99150234 0.29640836
		 0.86192364 0.41137555 0.48511076 0.73456031 0.47443503 0.96096784 0.27414903 -0.037191175
		 0.96664619 0.15403686 -0.20461626 0.96664619 0.15403686 -0.20461626 0.96096784 0.27414903
		 -0.037191175 0.99980628 -0.017805884 0.0084001003 0.96589702 -0.038505815 -0.25604698
		 0.96589702 -0.038505815 -0.25604698 0.99980628 -0.017805884 0.0084001003 0.98988414
		 -0.025018046 0.13965464 0.99106443 -0.039003555 -0.12755392 0.99106443 -0.039003555
		 -0.12755392 0.98988414 -0.025018046 0.13965464 0.96318865 -0.025103541 0.26765174
		 0.99921447 -0.039522447 0.0028920264 0.99921447 -0.039522447 0.0028920264 0.96318865
		 -0.025103541 0.26765174 0.92001516 -0.025259927 0.39106801 0.99026865 -0.040041436
		 0.13328418 0.99026865 -0.040041436 0.13328418 0.92001516 -0.025259927 0.39106801
		 0.86110336 -0.02541581 0.50779444 0.96438044 -0.040560052 0.26139101 0.96438044 -0.040560052
		 0.26139101 0.86110336 -0.02541581 0.50779444 0.78746057 -0.025571514 0.61583418 0.92199326
		 -0.04107869 0.38502073 0.92199326 -0.04107869 0.38502073 0.78746057 -0.025571514
		 0.61583418 0.70034653 -0.025726978 0.71333921 0.86383283 -0.041597512 0.50205815
		 0.86383283 -0.041597512 0.50205815 0.70034653 -0.025726978 0.71333921 0.60125095
		 -0.025882255 0.79864091 0.79089493 -0.042116188 0.61050111 0.79089493 -0.042116188
		 0.61050111 0.60125095 -0.025882255 0.79864091 0.49186939 -0.026037203 0.87027961
		 0.70442754 -0.042634681 0.70849431 0.70442754 -0.042634681 0.70849431 0.49186939
		 -0.026037203 0.87027961 0.3740721 -0.026191846 0.92702973 0.60591102 -0.043153282
		 0.79436111 0.60591102 -0.043153282 0.79436111 0.3740721 -0.026191846 0.92702973 0.24987526
		 -0.026346285 0.96791953 0.49703118 -0.043671634 0.866633 0.49703118 -0.043671634
		 0.866633 0.24987526 -0.026346285 0.96791953 0.12140344 -0.026500341 0.99224943 0.37965158
		 -0.044189982 0.92407352 0.37965158 -0.044189982 0.92407352 0.12140344 -0.026500341
		 0.99224943 -0.0091455104 -0.026654357 0.99960291 0.25578123 -0.044708397 0.96570039
		 0.25578123 -0.044708397 0.96570039 -0.0091455104 -0.026654357 0.99960291 -0.13953832
		 -0.026808182 0.98985374 0.12753928 -0.045226917 0.99080175;
	setAttr ".n[1328:1493]" -type "float3"  0.12753928 -0.045226917 0.99080175 -0.13953832
		 -0.026808182 0.98985374 -0.26754409 -0.026961599 0.96316838 -0.0028799118 -0.04574522
		 0.99894893 -0.0028799118 -0.04574522 0.99894893 -0.26754409 -0.026961599 0.96316838
		 -0.3909713 -0.027114723 0.92000329 -0.13324358 -0.046263345 0.99000293 -0.13324358
		 -0.046263345 0.99000293 -0.3909713 -0.027114723 0.92000329 -0.50770944 -0.027267518
		 0.8610968 -0.26132149 -0.046781387 0.96411753 -0.26132149 -0.046781387 0.96411753
		 -0.50770944 -0.027267518 0.8610968 -0.61576009 -0.027420314 0.78745645 -0.38492247
		 -0.047299623 0.92173612 -0.38492247 -0.047299623 0.92173612 -0.61576009 -0.027420314
		 0.78745645 -0.7132746 -0.027572732 0.70034224 -0.50193125 -0.047817666 0.86358476
		 -0.50193125 -0.047817666 0.86358476 -0.7132746 -0.027572732 0.70034224 -0.79858416
		 -0.027724769 0.60124421 -0.61034608 -0.048335511 0.79065889 -0.61034608 -0.048335511
		 0.79065889 -0.79858416 -0.027724769 0.60124421 -0.87022871 -0.027876569 0.49185857
		 -0.70831174 -0.048853345 0.70420712 -0.70831174 -0.048853345 0.70420712 -0.87022871
		 -0.027876569 0.49185857 -0.92697805 -0.027927933 0.37407458 -0.79415244 -0.049371071
		 0.60570979 -0.79415244 -0.049371071 0.60570979 -0.92697805 -0.027927933 0.37407458
		 -0.96789277 -0.021626884 0.25043109 -0.86613399 -0.049958717 0.49730876 -0.86613399
		 -0.049958717 0.49730876 -0.96789277 -0.021626884 0.25043109 -0.94875562 -0.30890423
		 0.066640824 -0.93040663 -0.27518523 0.24210876 0.94285208 -0.12240928 -0.30991253
		 -0.24210882 -0.27518526 -0.93040657 -0.066640861 -0.30890426 -0.9487555 0.85417008
		 -0.25333244 -0.45411023 0.94285208 -0.12240928 -0.30991253 0.85417008 -0.25333244
		 -0.45411023 0.86094034 0.040639177 -0.50708002 0.96314245 0.068869278 -0.2600264
		 0.96314245 0.068869278 -0.2600264 0.86094034 0.040639177 -0.50708002 0.78655589 0.048286106
		 -0.61562836 0.92092538 0.06833306 -0.38370204 0.92092538 0.06833306 -0.38370204 0.78655589
		 0.048286106 -0.61562836 0.69948149 0.048075896 -0.71303189 0.86299658 0.067816183
		 -0.50063759 0.86299658 0.067816183 -0.50063759 0.69948149 0.048075896 -0.71303189
		 0.60043734 0.047925811 -0.79823434 0.79029757 0.067299172 -0.609016 0.79029757 0.067299172
		 -0.609016 0.60043734 0.047925811 -0.79823434 0.49111766 0.047775324 -0.86978221 0.70407128
		 0.066782042 -0.7069822 0.70407128 0.066782042 -0.7069822 0.49111766 0.047775324 -0.86978221
		 0.3733927 0.047624569 -0.92645013 0.60579181 0.066264801 -0.79285896 0.60579181 0.066264801
		 -0.79285896 0.3733927 0.047624569 -0.92645013 0.24927701 0.04747384 -0.96726799 0.4971399
		 0.065747701 -0.86517578 0.4971399 0.065747701 -0.86517578 0.24927701 0.04747384 -0.96726799
		 0.12089325 0.047322702 -0.99153686 0.37997404 0.065230422 -0.92269427 0.37997404
		 0.065230422 -0.92269427 0.12089325 0.047322702 -0.99153686 -0.0095618377 0.047171231
		 -0.99884105 0.25629809 0.064713046 -0.96442914 0.25629809 0.064713046 -0.96442914
		 -0.0095618377 0.047171231 -0.99884105 -0.13985674 0.047019348 -0.98905468 0.12822789
		 0.064195521 -0.98966485 0.12822789 0.064195521 -0.98966485 -0.13985674 0.047019348
		 -0.98905468 -0.26776081 0.04686752 -0.96234488 -0.0020449508 0.063678034 -0.99796838
		 -0.0020449508 0.063678034 -0.99796838 -0.26776081 0.04686752 -0.96234488 -0.39108598
		 0.046715483 -0.91916782 -0.1322919 0.063160568 -0.98919648 -0.1322919 0.063160568
		 -0.98919648 -0.39108598 0.046715483 -0.91916782 -0.50772256 0.046562936 -0.86026138
		 -0.2602846 0.062642947 -0.9634977 -0.2602846 0.062642947 -0.9634977 -0.50772256 0.046562936
		 -0.86026138 -0.61567348 0.046410263 -0.78663349 -0.38383186 0.062125295 -0.92131084
		 -0.38383186 0.062125295 -0.92131084 -0.61567348 0.046410263 -0.78663349 -0.71309227
		 0.046257328 -0.69954252 -0.50082052 0.061607603 -0.86335582 -0.50082052 0.061607603
		 -0.86335582 -0.71309227 0.046257328 -0.69954252 -0.79830998 0.04610417 -0.6004796
		 -0.60924667 0.061089858 -0.79062414 -0.60924667 0.061089858 -0.79062414 -0.79830998
		 0.04610417 -0.6004796 -0.86986911 0.045950659 -0.49113765 -0.70725548 0.06057208
		 -0.7043584 -0.70725548 0.06057208 -0.7043584 -0.86986911 0.045950659 -0.49113765
		 -0.92654365 0.045797035 -0.37338912 -0.79316825 0.060054161 -0.6060344 -0.79316825
		 0.060054161 -0.6060344 -0.92654365 0.045797035 -0.37338912 -0.9673636 0.045643073
		 -0.2492478 -0.8655141 0.059536241 -0.49733374 -0.8655141 0.059536241 -0.49733374
		 -0.9673636 0.045643073 -0.2492478 -0.99162948 0.045488928 -0.1208378 -0.92305434
		 0.059018325 -0.38011512 -0.92305434 0.059018325 -0.38011512 -0.99162948 0.045488928
		 -0.1208378 -0.99892539 0.045334566 0.0096438453 -0.96480304 0.05850035 -0.2563841
		 -0.96480304 0.05850035 -0.2563841 -0.99892539 0.045334566 0.0096438453 -0.98913455
		 0.045045931 0.13994245 -0.99004447 0.057982314 -0.12825808 -0.99004447 0.057982314
		 -0.12825808 -0.98913455 0.045045931 0.13994245 -0.96275133 0.03866411 0.26760963
		 -0.99834239 0.057536989 0.0013690535 -0.99834239 0.057536989 0.0013690535 -0.96275133
		 0.03866411 0.26760963 -0.95104432 0.035822738 0.30697113 -0.99150234 0.051189303
		 0.1195941 -0.41137552 0.86192358 0.29640827 -0.47443512 0.73456037 0.48511076 0.037191186
		 0.27414906 0.96096784 0.2046162 0.15403695 0.96664619 0.2046162 0.15403695 0.96664619
		 0.037191186 0.27414906 0.96096784 -0.0084003685 -0.017805835 0.99980623 0.25604707
		 -0.038505834 0.96589702 0.25604707 -0.038505834 0.96589702 -0.0084003685 -0.017805835
		 0.99980623 -0.13965482 -0.025018027 0.98988414 0.12755392 -0.039003555 0.99106443
		 0.12755392 -0.039003555 0.99106443 -0.13965482 -0.025018027 0.98988414 -0.26765183
		 -0.025103489 0.96318865 -0.0028918663 -0.039522428 0.99921453 -0.0028918663 -0.039522428
		 0.99921453 -0.26765183 -0.025103489 0.96318865 -0.39106792 -0.025259985 0.9200151
		 -0.13328411 -0.040041491 0.99026871 -0.13328411 -0.040041491 0.99026871 -0.39106792
		 -0.025259985 0.9200151 -0.50779474 -0.025415774 0.86110318 -0.26139119 -0.04056007
		 0.96438044 -0.26139119 -0.04056007 0.96438044 -0.50779474 -0.025415774 0.86110318;
	setAttr ".n[1494:1659]" -type "float3"  -0.61583436 -0.025571452 0.78746051 -0.38502073
		 -0.04107869 0.92199326 -0.38502073 -0.04107869 0.92199326 -0.61583436 -0.025571452
		 0.78746051 -0.71333921 -0.025727058 0.70034653 -0.50205821 -0.041597538 0.86383283
		 -0.50205821 -0.041597538 0.86383283 -0.71333921 -0.025727058 0.70034653 -0.79864103
		 -0.025882265 0.60125089 -0.61050129 -0.042116158 0.79089469 -0.61050129 -0.042116158
		 0.79089469 -0.79864103 -0.025882265 0.60125089 -0.87027973 -0.026037155 0.49186918
		 -0.70849437 -0.042634677 0.70442748 -0.70849437 -0.042634677 0.70442748 -0.87027973
		 -0.026037155 0.49186918 -0.92702973 -0.026191831 0.37407193 -0.79436141 -0.043153305
		 0.60591078 -0.79436141 -0.043153305 0.60591078 -0.92702973 -0.026191831 0.37407193
		 -0.96791953 -0.026346242 0.24987522 -0.86663306 -0.043671601 0.49703115 -0.86663306
		 -0.043671601 0.49703115 -0.96791953 -0.026346242 0.24987522 -0.99224943 -0.026500279
		 0.12140304 -0.92407352 -0.044189971 0.37965146 -0.92407352 -0.044189971 0.37965146
		 -0.99224943 -0.026500279 0.12140304 -0.99960291 -0.026654325 -0.009145706 -0.96570039
		 -0.044708475 0.25578114 -0.96570039 -0.044708475 0.25578114 -0.99960291 -0.026654325
		 -0.009145706 -0.98985374 -0.026808256 -0.13953789 -0.99080175 -0.04522698 0.12753947
		 -0.99080175 -0.04522698 0.12753947 -0.98985374 -0.026808256 -0.13953789 -0.96316844
		 -0.026961641 -0.26754376 -0.99894899 -0.045745213 -0.0028796371 -0.99894899 -0.045745213
		 -0.0028796371 -0.96316844 -0.026961641 -0.26754376 -0.92000335 -0.027114749 -0.39097136
		 -0.99000293 -0.046263359 -0.13324347 -0.99000293 -0.046263359 -0.13324347 -0.92000335
		 -0.027114749 -0.39097136 -0.86109698 -0.027267598 -0.50770932 -0.96411747 -0.046781372
		 -0.26132163 -0.96411747 -0.046781372 -0.26132163 -0.86109698 -0.027267598 -0.50770932
		 -0.78745645 -0.02742029 -0.61576009 -0.92173612 -0.047299605 -0.38492239 -0.92173612
		 -0.047299605 -0.38492239 -0.78745645 -0.02742029 -0.61576009 -0.70034224 -0.02757274
		 -0.7132746 -0.86358476 -0.047817688 -0.50193125 -0.86358476 -0.047817688 -0.50193125
		 -0.70034224 -0.02757274 -0.7132746 -0.60124433 -0.027724775 -0.79858416 -0.79065889
		 -0.048335511 -0.61034596 -0.79065889 -0.048335511 -0.61034596 -0.60124433 -0.027724775
		 -0.79858416 -0.49185875 -0.027876571 -0.87022853 -0.70420712 -0.048853308 -0.70831174
		 -0.70420712 -0.048853308 -0.70831174 -0.49185875 -0.027876571 -0.87022853 -0.37407458
		 -0.027927946 -0.92697805 -0.60570985 -0.04937109 -0.79415244 -0.60570985 -0.04937109
		 -0.79415244 -0.37407458 -0.027927946 -0.92697805 -0.2504313 -0.021626964 -0.96789277
		 -0.49730879 -0.049958754 -0.86613399 -0.49730879 -0.049958754 -0.86613399 -0.2504313
		 -0.021626964 -0.96789277 -0.066640861 -0.30890426 -0.9487555 -0.24210882 -0.27518526
		 -0.93040657 -0.29640833 0.86192352 -0.41137552 -0.4349007 0.90047842 5.6163174e-08
		 -0.31404459 0.94940823 4.1278838e-08 -0.1570223 0.94940817 -0.27197063 -0.29640833
		 0.86192352 -0.41137552 -0.1570223 0.94940817 -0.27197063 4.1885876e-08 0.94940817
		 -0.31404459 3.3697901e-08 0.90047842 -0.43490073 0.41137552 0.86192352 -0.29640844
		 3.3697901e-08 0.90047842 -0.43490073 4.1885876e-08 0.94940817 -0.31404459 0.2719706
		 0.94940823 -0.1570224 0.41137552 0.86192352 -0.29640844 0.2719706 0.94940823 -0.1570224
		 0.31404459 0.94940823 -1.2140835e-08 0.43490067 0.90047842 -6.739581e-08 0.29640836
		 0.86192364 0.41137555 0.43490067 0.90047842 -6.739581e-08 0.31404459 0.94940823 -1.2140835e-08
		 0.15702233 0.94940823 0.2719706 0.29640836 0.86192364 0.41137555 0.15702233 0.94940823
		 0.2719706 2.7316879e-08 0.94940823 0.31404459 5.6163174e-08 0.90047842 0.43490073
		 -0.41137552 0.86192358 0.29640827 5.6163174e-08 0.90047842 0.43490073 2.7316879e-08
		 0.94940823 0.31404459 -0.27197057 0.94940823 0.15702233 -0.41137552 0.86192358 0.29640827
		 -0.27197057 0.94940823 0.15702233 -0.31404459 0.94940823 4.1278838e-08 -0.4349007
		 0.90047842 5.6163174e-08 -0.1570223 0.94940817 -0.27197063 -0.31404459 0.94940823
		 4.1278838e-08 -0.13996455 0.99015653 8.1486187e-09 -0.1212129 0.99015653 -0.069982201
		 -0.06998229 0.99015647 -0.12121284 -0.1570223 0.94940817 -0.27197063 -0.06998229
		 0.99015647 -0.12121284 5.7040332e-08 0.99015653 -0.13996457 4.1885876e-08 0.94940817
		 -0.31404459 0.2719706 0.94940823 -0.1570224 4.1885876e-08 0.94940817 -0.31404459
		 5.7040332e-08 0.99015653 -0.13996457 0.069982238 0.99015647 -0.1212129 0.12121288
		 0.99015659 -0.069982246 0.2719706 0.94940823 -0.1570224 0.12121288 0.99015659 -0.069982246
		 0.13996452 0.99015653 2.6483026e-08 0.31404459 0.94940823 -1.2140835e-08 0.15702233
		 0.94940823 0.2719706 0.31404459 0.94940823 -1.2140835e-08 0.13996452 0.99015653 2.6483026e-08
		 0.12121291 0.99015653 0.069982179 0.069982305 0.99015653 0.12121284 0.15702233 0.94940823
		 0.2719706 0.069982305 0.99015653 0.12121284 2.4445857e-08 0.99015653 0.13996455 2.7316879e-08
		 0.94940823 0.31404459 -0.27197057 0.94940823 0.15702233 2.7316879e-08 0.94940823
		 0.31404459 2.4445857e-08 0.99015653 0.13996455 -0.069982231 0.99015647 0.12121288
		 -0.12121286 0.99015653 0.069982275 -0.27197057 0.94940823 0.15702233 -0.12121286
		 0.99015653 0.069982275 -0.13996455 0.99015653 8.1486187e-09 -0.31404459 0.94940823
		 4.1278838e-08 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0
		 1 0 -0.98463225 -0.17091027 0.035903726 -0.99330181 -0.11547123 -0.0042312215 -0.85343432
		 -0.16911539 -0.49300095 -0.84445357 -0.25928798 -0.46868739 -0.84445357 -0.25928798
		 -0.46868739 -0.85343432 -0.16911539 -0.49300095 -0.49202368 -0.17773113 -0.85224664
		 -0.47406444 -0.27335262 -0.83698344 -0.47406444 -0.27335262 -0.83698344 -0.49202368
		 -0.17773113 -0.85224664 -0.0021799728 -0.13881718 -0.99031568 0.029966967 -0.20948148
		 -0.97735333;
	setAttr ".n[1660:1825]" -type "float3"  0.029966967 -0.20948148 -0.97735333 -0.0021799728
		 -0.13881718 -0.99031568 0.49078259 -0.063621238 -0.86895621 0.53492039 -0.085553423
		 -0.84055984 0.53492039 -0.085553423 -0.84055984 0.49078259 -0.063621238 -0.86895621
		 0.85680687 0.026611736 -0.51495034 0.88521445 0.057729997 -0.46158713 0.88521445
		 0.057729997 -0.46158713 0.85680687 0.026611736 -0.51495034 0.99403089 0.10745843
		 -0.018850522 0.9839496 0.17567106 0.031347994 0.9839496 0.17567106 0.031347994 0.99403089
		 0.10745843 -0.018850522 0.86003989 0.15815018 0.48509789 0.8332094 0.24317512 0.49661657
		 0.8332094 0.24317512 0.49661657 0.86003989 0.15815018 0.48509789 0.4887763 0.16619596
		 0.8564325 0.48929799 0.2534008 0.83449119 0.48929799 0.2534008 0.83449119 0.4887763
		 0.16619596 0.8564325 -0.016799295 0.12964824 0.99141765 0.02550883 0.20586754 0.97824734
		 0.02550883 0.20586754 0.97824734 -0.016799295 0.12964824 0.99141765 -0.51564491 0.057430174
		 0.8548755 -0.46236965 0.1040711 0.88055867 -0.46236965 0.1040711 0.88055867 -0.51564491
		 0.057430174 0.8548755 -0.87181413 -0.032217838 0.48877606 -0.84241235 -0.034647573
		 0.53771836 -0.84241235 -0.034647573 0.53771836 -0.87181413 -0.032217838 0.48877606
		 -0.99330181 -0.11547123 -0.0042312215 -0.98463225 -0.17091027 0.035903726 -0.99330181
		 -0.11547123 -0.0042312215 -0.99986821 -0.014524314 -0.0072477423 -0.86420923 -0.021317312
		 -0.5026809 -0.85343432 -0.16911539 -0.49300095 -0.85343432 -0.16911539 -0.49300095
		 -0.86420923 -0.021317312 -0.5026809 -0.50123143 -0.022408919 -0.86502302 -0.49202368
		 -0.17773113 -0.85224664 -0.49202368 -0.17773113 -0.85224664 -0.50123143 -0.022408919
		 -0.86502302 -0.0059879683 -0.017483089 -0.99982929 -0.0021799728 -0.13881718 -0.99031568
		 -0.0021799728 -0.13881718 -0.99031568 -0.0059879683 -0.017483089 -0.99982929 0.49223042
		 -0.0079465508 -0.87042868 0.49078259 -0.063621238 -0.86895621 0.49078259 -0.063621238
		 -0.86895621 0.49223042 -0.0079465508 -0.87042868 0.86120385 0.0035103452 -0.50824755
		 0.85680687 0.026611736 -0.51495034 0.85680687 0.026611736 -0.51495034 0.86120385
		 0.0035103452 -0.50824755 0.99987662 0.013765193 -0.0075690551 0.99403089 0.10745843
		 -0.018850522 0.99403089 0.10745843 -0.018850522 0.99987662 0.013765193 -0.0075690551
		 0.86756587 0.020176493 0.49691287 0.86003989 0.15815018 0.48509789 0.86003989 0.15815018
		 0.48509789 0.86756587 0.020176493 0.49691287 0.49843588 0.021192215 0.86666751 0.4887763
		 0.16619596 0.8564325 0.4887763 0.16619596 0.8564325 0.49843588 0.021192215 0.86666751
		 -0.0063099666 0.016574766 0.99984264 -0.016799295 0.12964824 0.99141765 -0.016799295
		 0.12964824 0.99141765 -0.0063099666 0.016574766 0.99984264 -0.50788349 0.0074223904
		 0.86139381 -0.51564491 0.057430174 0.8548755 -0.51564491 0.057430174 0.8548755 -0.50788349
		 0.0074223904 0.86139381 -0.87070221 -0.0039604618 0.49179456 -0.87181413 -0.032217838
		 0.48877606 -0.87181413 -0.032217838 0.48877606 -0.87070221 -0.0039604618 0.49179456
		 -0.99986821 -0.014524314 -0.0072477423 -0.99330181 -0.11547123 -0.0042312215 -0.99986821
		 -0.014524314 -0.0072477423 -0.99874115 0.050021365 -0.0037533659 -0.86302614 0.072997652
		 -0.49985725 -0.86420923 -0.021317312 -0.5026809 -0.86420923 -0.021317312 -0.5026809
		 -0.86302614 0.072997652 -0.49985725 -0.49908635 0.076655753 -0.86315519 -0.50123143
		 -0.022408919 -0.86502302 -0.50123143 -0.022408919 -0.86502302 -0.49908635 0.076655753
		 -0.86315519 -0.0028624029 0.060062587 -0.99819046 -0.0059879683 -0.017483089 -0.99982929
		 -0.0059879683 -0.017483089 -0.99982929 -0.0028624029 0.060062587 -0.99819046 0.49511442
		 0.027475629 -0.86839324 0.49223042 -0.0079465508 -0.87042868 0.49223042 -0.0079465508
		 -0.87042868 0.49511442 0.027475629 -0.86839324 0.86230505 -0.012619674 -0.50623202
		 0.86120385 0.0035103452 -0.50824755 0.86120385 0.0035103452 -0.50824755 0.86230505
		 -0.012619674 -0.50623202 0.9987492 -0.049537126 -0.0067935814 0.99987662 0.013765193
		 -0.0075690551 0.99987662 0.013765193 -0.0075690551 0.9987492 -0.049537126 -0.0067935814
		 0.86539304 -0.073186181 0.49572036 0.86756587 0.020176493 0.49691287 0.86756587 0.020176493
		 0.49691287 0.86539304 -0.073186181 0.49572036 0.49706653 -0.076976918 0.86429131
		 0.49843588 0.021192215 0.86666751 0.49843588 0.021192215 0.86666751 0.49706653 -0.076976918
		 0.86429131 -0.0059027425 -0.059841193 0.99819052 -0.0063099666 0.016574766 0.99984264
		 -0.0063099666 0.016574766 0.99984264 -0.0059027425 -0.059841193 0.99819052 -0.50624019
		 -0.026578238 0.86198276 -0.50788349 0.0074223904 0.86139381 -0.50788349 0.0074223904
		 0.86139381 -0.50624019 -0.026578238 0.86198276 -0.86904347 0.013648771 0.49454749
		 -0.87070221 -0.0039604618 0.49179456 -0.87070221 -0.0039604618 0.49179456 -0.86904347
		 0.013648771 0.49454749 -0.99874115 0.050021365 -0.0037533659 -0.99986821 -0.014524314
		 -0.0072477423 -0.99874115 0.050021365 -0.0037533659 -0.99488223 0.10103289 0.0013250471
		 -0.85735893 0.1484977 -0.49283275 -0.86302614 0.072997652 -0.49985725 -0.86302614
		 0.072997652 -0.49985725 -0.85735893 0.1484977 -0.49283275 -0.49299487 0.15611361
		 -0.85591155 -0.49908635 0.076655753 -0.86315519 -0.49908635 0.076655753 -0.86315519
		 -0.49299487 0.15611361 -0.85591155 0.0021181866 0.12169972 -0.99256462 -0.0028624029
		 0.060062587 -0.99819046 -0.0028624029 0.060062587 -0.99819046 0.0021181866 0.12169972
		 -0.99256462 0.4977777 0.055068042 -0.86555463 0.49511442 0.027475629 -0.86839324
		 0.49511442 0.027475629 -0.86839324 0.4977777 0.055068042 -0.86555463 0.86185277 -0.025203928
		 -0.50653201 0.86230505 -0.012619674 -0.50623202 0.86230505 -0.012619674 -0.50623202
		 0.86185277 -0.025203928 -0.50653201 0.99518442 -0.097491816 -0.01016147 0.9987492
		 -0.049537126 -0.0067935814 0.9987492 -0.049537126 -0.0067935814 0.99518442 -0.097491816
		 -0.01016147 0.85997623 -0.14300784 0.48988724 0.86539304 -0.073186181 0.49572036
		 0.86539304 -0.073186181 0.49572036 0.85997623 -0.14300784 0.48988724 0.49183124 -0.15024659
		 0.85762936 0.49706653 -0.076976918 0.86429131 0.49706653 -0.076976918 0.86429131
		 0.49183124 -0.15024659 0.85762936;
	setAttr ".n[1826:1887]" -type "float3"  -0.0093686953 -0.11739822 0.99304062
		 -0.0059027425 -0.059841193 0.99819052 -0.0059027425 -0.059841193 0.99819052 -0.0093686953
		 -0.11739822 0.99304062 -0.50732809 -0.052716058 0.86013907 -0.50624019 -0.026578238
		 0.86198276 -0.50624019 -0.026578238 0.86198276 -0.50732809 -0.052716058 0.86013907
		 -0.86763066 0.027175779 0.49646586 -0.86904347 0.013648771 0.49454749 -0.86904347
		 0.013648771 0.49454749 -0.86763066 0.027175779 0.49646586 -0.99488223 0.10103289
		 0.0013250471 -0.99874115 0.050021365 -0.0037533659 -0.99488223 0.10103289 0.0013250471
		 -0.99219507 0.1220864 0.02537409 -0.85692513 0.1842953 -0.48136753 -0.85735893 0.1484977
		 -0.49283275 -0.85735893 0.1484977 -0.49283275 -0.85692513 0.1842953 -0.48136753 -0.48557997
		 0.19429423 -0.85232729 -0.49299487 0.15611361 -0.85591155 -0.49299487 0.15611361
		 -0.85591155 -0.48557997 0.19429423 -0.85232729 0.021199018 0.14913011 -0.98859036
		 0.0021181866 0.12169972 -0.99256462 0.0021181866 0.12169972 -0.99256462 0.021199018
		 0.14913011 -0.98859036 0.52513403 0.062475286 -0.84872323 0.4977777 0.055068042 -0.86555463
		 0.4977777 0.055068042 -0.86555463 0.52513403 0.062475286 -0.84872323 0.88034695 -0.03843604
		 -0.47277048 0.86185277 -0.025203928 -0.50653201 0.86185277 -0.025203928 -0.50653201
		 0.88034695 -0.03843604 -0.47277048 0.99199665 -0.12416001 0.022954296 0.99518442
		 -0.097491816 -0.01016147 0.99518442 -0.097491816 -0.01016147 0.99199665 -0.12416001
		 0.022954296 0.84759581 -0.17505249 0.50093704 0.85997623 -0.14300784 0.48988724 0.85997623
		 -0.14300784 0.48988724 0.84759581 -0.17505249 0.50093704 0.49575707 -0.18290901 0.84898126
		 0.49183124 -0.15024659 0.85762936 0.49183124 -0.15024659 0.85762936 0.49575707 -0.18290901
		 0.84898126 0.018804653 -0.14672934 0.98899794 -0.0093686953 -0.11739822 0.99304062
		 -0.0093686953 -0.11739822 0.99304062 0.018804653 -0.14672934 0.98899794 -0.47357202
		 -0.071720526 0.87783009 -0.50732809 -0.052716058 0.86013907 -0.50732809 -0.052716058
		 0.86013907 -0.47357202 -0.071720526 0.87783009 -0.84949178 0.026856834 0.52691787
		 -0.86763066 0.027175779 0.49646586 -0.86763066 0.027175779 0.49646586 -0.84949178
		 0.026856834 0.52691787 -0.99219507 0.1220864 0.02537409 -0.99488223 0.10103289 0.0013250471;
	setAttr -s 469 -ch 1888 ".fc[0:468]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 472 473 474 475
		f 4 4 5 6 7
		mu 0 4 476 477 478 479
		f 4 8 9 10 11
		mu 0 4 480 481 482 483
		f 4 12 13 14 15
		mu 0 4 484 485 486 487
		f 4 16 17 18 -2
		mu 0 4 473 488 489 474
		f 4 19 20 21 -6
		mu 0 4 477 490 491 478
		f 4 22 23 24 -10
		mu 0 4 481 492 493 482
		f 4 25 26 27 -14
		mu 0 4 485 494 495 486
		f 4 28 29 30 -18
		mu 0 4 488 496 497 489
		f 4 31 32 33 -21
		mu 0 4 490 498 499 491
		f 4 34 35 36 -24
		mu 0 4 492 500 501 493
		f 4 37 38 39 -27
		mu 0 4 494 502 503 495
		f 4 40 41 42 -30
		mu 0 4 496 504 505 497
		f 4 43 44 45 -33
		mu 0 4 498 506 507 499
		f 4 46 47 48 -36
		mu 0 4 500 508 509 501
		f 4 49 50 51 -39
		mu 0 4 502 510 511 503
		f 4 52 53 54 -42
		mu 0 4 504 512 513 505
		f 4 55 56 57 -45
		mu 0 4 506 514 515 507
		f 4 58 59 60 -48
		mu 0 4 508 516 517 509
		f 4 61 62 63 -51
		mu 0 4 510 518 519 511
		f 4 64 65 66 -54
		mu 0 4 512 520 521 513
		f 4 67 68 69 -57
		mu 0 4 514 522 523 515
		f 4 70 71 72 -60
		mu 0 4 516 524 525 517
		f 4 73 74 75 -63
		mu 0 4 518 526 527 519
		f 4 76 77 78 -66
		mu 0 4 520 528 529 521
		f 4 79 80 81 -69
		mu 0 4 522 530 531 523
		f 4 82 83 84 -72
		mu 0 4 524 532 533 525
		f 4 85 86 87 -75
		mu 0 4 526 534 535 527
		f 4 88 89 90 -78
		mu 0 4 528 536 537 529
		f 4 91 92 93 -81
		mu 0 4 530 538 539 531
		f 4 94 95 96 -84
		mu 0 4 532 540 541 533
		f 4 97 98 99 -87
		mu 0 4 534 542 543 535
		f 4 100 101 102 -90
		mu 0 4 536 544 545 537
		f 4 103 104 105 -93
		mu 0 4 538 546 547 539
		f 4 106 107 108 -96
		mu 0 4 540 548 549 541
		f 4 109 110 111 -99
		mu 0 4 542 550 551 543
		f 4 112 113 114 -102
		mu 0 4 544 552 553 545
		f 4 115 116 117 -105
		mu 0 4 546 554 555 547
		f 4 118 119 120 -108
		mu 0 4 548 556 557 549
		f 4 121 122 123 -111
		mu 0 4 550 558 559 551
		f 4 124 125 126 -114
		mu 0 4 552 560 561 553
		f 4 127 128 129 -117
		mu 0 4 554 562 563 555
		f 4 130 131 132 -120
		mu 0 4 556 564 565 557
		f 4 133 134 135 -123
		mu 0 4 558 566 567 559
		f 4 136 137 138 -126
		mu 0 4 560 568 569 561
		f 4 139 140 141 -129
		mu 0 4 562 570 571 563
		f 4 142 143 144 -132
		mu 0 4 564 572 573 565
		f 4 145 146 147 -135
		mu 0 4 566 574 575 567
		f 4 148 149 150 -138
		mu 0 4 568 576 577 569
		f 4 151 152 153 -141
		mu 0 4 570 578 579 571
		f 4 154 155 156 -144
		mu 0 4 572 580 581 573
		f 4 157 158 159 -147
		mu 0 4 574 582 583 575
		f 4 160 161 162 -150
		mu 0 4 576 584 585 577
		f 4 163 164 165 -153
		mu 0 4 578 586 587 579
		f 4 166 167 168 -156
		mu 0 4 580 588 589 581
		f 4 169 170 171 -159
		mu 0 4 582 590 591 583
		f 4 172 173 174 -162
		mu 0 4 584 592 593 585
		f 4 175 176 177 -165
		mu 0 4 586 594 595 587
		f 4 178 179 180 -168
		mu 0 4 588 596 597 589
		f 4 181 182 183 -171
		mu 0 4 590 598 599 591
		f 4 184 185 186 -174
		mu 0 4 592 600 601 593
		f 4 187 188 189 -177
		mu 0 4 594 602 603 595
		f 4 190 191 192 -180
		mu 0 4 596 604 605 597
		f 4 193 194 195 -183
		mu 0 4 598 606 607 599
		f 4 196 197 198 -186
		mu 0 4 600 608 609 601
		f 4 199 200 201 -189
		mu 0 4 602 610 611 603
		f 4 202 203 204 -192
		mu 0 4 604 612 613 605
		f 4 205 206 207 -195
		mu 0 4 606 614 615 607
		f 4 208 209 210 -198
		mu 0 4 608 616 617 609
		f 4 211 212 213 -201
		mu 0 4 610 618 619 611
		f 4 214 215 216 -204
		mu 0 4 612 620 621 613
		f 4 217 218 219 -207
		mu 0 4 614 622 623 615
		f 4 220 221 222 -210
		mu 0 4 616 624 625 617
		f 4 223 224 225 -213
		mu 0 4 618 626 627 619
		f 4 226 227 228 -216
		mu 0 4 620 628 629 621
		f 4 229 230 231 -219
		mu 0 4 622 630 631 623
		f 4 232 233 234 -222
		mu 0 4 624 632 633 625
		f 4 235 236 237 -225
		mu 0 4 626 634 635 627
		f 4 238 239 240 -228
		mu 0 4 628 636 637 629
		f 4 241 242 243 -231
		mu 0 4 630 638 639 631
		f 4 244 245 246 -234
		mu 0 4 632 640 641 633
		f 4 247 248 249 -237
		mu 0 4 634 642 643 635
		f 4 250 251 252 -240
		mu 0 4 636 644 645 637
		f 4 253 254 255 -243
		mu 0 4 638 646 647 639
		f 4 256 257 258 -246
		mu 0 4 640 648 649 641
		f 4 259 260 261 -249
		mu 0 4 642 650 651 643
		f 4 262 263 264 -252
		mu 0 4 644 652 653 645
		f 4 265 266 267 -255
		mu 0 4 646 654 655 647
		f 4 268 269 270 -258
		mu 0 4 648 656 657 649
		f 4 271 272 273 -261
		mu 0 4 650 658 659 651
		f 4 274 275 276 -264
		mu 0 4 652 660 661 653
		f 4 277 278 279 -267
		mu 0 4 654 662 663 655
		f 4 280 281 282 -270
		mu 0 4 656 664 665 657
		f 4 283 284 285 -273
		mu 0 4 658 666 667 659
		f 4 286 287 288 -276
		mu 0 4 660 668 669 661
		f 4 289 290 291 -279
		mu 0 4 662 670 671 663
		f 4 292 293 294 295
		mu 0 4 72 73 74 75
		f 4 -294 296 297 298
		mu 0 4 74 73 76 77
		f 4 -298 299 300 301
		mu 0 4 77 76 78 79
		f 4 -301 302 303 304
		mu 0 4 79 78 80 81
		f 4 -304 305 306 307
		mu 0 4 81 80 82 83
		f 4 -307 308 309 310
		mu 0 4 83 82 84 85
		f 4 -310 311 312 313
		mu 0 4 85 84 86 87
		f 4 -313 314 315 316
		mu 0 4 87 86 88 89
		f 4 -316 317 318 319
		mu 0 4 89 88 90 91
		f 4 -319 320 321 322
		mu 0 4 91 90 92 93
		f 4 -322 323 324 325
		mu 0 4 93 92 94 95
		f 4 -325 326 327 328
		mu 0 4 95 94 96 97
		f 4 -328 329 330 331
		mu 0 4 97 96 98 99
		f 4 -331 332 333 334
		mu 0 4 99 98 100 101
		f 4 -334 335 336 337
		mu 0 4 101 100 102 103
		f 4 -337 338 339 340
		mu 0 4 103 102 104 105
		f 4 -340 341 342 343
		mu 0 4 105 104 106 107
		f 4 -343 344 345 346
		mu 0 4 107 106 108 109
		f 4 -346 347 348 349
		mu 0 4 109 108 110 111
		f 4 -349 350 351 352
		mu 0 4 111 110 112 113
		f 4 -352 353 354 355
		mu 0 4 113 112 114 115
		f 4 -355 356 357 358
		mu 0 4 115 114 116 117
		f 4 -358 359 360 361
		mu 0 4 117 116 118 119
		f 4 -361 362 363 364
		mu 0 4 119 118 120 121
		f 4 365 366 367 368
		mu 0 4 122 123 124 125
		f 4 -367 369 370 371
		mu 0 4 124 123 126 127
		f 4 -371 372 373 374
		mu 0 4 127 126 128 129
		f 4 -374 375 376 377
		mu 0 4 129 128 130 131
		f 4 -377 378 379 380
		mu 0 4 131 130 132 133
		f 4 -380 381 382 383
		mu 0 4 133 132 134 135
		f 4 -383 384 385 386
		mu 0 4 135 134 136 137
		f 4 -386 387 388 389
		mu 0 4 137 136 138 139
		f 4 -389 390 391 392
		mu 0 4 139 138 140 141
		f 4 -392 393 394 395
		mu 0 4 141 140 142 143
		f 4 -395 396 397 398
		mu 0 4 143 142 144 145
		f 4 -398 399 400 401
		mu 0 4 145 144 146 147
		f 4 -401 402 403 404
		mu 0 4 147 146 148 149
		f 4 -404 405 406 407
		mu 0 4 149 148 150 151
		f 4 -407 408 409 410
		mu 0 4 151 150 152 153
		f 4 -410 411 412 413
		mu 0 4 153 152 154 155
		f 4 -413 414 415 416
		mu 0 4 155 154 156 157
		f 4 -416 417 418 419
		mu 0 4 157 156 158 159
		f 4 -419 420 421 422
		mu 0 4 159 158 160 161
		f 4 -422 423 424 425
		mu 0 4 161 160 162 163
		f 4 -425 426 427 428
		mu 0 4 163 162 164 165
		f 4 -428 429 430 431
		mu 0 4 165 164 166 167
		f 4 -431 432 433 434
		mu 0 4 167 166 168 169
		f 4 -434 435 436 437
		mu 0 4 169 168 170 171
		f 4 438 439 440 441
		mu 0 4 172 173 174 175
		f 4 -440 442 443 444
		mu 0 4 174 173 176 177
		f 4 -444 445 446 447
		mu 0 4 177 176 178 179
		f 4 -447 448 449 450
		mu 0 4 179 178 180 181
		f 4 -450 451 452 453
		mu 0 4 181 180 182 183
		f 4 -453 454 455 456
		mu 0 4 183 182 184 185
		f 4 -456 457 458 459
		mu 0 4 185 184 186 187
		f 4 -459 460 461 462
		mu 0 4 187 186 188 189
		f 4 -462 463 464 465
		mu 0 4 189 188 190 191
		f 4 -465 466 467 468
		mu 0 4 191 190 192 193
		f 4 -468 469 470 471
		mu 0 4 193 192 194 195
		f 4 -471 472 473 474
		mu 0 4 195 194 196 197
		f 4 -474 475 476 477
		mu 0 4 197 196 198 199
		f 4 -477 478 479 480
		mu 0 4 199 198 200 201
		f 4 -480 481 482 483
		mu 0 4 201 200 202 203
		f 4 -483 484 485 486
		mu 0 4 203 202 204 205
		f 4 -486 487 488 489
		mu 0 4 205 204 206 207
		f 4 -489 490 491 492
		mu 0 4 207 206 208 209
		f 4 -492 493 494 495
		mu 0 4 209 208 210 211
		f 4 -495 496 497 498
		mu 0 4 211 210 212 213
		f 4 -498 499 500 501
		mu 0 4 213 212 214 215
		f 4 -501 502 503 504
		mu 0 4 215 214 216 217
		f 4 -504 505 506 507
		mu 0 4 217 216 218 219
		f 4 -507 508 509 510
		mu 0 4 219 218 220 221
		f 4 511 512 513 514
		mu 0 4 222 223 224 225
		f 4 -513 515 516 517
		mu 0 4 224 223 226 227
		f 4 -517 518 519 520
		mu 0 4 227 226 228 229
		f 4 -520 521 522 523
		mu 0 4 229 228 230 231
		f 4 -523 524 525 526
		mu 0 4 231 230 232 233
		f 4 -526 527 528 529
		mu 0 4 233 232 234 235
		f 4 -529 530 531 532
		mu 0 4 235 234 236 237
		f 4 -532 533 534 535
		mu 0 4 237 236 238 239
		f 4 -535 536 537 538
		mu 0 4 239 238 240 241
		f 4 -538 539 540 541
		mu 0 4 241 240 242 243
		f 4 -541 542 543 544
		mu 0 4 243 242 244 245
		f 4 -544 545 546 547
		mu 0 4 245 244 246 247
		f 4 -547 548 549 550
		mu 0 4 247 246 248 249
		f 4 -550 551 552 553
		mu 0 4 249 248 250 251
		f 4 -553 554 555 556
		mu 0 4 251 250 252 253
		f 4 -556 557 558 559
		mu 0 4 253 252 254 255
		f 4 -559 560 561 562
		mu 0 4 255 254 256 257
		f 4 -562 563 564 565
		mu 0 4 257 256 258 259
		f 4 -565 566 567 568
		mu 0 4 259 258 260 261
		f 4 -568 569 570 571
		mu 0 4 261 260 262 263
		f 4 -571 572 573 574
		mu 0 4 263 262 264 265
		f 4 -574 575 576 577
		mu 0 4 265 264 266 267
		f 4 -577 578 579 580
		mu 0 4 267 266 268 269
		f 4 -580 581 582 583
		mu 0 4 269 268 270 271
		f 4 585 584 -296 586
		mu 0 4 272 273 72 75
		f 4 -587 -295 587 -1
		mu 0 4 272 75 74 274
		f 4 -588 -299 588 -17
		mu 0 4 274 74 77 275
		f 4 -589 -302 589 -29
		mu 0 4 275 77 79 276
		f 4 -590 -305 590 -41
		mu 0 4 276 79 81 277
		f 4 -591 -308 591 -53
		mu 0 4 277 81 83 278
		f 4 -592 -311 592 -65
		mu 0 4 278 83 85 279
		f 4 -593 -314 593 -77
		mu 0 4 279 85 87 280
		f 4 -594 -317 594 -89
		mu 0 4 280 87 89 281
		f 4 -595 -320 595 -101
		mu 0 4 281 89 91 282
		f 4 -596 -323 596 -113
		mu 0 4 282 91 93 283
		f 4 -597 -326 597 -125
		mu 0 4 283 93 95 284
		f 4 -598 -329 598 -137
		mu 0 4 284 95 97 285
		f 4 -599 -332 599 -149
		mu 0 4 285 97 99 286
		f 4 -600 -335 600 -161
		mu 0 4 286 99 101 287
		f 4 -601 -338 601 -173
		mu 0 4 287 101 103 288
		f 4 -602 -341 602 -185
		mu 0 4 288 103 105 289
		f 4 -603 -344 603 -197
		mu 0 4 289 105 107 290
		f 4 -604 -347 604 -209
		mu 0 4 290 107 109 291
		f 4 -605 -350 605 -221
		mu 0 4 291 109 111 292
		f 4 -606 -353 606 -233
		mu 0 4 292 111 113 293
		f 4 -607 -356 607 -245
		mu 0 4 293 113 115 294
		f 4 -608 -359 608 -257
		mu 0 4 294 115 117 295
		f 4 -609 -362 609 -269
		mu 0 4 295 117 119 296
		f 4 -610 -365 610 -281
		mu 0 4 296 119 121 297
		f 4 -611 -364 611 612
		mu 0 4 297 121 120 298
		f 4 -612 -363 613 -292
		mu 0 4 298 120 118 299
		f 4 -614 -360 614 -280
		mu 0 4 299 118 116 300
		f 4 -615 -357 615 -268
		mu 0 4 300 116 114 301
		f 4 -616 -354 616 -256
		mu 0 4 301 114 112 302
		f 4 -617 -351 617 -244
		mu 0 4 302 112 110 303
		f 4 -618 -348 618 -232
		mu 0 4 303 110 108 304
		f 4 -619 -345 619 -220
		mu 0 4 304 108 106 305
		f 4 -620 -342 620 -208
		mu 0 4 305 106 104 306
		f 4 -621 -339 621 -196
		mu 0 4 306 104 102 307
		f 4 -622 -336 622 -184
		mu 0 4 307 102 100 308
		f 4 -623 -333 623 -172
		mu 0 4 308 100 98 309
		f 4 -624 -330 624 -160
		mu 0 4 309 98 96 310
		f 4 -625 -327 625 -148
		mu 0 4 310 96 94 311
		f 4 -626 -324 626 -136
		mu 0 4 311 94 92 312
		f 4 -627 -321 627 -124
		mu 0 4 312 92 90 313
		f 4 -628 -318 628 -112
		mu 0 4 313 90 88 314
		f 4 -629 -315 629 -100
		mu 0 4 314 88 86 315
		f 4 -630 -312 630 -88
		mu 0 4 315 86 84 316
		f 4 -631 -309 631 -76
		mu 0 4 316 84 82 317
		f 4 -632 -306 632 -64
		mu 0 4 317 82 80 318
		f 4 -633 -303 633 -52
		mu 0 4 318 80 78 319
		f 4 -634 -300 634 -40
		mu 0 4 319 78 76 320
		f 4 -635 -297 635 -28
		mu 0 4 320 76 73 321
		f 4 -636 -293 -585 -15
		mu 0 4 321 73 72 273
		f 4 637 636 -369 638
		mu 0 4 322 323 122 125
		f 4 -639 -368 639 -5
		mu 0 4 322 125 124 324
		f 4 -640 -372 640 -20
		mu 0 4 324 124 127 325
		f 4 -641 -375 641 -32
		mu 0 4 325 127 129 326
		f 4 -642 -378 642 -44
		mu 0 4 326 129 131 327
		f 4 -643 -381 643 -56
		mu 0 4 327 131 133 328
		f 4 -644 -384 644 -68
		mu 0 4 328 133 135 329
		f 4 -645 -387 645 -80
		mu 0 4 329 135 137 330
		f 4 -646 -390 646 -92
		mu 0 4 330 137 139 331
		f 4 -647 -393 647 -104
		mu 0 4 331 139 141 332
		f 4 -648 -396 648 -116
		mu 0 4 332 141 143 333
		f 4 -649 -399 649 -128
		mu 0 4 333 143 145 334
		f 4 -650 -402 650 -140
		mu 0 4 334 145 147 335
		f 4 -651 -405 651 -152
		mu 0 4 335 147 149 336
		f 4 -652 -408 652 -164
		mu 0 4 336 149 151 337
		f 4 -653 -411 653 -176
		mu 0 4 337 151 153 338
		f 4 -654 -414 654 -188
		mu 0 4 338 153 155 339
		f 4 -655 -417 655 -200
		mu 0 4 339 155 157 340
		f 4 -656 -420 656 -212
		mu 0 4 340 157 159 341
		f 4 -657 -423 657 -224
		mu 0 4 341 159 161 342
		f 4 -658 -426 658 -236
		mu 0 4 342 161 163 343
		f 4 -659 -429 659 -248
		mu 0 4 343 163 165 344
		f 4 -660 -432 660 -260
		mu 0 4 344 165 167 345
		f 4 -661 -435 661 -272
		mu 0 4 345 167 169 346
		f 4 -662 -438 662 -284
		mu 0 4 346 169 171 347
		f 4 -663 -437 663 664
		mu 0 4 347 171 170 348
		f 4 -664 -436 665 -283
		mu 0 4 348 170 168 349
		f 4 -666 -433 666 -271
		mu 0 4 349 168 166 350
		f 4 -667 -430 667 -259
		mu 0 4 350 166 164 351
		f 4 -668 -427 668 -247
		mu 0 4 351 164 162 352
		f 4 -669 -424 669 -235
		mu 0 4 352 162 160 353
		f 4 -670 -421 670 -223
		mu 0 4 353 160 158 354
		f 4 -671 -418 671 -211
		mu 0 4 354 158 156 355
		f 4 -672 -415 672 -199
		mu 0 4 355 156 154 356
		f 4 -673 -412 673 -187
		mu 0 4 356 154 152 357
		f 4 -674 -409 674 -175
		mu 0 4 357 152 150 358
		f 4 -675 -406 675 -163
		mu 0 4 358 150 148 359
		f 4 -676 -403 676 -151
		mu 0 4 359 148 146 360
		f 4 -677 -400 677 -139
		mu 0 4 360 146 144 361
		f 4 -678 -397 678 -127
		mu 0 4 361 144 142 362
		f 4 -679 -394 679 -115
		mu 0 4 362 142 140 363
		f 4 -680 -391 680 -103
		mu 0 4 363 140 138 364
		f 4 -681 -388 681 -91
		mu 0 4 364 138 136 365
		f 4 -682 -385 682 -79
		mu 0 4 365 136 134 366
		f 4 -683 -382 683 -67
		mu 0 4 366 134 132 367
		f 4 -684 -379 684 -55
		mu 0 4 367 132 130 368
		f 4 -685 -376 685 -43
		mu 0 4 368 130 128 369
		f 4 -686 -373 686 -31
		mu 0 4 369 128 126 370
		f 4 -687 -370 687 -19
		mu 0 4 370 126 123 371
		f 4 -688 -366 -637 -3
		mu 0 4 371 123 122 323
		f 4 689 688 -442 690
		mu 0 4 372 373 172 175
		f 4 -691 -441 691 -9
		mu 0 4 372 175 174 374
		f 4 -692 -445 692 -23
		mu 0 4 374 174 177 375
		f 4 -693 -448 693 -35
		mu 0 4 375 177 179 376
		f 4 -694 -451 694 -47
		mu 0 4 376 179 181 377
		f 4 -695 -454 695 -59
		mu 0 4 377 181 183 378
		f 4 -696 -457 696 -71
		mu 0 4 378 183 185 379
		f 4 -697 -460 697 -83
		mu 0 4 379 185 187 380
		f 4 -698 -463 698 -95
		mu 0 4 380 187 189 381
		f 4 -699 -466 699 -107
		mu 0 4 381 189 191 382
		f 4 -700 -469 700 -119
		mu 0 4 382 191 193 383
		f 4 -701 -472 701 -131
		mu 0 4 383 193 195 384
		f 4 -702 -475 702 -143
		mu 0 4 384 195 197 385
		f 4 -703 -478 703 -155
		mu 0 4 385 197 199 386
		f 4 -704 -481 704 -167
		mu 0 4 386 199 201 387
		f 4 -705 -484 705 -179
		mu 0 4 387 201 203 388
		f 4 -706 -487 706 -191
		mu 0 4 388 203 205 389
		f 4 -707 -490 707 -203
		mu 0 4 389 205 207 390
		f 4 -708 -493 708 -215
		mu 0 4 390 207 209 391
		f 4 -709 -496 709 -227
		mu 0 4 391 209 211 392
		f 4 -710 -499 710 -239
		mu 0 4 392 211 213 393
		f 4 -711 -502 711 -251
		mu 0 4 393 213 215 394
		f 4 -712 -505 712 -263
		mu 0 4 394 215 217 395
		f 4 -713 -508 713 -275
		mu 0 4 395 217 219 396
		f 4 -714 -511 714 -287
		mu 0 4 396 219 221 397
		f 4 -715 -510 715 716
		mu 0 4 397 221 220 398
		f 4 -716 -509 717 -286
		mu 0 4 398 220 218 399
		f 4 -718 -506 718 -274
		mu 0 4 399 218 216 400
		f 4 -719 -503 719 -262
		mu 0 4 400 216 214 401
		f 4 -720 -500 720 -250
		mu 0 4 401 214 212 402
		f 4 -721 -497 721 -238
		mu 0 4 402 212 210 403
		f 4 -722 -494 722 -226
		mu 0 4 403 210 208 404
		f 4 -723 -491 723 -214
		mu 0 4 404 208 206 405
		f 4 -724 -488 724 -202
		mu 0 4 405 206 204 406
		f 4 -725 -485 725 -190
		mu 0 4 406 204 202 407
		f 4 -726 -482 726 -178
		mu 0 4 407 202 200 408
		f 4 -727 -479 727 -166
		mu 0 4 408 200 198 409
		f 4 -728 -476 728 -154
		mu 0 4 409 198 196 410
		f 4 -729 -473 729 -142
		mu 0 4 410 196 194 411
		f 4 -730 -470 730 -130
		mu 0 4 411 194 192 412
		f 4 -731 -467 731 -118
		mu 0 4 412 192 190 413
		f 4 -732 -464 732 -106
		mu 0 4 413 190 188 414
		f 4 -733 -461 733 -94
		mu 0 4 414 188 186 415
		f 4 -734 -458 734 -82
		mu 0 4 415 186 184 416
		f 4 -735 -455 735 -70
		mu 0 4 416 184 182 417
		f 4 -736 -452 736 -58
		mu 0 4 417 182 180 418
		f 4 -737 -449 737 -46
		mu 0 4 418 180 178 419
		f 4 -738 -446 738 -34
		mu 0 4 419 178 176 420
		f 4 -739 -443 739 -22
		mu 0 4 420 176 173 421
		f 4 -740 -439 -689 -7
		mu 0 4 421 173 172 373
		f 4 741 740 -515 742
		mu 0 4 422 423 222 225
		f 4 -743 -514 743 -13
		mu 0 4 422 225 224 424
		f 4 -744 -518 744 -26
		mu 0 4 424 224 227 425
		f 4 -745 -521 745 -38
		mu 0 4 425 227 229 426
		f 4 -746 -524 746 -50
		mu 0 4 426 229 231 427
		f 4 -747 -527 747 -62
		mu 0 4 427 231 233 428
		f 4 -748 -530 748 -74
		mu 0 4 428 233 235 429
		f 4 -749 -533 749 -86
		mu 0 4 429 235 237 430
		f 4 -750 -536 750 -98
		mu 0 4 430 237 239 431
		f 4 -751 -539 751 -110
		mu 0 4 431 239 241 432
		f 4 -752 -542 752 -122
		mu 0 4 432 241 243 433
		f 4 -753 -545 753 -134
		mu 0 4 433 243 245 434
		f 4 -754 -548 754 -146
		mu 0 4 434 245 247 435
		f 4 -755 -551 755 -158
		mu 0 4 435 247 249 436
		f 4 -756 -554 756 -170
		mu 0 4 436 249 251 437
		f 4 -757 -557 757 -182
		mu 0 4 437 251 253 438
		f 4 -758 -560 758 -194
		mu 0 4 438 253 255 439
		f 4 -759 -563 759 -206
		mu 0 4 439 255 257 440
		f 4 -760 -566 760 -218
		mu 0 4 440 257 259 441
		f 4 -761 -569 761 -230
		mu 0 4 441 259 261 442
		f 4 -762 -572 762 -242
		mu 0 4 442 261 263 443
		f 4 -763 -575 763 -254
		mu 0 4 443 263 265 444
		f 4 -764 -578 764 -266
		mu 0 4 444 265 267 445
		f 4 -765 -581 765 -278
		mu 0 4 445 267 269 446
		f 4 -766 -584 766 -290
		mu 0 4 446 269 271 447
		f 4 -767 -583 767 768
		mu 0 4 447 271 270 448
		f 4 -768 -582 769 -289
		mu 0 4 448 270 268 449
		f 4 -770 -579 770 -277
		mu 0 4 449 268 266 450
		f 4 -771 -576 771 -265
		mu 0 4 450 266 264 451
		f 4 -772 -573 772 -253
		mu 0 4 451 264 262 452
		f 4 -773 -570 773 -241
		mu 0 4 452 262 260 453
		f 4 -774 -567 774 -229
		mu 0 4 453 260 258 454
		f 4 -775 -564 775 -217
		mu 0 4 454 258 256 455
		f 4 -776 -561 776 -205
		mu 0 4 455 256 254 456
		f 4 -777 -558 777 -193
		mu 0 4 456 254 252 457
		f 4 -778 -555 778 -181
		mu 0 4 457 252 250 458
		f 4 -779 -552 779 -169
		mu 0 4 458 250 248 459
		f 4 -780 -549 780 -157
		mu 0 4 459 248 246 460
		f 4 -781 -546 781 -145
		mu 0 4 460 246 244 461
		f 4 -782 -543 782 -133
		mu 0 4 461 244 242 462
		f 4 -783 -540 783 -121
		mu 0 4 462 242 240 463
		f 4 -784 -537 784 -109
		mu 0 4 463 240 238 464
		f 4 -785 -534 785 -97
		mu 0 4 464 238 236 465
		f 4 -786 -531 786 -85
		mu 0 4 465 236 234 466
		f 4 -787 -528 787 -73
		mu 0 4 466 234 232 467
		f 4 -788 -525 788 -61
		mu 0 4 467 232 230 468
		f 4 -789 -522 789 -49
		mu 0 4 468 230 228 469
		f 4 -790 -519 790 -37
		mu 0 4 469 228 226 470
		f 4 -791 -516 791 -25
		mu 0 4 470 226 223 471
		f 4 -792 -512 -741 -11
		mu 0 4 471 223 222 423
		f 4 -613 792 793 794
		mu 0 4 664 671 672 673
		f 4 -795 795 796 -282
		mu 0 4 664 673 674 665
		f 4 -665 -797 797 798
		mu 0 4 666 665 674 675
		f 4 -799 799 800 -285
		mu 0 4 666 675 676 667
		f 4 -717 -801 801 802
		mu 0 4 668 667 676 677
		f 4 -803 803 804 -288
		mu 0 4 668 677 678 669
		f 4 -769 -805 805 806
		mu 0 4 670 669 678 679
		f 4 -807 807 -793 -291
		mu 0 4 670 679 672 671
		f 5 -794 808 809 810 811
		mu 0 5 673 672 680 681 682
		f 4 -812 812 813 -796
		mu 0 4 673 682 683 674
		f 5 -798 -814 814 815 816
		mu 0 5 675 674 683 684 685
		f 4 -817 817 818 -800
		mu 0 4 675 685 686 676
		f 5 -802 -819 819 820 821
		mu 0 5 677 676 686 687 688
		f 4 -822 822 823 -804
		mu 0 4 677 688 689 678
		f 5 -806 -824 824 825 826
		mu 0 5 679 678 689 690 691
		f 4 -827 827 -809 -808
		mu 0 4 679 691 680 672
		f 12 828 829 830 831 832 833 834 835 836 837 838 839
		mu 0 12 0 1 2 3 4 5 6 7 8 9 10 11
		f 4 840 841 842 -810
		mu 0 4 12 13 14 15
		f 4 -843 843 844 -811
		mu 0 4 15 14 16 17
		f 4 -845 845 846 -813
		mu 0 4 17 16 18 19
		f 4 -847 847 848 -815
		mu 0 4 19 18 20 21
		f 4 -849 849 850 -816
		mu 0 4 21 20 22 23
		f 4 -851 851 852 -818
		mu 0 4 23 22 24 25
		f 4 -853 853 854 -820
		mu 0 4 25 24 26 27
		f 4 -855 855 856 -821
		mu 0 4 27 26 28 29
		f 4 -857 857 858 -823
		mu 0 4 29 28 30 31
		f 4 -859 859 860 -825
		mu 0 4 31 30 32 33
		f 4 -861 861 862 -826
		mu 0 4 33 32 34 35
		f 4 -863 863 -841 -828
		mu 0 4 35 34 13 12
		f 4 864 865 866 -842
		mu 0 4 13 36 37 14
		f 4 -867 867 868 -844
		mu 0 4 14 37 38 16
		f 4 -869 869 870 -846
		mu 0 4 16 38 39 18
		f 4 -871 871 872 -848
		mu 0 4 18 39 40 20
		f 4 -873 873 874 -850
		mu 0 4 20 40 41 22
		f 4 -875 875 876 -852
		mu 0 4 22 41 42 24
		f 4 -877 877 878 -854
		mu 0 4 24 42 43 26
		f 4 -879 879 880 -856
		mu 0 4 26 43 44 28
		f 4 -881 881 882 -858
		mu 0 4 28 44 45 30
		f 4 -883 883 884 -860
		mu 0 4 30 45 46 32
		f 4 -885 885 886 -862
		mu 0 4 32 46 47 34
		f 4 -887 887 -865 -864
		mu 0 4 34 47 36 13
		f 4 888 889 890 -866
		mu 0 4 36 48 49 37
		f 4 -891 891 892 -868
		mu 0 4 37 49 50 38
		f 4 -893 893 894 -870
		mu 0 4 38 50 51 39
		f 4 -895 895 896 -872
		mu 0 4 39 51 52 40
		f 4 -897 897 898 -874
		mu 0 4 40 52 53 41
		f 4 -899 899 900 -876
		mu 0 4 41 53 54 42
		f 4 -901 901 902 -878
		mu 0 4 42 54 55 43
		f 4 -903 903 904 -880
		mu 0 4 43 55 56 44
		f 4 -905 905 906 -882
		mu 0 4 44 56 57 45
		f 4 -907 907 908 -884
		mu 0 4 45 57 58 46
		f 4 -909 909 910 -886
		mu 0 4 46 58 59 47
		f 4 -911 911 -889 -888
		mu 0 4 47 59 48 36
		f 4 912 913 914 -890
		mu 0 4 48 60 61 49
		f 4 -915 915 916 -892
		mu 0 4 49 61 62 50
		f 4 -917 917 918 -894
		mu 0 4 50 62 63 51
		f 4 -919 919 920 -896
		mu 0 4 51 63 64 52
		f 4 -921 921 922 -898
		mu 0 4 52 64 65 53
		f 4 -923 923 924 -900
		mu 0 4 53 65 66 54
		f 4 -925 925 926 -902
		mu 0 4 54 66 67 55
		f 4 -927 927 928 -904
		mu 0 4 55 67 68 56
		f 4 -929 929 930 -906
		mu 0 4 56 68 69 57
		f 4 -931 931 932 -908
		mu 0 4 57 69 70 58
		f 4 -933 933 934 -910
		mu 0 4 58 70 71 59
		f 4 -935 935 -913 -912
		mu 0 4 59 71 60 48
		f 4 936 -840 937 -914
		mu 0 4 60 0 11 61
		f 4 -938 -839 938 -916
		mu 0 4 61 11 10 62
		f 4 -939 -838 939 -918
		mu 0 4 62 10 9 63
		f 4 -940 -837 940 -920
		mu 0 4 63 9 8 64
		f 4 -941 -836 941 -922
		mu 0 4 64 8 7 65
		f 4 -942 -835 942 -924
		mu 0 4 65 7 6 66
		f 4 -943 -834 943 -926
		mu 0 4 66 6 5 67
		f 4 -944 -833 944 -928
		mu 0 4 67 5 4 68
		f 4 -945 -832 945 -930
		mu 0 4 68 4 3 69
		f 4 -946 -831 946 -932
		mu 0 4 69 3 2 70
		f 4 -947 -830 947 -934
		mu 0 4 70 2 1 71
		f 4 -948 -829 -937 -936
		mu 0 4 71 1 0 60;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".dr" 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode mesh -n "polySurfaceShape1" -p "Candle_Green";
	rename -uid "C19CAC09-42AE-41C4-0A2B-B88ED3CAD862";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 592 ".vt";
	setAttr ".vt[0:165]"  0.1 0 0 0.086602539 0 -0.050000001 0.049999997 0 -0.086602546
		 -4.371139e-09 0 -0.1 -0.050000008 0 -0.086602539 -0.086602539 0 -0.050000008 -0.1 0 8.742278e-09
		 -0.086602531 0 0.050000019 -0.049999993 0 0.086602546 1.1924881e-09 0 0.1 0.049999993 0 0.086602546
		 0.086602561 0 0.049999978 -0.07929448 2.000000238419 6.8842323e-09 -0.068671048 2.000000238419 -0.039647214
		 -0.039647236 2.000000238419 -0.06867104 -6.5393198e-09 2.000000238419 -0.079294473
		 0.039647229 2.000000238419 -0.068671033 0.068671025 2.000000238419 -0.039647263 0.07929448 2.000000238419 -1.3593036e-08
		 0.068671033 2.000000238419 0.039647244 0.039647251 2.000000238419 0.068671033 1.4911762e-08 2.000000238419 0.07929448
		 -0.039647233 2.000000238419 0.06867104 -0.068671033 2.000000238419 0.039647244 0.098289154 0.083333343 -0.012940052
		 0.060350973 0.083333343 0.078650869 0.012940053 0.083333343 0.098289154 -0.078650855 0.083333343 0.060350996
		 -0.098289154 0.083333343 0.012940059 -0.060350984 0.083333343 -0.078650862 -0.012940055 0.083333343 -0.098289154
		 0.078650862 0.083333343 -0.060350981 0.09492594 0.16666669 -0.025435328 0.069490604 0.16666669 0.069490612
		 0.02543533 0.16666669 0.09492594 -0.069490597 0.16666669 0.069490619 -0.094925933 0.16666669 0.025435338
		 -0.069490612 0.16666669 -0.069490604 -0.025435334 0.16666669 -0.09492594 0.069490604 0.16666669 -0.069490604
		 0.089996777 0.25000003 -0.037277889 0.077281982 0.25000003 0.059300553 0.037277889 0.25000003 0.089996777
		 -0.059300534 0.25000003 0.077282004 -0.08999677 0.25000003 0.037277896 -0.077281997 0.25000003 -0.059300549
		 -0.037277892 0.25000003 -0.08999677 0.059300553 0.25000003 -0.077281989 0.083613977 0.33333337 -0.048274528
		 0.083613947 0.33333337 0.048274569 0.048274532 0.33333337 0.083613977 -0.048274547 0.33333337 0.083613962
		 -0.083613969 0.33333337 0.048274536 -0.083613954 0.33333337 -0.048274554 -0.048274532 0.33333337 -0.083613969
		 0.048274558 0.33333337 -0.083613947 0.075913094 0.41666672 -0.058250148 0.088402651 0.41666672 0.036617603
		 0.058250148 0.41666672 0.075913094 -0.036617577 0.41666672 0.088402666 -0.075913087 0.41666672 0.058250155
		 -0.088402659 0.41666672 -0.036617581 -0.058250152 0.41666672 -0.075913087 0.036617588 0.41666672 -0.088402651
		 0.067050435 0.50000006 -0.067050435 0.091592595 0.50000006 0.02454217 0.067050435 0.50000006 0.067050435
		 -0.024542144 0.50000006 0.091592602 -0.067050427 0.50000006 0.067050442 -0.091592595 0.50000006 -0.024542155
		 -0.067050442 0.50000006 -0.067050427 0.02454216 0.50000006 -0.091592595 0.05719978 0.58333343 -0.074544184
		 0.093157038 0.58333343 0.012264374 0.074544184 0.58333343 0.05719978 -0.012264346 0.58333343 0.093157046
		 -0.057199769 0.58333343 0.074544191 -0.093157046 0.58333343 -0.012264363 -0.074544184 0.58333343 -0.057199772
		 0.01226437 0.58333343 -0.093157046 0.046549082 0.66666675 -0.080625378 0.093098164 0.66666675 9.0548697e-09
		 0.08062537 0.66666675 0.046549078 1.9972134e-08 0.66666675 0.093098171 -0.046549067 0.66666675 0.080625378
		 -0.093098164 0.66666675 8.7251975e-09 -0.080625378 0.66666675 -0.046549078 -7.7161766e-10 0.66666675 -0.093098164
		 0.035296977 0.75000006 -0.085214429 0.091446355 0.75000006 -0.012039126 0.085214429 0.75000006 0.035296977
		 0.012039156 0.75000006 0.091446355 -0.035296969 0.75000006 0.085214436 -0.091446348 0.75000006 0.012039149
		 -0.085214429 0.75000006 -0.035296969 -0.012039134 0.75000006 -0.09144634 0.023648962 0.83333343 -0.088259272
		 0.088259257 0.83333343 -0.023649028 0.088259272 0.83333343 0.023648962 0.023649052 0.83333343 0.08825925
		 -0.023648953 0.83333343 0.08825928 -0.08825925 0.83333343 0.023649041 -0.088259272 0.83333343 -0.023648955
		 -0.023649031 0.83333343 -0.08825925 0.01181391 0.91666675 -0.089735657 0.083620317 0.91666675 -0.034636673
		 0.08973565 0.91666675 0.011813906 0.034636702 0.91666675 0.08362031 -0.011813896 0.91666675 0.089735657
		 -0.08362031 0.91666675 0.034636691 -0.089735657 0.91666675 -0.011813903 -0.03463668 0.91666675 -0.08362031
		 6.0934291e-10 1.000000119209 -0.089647256 0.077636801 1.000000119209 -0.044823613
		 0.089647248 1.000000119209 -2.3005464e-10 0.044823647 1.000000119209 0.077636793
		 1.1911164e-08 1.000000119209 0.089647248 -0.077636793 1.000000119209 0.044823632
		 -0.089647256 1.000000119209 5.6742344e-09 -0.04482362 1.000000119209 -0.077636793
		 -0.011588687 1.083333492 -0.088024944 0.070437498 1.083333492 -0.054048561 0.088024944 1.083333492 -0.011588687
		 0.054048587 1.083333492 0.070437476 0.011588701 1.083333492 0.088024944 -0.070437483 1.083333492 0.054048579
		 -0.088024944 1.083333492 0.011588695 -0.054048568 1.083333492 -0.070437491 -0.022755826 1.16666687 -0.08492592
		 0.062170099 1.16666687 -0.062170085 0.08492592 1.16666687 -0.022755828 0.062170103 1.16666687 0.062170085
		 0.022755839 1.16666687 0.08492592 -0.062170092 1.16666687 0.062170096 -0.08492592 1.16666687 0.022755837
		 -0.062170085 1.16666687 -0.062170092 -0.033316068 1.25000024 -0.080432072 0.0529982 1.25000024 -0.069068596
		 0.080432072 1.25000024 -0.033316068 0.069068618 1.25000024 0.052998178 0.033316076 1.25000024 0.080432065
		 -0.052998181 1.25000024 0.069068611 -0.080432072 1.25000024 0.033316076 -0.069068596 1.25000024 -0.052998189
		 -0.043098152 1.33333349 -0.074648209 0.043098174 1.33333349 -0.074648201 0.074648201 1.33333349 -0.043098152
		 0.074648216 1.33333349 0.043098155 0.043098163 1.33333349 0.074648201 -0.043098163 1.33333349 0.074648209
		 -0.074648201 1.33333349 0.043098163 -0.074648194 1.33333349 -0.04309817 -0.051947813 1.41666687 -0.067699693
		 0.032655764 1.41666687 -0.078837968 0.067699693 1.41666687 -0.05194781 0.078837983 1.41666687 0.032655735
		 0.051947821 1.41666687 0.067699686 -0.032655746 1.41666687 0.078837983 -0.067699693 1.41666687 0.051947821
		 -0.078837968 1.41666687 -0.032655749 -0.059729919 1.50000012 -0.059729923 0.02186268 1.50000012 -0.08159259
		 0.059729919 1.50000012 -0.059729915 0.081592605 1.50000012 0.021862652 0.059729926 1.50000012 0.059729911
		 -0.021862661 1.50000012 0.081592597;
	setAttr ".vt[166:331]" -0.059729919 1.50000012 0.059729926 -0.081592582 1.50000012 -0.021862669
		 -0.066330776 1.58333349 -0.050897427 0.010913087 1.58333349 -0.082892857 0.050897423 1.58333349 -0.066330776
		 0.082892865 1.58333349 0.010913058 0.066330783 1.58333349 0.050897416 -0.010913068 1.58333349 0.082892857
		 -0.050897423 1.58333349 0.066330783 -0.08289285 1.58333349 -0.010913077 -0.071659617 1.66666687 -0.041372713
		 2.0211308e-08 1.66666687 -0.082745403 0.041372709 1.66666687 -0.071659617 0.082745411 1.66666687 -6.8406973e-09
		 0.071659625 1.66666687 0.041372702 -1.0107924e-09 1.66666687 0.082745411 -0.041372705 1.66666687 0.071659632
		 -0.082745403 1.66666687 -9.6235517e-09 -0.075649746 1.75000024 -0.031335134 -0.010687837 1.75000024 -0.081182167
		 0.031335134 1.75000024 -0.075649738 0.081182174 1.75000024 -0.010687867 0.075649746 1.75000024 0.031335127
		 0.010687856 1.75000024 0.081182167 -0.03133513 1.75000024 0.075649753 -0.081182167 1.75000024 0.010687848
		 -0.078259245 1.83333349 -0.020969508 -0.020969484 1.83333349 -0.078259259 0.020969506 1.83333349 -0.078259237
		 0.078259252 1.83333349 -0.020969514 0.078259245 1.83333349 0.020969499 0.020969503 1.83333349 0.078259252
		 -0.020969503 1.83333349 0.078259245 -0.078259252 1.83333349 0.020969495 -0.079471461 1.91666687 -0.010462605
		 -0.030674839 1.91666687 -0.07405562 0.010462604 1.91666687 -0.079471454 0.074055612 1.91666687 -0.030674869
		 0.079471461 1.91666687 0.010462595 0.030674858 1.91666687 0.074055612 -0.010462597 1.91666687 0.079471469
		 -0.074055612 1.91666687 0.030674849 0.1080073 0.010106593 0.010323178 0.095785886 0.010106774 0.054522518
		 0.10083051 0.083434939 0.041761748 0.10687181 0.085011534 -0.0018275175 0.065123618 0.010091209 0.084251985
		 0.074290365 0.081802174 0.07688728 0.10458556 0.1667683 0.028020203 0.10486282 0.16836958 -0.015540833
		 0.08306884 0.16511071 0.065921545 0.10649281 0.25010166 0.014016732 0.10113993 0.2516903 -0.02876295
		 0.09027835 0.24845666 0.053987511 0.10654858 0.333435 -3.252909e-06 0.095773265 0.33501101 -0.041284796
		 0.095805503 0.33180264 0.041308437 0.10478126 0.41676837 -0.013797994 0.088881016 0.41833168 -0.052905243
		 0.099580199 0.41514859 0.028117619 0.10125051 0.50010169 -0.027133366 0.080605626 0.50165236 -0.063441895
		 0.10156433 0.49849454 0.014653903 0.096045636 0.58343512 -0.039786905 0.071110815 0.58497304 -0.072733909
		 0.10175179 0.58184052 0.0011572214 0.089283571 0.66676843 -0.051551633 0.060578421 0.66829371 -0.080644555
		 0.10016837 0.66518652 -0.012135705 0.081106454 0.75010175 -0.062239237 0.04920502 0.75161433 -0.087063
		 0.096870586 0.74853247 -0.024995416 0.071678668 0.83343512 -0.071683273 0.037198149 0.83493501 -0.091905929
		 0.0919443 0.83187848 -0.037203807 0.061183725 0.91676843 -0.079741485 0.024772778 0.91825563 -0.095118359
		 0.085502774 0.91522449 -0.048557565 0.049820594 1.00010180473 -0.086298212 0.012147136 1.0015763044 -0.096674316
		 0.077684186 0.99857056 -0.058871932 0.037800059 1.083435178 -0.091265723 -0.00046086404 1.084896922 -0.096576549
		 0.068648785 1.081916571 -0.067983419 0.02534082 1.16676855 -0.094585501 -0.012837511 1.16821766 -0.094856232
		 0.058575764 1.1652627 -0.075752504 0.012665521 1.25010204 -0.096228607 -0.02477682 1.25153828 -0.091571651
		 0.047659691 1.24860871 -0.082065627 -3.1598477e-06 1.3334353 -0.09619581 -0.036083993 1.33485878 -0.086806946
		 0.036106855 1.33195472 -0.086836897 -0.012446603 1.41676867 -0.094517089 -0.046578728 1.41817939 -0.080670051
		 0.024131358 1.41530073 -0.090009242 -0.024453769 1.50010192 -0.091250531 -0.056097809 1.50149989 -0.07329046
		 0.011951214 1.49864674 -0.091554768 -0.035824958 1.5834353 -0.086480975 -0.064497881 1.58482051 -0.064816602
		 -0.0002156049 1.58199286 -0.091474995 -0.046375155 1.66676867 -0.08031787 -0.071657442 1.66814113 -0.055412836
		 -0.012155174 1.66533899 -0.089800194 -0.055936813 1.75010204 -0.072893113 -0.077478535 1.75146174 -0.045256414
		 -0.023661189 1.74868512 -0.086588509 -0.064362638 1.8334353 -0.064358249 -0.081887953 1.83478224 -0.03453416
		 -0.034538589 1.83203113 -0.081924297 -0.071528018 1.91676867 -0.054881446 -0.084847458 1.91806507 -0.023449242
		 -0.044627033 1.91541541 -0.075936258 -0.077343978 1.99010777 -0.045442384 -0.085121587 1.99009669 -0.013954277
		 -0.052879248 1.9901067 -0.070459291 -0.010323179 0.010106594 0.1080073 -0.054522533 0.010106775 0.095785871
		 -0.04176176 0.083434939 0.10083051 0.0018275166 0.085011534 0.10687181 -0.08425197 0.010091211 0.065123647
		 -0.076887257 0.081802174 0.074290395 -0.02802022 0.1667683 0.10458554 0.015540833 0.16836958 0.10486282
		 -0.065921523 0.16511071 0.083068848 -0.014016747 0.25010166 0.1064928 0.028762946 0.2516903 0.10113993
		 -0.053987496 0.24845666 0.090278372 3.2355756e-06 0.333435 0.10654858 0.041284796 0.33501101 0.095773272
		 -0.04130841 0.33180261 0.095805518 0.013797976 0.41676837 0.10478126 0.052905239 0.41833168 0.088881016
		 -0.02811759 0.41514859 0.099580206 0.027133346 0.50010169 0.10125051 0.063441895 0.50165236 0.080605626
		 -0.014653874 0.49849454 0.10156433 0.03978689 0.58343512 0.096045643 0.072733909 0.58497304 0.071110815
		 -0.0011571925 0.58184052 0.1017518 0.051551618 0.66676843 0.089283578 0.080644548 0.66829371 0.060578417
		 0.012135737 0.66518652 0.10016838 0.062239222 0.75010175 0.081106462 0.087063 0.75161433 0.04920502
		 0.024995446 0.74853247 0.096870586 0.071683258 0.83343512 0.071678676 0.091905929 0.83493501 0.037198152
		 0.037203833 0.83187848 0.091944285 0.079741463 0.91676843 0.061183736 0.095118351 0.91825563 0.024772778
		 0.048557594 0.91522449 0.085502766 0.086298198 1.00010180473 0.049820606 0.096674301 1.0015763044 0.012147137
		 0.05887197 0.99857056 0.077684171 0.091265708 1.083435178 0.037800081 0.096576549 1.084896922 -0.00046086125
		 0.067983441 1.081916571 0.068648763 0.094585501 1.16676855 0.025340836 0.094856225 1.16821766 -0.012837511
		 0.075752519 1.1652627 0.058575749 0.0962286 1.25010204 0.012665541 0.091571651 1.25153828 -0.02477682
		 0.082065649 1.24860871 0.047659665 0.09619581 1.3334353 -3.1415236e-06;
	setAttr ".vt[332:497]" 0.086806946 1.33485878 -0.036083993 0.086836912 1.33195472 0.036106832
		 0.094517082 1.41676867 -0.012446582 0.080670044 1.41817939 -0.046578724 0.09000925 1.41530073 0.024131324
		 0.091250531 1.50010192 -0.024453746 0.07329046 1.50149989 -0.056097802 0.091554776 1.49864674 0.011951182
		 0.086480968 1.5834353 -0.035824936 0.064816602 1.58482051 -0.064497873 0.091475002 1.58199286 -0.0002156375
		 0.080317877 1.66676867 -0.046375126 0.055412833 1.66814113 -0.071657442 0.089800201 1.66533899 -0.012155204
		 0.07289312 1.75010204 -0.055936791 0.045256414 1.75146174 -0.077478528 0.086588517 1.74868512 -0.023661219
		 0.064358264 1.8334353 -0.064362615 0.034534156 1.83478224 -0.081887946 0.081924289 1.83203113 -0.034538623
		 0.054881461 1.91676867 -0.071527995 0.023449242 1.91806507 -0.08484745 0.075936243 1.91541541 -0.044627059
		 0.045442399 1.99010777 -0.077343963 0.01395428 1.99009669 -0.085121579 0.070459276 1.9901067 -0.052879274
		 -0.1080073 0.010106594 -0.010323172 -0.095785864 0.010106775 -0.054522548 -0.1008305 0.083434947 -0.041761778
		 -0.10687181 0.085011542 0.0018275222 -0.065123633 0.010091209 -0.084251978 -0.07429038 0.081802174 -0.076887272
		 -0.10458554 0.1667683 -0.028020237 -0.10486282 0.16836958 0.015540838 -0.08306884 0.16511071 -0.06592153
		 -0.1064928 0.25010166 -0.014016764 -0.10113992 0.2516903 0.028762951 -0.090278365 0.24845666 -0.053987511
		 -0.10654858 0.333435 3.2198811e-06 -0.095773257 0.33501101 0.0412848 -0.095805503 0.33180261 -0.041308422
		 -0.10478126 0.41676837 0.013797959 -0.088881008 0.41833168 0.05290525 -0.099580206 0.41514859 -0.028117597
		 -0.10125052 0.50010169 0.027133336 -0.080605619 0.50165236 0.063441902 -0.10156433 0.49849454 -0.014653889
		 -0.096045643 0.58343512 0.039786868 -0.071110807 0.58497304 0.072733916 -0.1017518 0.58184052 -0.0011572102
		 -0.089283578 0.66676843 0.051551599 -0.060578406 0.66829371 0.080644555 -0.10016837 0.66518652 0.012135724
		 -0.081106469 0.75010175 0.062239207 -0.049205016 0.75161433 0.087063 -0.096870579 0.74853247 0.024995439
		 -0.071678683 0.83343512 0.071683243 -0.037198145 0.83493501 0.091905929 -0.091944292 0.83187848 0.037203822
		 -0.061183747 0.91676843 0.079741463 -0.024772763 0.91825563 0.095118359 -0.085502766 0.91522449 0.04855758
		 -0.049820621 1.00010180473 0.08629819 -0.012147124 1.0015763044 0.096674301 -0.077684179 0.99857056 0.058871951
		 -0.037800092 1.083435178 0.091265708 0.00046087615 1.084896922 0.096576549 -0.06864877 1.081916571 0.067983441
		 -0.02534085 1.16676855 0.094585501 0.012837525 1.16821766 0.094856232 -0.058575764 1.1652627 0.075752512
		 -0.012665554 1.25010204 0.096228607 0.024776828 1.25153828 0.091571644 -0.047659673 1.24860871 0.082065634
		 3.1261461e-06 1.3334353 0.09619581 0.036084004 1.33485878 0.086806946 -0.036106847 1.33195472 0.086836904
		 0.012446573 1.41676867 0.094517097 0.046578735 1.41817939 0.080670036 -0.024131339 1.41530073 0.090009257
		 0.024453733 1.50010192 0.091250539 0.056097817 1.50149989 0.073290445 -0.011951197 1.49864674 0.091554776
		 0.035824932 1.5834353 0.08648099 0.064497888 1.58482051 0.064816594 0.0002156226 1.58199286 0.091474988
		 0.046375122 1.66676867 0.080317892 0.071657449 1.66814113 0.055412825 0.012155193 1.66533899 0.089800209
		 0.055936787 1.75010204 0.072893143 0.077478535 1.75146174 0.045256406 0.023661207 1.74868512 0.086588509
		 0.064362623 1.8334353 0.064358279 0.081887953 1.83478224 0.034534149 0.034538612 1.83203113 0.081924297
		 0.071528003 1.91676867 0.05488148 0.084847458 1.91806507 0.023449231 0.044627048 1.91541541 0.07593625
		 0.077343963 1.99010777 0.045442417 0.085121587 1.99009669 0.013954271 0.052879263 1.9901067 0.070459284
		 0.010323175 0.010106592 -0.1080073 0.054522537 0.010106774 -0.095785871 0.041761767 0.083434939 -0.10083051
		 -0.0018275185 0.085011534 -0.10687181 0.084251978 0.010091211 -0.065123633 0.076887272 0.081802174 -0.07429038
		 0.028020227 0.1667683 -0.10458554 -0.015540836 0.16836958 -0.10486282 0.06592153 0.16511071 -0.08306884
		 0.014016752 0.25010166 -0.1064928 -0.028762951 0.2516903 -0.10113992 0.053987511 0.24845666 -0.090278357
		 -3.2277944e-06 0.333435 -0.10654858 -0.0412848 0.33501101 -0.095773257 0.041308425 0.33180261 -0.095805496
		 -0.013797969 0.41676837 -0.10478126 -0.052905247 0.41833168 -0.088881008 0.028117605 0.41514859 -0.099580199
		 -0.027133344 0.50010169 -0.10125051 -0.063441902 0.50165236 -0.080605619 0.014653894 0.49849454 -0.10156433
		 -0.039786886 0.58343512 -0.096045643 -0.072733909 0.58497304 -0.071110807 0.0011572186 0.58184052 -0.1017518
		 -0.051551614 0.66676843 -0.089283578 -0.080644555 0.66829371 -0.060578417 -0.012135714 0.66518652 -0.10016837
		 -0.062239219 0.75010175 -0.081106462 -0.087063 0.75161433 -0.049205013 -0.024995424 0.74853247 -0.096870571
		 -0.071683258 0.83343512 -0.071678676 -0.091905929 0.83493501 -0.037198145 -0.037203811 0.83187848 -0.091944292
		 -0.079741463 0.91676843 -0.061183736 -0.095118359 0.91825563 -0.024772774 -0.048557572 0.91522449 -0.085502766
		 -0.086298183 1.00010180473 -0.049820613 -0.096674301 1.0015763044 -0.012147132 -0.05887194 0.99857056 -0.077684179
		 -0.091265708 1.083435178 -0.037800081 -0.096576549 1.084896922 0.00046086963 -0.067983426 1.081916571 -0.068648778
		 -0.094585493 1.16676855 -0.025340836 -0.094856225 1.16821766 0.012837521 -0.075752504 1.1652627 -0.058575764
		 -0.0962286 1.25010204 -0.012665541 -0.091571644 1.25153828 0.024776828 -0.08206562 1.24860871 -0.04765968
		 -0.096195802 1.3334353 3.1372917e-06 -0.086806938 1.33485878 0.036084 -0.086836889 1.33195472 -0.036106855
		 -0.094517089 1.41676867 0.012446583 -0.080670044 1.41817939 0.046578735 -0.090009242 1.41530073 -0.024131345
		 -0.091250539 1.50010192 0.024453746 -0.07329046 1.50149989 0.056097813 -0.091554761 1.49864674 -0.011951206
		 -0.086480975 1.5834353 0.035824943 -0.064816602 1.58482051 0.064497881 -0.091474988 1.58199286 0.00021561421
		 -0.080317885 1.66676867 0.046375133 -0.055412825 1.66814113 0.071657456 -0.089800201 1.66533899 0.012155184
		 -0.072893135 1.75010204 0.055936795 -0.04525641 1.75146174 0.077478543;
	setAttr ".vt[498:591]" -0.086588509 1.74868512 0.0236612 -0.064358264 1.8334353 0.064362623
		 -0.034534153 1.83478224 0.081887953 -0.081924289 1.83203113 0.034538604 -0.054881465 1.91676867 0.071528003
		 -0.023449235 1.91806507 0.084847465 -0.07593625 1.91541541 0.044627041 -0.045442406 1.99010777 0.077343971
		 -0.013954271 1.99009669 0.085121587 -0.070459284 1.9901067 0.052879255 -0.054447852 2.012000322 3.8177972e-09
		 -0.047153234 2.012000322 -0.027223904 -0.027223922 2.012000322 -0.047153231 -8.4558414e-09 2.012000322 -0.054447845
		 0.027223922 2.012000322 -0.04715322 0.04715322 2.012000322 -0.027223943 0.054447852 2.012000322 -1.0143297e-08
		 0.04715322 2.012000322 0.027223933 0.027223935 2.012000322 0.047153223 1.1845327e-08 2.012000322 0.054447852
		 -0.027223919 2.012000322 0.047153227 -0.047153223 2.012000322 0.027223928 -0.012001529 2.018000364 -7.6588513e-10
		 -0.010393634 2.018000364 -0.0060007535 -0.0060007609 2.018000364 -0.010393634 -1.3039522e-08 2.018000364 -0.012001526
		 0.006000774 2.018000364 -0.01039362 0.010393631 2.018000364 -0.0060007703 0.012001522 2.018000364 -8.1788629e-09
		 0.010393623 2.018000364 0.006000774 0.0060007703 2.018000364 0.010393631 8.571269e-09 2.018000364 0.012001529
		 -0.0060007609 2.018000364 0.010393631 -0.010393631 2.018000364 0.0060007628 -0.012001529 2.1900003 -7.6588513e-10
		 -0.010393634 2.1900003 -0.0060007535 -0.0060007609 2.1900003 -0.010393634 -1.3039522e-08 2.1900003 -0.012001526
		 0.006000774 2.1900003 -0.01039362 0.010393631 2.1900003 -0.0060007703 0.012001522 2.1900003 -8.1788629e-09
		 0.010393623 2.1900003 0.006000774 0.0060007703 2.1900003 0.010393631 8.571269e-09 2.1900003 0.012001529
		 -0.0060007609 2.1900003 0.010393631 -0.010393631 2.1900003 0.0060007628 -0.017848855 2.050208092 -0.0070420019
		 -0.016205877 2.049582481 -0.013000503 -0.0118074 2.049482584 -0.017386636 -0.0058320281 2.049935102 -0.019025089
		 0.00011919969 2.050818682 -0.017476868 0.0044515966 2.051896572 -0.013156832 0.0060043242 2.052880049 -0.0072225025
		 0.0043613412 2.053505421 -0.0012639713 -3.7116097e-05 2.053605318 0.0031221369 -0.0060125007 2.053153038 0.0047605969
		 -0.011963712 2.052269459 0.0032123828 -0.01629612 2.051191568 -0.0011076707 -0.019717911 2.086139679 -0.0092929332
		 -0.018109456 2.086060286 -0.015293009 -0.013716492 2.086047411 -0.019685782 -0.0077161496 2.08610487 -0.021294164
		 -0.0017161574 2.086217403 -0.019687213 0.0026757307 2.086354256 -0.015295533 0.0042827362 2.086479425 -0.0092958352
		 0.0026742748 2.086558819 -0.0032957294 -0.0017186686 2.086571455 0.0010970198 -0.0077190236 2.086513996 0.0027054076
		 -0.013718999 2.086401701 0.0010984663 -0.018110899 2.08626461 -0.0032932337 -0.018893946 2.12177968 -0.0083006211
		 -0.017279079 2.12205958 -0.014292977 -0.012885091 2.12210417 -0.018684518 -0.0068893861 2.12190175 -0.020298483
		 -0.00089844852 2.12150669 -0.018702438 0.003482393 2.12102461 -0.01432406 0.0050793202 2.12058496 -0.0083365003
		 0.0034644485 2.12030506 -0.0023441154 -0.00092951878 2.12026048 0.0020474002 -0.0069252374 2.12046289 0.0036613718
		 -0.012916158 2.12085795 0.0020653354 -0.017297011 2.12134004 -0.0023130605 -0.016188048 2.15702438 -0.0050418694
		 -0.014552345 2.15758181 -0.011009133 -0.010155029 2.15767074 -0.015396664 -0.0041743936 2.15726781 -0.017028777
		 0.0017871123 2.15648055 -0.015468175 0.0061320476 2.15551996 -0.011133037 0.0076962151 2.15464377 -0.0051849289
		 0.0060605076 2.15408635 0.00078236411 0.0016632116 2.15399742 0.0051698703 -0.0043174364 2.15440059 0.0068019899
		 -0.010278925 2.15518785 0.0052413964 -0.014623872 2.1561482 0.00090624008;
	setAttr -s 1172 ".ed";
	setAttr ".ed[0:165]"  10 25 0 25 26 0 26 9 0 9 10 0 7 27 0 27 28 0 28 6 0
		 6 7 0 4 29 0 29 30 0 30 3 0 3 4 0 1 31 0 31 24 0 24 0 0 0 1 0 25 33 0 33 34 0 34 26 0
		 27 35 0 35 36 0 36 28 0 29 37 0 37 38 0 38 30 0 31 39 0 39 32 0 32 24 0 33 41 0 41 42 0
		 42 34 0 35 43 0 43 44 0 44 36 0 37 45 0 45 46 0 46 38 0 39 47 0 47 40 0 40 32 0 41 49 0
		 49 50 0 50 42 0 43 51 0 51 52 0 52 44 0 45 53 0 53 54 0 54 46 0 47 55 0 55 48 0 48 40 0
		 49 57 0 57 58 0 58 50 0 51 59 0 59 60 0 60 52 0 53 61 0 61 62 0 62 54 0 55 63 0 63 56 0
		 56 48 0 57 65 0 65 66 0 66 58 0 59 67 0 67 68 0 68 60 0 61 69 0 69 70 0 70 62 0 63 71 0
		 71 64 0 64 56 0 65 73 0 73 74 0 74 66 0 67 75 0 75 76 0 76 68 0 69 77 0 77 78 0 78 70 0
		 71 79 0 79 72 0 72 64 0 73 81 0 81 82 0 82 74 0 75 83 0 83 84 0 84 76 0 77 85 0 85 86 0
		 86 78 0 79 87 0 87 80 0 80 72 0 81 89 0 89 90 0 90 82 0 83 91 0 91 92 0 92 84 0 85 93 0
		 93 94 0 94 86 0 87 95 0 95 88 0 88 80 0 89 97 0 97 98 0 98 90 0 91 99 0 99 100 0
		 100 92 0 93 101 0 101 102 0 102 94 0 95 103 0 103 96 0 96 88 0 97 105 0 105 106 0
		 106 98 0 99 107 0 107 108 0 108 100 0 101 109 0 109 110 0 110 102 0 103 111 0 111 104 0
		 104 96 0 105 113 0 113 114 0 114 106 0 107 115 0 115 116 0 116 108 0 109 117 0 117 118 0
		 118 110 0 111 119 0 119 112 0 112 104 0 113 121 0 121 122 0 122 114 0 115 123 0 123 124 0
		 124 116 0 117 125 0 125 126 0 126 118 0 119 127 0 127 120 0 120 112 0 121 129 0 129 130 0
		 130 122 0 123 131 0 131 132 0 132 124 0;
	setAttr ".ed[166:331]" 125 133 0 133 134 0 134 126 0 127 135 0 135 128 0 128 120 0
		 129 137 0 137 138 0 138 130 0 131 139 0 139 140 0 140 132 0 133 141 0 141 142 0 142 134 0
		 135 143 0 143 136 0 136 128 0 137 145 0 145 146 0 146 138 0 139 147 0 147 148 0 148 140 0
		 141 149 0 149 150 0 150 142 0 143 151 0 151 144 0 144 136 0 145 153 0 153 154 0 154 146 0
		 147 155 0 155 156 0 156 148 0 149 157 0 157 158 0 158 150 0 151 159 0 159 152 0 152 144 0
		 153 161 0 161 162 0 162 154 0 155 163 0 163 164 0 164 156 0 157 165 0 165 166 0 166 158 0
		 159 167 0 167 160 0 160 152 0 161 169 0 169 170 0 170 162 0 163 171 0 171 172 0 172 164 0
		 165 173 0 173 174 0 174 166 0 167 175 0 175 168 0 168 160 0 169 177 0 177 178 0 178 170 0
		 171 179 0 179 180 0 180 172 0 173 181 0 181 182 0 182 174 0 175 183 0 183 176 0 176 168 0
		 177 185 0 185 186 0 186 178 0 179 187 0 187 188 0 188 180 0 181 189 0 189 190 0 190 182 0
		 183 191 0 191 184 0 184 176 0 185 193 0 193 194 0 194 186 0 187 195 0 195 196 0 196 188 0
		 189 197 0 197 198 0 198 190 0 191 199 0 199 192 0 192 184 0 193 201 0 201 202 0 202 194 0
		 195 203 0 203 204 0 204 196 0 197 205 0 205 206 0 206 198 0 199 207 0 207 200 0 200 192 0
		 201 14 0 14 15 0 15 202 0 203 17 0 17 18 0 18 204 0 205 20 0 20 21 0 21 206 0 207 23 0
		 23 12 0 12 200 0 208 211 0 211 210 0 210 209 0 209 208 0 210 213 0 213 212 0 212 209 0
		 211 215 0 215 214 0 214 210 0 214 216 0 216 213 0 215 218 0 218 217 0 217 214 0 217 219 0
		 219 216 0 218 221 0 221 220 0 220 217 0 220 222 0 222 219 0 221 224 0 224 223 0 223 220 0
		 223 225 0 225 222 0 224 227 0 227 226 0 226 223 0 226 228 0 228 225 0 227 230 0 230 229 0
		 229 226 0 229 231 0 231 228 0 230 233 0 233 232 0 232 229 0;
	setAttr ".ed[332:497]" 232 234 0 234 231 0 233 236 0 236 235 0 235 232 0 235 237 0
		 237 234 0 236 239 0 239 238 0 238 235 0 238 240 0 240 237 0 239 242 0 242 241 0 241 238 0
		 241 243 0 243 240 0 242 245 0 245 244 0 244 241 0 244 246 0 246 243 0 245 248 0 248 247 0
		 247 244 0 247 249 0 249 246 0 248 251 0 251 250 0 250 247 0 250 252 0 252 249 0 251 254 0
		 254 253 0 253 250 0 253 255 0 255 252 0 254 257 0 257 256 0 256 253 0 256 258 0 258 255 0
		 257 260 0 260 259 0 259 256 0 259 261 0 261 258 0 260 263 0 263 262 0 262 259 0 262 264 0
		 264 261 0 263 266 0 266 265 0 265 262 0 265 267 0 267 264 0 266 269 0 269 268 0 268 265 0
		 268 270 0 270 267 0 269 272 0 272 271 0 271 268 0 271 273 0 273 270 0 272 275 0 275 274 0
		 274 271 0 274 276 0 276 273 0 275 278 0 278 277 0 277 274 0 277 279 0 279 276 0 278 281 0
		 281 280 0 280 277 0 280 282 0 282 279 0 283 286 0 286 285 0 285 284 0 284 283 0 285 288 0
		 288 287 0 287 284 0 286 290 0 290 289 0 289 285 0 289 291 0 291 288 0 290 293 0 293 292 0
		 292 289 0 292 294 0 294 291 0 293 296 0 296 295 0 295 292 0 295 297 0 297 294 0 296 299 0
		 299 298 0 298 295 0 298 300 0 300 297 0 299 302 0 302 301 0 301 298 0 301 303 0 303 300 0
		 302 305 0 305 304 0 304 301 0 304 306 0 306 303 0 305 308 0 308 307 0 307 304 0 307 309 0
		 309 306 0 308 311 0 311 310 0 310 307 0 310 312 0 312 309 0 311 314 0 314 313 0 313 310 0
		 313 315 0 315 312 0 314 317 0 317 316 0 316 313 0 316 318 0 318 315 0 317 320 0 320 319 0
		 319 316 0 319 321 0 321 318 0 320 323 0 323 322 0 322 319 0 322 324 0 324 321 0 323 326 0
		 326 325 0 325 322 0 325 327 0 327 324 0 326 329 0 329 328 0 328 325 0 328 330 0 330 327 0
		 329 332 0 332 331 0 331 328 0 331 333 0 333 330 0 332 335 0 335 334 0;
	setAttr ".ed[498:663]" 334 331 0 334 336 0 336 333 0 335 338 0 338 337 0 337 334 0
		 337 339 0 339 336 0 338 341 0 341 340 0 340 337 0 340 342 0 342 339 0 341 344 0 344 343 0
		 343 340 0 343 345 0 345 342 0 344 347 0 347 346 0 346 343 0 346 348 0 348 345 0 347 350 0
		 350 349 0 349 346 0 349 351 0 351 348 0 350 353 0 353 352 0 352 349 0 352 354 0 354 351 0
		 353 356 0 356 355 0 355 352 0 355 357 0 357 354 0 358 361 0 361 360 0 360 359 0 359 358 0
		 360 363 0 363 362 0 362 359 0 361 365 0 365 364 0 364 360 0 364 366 0 366 363 0 365 368 0
		 368 367 0 367 364 0 367 369 0 369 366 0 368 371 0 371 370 0 370 367 0 370 372 0 372 369 0
		 371 374 0 374 373 0 373 370 0 373 375 0 375 372 0 374 377 0 377 376 0 376 373 0 376 378 0
		 378 375 0 377 380 0 380 379 0 379 376 0 379 381 0 381 378 0 380 383 0 383 382 0 382 379 0
		 382 384 0 384 381 0 383 386 0 386 385 0 385 382 0 385 387 0 387 384 0 386 389 0 389 388 0
		 388 385 0 388 390 0 390 387 0 389 392 0 392 391 0 391 388 0 391 393 0 393 390 0 392 395 0
		 395 394 0 394 391 0 394 396 0 396 393 0 395 398 0 398 397 0 397 394 0 397 399 0 399 396 0
		 398 401 0 401 400 0 400 397 0 400 402 0 402 399 0 401 404 0 404 403 0 403 400 0 403 405 0
		 405 402 0 404 407 0 407 406 0 406 403 0 406 408 0 408 405 0 407 410 0 410 409 0 409 406 0
		 409 411 0 411 408 0 410 413 0 413 412 0 412 409 0 412 414 0 414 411 0 413 416 0 416 415 0
		 415 412 0 415 417 0 417 414 0 416 419 0 419 418 0 418 415 0 418 420 0 420 417 0 419 422 0
		 422 421 0 421 418 0 421 423 0 423 420 0 422 425 0 425 424 0 424 421 0 424 426 0 426 423 0
		 425 428 0 428 427 0 427 424 0 427 429 0 429 426 0 428 431 0 431 430 0 430 427 0 430 432 0
		 432 429 0 433 436 0 436 435 0 435 434 0 434 433 0 435 438 0 438 437 0;
	setAttr ".ed[664:829]" 437 434 0 436 440 0 440 439 0 439 435 0 439 441 0 441 438 0
		 440 443 0 443 442 0 442 439 0 442 444 0 444 441 0 443 446 0 446 445 0 445 442 0 445 447 0
		 447 444 0 446 449 0 449 448 0 448 445 0 448 450 0 450 447 0 449 452 0 452 451 0 451 448 0
		 451 453 0 453 450 0 452 455 0 455 454 0 454 451 0 454 456 0 456 453 0 455 458 0 458 457 0
		 457 454 0 457 459 0 459 456 0 458 461 0 461 460 0 460 457 0 460 462 0 462 459 0 461 464 0
		 464 463 0 463 460 0 463 465 0 465 462 0 464 467 0 467 466 0 466 463 0 466 468 0 468 465 0
		 467 470 0 470 469 0 469 466 0 469 471 0 471 468 0 470 473 0 473 472 0 472 469 0 472 474 0
		 474 471 0 473 476 0 476 475 0 475 472 0 475 477 0 477 474 0 476 479 0 479 478 0 478 475 0
		 478 480 0 480 477 0 479 482 0 482 481 0 481 478 0 481 483 0 483 480 0 482 485 0 485 484 0
		 484 481 0 484 486 0 486 483 0 485 488 0 488 487 0 487 484 0 487 489 0 489 486 0 488 491 0
		 491 490 0 490 487 0 490 492 0 492 489 0 491 494 0 494 493 0 493 490 0 493 495 0 495 492 0
		 494 497 0 497 496 0 496 493 0 496 498 0 498 495 0 497 500 0 500 499 0 499 496 0 499 501 0
		 501 498 0 500 503 0 503 502 0 502 499 0 502 504 0 504 501 0 503 506 0 506 505 0 505 502 0
		 505 507 0 507 504 0 0 208 0 209 11 0 11 0 0 212 10 0 10 11 0 213 25 0 216 33 0 219 41 0
		 222 49 0 225 57 0 228 65 0 231 73 0 234 81 0 237 89 0 240 97 0 243 105 0 246 113 0
		 249 121 0 252 129 0 255 137 0 258 145 0 261 153 0 264 161 0 267 169 0 270 177 0 273 185 0
		 276 193 0 279 201 0 282 14 0 280 13 0 13 14 0 281 12 0 12 13 0 278 200 0 275 192 0
		 272 184 0 269 176 0 266 168 0 263 160 0 260 152 0 257 144 0 254 136 0 251 128 0 248 120 0
		 245 112 0 242 104 0 239 96 0 236 88 0 233 80 0 230 72 0;
	setAttr ".ed[830:995]" 227 64 0 224 56 0 221 48 0 218 40 0 215 32 0 211 24 0
		 9 283 0 284 8 0 8 9 0 287 7 0 7 8 0 288 27 0 291 35 0 294 43 0 297 51 0 300 59 0
		 303 67 0 306 75 0 309 83 0 312 91 0 315 99 0 318 107 0 321 115 0 324 123 0 327 131 0
		 330 139 0 333 147 0 336 155 0 339 163 0 342 171 0 345 179 0 348 187 0 351 195 0 354 203 0
		 357 17 0 355 16 0 16 17 0 356 15 0 15 16 0 353 202 0 350 194 0 347 186 0 344 178 0
		 341 170 0 338 162 0 335 154 0 332 146 0 329 138 0 326 130 0 323 122 0 320 114 0 317 106 0
		 314 98 0 311 90 0 308 82 0 305 74 0 302 66 0 299 58 0 296 50 0 293 42 0 290 34 0
		 286 26 0 6 358 0 359 5 0 5 6 0 362 4 0 4 5 0 363 29 0 366 37 0 369 45 0 372 53 0
		 375 61 0 378 69 0 381 77 0 384 85 0 387 93 0 390 101 0 393 109 0 396 117 0 399 125 0
		 402 133 0 405 141 0 408 149 0 411 157 0 414 165 0 417 173 0 420 181 0 423 189 0 426 197 0
		 429 205 0 432 20 0 430 19 0 19 20 0 431 18 0 18 19 0 428 204 0 425 196 0 422 188 0
		 419 180 0 416 172 0 413 164 0 410 156 0 407 148 0 404 140 0 401 132 0 398 124 0 395 116 0
		 392 108 0 389 100 0 386 92 0 383 84 0 380 76 0 377 68 0 374 60 0 371 52 0 368 44 0
		 365 36 0 361 28 0 3 433 0 434 2 0 2 3 0 437 1 0 1 2 0 438 31 0 441 39 0 444 47 0
		 447 55 0 450 63 0 453 71 0 456 79 0 459 87 0 462 95 0 465 103 0 468 111 0 471 119 0
		 474 127 0 477 135 0 480 143 0 483 151 0 486 159 0 489 167 0 492 175 0 495 183 0 498 191 0
		 501 199 0 504 207 0 507 23 0 505 22 0 22 23 0 506 21 0 21 22 0 503 206 0 500 198 0
		 497 190 0 494 182 0 491 174 0 488 166 0 485 158 0 482 150 0 479 142 0 476 134 0 473 126 0
		 470 118 0 467 110 0 464 102 0 461 94 0;
	setAttr ".ed[996:1161]" 458 86 0 455 78 0 452 70 0 449 62 0 446 54 0 443 46 0
		 440 38 0 436 30 0 12 508 0 508 509 0 509 13 0 509 510 0 510 14 0 510 511 0 511 15 0
		 511 512 0 512 16 0 512 513 0 513 17 0 513 514 0 514 18 0 514 515 0 515 19 0 515 516 0
		 516 20 0 516 517 0 517 21 0 517 518 0 518 22 0 518 519 0 519 23 0 519 508 0 508 520 0
		 520 521 0 521 509 0 521 522 0 522 510 0 522 523 0 523 511 0 523 524 0 524 512 0 524 525 0
		 525 513 0 525 526 0 526 514 0 526 527 0 527 515 0 527 528 0 528 516 0 528 529 0 529 517 0
		 529 530 0 530 518 0 530 531 0 531 519 0 531 520 0 532 543 0 543 542 0 542 541 0 541 540 0
		 540 539 0 539 538 0 538 537 0 537 536 0 536 535 0 535 534 0 534 533 0 533 532 0 520 544 0
		 544 545 0 545 521 0 545 546 0 546 522 0 546 547 0 547 523 0 547 548 0 548 524 0 548 549 0
		 549 525 0 549 550 0 550 526 0 550 551 0 551 527 0 551 552 0 552 528 0 552 553 0 553 529 0
		 553 554 0 554 530 0 554 555 0 555 531 0 555 544 0 544 556 0 556 557 0 557 545 0 557 558 0
		 558 546 0 558 559 0 559 547 0 559 560 0 560 548 0 560 561 0 561 549 0 561 562 0 562 550 0
		 562 563 0 563 551 0 563 564 0 564 552 0 564 565 0 565 553 0 565 566 0 566 554 0 566 567 0
		 567 555 0 567 556 0 556 568 0 568 569 0 569 557 0 569 570 0 570 558 0 570 571 0 571 559 0
		 571 572 0 572 560 0 572 573 0 573 561 0 573 574 0 574 562 0 574 575 0 575 563 0 575 576 0
		 576 564 0 576 577 0 577 565 0 577 578 0 578 566 0 578 579 0 579 567 0 579 568 0 568 580 0
		 580 581 0 581 569 0 581 582 0 582 570 0 582 583 0 583 571 0 583 584 0 584 572 0 584 585 0
		 585 573 0 585 586 0 586 574 0 586 587 0 587 575 0 587 588 0 588 576 0 588 589 0 589 577 0
		 589 590 0 590 578 0 590 591 0 591 579 0 591 580 0 580 532 0 533 581 0;
	setAttr ".ed[1162:1171]" 534 582 0 535 583 0 536 584 0 537 585 0 538 586 0 539 587 0
		 540 588 0 541 589 0 542 590 0 543 591 0;
	setAttr -s 2332 ".n";
	setAttr ".n[0:165]" -type "float3"  0.30991256 -0.12240923 0.94285208 0.26002637
		 0.068869255 0.9631424 0.4973087 -0.049958751 0.86613399 0.24210875 -0.27518523 0.93040663
		 -0.94285208 -0.12240928 0.30991262 -0.96314228 0.068869218 0.2600266 -0.86613399
		 -0.049958717 0.49730876 -0.93040663 -0.27518523 0.24210876 -0.30991262 -0.12240926
		 -0.9428522 -0.2600264 0.068869255 -0.9631424 -0.49730879 -0.049958754 -0.86613399
		 -0.24210882 -0.27518526 -0.93040657 0.94285208 -0.12240928 -0.30991253 0.96314245
		 0.068869278 -0.2600264 0.86613399 -0.049958754 -0.49730879 0.93040657 -0.27518523
		 -0.24210879 0.26002637 0.068869255 0.9631424 0.38370168 0.068333134 0.92092532 0.60570979
		 -0.049371108 0.79415244 0.4973087 -0.049958751 0.86613399 -0.96314228 0.068869218
		 0.2600266 -0.9209252 0.068333104 0.38370198 -0.79415244 -0.049371071 0.60570979 -0.86613399
		 -0.049958717 0.49730876 -0.2600264 0.068869255 -0.9631424 -0.38370201 0.068333052
		 -0.9209252 -0.60570985 -0.04937109 -0.79415244 -0.49730879 -0.049958754 -0.86613399
		 0.96314245 0.068869278 -0.2600264 0.92092538 0.06833306 -0.38370204 0.79415238 -0.04937112
		 -0.60570985 0.86613399 -0.049958754 -0.49730879 0.38370168 0.068333134 0.92092532
		 0.50063765 0.067816153 0.86299646 0.7042073 -0.048853368 0.70831174 0.60570979 -0.049371108
		 0.79415244 -0.9209252 0.068333104 0.38370198 -0.86299652 0.067816205 0.50063741 -0.70831174
		 -0.048853345 0.70420712 -0.79415244 -0.049371071 0.60570979 -0.38370201 0.068333052
		 -0.9209252 -0.50063741 0.06781622 -0.86299658 -0.70420712 -0.048853308 -0.70831174
		 -0.60570985 -0.04937109 -0.79415244 0.92092538 0.06833306 -0.38370204 0.86299658
		 0.067816183 -0.50063759 0.70831168 -0.048853368 -0.70420724 0.79415238 -0.04937112
		 -0.60570985 0.50063765 0.067816153 0.86299646 0.60901582 0.067299105 0.79029775 0.79065889
		 -0.048335522 0.61034596 0.7042073 -0.048853368 0.70831174 -0.86299652 0.067816205
		 0.50063741 -0.79029757 0.067299142 0.609016 -0.61034608 -0.048335511 0.79065889 -0.70831174
		 -0.048853345 0.70420712 -0.50063741 0.06781622 -0.86299658 -0.609016 0.067299195
		 -0.79029757 -0.79065889 -0.048335511 -0.61034596 -0.70420712 -0.048853308 -0.70831174
		 0.86299658 0.067816183 -0.50063759 0.79029757 0.067299172 -0.609016 0.61034596 -0.048335522
		 -0.79065889 0.70831168 -0.048853368 -0.70420724 0.60901582 0.067299105 0.79029775
		 0.7069822 0.066782057 0.70407134 0.86358458 -0.047817618 0.50193137 0.79065889 -0.048335522
		 0.61034596 -0.79029757 0.067299142 0.609016 -0.7040711 0.066782065 0.70698243 -0.50193125
		 -0.047817666 0.86358476 -0.61034608 -0.048335511 0.79065889 -0.609016 0.067299195
		 -0.79029757 -0.7069822 0.06678208 -0.70407128 -0.86358476 -0.047817688 -0.50193125
		 -0.79065889 -0.048335511 -0.61034596 0.79029757 0.067299172 -0.609016 0.70407128
		 0.066782042 -0.7069822 0.50193119 -0.04781767 -0.86358476 0.61034596 -0.048335522
		 -0.79065889 0.7069822 0.066782057 0.70407134 0.79285884 0.066264883 0.60579187 0.921736
		 -0.047299609 0.3849225 0.86358458 -0.047817618 0.50193137 -0.7040711 0.066782065
		 0.70698243 -0.60579169 0.06626489 0.79285896 -0.38492247 -0.047299623 0.92173612
		 -0.50193125 -0.047817666 0.86358476 -0.7069822 0.06678208 -0.70407128 -0.79285896
		 0.066264831 -0.60579181 -0.92173612 -0.047299605 -0.38492239 -0.86358476 -0.047817688
		 -0.50193125 0.70407128 0.066782042 -0.7069822 0.60579181 0.066264801 -0.79285896
		 0.3849225 -0.047299616 -0.92173612 0.50193119 -0.04781767 -0.86358476 0.79285884
		 0.066264883 0.60579187 0.86517578 0.065747693 0.49713987 0.96411747 -0.04678138 0.26132154
		 0.921736 -0.047299609 0.3849225 -0.60579169 0.06626489 0.79285896 -0.49713975 0.065747678
		 0.86517584 -0.26132149 -0.046781387 0.96411753 -0.38492247 -0.047299623 0.92173612
		 -0.79285896 0.066264831 -0.60579181 -0.86517578 0.065747701 -0.49713987 -0.96411747
		 -0.046781372 -0.26132163 -0.92173612 -0.047299605 -0.38492239 0.60579181 0.066264801
		 -0.79285896 0.4971399 0.065747701 -0.86517578 0.26132163 -0.046781417 -0.96411747
		 0.3849225 -0.047299616 -0.92173612 0.86517578 0.065747693 0.49713987 0.92269421 0.065230303
		 0.37997416 0.99000293 -0.046263341 0.13324361 0.96411747 -0.04678138 0.26132154 -0.49713975
		 0.065747678 0.86517584 -0.3799741 0.065230347 0.92269433 -0.13324358 -0.046263345
		 0.99000293 -0.26132149 -0.046781387 0.96411753 -0.86517578 0.065747701 -0.49713987
		 -0.92269427 0.065230392 -0.37997395 -0.99000293 -0.046263359 -0.13324347 -0.96411747
		 -0.046781372 -0.26132163 0.4971399 0.065747701 -0.86517578 0.37997404 0.065230422
		 -0.92269427 0.13324349 -0.046263359 -0.99000293 0.26132163 -0.046781417 -0.96411747
		 0.92269421 0.065230303 0.37997416 0.96442908 0.064713039 0.25629824 0.99894893 -0.045745254
		 0.0028797255 0.99000293 -0.046263341 0.13324361 -0.3799741 0.065230347 0.92269433
		 -0.25629809 0.064713098 0.96442908 -0.0028799118 -0.04574522 0.99894893 -0.13324358
		 -0.046263345 0.99000293 -0.92269427 0.065230392 -0.37997395 -0.96442908 0.064713068
		 -0.25629815 -0.99894899 -0.045745213 -0.0028796371 -0.99000293 -0.046263359 -0.13324347
		 0.37997404 0.065230422 -0.92269427 0.25629809 0.064713046 -0.96442914 0.0028795605
		 -0.04574522 -0.99894899 0.13324349 -0.046263359 -0.99000293 0.96442908 0.064713039
		 0.25629824 0.98966485 0.064195581 0.12822798 0.99080175 -0.045226932 -0.1275394 0.99894893
		 -0.045745254 0.0028797255 -0.25629809 0.064713098 0.96442908 -0.12822753 0.064195551
		 0.98966485 0.12753928 -0.045226917 0.99080175 -0.0028799118 -0.04574522 0.99894893
		 -0.96442908 0.064713068 -0.25629815 -0.98966485 0.064195558 -0.12822787 -0.99080175
		 -0.04522698 0.12753947 -0.99894899 -0.045745213 -0.0028796371 0.25629809 0.064713046
		 -0.96442914 0.12822789 0.064195521 -0.98966485 -0.1275395 -0.045226984 -0.99080175
		 0.0028795605 -0.04574522 -0.99894899 0.98966485 0.064195581 0.12822798 0.99796838
		 0.063678049 -0.0020448051 0.96570033 -0.044708405 -0.25578099 0.99080175 -0.045226932
		 -0.1275394 -0.12822753 0.064195551 0.98966485 0.002044939 0.063678034 0.99796838;
	setAttr ".n[166:331]" -type "float3"  0.25578123 -0.044708397 0.96570039 0.12753928
		 -0.045226917 0.99080175 -0.98966485 0.064195558 -0.12822787 -0.99796838 0.063678034
		 0.0020449271 -0.96570039 -0.044708475 0.25578114 -0.99080175 -0.04522698 0.12753947
		 0.12822789 0.064195521 -0.98966485 -0.0020449508 0.063678034 -0.99796838 -0.2557812
		 -0.044708479 -0.96570039 -0.1275395 -0.045226984 -0.99080175 0.99796838 0.063678049
		 -0.0020448051 0.98919648 0.063160561 -0.13229172 0.92407358 -0.044190016 -0.37965158
		 0.96570033 -0.044708405 -0.25578099 0.002044939 0.063678034 0.99796838 0.13229202
		 0.063160628 0.98919636 0.37965158 -0.044189982 0.92407352 0.25578123 -0.044708397
		 0.96570039 -0.99796838 0.063678034 0.0020449271 -0.98919648 0.063160606 0.13229187
		 -0.92407352 -0.044189971 0.37965146 -0.96570039 -0.044708475 0.25578114 -0.0020449508
		 0.063678034 -0.99796838 -0.1322919 0.063160568 -0.98919648 -0.37965193 -0.044190034
		 -0.92407346 -0.2557812 -0.044708479 -0.96570039 0.98919648 0.063160561 -0.13229172
		 0.96349764 0.062642932 -0.26028451 0.86663306 -0.043671615 -0.497031 0.92407358 -0.044190016
		 -0.37965158 0.13229202 0.063160628 0.98919636 0.26028472 0.062642962 0.96349764 0.49703118
		 -0.043671634 0.866633 0.37965158 -0.044189982 0.92407352 -0.98919648 0.063160606
		 0.13229187 -0.96349764 0.062642932 0.26028463 -0.86663306 -0.043671601 0.49703115
		 -0.92407352 -0.044189971 0.37965146 -0.1322919 0.063160568 -0.98919648 -0.2602846
		 0.062642947 -0.9634977 -0.49703109 -0.043671582 -0.86663306 -0.37965193 -0.044190034
		 -0.92407346 0.96349764 0.062642932 -0.26028451 0.92131072 0.062125247 -0.38383207
		 0.79436141 -0.043153297 -0.60591072 0.86663306 -0.043671615 -0.497031 0.26028472
		 0.062642962 0.96349764 0.38383222 0.062125236 0.92131066 0.60591102 -0.043153282
		 0.79436111 0.49703118 -0.043671634 0.866633 -0.96349764 0.062642932 0.26028463 -0.92131072
		 0.062125288 0.38383186 -0.79436141 -0.043153305 0.60591078 -0.86663306 -0.043671601
		 0.49703115 -0.2602846 0.062642947 -0.9634977 -0.38383186 0.062125295 -0.92131084
		 -0.6059109 -0.043153331 -0.79436117 -0.49703109 -0.043671582 -0.86663306 0.92131072
		 0.062125247 -0.38383207 0.86335588 0.061607629 -0.50082028 0.70849431 -0.042634681
		 -0.70442754 0.79436141 -0.043153297 -0.60591072 0.38383222 0.062125236 0.92131066
		 0.5008204 0.06160764 0.86335582 0.70442754 -0.042634681 0.70849431 0.60591102 -0.043153282
		 0.79436111 -0.92131072 0.062125288 0.38383186 -0.86335582 0.061607633 0.50082052
		 -0.70849437 -0.042634677 0.70442748 -0.79436141 -0.043153305 0.60591078 -0.38383186
		 0.062125295 -0.92131084 -0.50082052 0.061607603 -0.86335582 -0.70442754 -0.042634733
		 -0.70849431 -0.6059109 -0.043153331 -0.79436117 0.86335588 0.061607629 -0.50082028
		 0.79062414 0.061089844 -0.60924667 0.61050117 -0.042116158 -0.79089487 0.70849431
		 -0.042634681 -0.70442754 0.5008204 0.06160764 0.86335582 0.60924685 0.061089881 0.79062402
		 0.79089493 -0.042116188 0.61050111 0.70442754 -0.042634681 0.70849431 -0.86335582
		 0.061607633 0.50082052 -0.79062414 0.061089844 0.60924667 -0.61050129 -0.042116158
		 0.79089469 -0.70849437 -0.042634677 0.70442748 -0.50082052 0.061607603 -0.86335582
		 -0.60924667 0.061089858 -0.79062414 -0.79089487 -0.042116184 -0.61050117 -0.70442754
		 -0.042634733 -0.70849431 0.79062414 0.061089844 -0.60924667 0.70435834 0.060572051
		 -0.70725536 0.50205827 -0.041597519 -0.86383277 0.61050117 -0.042116158 -0.79089487
		 0.60924685 0.061089881 0.79062402 0.70725566 0.060572039 0.70435816 0.86383283 -0.041597512
		 0.50205815 0.79089493 -0.042116188 0.61050111 -0.79062414 0.061089844 0.60924667
		 -0.70435828 0.060572069 0.70725542 -0.50205821 -0.041597538 0.86383283 -0.61050129
		 -0.042116158 0.79089469 -0.60924667 0.061089858 -0.79062414 -0.70725548 0.06057208
		 -0.7043584 -0.86383295 -0.041597564 -0.50205809 -0.79089487 -0.042116184 -0.61050117
		 0.70435834 0.060572051 -0.70725536 0.60603452 0.060054149 -0.79316813 0.38502085
		 -0.041078694 -0.92199326 0.50205827 -0.041597519 -0.86383277 0.70725566 0.060572039
		 0.70435816 0.79316837 0.060054146 0.60603422 0.92199326 -0.04107869 0.38502073 0.86383283
		 -0.041597512 0.50205815 -0.70435828 0.060572069 0.70725542 -0.60603446 0.060054209
		 0.79316825 -0.38502073 -0.04107869 0.92199326 -0.50205821 -0.041597538 0.86383283
		 -0.70725548 0.06057208 -0.7043584 -0.79316825 0.060054161 -0.6060344 -0.92199332
		 -0.041078724 -0.38502058 -0.86383295 -0.041597564 -0.50205809 0.60603452 0.060054149
		 -0.79316813 0.49733379 0.059536282 -0.86551404 0.26139137 -0.040560033 -0.96438038
		 0.38502085 -0.041078694 -0.92199326 0.79316837 0.060054146 0.60603422 0.8655141 0.059536301
		 0.49733365 0.96438044 -0.040560052 0.26139101 0.92199326 -0.04107869 0.38502073 -0.60603446
		 0.060054209 0.79316825 -0.49733353 0.059536245 0.86551428 -0.26139119 -0.04056007
		 0.96438044 -0.38502073 -0.04107869 0.92199326 -0.79316825 0.060054161 -0.6060344
		 -0.8655141 0.059536241 -0.49733374 -0.96438044 -0.040560059 -0.26139095 -0.92199332
		 -0.041078724 -0.38502058 0.49733379 0.059536282 -0.86551404 0.38011497 0.05901834
		 -0.92305446 0.13328426 -0.040041436 -0.99026877 0.26139137 -0.040560033 -0.96438038
		 0.8655141 0.059536301 0.49733365 0.92305446 0.059018336 0.38011482 0.99026865 -0.040041436
		 0.13328418 0.96438044 -0.040560052 0.26139101 -0.49733353 0.059536245 0.86551428
		 -0.380115 0.059018347 0.92305446 -0.13328411 -0.040041491 0.99026871 -0.26139119
		 -0.04056007 0.96438044 -0.8655141 0.059536241 -0.49733374 -0.92305434 0.059018325
		 -0.38011512 -0.99026877 -0.04004148 -0.13328423 -0.96438044 -0.040560059 -0.26139095
		 0.38011497 0.05901834 -0.92305446 0.25638422 0.05850032 -0.96480304 0.0028920646
		 -0.039522443 -0.99921447 0.13328426 -0.040041436 -0.99026877 0.92305446 0.059018336
		 0.38011482 0.96480304 0.058500405 0.25638419 0.99921447 -0.039522447 0.0028920264
		 0.99026865 -0.040041436 0.13328418 -0.380115 0.059018347 0.92305446 -0.25638402 0.058500376
		 0.96480304 -0.0028918663 -0.039522428 0.99921453 -0.13328411 -0.040041491 0.99026871;
	setAttr ".n[332:497]" -type "float3"  -0.92305434 0.059018325 -0.38011512 -0.96480304
		 0.05850035 -0.2563841 -0.99921447 -0.039522499 -0.0028919643 -0.99026877 -0.04004148
		 -0.13328423 0.25638422 0.05850032 -0.96480304 0.12825827 0.057982288 -0.99004436
		 -0.12755373 -0.039003532 -0.99106443 0.0028920646 -0.039522443 -0.99921447 0.96480304
		 0.058500405 0.25638419 0.99004447 0.057982359 0.12825808 0.99106443 -0.039003555
		 -0.12755392 0.99921447 -0.039522447 0.0028920264 -0.25638402 0.058500376 0.96480304
		 -0.12825832 0.057982344 0.99004447 0.12755392 -0.039003555 0.99106443 -0.0028918663
		 -0.039522428 0.99921453 -0.96480304 0.05850035 -0.2563841 -0.99004447 0.057982314
		 -0.12825808 -0.99106443 -0.039003547 0.1275539 -0.99921447 -0.039522499 -0.0028919643
		 0.12825827 0.057982288 -0.99004436 -0.0013688861 0.057537008 -0.99834239 -0.25604677
		 -0.038505789 -0.96589708 -0.12755373 -0.039003532 -0.99106443 0.99004447 0.057982359
		 0.12825808 0.99834239 0.057537004 -0.0013692875 0.96589702 -0.038505815 -0.25604698
		 0.99106443 -0.039003555 -0.12755392 -0.12825832 0.057982344 0.99004447 0.0013691203
		 0.057536986 0.99834239 0.25604707 -0.038505834 0.96589702 0.12755392 -0.039003555
		 0.99106443 -0.99004447 0.057982314 -0.12825808 -0.99834239 0.057536989 0.0013690535
		 -0.96589702 -0.038505815 0.25604698 -0.99106443 -0.039003547 0.1275539 -0.0013688861
		 0.057537008 -0.99834239 -0.11959393 0.051189315 -0.99150234 -0.20461604 0.15403694
		 -0.96664619 -0.25604677 -0.038505789 -0.96589708 0.99834239 0.057537004 -0.0013692875
		 0.99150234 0.051189382 -0.1195942 0.96664619 0.15403686 -0.20461626 0.96589702 -0.038505815
		 -0.25604698 0.0013691203 0.057536986 0.99834239 0.1195941 0.051189307 0.99150234
		 0.2046162 0.15403695 0.96664619 0.25604707 -0.038505834 0.96589702 -0.99834239 0.057536989
		 0.0013690535 -0.99150234 0.051189303 0.1195941 -0.96664619 0.15403686 0.20461623
		 -0.96589702 -0.038505815 0.25604698 0.94875562 -0.30890423 -0.066640988 0.96789277
		 -0.021626962 -0.2504313 0.92433822 0.011690823 0.38139498 0.79901677 -0.34757668
		 0.49067566 0.79901677 -0.34757668 0.49067566 0.92433822 0.011690823 0.38139498 0.50708008
		 0.040639095 0.86094028 0.45411026 -0.25333238 0.85417008 0.96789277 -0.021626962
		 -0.2504313 0.92697793 -0.027928017 -0.37407479 0.96597499 0.010143185 0.25843674
		 0.92433822 0.011690823 0.38139498 0.92433822 0.011690823 0.38139498 0.96597499 0.010143185
		 0.25843674 0.61562818 0.048286129 0.78655607 0.50708008 0.040639095 0.86094028 0.92697793
		 -0.027928017 -0.37407479 0.87022853 -0.027876627 -0.49185881 0.99144363 0.010144086
		 0.13014057 0.96597499 0.010143185 0.25843674 0.96597499 0.010143185 0.25843674 0.99144363
		 0.010144086 0.13014057 0.71303189 0.048075892 0.69948155 0.61562818 0.048286129 0.78655607
		 0.87022853 -0.027876627 -0.49185881 0.7985841 -0.027724767 -0.60124433 0.99994856
		 0.010144981 -0.0003822271 0.99144363 0.010144086 0.13014057 0.99144363 0.010144086
		 0.13014057 0.99994856 0.010144981 -0.0003822271 0.79823428 0.047925737 0.6004374
		 0.71303189 0.048075892 0.69948155 0.7985841 -0.027724767 -0.60124433 0.71327448 -0.027572729
		 -0.70034224 0.99134386 0.010145888 -0.13089865 0.99994856 0.010144981 -0.0003822271
		 0.99994856 0.010144981 -0.0003822271 0.99134386 0.010145888 -0.13089865 0.86978221
		 0.047775362 0.49111766 0.79823428 0.047925737 0.6004374 0.71327448 -0.027572729 -0.70034224
		 0.61576003 -0.027420323 -0.78745645 0.96577686 0.010146672 -0.25917575 0.99134386
		 0.010145888 -0.13089865 0.99134386 0.010145888 -0.13089865 0.96577686 0.010146672
		 -0.25917575 0.92645007 0.047624636 0.3733927 0.86978221 0.047775362 0.49111766 0.61576003
		 -0.027420323 -0.78745645 0.50770932 -0.02726762 -0.86109698 0.92368525 0.010147805
		 -0.38301745 0.96577686 0.010146672 -0.25917575 0.96577686 0.010146672 -0.25917575
		 0.92368525 0.010147805 -0.38301745 0.96726787 0.047473837 0.24927694 0.92645007 0.047624636
		 0.3733927 0.50770932 -0.02726762 -0.86109698 0.39097124 -0.027114764 -0.92000335
		 0.865789 0.010148641 -0.50030649 0.92368525 0.010147805 -0.38301745 0.92368525 0.010147805
		 -0.38301745 0.865789 0.010148641 -0.50030649 0.99153692 0.047322568 0.12089327 0.96726787
		 0.047473837 0.24927694 0.39097124 -0.027114764 -0.92000335 0.26754367 -0.026961651
		 -0.96316844 0.7930786 0.010149556 -0.60903466 0.865789 0.010148641 -0.50030649 0.865789
		 0.010148641 -0.50030649 0.7930786 0.010149556 -0.60903466 0.99884105 0.047171157
		 -0.0095619718 0.99153692 0.047322568 0.12089327 0.26754367 -0.026961651 -0.96316844
		 0.13953778 -0.026808279 -0.9898538 0.70679814 0.010150363 -0.70734257 0.7930786 0.010149556
		 -0.60903466 0.7930786 0.010149556 -0.60903466 0.70679814 0.010150363 -0.70734257
		 0.98905468 0.047019377 -0.13985687 0.99884105 0.047171157 -0.0095619718 0.13953778
		 -0.026808279 -0.9898538 0.0091454787 -0.02665446 -0.99960291 0.60842431 0.010151323
		 -0.79354692 0.70679814 0.010150363 -0.70734257 0.70679814 0.010150363 -0.70734257
		 0.60842431 0.010151323 -0.79354692 0.96234488 0.046867535 -0.26776075 0.98905468
		 0.047019377 -0.13985687 0.0091454787 -0.02665446 -0.99960291 -0.12140366 -0.026500361
		 -0.99224949 0.49964029 0.01015232 -0.86617345 0.60842431 0.010151323 -0.79354692
		 0.60842431 0.010151323 -0.79354692 0.49964029 0.01015232 -0.86617345 0.91916782 0.046715505
		 -0.39108586 0.96234488 0.046867535 -0.26776075 -0.12140366 -0.026500361 -0.99224949
		 -0.24987547 -0.026346225 -0.96791953 0.38230702 0.010153234 -0.92397958 0.49964029
		 0.01015232 -0.86617345 0.49964029 0.01015232 -0.86617345 0.38230702 0.010153234 -0.92397958
		 0.86026138 0.046562955 -0.50772256 0.91916782 0.046715505 -0.39108586 -0.24987547
		 -0.026346225 -0.96791953 -0.37407216 -0.0261919 -0.92702973 0.258432 0.01015388 -0.96597606
		 0.38230702 0.010153234 -0.92397958 0.38230702 0.010153234 -0.92397958 0.258432 0.01015388
		 -0.96597606 0.78663331 0.046410162 -0.61567384 0.86026138 0.046562955 -0.50772256
		 -0.37407216 -0.0261919 -0.92702973 -0.49186936 -0.026037198 -0.87027961;
	setAttr ".n[498:663]" -type "float3"  0.13013506 0.010154807 -0.99144423 0.258432
		 0.01015388 -0.96597606 0.258432 0.01015388 -0.96597606 0.13013506 0.010154807 -0.99144423
		 0.69954258 0.046257298 -0.71309233 0.78663331 0.046410162 -0.61567384 -0.49186936
		 -0.026037198 -0.87027961 -0.60125095 -0.025882298 -0.79864097 -0.000388143 0.010155702
		 -0.99994832 0.13013506 0.010154807 -0.99144423 0.13013506 0.010154807 -0.99144423
		 -0.000388143 0.010155702 -0.99994832 0.60047942 0.046104167 -0.79831016 0.69954258
		 0.046257298 -0.71309233 -0.60125095 -0.025882298 -0.79864097 -0.70034665 -0.02572706
		 -0.71333915 -0.13090526 0.010156611 -0.9913429 -0.000388143 0.010155702 -0.99994832
		 -0.000388143 0.010155702 -0.99994832 -0.13090526 0.010156611 -0.9913429 0.49113765
		 0.045950636 -0.86986911 0.60047942 0.046104167 -0.79831016 -0.70034665 -0.02572706
		 -0.71333915 -0.78746068 -0.025571493 -0.61583418 -0.25918242 0.010157448 -0.96577501
		 -0.13090526 0.010156611 -0.9913429 -0.13090526 0.010156611 -0.9913429 -0.25918242
		 0.010157448 -0.96577501 0.3733888 0.045796953 -0.92654377 0.49113765 0.045950636
		 -0.86986911 -0.78746068 -0.025571493 -0.61583418 -0.86110342 -0.02541581 -0.50779444
		 -0.38302448 0.010158284 -0.92368233 -0.25918242 0.010157448 -0.96577501 -0.25918242
		 0.010157448 -0.96577501 -0.38302448 0.010158284 -0.92368233 0.24924774 0.04564314
		 -0.9673636 0.3733888 0.045796953 -0.92654377 -0.86110342 -0.02541581 -0.50779444
		 -0.92001516 -0.025259975 -0.39106789 -0.5003134 0.010159073 -0.86578482 -0.38302448
		 0.010158284 -0.92368233 -0.38302448 0.010158284 -0.92368233 -0.5003134 0.010159073
		 -0.86578482 0.12083758 0.045488946 -0.99162948 0.24924774 0.04564314 -0.9673636 -0.92001516
		 -0.025259975 -0.39106789 -0.96318865 -0.025103576 -0.26765171 -0.60904175 0.010160017
		 -0.793073 -0.5003134 0.010159073 -0.86578482 -0.5003134 0.010159073 -0.86578482 -0.60904175
		 0.010160017 -0.793073 -0.0096439384 0.045334473 -0.99892527 0.12083758 0.045488946
		 -0.99162948 -0.96318865 -0.025103576 -0.26765171 -0.98988414 -0.025018029 -0.13965479
		 -0.70734876 0.010160848 -0.7067917 -0.60904175 0.010160017 -0.793073 -0.60904175
		 0.010160017 -0.793073 -0.70734876 0.010160848 -0.7067917 -0.13994247 0.045045886
		 -0.98913449 -0.0096439384 0.045334473 -0.99892527 -0.98988414 -0.025018029 -0.13965479
		 -0.99980623 -0.017805861 -0.0084001832 -0.79324317 0.0083544934 -0.60884774 -0.70734876
		 0.010160848 -0.7067917 -0.70734876 0.010160848 -0.7067917 -0.79324317 0.0083544934
		 -0.60884774 -0.26760975 0.038664069 -0.96275133 -0.13994247 0.045045886 -0.98913449
		 -0.99980623 -0.017805861 -0.0084001832 -0.9609679 0.274149 0.037191294 -0.81804359
		 0.36741507 -0.44250518 -0.79324317 0.0083544934 -0.60884774 -0.79324317 0.0083544934
		 -0.60884774 -0.81804359 0.36741507 -0.44250518 -0.30697131 0.035822727 -0.95104438
		 -0.26760975 0.038664069 -0.96275133 0.066640861 -0.30890423 0.94875562 0.25043127
		 -0.021626964 0.96789277 -0.38139498 0.011690795 0.92433822 -0.49067566 -0.34757671
		 0.79901683 -0.49067566 -0.34757671 0.79901683 -0.38139498 0.011690795 0.92433822
		 -0.86094016 0.040639151 0.50708032 -0.85417002 -0.25333238 0.45411032 0.25043127
		 -0.021626964 0.96789277 0.37407458 -0.027927974 0.92697805 -0.25843692 0.010143259
		 0.96597487 -0.38139498 0.011690795 0.92433822 -0.38139498 0.011690795 0.92433822
		 -0.25843692 0.010143259 0.96597487 -0.78655589 0.048286095 0.61562842 -0.86094016
		 0.040639151 0.50708032 0.37407458 -0.027927974 0.92697805 0.4918586 -0.027876627
		 0.87022865 -0.13014048 0.010143982 0.99144369 -0.25843692 0.010143259 0.96597487
		 -0.25843692 0.010143259 0.96597487 -0.13014048 0.010143982 0.99144369 -0.69948149
		 0.048075862 0.71303189 -0.78655589 0.048286095 0.61562842 0.4918586 -0.027876627
		 0.87022865 0.60124427 -0.027724743 0.79858422 0.00038211886 0.010144952 0.9999485
		 -0.13014048 0.010143982 0.99144369 -0.13014048 0.010143982 0.99144369 0.00038211886
		 0.010144952 0.9999485 -0.6004371 0.0479258 0.79823458 -0.69948149 0.048075862 0.71303189
		 0.60124427 -0.027724743 0.79858422 0.70034212 -0.027572682 0.7132746 0.13089864 0.010145943
		 0.99134386 0.00038211886 0.010144952 0.9999485 0.00038211886 0.010144952 0.9999485
		 0.13089864 0.010145943 0.99134386 -0.49111742 0.047775362 0.86978239 -0.6004371 0.0479258
		 0.79823458 0.70034212 -0.027572682 0.7132746 0.78745645 -0.027420318 0.61576021 0.25917572
		 0.010146632 0.96577686 0.13089864 0.010145943 0.99134386 0.13089864 0.010145943 0.99134386
		 0.25917572 0.010146632 0.96577686 -0.37339249 0.047624584 0.92645019 -0.49111742
		 0.047775362 0.86978239 0.78745645 -0.027420318 0.61576021 0.86109686 -0.027267559
		 0.50770932 0.38301757 0.010147703 0.92368525 0.25917572 0.010146632 0.96577686 0.25917572
		 0.010146632 0.96577686 0.38301757 0.010147703 0.92368525 -0.24927692 0.04747384 0.96726799
		 -0.37339249 0.047624584 0.92645019 0.86109686 -0.027267559 0.50770932 0.92000335
		 -0.027114771 0.39097121 0.50030661 0.010148612 0.86578882 0.38301757 0.010147703
		 0.92368525 0.38301757 0.010147703 0.92368525 0.50030661 0.010148612 0.86578882 -0.12089305
		 0.047322582 0.99153692 -0.24927692 0.04747384 0.96726799 0.92000335 -0.027114771
		 0.39097121 0.96316844 -0.026961688 0.26754376 0.60903466 0.01014955 0.7930786 0.50030661
		 0.010148612 0.86578882 0.50030661 0.010148612 0.86578882 0.60903466 0.01014955 0.7930786
		 0.009562117 0.047171257 0.99884111 -0.12089305 0.047322582 0.99153692 0.96316844
		 -0.026961688 0.26754376 0.98985374 -0.026808199 0.13953795 0.70734245 0.010150391
		 0.70679814 0.60903466 0.01014955 0.7930786 0.60903466 0.01014955 0.7930786 0.70734245
		 0.010150391 0.70679814 0.13985711 0.047019396 0.98905468 0.009562117 0.047171257
		 0.99884111 0.98985374 -0.026808199 0.13953795 0.99960291 -0.026654346 0.0091456128
		 0.79354697 0.010151297 0.60842437 0.70734245 0.010150391 0.70679814 0.70734245 0.010150391
		 0.70679814 0.79354697 0.010151297 0.60842437 0.26776096 0.046867486 0.96234483 0.13985711
		 0.047019396 0.98905468;
	setAttr ".n[664:829]" -type "float3"  0.99960291 -0.026654346 0.0091456128
		 0.99224943 -0.026500376 -0.1214034 0.86617362 0.010152203 0.49964008 0.79354697 0.010151297
		 0.60842437 0.79354697 0.010151297 0.60842437 0.86617362 0.010152203 0.49964008 0.39108637
		 0.046715517 0.91916758 0.26776096 0.046867486 0.96234483 0.99224943 -0.026500376
		 -0.1214034 0.96791953 -0.026346229 -0.2498752 0.92397952 0.01015316 0.3823072 0.86617362
		 0.010152203 0.49964008 0.86617362 0.010152203 0.49964008 0.92397952 0.01015316 0.3823072
		 0.50772268 0.046563026 0.86026144 0.39108637 0.046715517 0.91916758 0.96791953 -0.026346229
		 -0.2498752 0.92702973 -0.026191898 -0.37407202 0.96597606 0.01015383 0.25843194 0.92397952
		 0.01015316 0.3823072 0.92397952 0.01015316 0.3823072 0.96597606 0.01015383 0.25843194
		 0.61567372 0.046410181 0.78663343 0.50772268 0.046563026 0.86026144 0.92702973 -0.026191898
		 -0.37407202 0.87027979 -0.026037211 -0.49186918 0.99144429 0.01015481 0.13013507
		 0.96597606 0.01015383 0.25843194 0.96597606 0.01015383 0.25843194 0.99144429 0.01015481
		 0.13013507 0.71309251 0.046257272 0.69954222 0.61567372 0.046410181 0.78663343 0.87027979
		 -0.026037211 -0.49186918 0.79864091 -0.025882246 -0.60125101 0.99994832 0.010155697
		 -0.00038816757 0.99144429 0.01015481 0.13013507 0.99144429 0.01015481 0.13013507
		 0.99994832 0.010155697 -0.00038816757 0.79831022 0.046104249 0.6004793 0.71309251
		 0.046257272 0.69954222 0.79864091 -0.025882246 -0.60125101 0.71333933 -0.025727013
		 -0.70034647 0.99134278 0.010156613 -0.13090524 0.99994832 0.010155697 -0.00038816757
		 0.99994832 0.010155697 -0.00038816757 0.99134278 0.010156613 -0.13090524 0.86986923
		 0.045950651 0.49113733 0.79831022 0.046104249 0.6004793 0.71333933 -0.025727013 -0.70034647
		 0.6158343 -0.025571467 -0.78746051 0.96577501 0.010157458 -0.25918242 0.99134278
		 0.010156613 -0.13090524 0.99134278 0.010156613 -0.13090524 0.96577501 0.010157458
		 -0.25918242 0.92654395 0.045796901 0.37338844 0.86986923 0.045950651 0.49113733 0.6158343
		 -0.025571467 -0.78746051 0.50779468 -0.025415769 -0.86110312 0.92368233 0.010158237
		 -0.3830246 0.96577501 0.010157458 -0.25918242 0.96577501 0.010157458 -0.25918242
		 0.92368233 0.010158237 -0.3830246 0.9673636 0.04564308 0.24924734 0.92654395 0.045796901
		 0.37338844 0.50779468 -0.025415769 -0.86110312 0.3910681 -0.025259946 -0.9200151
		 0.86578482 0.010158993 -0.5003134 0.92368233 0.010158237 -0.3830246 0.92368233 0.010158237
		 -0.3830246 0.86578482 0.010158993 -0.5003134 0.99162948 0.045488909 0.12083733 0.9673636
		 0.04564308 0.24924734 0.3910681 -0.025259946 -0.9200151 0.26765183 -0.025103521 -0.96318865
		 0.79307288 0.010159923 -0.60904199 0.86578482 0.010158993 -0.5003134 0.86578482 0.010158993
		 -0.5003134 0.79307288 0.010159923 -0.60904199 0.99892539 0.045334514 -0.0096442178
		 0.99162948 0.045488909 0.12083733 0.26765183 -0.025103521 -0.96318865 0.13965482
		 -0.025018029 -0.98988414 0.70679152 0.010160809 -0.70734882 0.79307288 0.010159923
		 -0.60904199 0.79307288 0.010159923 -0.60904199 0.70679152 0.010160809 -0.70734882
		 0.98913449 0.045045994 -0.13994268 0.99892539 0.045334514 -0.0096442178 0.13965482
		 -0.025018029 -0.98988414 0.0084003275 -0.017805854 -0.99980623 0.60884774 0.008354459
		 -0.79324317 0.70679152 0.010160809 -0.70734882 0.70679152 0.010160809 -0.70734882
		 0.60884774 0.008354459 -0.79324317 0.96275121 0.038664088 -0.26760998 0.98913449
		 0.045045994 -0.13994268 0.0084003275 -0.017805854 -0.99980623 -0.037191153 0.27414906
		 -0.96096784 0.44250509 0.36741504 -0.81804359 0.60884774 0.008354459 -0.79324317
		 0.60884774 0.008354459 -0.79324317 0.44250509 0.36741504 -0.81804359 0.95104438 0.035822712
		 -0.30697137 0.96275121 0.038664088 -0.26760998 -0.94875562 -0.30890423 0.066640824
		 -0.96789277 -0.021626884 0.25043109 -0.92433816 0.011690829 -0.3813951 -0.79901671
		 -0.34757668 -0.49067572 -0.79901671 -0.34757668 -0.49067572 -0.92433816 0.011690829
		 -0.3813951 -0.50708008 0.040639166 -0.86094028 -0.45411032 -0.25333241 -0.85417008
		 -0.96789277 -0.021626884 0.25043109 -0.92697805 -0.027927933 0.37407458 -0.96597487
		 0.010143223 -0.25843698 -0.92433816 0.011690829 -0.3813951 -0.92433816 0.011690829
		 -0.3813951 -0.96597487 0.010143223 -0.25843698 -0.61562842 0.048286073 -0.78655589
		 -0.50708008 0.040639166 -0.86094028 -0.92697805 -0.027927933 0.37407458 -0.87022871
		 -0.027876569 0.49185857 -0.99144369 0.010143944 -0.13014051 -0.96597487 0.010143223
		 -0.25843698 -0.96597487 0.010143223 -0.25843698 -0.99144369 0.010143944 -0.13014051
		 -0.71303195 0.04807587 -0.69948149 -0.61562842 0.048286073 -0.78655589 -0.87022871
		 -0.027876569 0.49185857 -0.79858416 -0.027724769 0.60124421 -0.9999485 0.010144923
		 0.00038203536 -0.99144369 0.010143944 -0.13014051 -0.99144369 0.010143944 -0.13014051
		 -0.9999485 0.010144923 0.00038203536 -0.79823434 0.047925826 -0.60043728 -0.71303195
		 0.04807587 -0.69948149 -0.79858416 -0.027724769 0.60124421 -0.7132746 -0.027572732
		 0.70034224 -0.99134392 0.010145861 0.13089854 -0.9999485 0.010144923 0.00038203536
		 -0.9999485 0.010144923 0.00038203536 -0.99134392 0.010145861 0.13089854 -0.86978221
		 0.047775347 -0.49111757 -0.79823434 0.047925826 -0.60043728 -0.7132746 -0.027572732
		 0.70034224 -0.61576009 -0.027420314 0.78745645 -0.96577686 0.010146652 0.25917563
		 -0.99134392 0.010145861 0.13089854 -0.99134392 0.010145861 0.13089854 -0.96577686
		 0.010146652 0.25917563 -0.92645007 0.047624633 -0.37339282 -0.86978221 0.047775347
		 -0.49111757 -0.61576009 -0.027420314 0.78745645 -0.50770944 -0.027267518 0.8610968
		 -0.92368537 0.010147831 0.38301742 -0.96577686 0.010146652 0.25917563 -0.96577686
		 0.010146652 0.25917563 -0.92368537 0.010147831 0.38301742 -0.96726799 0.047473826
		 -0.24927688 -0.92645007 0.047624633 -0.37339282 -0.50770944 -0.027267518 0.8610968
		 -0.3909713 -0.027114723 0.92000329 -0.865789 0.010148583 0.50030649 -0.92368537 0.010147831
		 0.38301742 -0.92368537 0.010147831 0.38301742 -0.865789 0.010148583 0.50030649;
	setAttr ".n[830:995]" -type "float3"  -0.99153692 0.047322642 -0.12089312 -0.96726799
		 0.047473826 -0.24927688 -0.3909713 -0.027114723 0.92000329 -0.26754409 -0.026961599
		 0.96316838 -0.79307878 0.01014953 0.60903454 -0.865789 0.010148583 0.50030649 -0.865789
		 0.010148583 0.50030649 -0.79307878 0.01014953 0.60903454 -0.99884105 0.047171202
		 0.0095620127 -0.99153692 0.047322642 -0.12089312 -0.26754409 -0.026961599 0.96316838
		 -0.13953832 -0.026808182 0.98985374 -0.7067982 0.010150325 0.70734251 -0.79307878
		 0.01014953 0.60903454 -0.79307878 0.01014953 0.60903454 -0.7067982 0.010150325 0.70734251
		 -0.98905468 0.047019389 0.13985693 -0.99884105 0.047171202 0.0095620127 -0.13953832
		 -0.026808182 0.98985374 -0.0091455104 -0.026654357 0.99960291 -0.60842437 0.010151261
		 0.79354686 -0.7067982 0.010150325 0.70734251 -0.7067982 0.010150325 0.70734251 -0.60842437
		 0.010151261 0.79354686 -0.96234488 0.046867538 0.26776075 -0.98905468 0.047019389
		 0.13985693 -0.0091455104 -0.026654357 0.99960291 0.12140344 -0.026500341 0.99224943
		 -0.49964026 0.010152234 0.86617351 -0.60842437 0.010151261 0.79354686 -0.60842437
		 0.010151261 0.79354686 -0.49964026 0.010152234 0.86617351 -0.91916782 0.046715509
		 0.39108598 -0.96234488 0.046867538 0.26776075 0.12140344 -0.026500341 0.99224943
		 0.24987526 -0.026346285 0.96791953 -0.38230717 0.010153128 0.92397952 -0.49964026
		 0.010152234 0.86617351 -0.49964026 0.010152234 0.86617351 -0.38230717 0.010153128
		 0.92397952 -0.86026138 0.046562947 0.50772268 -0.91916782 0.046715509 0.39108598
		 0.24987526 -0.026346285 0.96791953 0.3740721 -0.026191846 0.92702973 -0.25843206
		 0.01015381 0.96597606 -0.38230717 0.010153128 0.92397952 -0.38230717 0.010153128
		 0.92397952 -0.25843206 0.01015381 0.96597606 -0.78663355 0.046410285 0.61567342 -0.86026138
		 0.046562947 0.50772268 0.3740721 -0.026191846 0.92702973 0.49186939 -0.026037203
		 0.87027961 -0.13013521 0.010154823 0.99144423 -0.25843206 0.01015381 0.96597606 -0.25843206
		 0.01015381 0.96597606 -0.13013521 0.010154823 0.99144423 -0.69954252 0.046257332
		 0.71309227 -0.78663355 0.046410285 0.61567342 0.49186939 -0.026037203 0.87027961
		 0.60125095 -0.025882255 0.79864091 0.00038794643 0.010155684 0.99994832 -0.13013521
		 0.010154823 0.99144423 -0.13013521 0.010154823 0.99144423 0.00038794643 0.010155684
		 0.99994832 -0.60047948 0.046104159 0.79830998 -0.69954252 0.046257332 0.71309227
		 0.60125095 -0.025882255 0.79864091 0.70034653 -0.025726978 0.71333921 0.13090536
		 0.010156555 0.9913429 0.00038794643 0.010155684 0.99994832 0.00038794643 0.010155684
		 0.99994832 0.13090536 0.010156555 0.9913429 -0.49113759 0.04595064 0.86986917 -0.60047948
		 0.046104159 0.79830998 0.70034653 -0.025726978 0.71333921 0.78746057 -0.025571514
		 0.61583418 0.25918233 0.010157409 0.96577495 0.13090536 0.010156555 0.9913429 0.13090536
		 0.010156555 0.9913429 0.25918233 0.010157409 0.96577495 -0.37338886 0.045797076 0.92654377
		 -0.49113759 0.04595064 0.86986917 0.78746057 -0.025571514 0.61583418 0.86110336 -0.02541581
		 0.50779444 0.38302425 0.010158229 0.92368245 0.25918233 0.010157409 0.96577495 0.25918233
		 0.010157409 0.96577495 0.38302425 0.010158229 0.92368245 -0.2492478 0.045643121 0.9673636
		 -0.37338886 0.045797076 0.92654377 0.86110336 -0.02541581 0.50779444 0.92001516 -0.025259927
		 0.39106801 0.5003134 0.010158995 0.86578482 0.38302425 0.010158229 0.92368245 0.38302425
		 0.010158229 0.92368245 0.5003134 0.010158995 0.86578482 -0.12083771 0.045488909 0.99162948
		 -0.2492478 0.045643121 0.9673636 0.92001516 -0.025259927 0.39106801 0.96318865 -0.025103541
		 0.26765174 0.60904175 0.010159927 0.79307306 0.5003134 0.010158995 0.86578482 0.5003134
		 0.010158995 0.86578482 0.60904175 0.010159927 0.79307306 0.0096437931 0.045334585
		 0.99892527 -0.12083771 0.045488909 0.99162948 0.96318865 -0.025103541 0.26765174
		 0.98988414 -0.025018046 0.13965464 0.70734888 0.010160781 0.70679164 0.60904175 0.010159927
		 0.79307306 0.60904175 0.010159927 0.79307306 0.70734888 0.010160781 0.70679164 0.13994217
		 0.045045968 0.98913455 0.0096437931 0.045334585 0.99892527 0.98988414 -0.025018046
		 0.13965464 0.99980628 -0.017805884 0.0084001003 0.79324311 0.0083545018 0.6088478
		 0.70734888 0.010160781 0.70679164 0.70734888 0.010160781 0.70679164 0.79324311 0.0083545018
		 0.6088478 0.26760948 0.038664158 0.96275133 0.13994217 0.045045968 0.98913455 0.99980628
		 -0.017805884 0.0084001003 0.96096784 0.27414903 -0.037191175 0.81804347 0.36741513
		 0.44250527 0.79324311 0.0083545018 0.6088478 0.79324311 0.0083545018 0.6088478 0.81804347
		 0.36741513 0.44250527 0.30697113 0.035822731 0.95104432 0.26760948 0.038664158 0.96275133
		 -0.066640861 -0.30890426 -0.9487555 -0.2504313 -0.021626964 -0.96789277 0.38139501
		 0.011690795 -0.92433822 0.49067572 -0.34757674 -0.79901671 0.49067572 -0.34757674
		 -0.79901671 0.38139501 0.011690795 -0.92433822 0.86094034 0.040639177 -0.50708002
		 0.85417008 -0.25333244 -0.45411023 -0.2504313 -0.021626964 -0.96789277 -0.37407458
		 -0.027927946 -0.92697805 0.25843704 0.010143274 -0.96597487 0.38139501 0.011690795
		 -0.92433822 0.38139501 0.011690795 -0.92433822 0.25843704 0.010143274 -0.96597487
		 0.78655589 0.048286106 -0.61562836 0.86094034 0.040639177 -0.50708002 -0.37407458
		 -0.027927946 -0.92697805 -0.49185875 -0.027876571 -0.87022853 0.1301405 0.010143986
		 -0.99144363 0.25843704 0.010143274 -0.96597487 0.25843704 0.010143274 -0.96597487
		 0.1301405 0.010143986 -0.99144363 0.69948149 0.048075896 -0.71303189 0.78655589 0.048286106
		 -0.61562836 -0.49185875 -0.027876571 -0.87022853 -0.60124433 -0.027724775 -0.79858416
		 -0.00038199604 0.010144978 -0.9999485 0.1301405 0.010143986 -0.99144363 0.1301405
		 0.010143986 -0.99144363 -0.00038199604 0.010144978 -0.9999485 0.60043734 0.047925811
		 -0.79823434 0.69948149 0.048075896 -0.71303189 -0.60124433 -0.027724775 -0.79858416
		 -0.70034224 -0.02757274 -0.7132746 -0.13089854 0.010145911 -0.99134392 -0.00038199604
		 0.010144978 -0.9999485;
	setAttr ".n[996:1161]" -type "float3"  -0.00038199604 0.010144978 -0.9999485
		 -0.13089854 0.010145911 -0.99134392 0.49111766 0.047775324 -0.86978221 0.60043734
		 0.047925811 -0.79823434 -0.70034224 -0.02757274 -0.7132746 -0.78745645 -0.02742029
		 -0.61576009 -0.25917563 0.010146637 -0.96577686 -0.13089854 0.010145911 -0.99134392
		 -0.13089854 0.010145911 -0.99134392 -0.25917563 0.010146637 -0.96577686 0.3733927
		 0.047624569 -0.92645013 0.49111766 0.047775324 -0.86978221 -0.78745645 -0.02742029
		 -0.61576009 -0.86109698 -0.027267598 -0.50770932 -0.3830176 0.010147748 -0.92368537
		 -0.25917563 0.010146637 -0.96577686 -0.25917563 0.010146637 -0.96577686 -0.3830176
		 0.010147748 -0.92368537 0.24927701 0.04747384 -0.96726799 0.3733927 0.047624569 -0.92645013
		 -0.86109698 -0.027267598 -0.50770932 -0.92000335 -0.027114749 -0.39097136 -0.50030643
		 0.010148652 -0.865789 -0.3830176 0.010147748 -0.92368537 -0.3830176 0.010147748 -0.92368537
		 -0.50030643 0.010148652 -0.865789 0.12089325 0.047322702 -0.99153686 0.24927701 0.04747384
		 -0.96726799 -0.92000335 -0.027114749 -0.39097136 -0.96316844 -0.026961641 -0.26754376
		 -0.6090346 0.010149576 -0.79307878 -0.50030643 0.010148652 -0.865789 -0.50030643
		 0.010148652 -0.865789 -0.6090346 0.010149576 -0.79307878 -0.0095618377 0.047171231
		 -0.99884105 0.12089325 0.047322702 -0.99153686 -0.96316844 -0.026961641 -0.26754376
		 -0.98985374 -0.026808256 -0.13953789 -0.70734245 0.010150379 -0.70679814 -0.6090346
		 0.010149576 -0.79307878 -0.6090346 0.010149576 -0.79307878 -0.70734245 0.010150379
		 -0.70679814 -0.13985674 0.047019348 -0.98905468 -0.0095618377 0.047171231 -0.99884105
		 -0.98985374 -0.026808256 -0.13953789 -0.99960291 -0.026654325 -0.009145706 -0.79354686
		 0.010151376 -0.60842448 -0.70734245 0.010150379 -0.70679814 -0.70734245 0.010150379
		 -0.70679814 -0.79354686 0.010151376 -0.60842448 -0.26776081 0.04686752 -0.96234488
		 -0.13985674 0.047019348 -0.98905468 -0.99960291 -0.026654325 -0.009145706 -0.99224943
		 -0.026500279 0.12140304 -0.86617345 0.010152255 -0.49964041 -0.79354686 0.010151376
		 -0.60842448 -0.79354686 0.010151376 -0.60842448 -0.86617345 0.010152255 -0.49964041
		 -0.39108598 0.046715483 -0.91916782 -0.26776081 0.04686752 -0.96234488 -0.99224943
		 -0.026500279 0.12140304 -0.96791953 -0.026346242 0.24987522 -0.92397952 0.010153139
		 -0.38230723 -0.86617345 0.010152255 -0.49964041 -0.86617345 0.010152255 -0.49964041
		 -0.92397952 0.010153139 -0.38230723 -0.50772256 0.046562936 -0.86026138 -0.39108598
		 0.046715483 -0.91916782 -0.96791953 -0.026346242 0.24987522 -0.92702973 -0.026191831
		 0.37407193 -0.96597606 0.010153846 -0.258432 -0.92397952 0.010153139 -0.38230723
		 -0.92397952 0.010153139 -0.38230723 -0.96597606 0.010153846 -0.258432 -0.61567348
		 0.046410263 -0.78663349 -0.50772256 0.046562936 -0.86026138 -0.92702973 -0.026191831
		 0.37407193 -0.87027973 -0.026037155 0.49186918 -0.99144423 0.01015483 -0.13013524
		 -0.96597606 0.010153846 -0.258432 -0.96597606 0.010153846 -0.258432 -0.99144423 0.01015483
		 -0.13013524 -0.71309227 0.046257328 -0.69954252 -0.61567348 0.046410263 -0.78663349
		 -0.87027973 -0.026037155 0.49186918 -0.79864103 -0.025882265 0.60125089 -0.99994838
		 0.010155682 0.00038797109 -0.99144423 0.01015483 -0.13013524 -0.99144423 0.01015483
		 -0.13013524 -0.99994838 0.010155682 0.00038797109 -0.79830998 0.04610417 -0.6004796
		 -0.71309227 0.046257328 -0.69954252 -0.79864103 -0.025882265 0.60125089 -0.71333921
		 -0.025727058 0.70034653 -0.9913429 0.010156537 0.13090512 -0.99994838 0.010155682
		 0.00038797109 -0.99994838 0.010155682 0.00038797109 -0.9913429 0.010156537 0.13090512
		 -0.86986911 0.045950659 -0.49113765 -0.79830998 0.04610417 -0.6004796 -0.71333921
		 -0.025727058 0.70034653 -0.61583436 -0.025571452 0.78746051 -0.96577501 0.010157495
		 0.25918207 -0.9913429 0.010156537 0.13090512 -0.9913429 0.010156537 0.13090512 -0.96577501
		 0.010157495 0.25918207 -0.92654365 0.045797035 -0.37338912 -0.86986911 0.045950659
		 -0.49113765 -0.61583436 -0.025571452 0.78746051 -0.50779474 -0.025415774 0.86110318
		 -0.92368245 0.010158257 0.38302436 -0.96577501 0.010157495 0.25918207 -0.96577501
		 0.010157495 0.25918207 -0.92368245 0.010158257 0.38302436 -0.9673636 0.045643073
		 -0.2492478 -0.92654365 0.045797035 -0.37338912 -0.50779474 -0.025415774 0.86110318
		 -0.39106792 -0.025259985 0.9200151 -0.86578482 0.010158987 0.50031328 -0.92368245
		 0.010158257 0.38302436 -0.92368245 0.010158257 0.38302436 -0.86578482 0.010158987
		 0.50031328 -0.99162948 0.045488928 -0.1208378 -0.9673636 0.045643073 -0.2492478 -0.39106792
		 -0.025259985 0.9200151 -0.26765183 -0.025103489 0.96318865 -0.79307312 0.01016002
		 0.60904175 -0.86578482 0.010158987 0.50031328 -0.86578482 0.010158987 0.50031328
		 -0.79307312 0.01016002 0.60904175 -0.99892539 0.045334566 0.0096438453 -0.99162948
		 0.045488928 -0.1208378 -0.26765183 -0.025103489 0.96318865 -0.13965482 -0.025018027
		 0.98988414 -0.7067917 0.01016085 0.7073487 -0.79307312 0.01016002 0.60904175 -0.79307312
		 0.01016002 0.60904175 -0.7067917 0.01016085 0.7073487 -0.98913455 0.045045931 0.13994245
		 -0.99892539 0.045334566 0.0096438453 -0.13965482 -0.025018027 0.98988414 -0.0084003685
		 -0.017805835 0.99980623 -0.60884792 0.0083544636 0.79324299 -0.7067917 0.01016085
		 0.7073487 -0.7067917 0.01016085 0.7073487 -0.60884792 0.0083544636 0.79324299 -0.96275133
		 0.03866411 0.26760963 -0.98913455 0.045045931 0.13994245 -0.0084003685 -0.017805835
		 0.99980623 0.037191186 0.27414906 0.96096784 -0.44250524 0.36741507 0.81804347 -0.60884792
		 0.0083544636 0.79324299 -0.60884792 0.0083544636 0.79324299 -0.44250524 0.36741507
		 0.81804347 -0.95104432 0.035822738 0.30697113 -0.96275133 0.03866411 0.26760963 0.93040657
		 -0.27518523 -0.24210879 0.94875562 -0.30890423 -0.066640988 0.79901677 -0.34757668
		 0.49067566 0.60601175 -0.71060419 0.3574791 0.60601175 -0.71060419 0.3574791 0.79901677
		 -0.34757668 0.49067566 0.45411026 -0.25333238 0.85417008 0.30991256 -0.12240923 0.94285208
		 0.30991256 -0.12240923 0.94285208 0.45411026 -0.25333238 0.85417008;
	setAttr ".n[1162:1327]" -type "float3"  0.50708008 0.040639095 0.86094028 0.26002637
		 0.068869255 0.9631424 0.26002637 0.068869255 0.9631424 0.50708008 0.040639095 0.86094028
		 0.61562818 0.048286129 0.78655607 0.38370168 0.068333134 0.92092532 0.38370168 0.068333134
		 0.92092532 0.61562818 0.048286129 0.78655607 0.71303189 0.048075892 0.69948155 0.50063765
		 0.067816153 0.86299646 0.50063765 0.067816153 0.86299646 0.71303189 0.048075892 0.69948155
		 0.79823428 0.047925737 0.6004374 0.60901582 0.067299105 0.79029775 0.60901582 0.067299105
		 0.79029775 0.79823428 0.047925737 0.6004374 0.86978221 0.047775362 0.49111766 0.7069822
		 0.066782057 0.70407134 0.7069822 0.066782057 0.70407134 0.86978221 0.047775362 0.49111766
		 0.92645007 0.047624636 0.3733927 0.79285884 0.066264883 0.60579187 0.79285884 0.066264883
		 0.60579187 0.92645007 0.047624636 0.3733927 0.96726787 0.047473837 0.24927694 0.86517578
		 0.065747693 0.49713987 0.86517578 0.065747693 0.49713987 0.96726787 0.047473837 0.24927694
		 0.99153692 0.047322568 0.12089327 0.92269421 0.065230303 0.37997416 0.92269421 0.065230303
		 0.37997416 0.99153692 0.047322568 0.12089327 0.99884105 0.047171157 -0.0095619718
		 0.96442908 0.064713039 0.25629824 0.96442908 0.064713039 0.25629824 0.99884105 0.047171157
		 -0.0095619718 0.98905468 0.047019377 -0.13985687 0.98966485 0.064195581 0.12822798
		 0.98966485 0.064195581 0.12822798 0.98905468 0.047019377 -0.13985687 0.96234488 0.046867535
		 -0.26776075 0.99796838 0.063678049 -0.0020448051 0.99796838 0.063678049 -0.0020448051
		 0.96234488 0.046867535 -0.26776075 0.91916782 0.046715505 -0.39108586 0.98919648
		 0.063160561 -0.13229172 0.98919648 0.063160561 -0.13229172 0.91916782 0.046715505
		 -0.39108586 0.86026138 0.046562955 -0.50772256 0.96349764 0.062642932 -0.26028451
		 0.96349764 0.062642932 -0.26028451 0.86026138 0.046562955 -0.50772256 0.78663331
		 0.046410162 -0.61567384 0.92131072 0.062125247 -0.38383207 0.92131072 0.062125247
		 -0.38383207 0.78663331 0.046410162 -0.61567384 0.69954258 0.046257298 -0.71309233
		 0.86335588 0.061607629 -0.50082028 0.86335588 0.061607629 -0.50082028 0.69954258
		 0.046257298 -0.71309233 0.60047942 0.046104167 -0.79831016 0.79062414 0.061089844
		 -0.60924667 0.79062414 0.061089844 -0.60924667 0.60047942 0.046104167 -0.79831016
		 0.49113765 0.045950636 -0.86986911 0.70435834 0.060572051 -0.70725536 0.70435834
		 0.060572051 -0.70725536 0.49113765 0.045950636 -0.86986911 0.3733888 0.045796953
		 -0.92654377 0.60603452 0.060054149 -0.79316813 0.60603452 0.060054149 -0.79316813
		 0.3733888 0.045796953 -0.92654377 0.24924774 0.04564314 -0.9673636 0.49733379 0.059536282
		 -0.86551404 0.49733379 0.059536282 -0.86551404 0.24924774 0.04564314 -0.9673636 0.12083758
		 0.045488946 -0.99162948 0.38011497 0.05901834 -0.92305446 0.38011497 0.05901834 -0.92305446
		 0.12083758 0.045488946 -0.99162948 -0.0096439384 0.045334473 -0.99892527 0.25638422
		 0.05850032 -0.96480304 0.25638422 0.05850032 -0.96480304 -0.0096439384 0.045334473
		 -0.99892527 -0.13994247 0.045045886 -0.98913449 0.12825827 0.057982288 -0.99004436
		 0.12825827 0.057982288 -0.99004436 -0.13994247 0.045045886 -0.98913449 -0.26760975
		 0.038664069 -0.96275133 -0.0013688861 0.057537008 -0.99834239 -0.0013688861 0.057537008
		 -0.99834239 -0.26760975 0.038664069 -0.96275133 -0.30697131 0.035822727 -0.95104438
		 -0.11959393 0.051189315 -0.99150234 -0.29640833 0.86192352 -0.41137552 -0.48511088
		 0.73456043 -0.47443491 -0.81804359 0.36741507 -0.44250518 -0.50911576 0.81051093
		 -0.28960848 -0.50911576 0.81051093 -0.28960848 -0.81804359 0.36741507 -0.44250518
		 -0.9609679 0.274149 0.037191294 -0.96664619 0.15403686 0.20461623 -0.96664619 0.15403686
		 0.20461623 -0.9609679 0.274149 0.037191294 -0.99980623 -0.017805861 -0.0084001832
		 -0.96589702 -0.038505815 0.25604698 -0.96589702 -0.038505815 0.25604698 -0.99980623
		 -0.017805861 -0.0084001832 -0.98988414 -0.025018029 -0.13965479 -0.99106443 -0.039003547
		 0.1275539 -0.99106443 -0.039003547 0.1275539 -0.98988414 -0.025018029 -0.13965479
		 -0.96318865 -0.025103576 -0.26765171 -0.99921447 -0.039522499 -0.0028919643 -0.99921447
		 -0.039522499 -0.0028919643 -0.96318865 -0.025103576 -0.26765171 -0.92001516 -0.025259975
		 -0.39106789 -0.99026877 -0.04004148 -0.13328423 -0.99026877 -0.04004148 -0.13328423
		 -0.92001516 -0.025259975 -0.39106789 -0.86110342 -0.02541581 -0.50779444 -0.96438044
		 -0.040560059 -0.26139095 -0.96438044 -0.040560059 -0.26139095 -0.86110342 -0.02541581
		 -0.50779444 -0.78746068 -0.025571493 -0.61583418 -0.92199332 -0.041078724 -0.38502058
		 -0.92199332 -0.041078724 -0.38502058 -0.78746068 -0.025571493 -0.61583418 -0.70034665
		 -0.02572706 -0.71333915 -0.86383295 -0.041597564 -0.50205809 -0.86383295 -0.041597564
		 -0.50205809 -0.70034665 -0.02572706 -0.71333915 -0.60125095 -0.025882298 -0.79864097
		 -0.79089487 -0.042116184 -0.61050117 -0.79089487 -0.042116184 -0.61050117 -0.60125095
		 -0.025882298 -0.79864097 -0.49186936 -0.026037198 -0.87027961 -0.70442754 -0.042634733
		 -0.70849431 -0.70442754 -0.042634733 -0.70849431 -0.49186936 -0.026037198 -0.87027961
		 -0.37407216 -0.0261919 -0.92702973 -0.6059109 -0.043153331 -0.79436117 -0.6059109
		 -0.043153331 -0.79436117 -0.37407216 -0.0261919 -0.92702973 -0.24987547 -0.026346225
		 -0.96791953 -0.49703109 -0.043671582 -0.86663306 -0.49703109 -0.043671582 -0.86663306
		 -0.24987547 -0.026346225 -0.96791953 -0.12140366 -0.026500361 -0.99224949 -0.37965193
		 -0.044190034 -0.92407346 -0.37965193 -0.044190034 -0.92407346 -0.12140366 -0.026500361
		 -0.99224949 0.0091454787 -0.02665446 -0.99960291 -0.2557812 -0.044708479 -0.96570039
		 -0.2557812 -0.044708479 -0.96570039 0.0091454787 -0.02665446 -0.99960291 0.13953778
		 -0.026808279 -0.9898538 -0.1275395 -0.045226984 -0.99080175 -0.1275395 -0.045226984
		 -0.99080175 0.13953778 -0.026808279 -0.9898538 0.26754367 -0.026961651 -0.96316844
		 0.0028795605 -0.04574522 -0.99894899 0.0028795605 -0.04574522 -0.99894899 0.26754367
		 -0.026961651 -0.96316844 0.39097124 -0.027114764 -0.92000335 0.13324349 -0.046263359
		 -0.99000293;
	setAttr ".n[1328:1493]" -type "float3"  0.13324349 -0.046263359 -0.99000293 0.39097124
		 -0.027114764 -0.92000335 0.50770932 -0.02726762 -0.86109698 0.26132163 -0.046781417
		 -0.96411747 0.26132163 -0.046781417 -0.96411747 0.50770932 -0.02726762 -0.86109698
		 0.61576003 -0.027420323 -0.78745645 0.3849225 -0.047299616 -0.92173612 0.3849225
		 -0.047299616 -0.92173612 0.61576003 -0.027420323 -0.78745645 0.71327448 -0.027572729
		 -0.70034224 0.50193119 -0.04781767 -0.86358476 0.50193119 -0.04781767 -0.86358476
		 0.71327448 -0.027572729 -0.70034224 0.7985841 -0.027724767 -0.60124433 0.61034596
		 -0.048335522 -0.79065889 0.61034596 -0.048335522 -0.79065889 0.7985841 -0.027724767
		 -0.60124433 0.87022853 -0.027876627 -0.49185881 0.70831168 -0.048853368 -0.70420724
		 0.70831168 -0.048853368 -0.70420724 0.87022853 -0.027876627 -0.49185881 0.92697793
		 -0.027928017 -0.37407479 0.79415238 -0.04937112 -0.60570985 0.79415238 -0.04937112
		 -0.60570985 0.92697793 -0.027928017 -0.37407479 0.96789277 -0.021626962 -0.2504313
		 0.86613399 -0.049958754 -0.49730879 0.86613399 -0.049958754 -0.49730879 0.96789277
		 -0.021626962 -0.2504313 0.94875562 -0.30890423 -0.066640988 0.93040657 -0.27518523
		 -0.24210879 0.24210875 -0.27518523 0.93040663 0.066640861 -0.30890423 0.94875562
		 -0.49067566 -0.34757671 0.79901683 -0.35747913 -0.71060425 0.60601181 -0.35747913
		 -0.71060425 0.60601181 -0.49067566 -0.34757671 0.79901683 -0.85417002 -0.25333238
		 0.45411032 -0.94285208 -0.12240928 0.30991262 -0.94285208 -0.12240928 0.30991262
		 -0.85417002 -0.25333238 0.45411032 -0.86094016 0.040639151 0.50708032 -0.96314228
		 0.068869218 0.2600266 -0.96314228 0.068869218 0.2600266 -0.86094016 0.040639151 0.50708032
		 -0.78655589 0.048286095 0.61562842 -0.9209252 0.068333104 0.38370198 -0.9209252 0.068333104
		 0.38370198 -0.78655589 0.048286095 0.61562842 -0.69948149 0.048075862 0.71303189
		 -0.86299652 0.067816205 0.50063741 -0.86299652 0.067816205 0.50063741 -0.69948149
		 0.048075862 0.71303189 -0.6004371 0.0479258 0.79823458 -0.79029757 0.067299142 0.609016
		 -0.79029757 0.067299142 0.609016 -0.6004371 0.0479258 0.79823458 -0.49111742 0.047775362
		 0.86978239 -0.7040711 0.066782065 0.70698243 -0.7040711 0.066782065 0.70698243 -0.49111742
		 0.047775362 0.86978239 -0.37339249 0.047624584 0.92645019 -0.60579169 0.06626489
		 0.79285896 -0.60579169 0.06626489 0.79285896 -0.37339249 0.047624584 0.92645019 -0.24927692
		 0.04747384 0.96726799 -0.49713975 0.065747678 0.86517584 -0.49713975 0.065747678
		 0.86517584 -0.24927692 0.04747384 0.96726799 -0.12089305 0.047322582 0.99153692 -0.3799741
		 0.065230347 0.92269433 -0.3799741 0.065230347 0.92269433 -0.12089305 0.047322582
		 0.99153692 0.009562117 0.047171257 0.99884111 -0.25629809 0.064713098 0.96442908
		 -0.25629809 0.064713098 0.96442908 0.009562117 0.047171257 0.99884111 0.13985711
		 0.047019396 0.98905468 -0.12822753 0.064195551 0.98966485 -0.12822753 0.064195551
		 0.98966485 0.13985711 0.047019396 0.98905468 0.26776096 0.046867486 0.96234483 0.002044939
		 0.063678034 0.99796838 0.002044939 0.063678034 0.99796838 0.26776096 0.046867486
		 0.96234483 0.39108637 0.046715517 0.91916758 0.13229202 0.063160628 0.98919636 0.13229202
		 0.063160628 0.98919636 0.39108637 0.046715517 0.91916758 0.50772268 0.046563026 0.86026144
		 0.26028472 0.062642962 0.96349764 0.26028472 0.062642962 0.96349764 0.50772268 0.046563026
		 0.86026144 0.61567372 0.046410181 0.78663343 0.38383222 0.062125236 0.92131066 0.38383222
		 0.062125236 0.92131066 0.61567372 0.046410181 0.78663343 0.71309251 0.046257272 0.69954222
		 0.5008204 0.06160764 0.86335582 0.5008204 0.06160764 0.86335582 0.71309251 0.046257272
		 0.69954222 0.79831022 0.046104249 0.6004793 0.60924685 0.061089881 0.79062402 0.60924685
		 0.061089881 0.79062402 0.79831022 0.046104249 0.6004793 0.86986923 0.045950651 0.49113733
		 0.70725566 0.060572039 0.70435816 0.70725566 0.060572039 0.70435816 0.86986923 0.045950651
		 0.49113733 0.92654395 0.045796901 0.37338844 0.79316837 0.060054146 0.60603422 0.79316837
		 0.060054146 0.60603422 0.92654395 0.045796901 0.37338844 0.9673636 0.04564308 0.24924734
		 0.8655141 0.059536301 0.49733365 0.8655141 0.059536301 0.49733365 0.9673636 0.04564308
		 0.24924734 0.99162948 0.045488909 0.12083733 0.92305446 0.059018336 0.38011482 0.92305446
		 0.059018336 0.38011482 0.99162948 0.045488909 0.12083733 0.99892539 0.045334514 -0.0096442178
		 0.96480304 0.058500405 0.25638419 0.96480304 0.058500405 0.25638419 0.99892539 0.045334514
		 -0.0096442178 0.98913449 0.045045994 -0.13994268 0.99004447 0.057982359 0.12825808
		 0.99004447 0.057982359 0.12825808 0.98913449 0.045045994 -0.13994268 0.96275121 0.038664088
		 -0.26760998 0.99834239 0.057537004 -0.0013692875 0.99834239 0.057537004 -0.0013692875
		 0.96275121 0.038664088 -0.26760998 0.95104438 0.035822712 -0.30697137 0.99150234
		 0.051189382 -0.1195942 0.41137552 0.86192352 -0.29640844 0.4744347 0.73456049 -0.48511088
		 0.44250509 0.36741504 -0.81804359 0.28960842 0.81051093 -0.5091157 0.28960842 0.81051093
		 -0.5091157 0.44250509 0.36741504 -0.81804359 -0.037191153 0.27414906 -0.96096784
		 -0.20461604 0.15403694 -0.96664619 -0.20461604 0.15403694 -0.96664619 -0.037191153
		 0.27414906 -0.96096784 0.0084003275 -0.017805854 -0.99980623 -0.25604677 -0.038505789
		 -0.96589708 -0.25604677 -0.038505789 -0.96589708 0.0084003275 -0.017805854 -0.99980623
		 0.13965482 -0.025018029 -0.98988414 -0.12755373 -0.039003532 -0.99106443 -0.12755373
		 -0.039003532 -0.99106443 0.13965482 -0.025018029 -0.98988414 0.26765183 -0.025103521
		 -0.96318865 0.0028920646 -0.039522443 -0.99921447 0.0028920646 -0.039522443 -0.99921447
		 0.26765183 -0.025103521 -0.96318865 0.3910681 -0.025259946 -0.9200151 0.13328426
		 -0.040041436 -0.99026877 0.13328426 -0.040041436 -0.99026877 0.3910681 -0.025259946
		 -0.9200151 0.50779468 -0.025415769 -0.86110312 0.26139137 -0.040560033 -0.96438038
		 0.26139137 -0.040560033 -0.96438038 0.50779468 -0.025415769 -0.86110312;
	setAttr ".n[1494:1659]" -type "float3"  0.6158343 -0.025571467 -0.78746051 0.38502085
		 -0.041078694 -0.92199326 0.38502085 -0.041078694 -0.92199326 0.6158343 -0.025571467
		 -0.78746051 0.71333933 -0.025727013 -0.70034647 0.50205827 -0.041597519 -0.86383277
		 0.50205827 -0.041597519 -0.86383277 0.71333933 -0.025727013 -0.70034647 0.79864091
		 -0.025882246 -0.60125101 0.61050117 -0.042116158 -0.79089487 0.61050117 -0.042116158
		 -0.79089487 0.79864091 -0.025882246 -0.60125101 0.87027979 -0.026037211 -0.49186918
		 0.70849431 -0.042634681 -0.70442754 0.70849431 -0.042634681 -0.70442754 0.87027979
		 -0.026037211 -0.49186918 0.92702973 -0.026191898 -0.37407202 0.79436141 -0.043153297
		 -0.60591072 0.79436141 -0.043153297 -0.60591072 0.92702973 -0.026191898 -0.37407202
		 0.96791953 -0.026346229 -0.2498752 0.86663306 -0.043671615 -0.497031 0.86663306 -0.043671615
		 -0.497031 0.96791953 -0.026346229 -0.2498752 0.99224943 -0.026500376 -0.1214034 0.92407358
		 -0.044190016 -0.37965158 0.92407358 -0.044190016 -0.37965158 0.99224943 -0.026500376
		 -0.1214034 0.99960291 -0.026654346 0.0091456128 0.96570033 -0.044708405 -0.25578099
		 0.96570033 -0.044708405 -0.25578099 0.99960291 -0.026654346 0.0091456128 0.98985374
		 -0.026808199 0.13953795 0.99080175 -0.045226932 -0.1275394 0.99080175 -0.045226932
		 -0.1275394 0.98985374 -0.026808199 0.13953795 0.96316844 -0.026961688 0.26754376
		 0.99894893 -0.045745254 0.0028797255 0.99894893 -0.045745254 0.0028797255 0.96316844
		 -0.026961688 0.26754376 0.92000335 -0.027114771 0.39097121 0.99000293 -0.046263341
		 0.13324361 0.99000293 -0.046263341 0.13324361 0.92000335 -0.027114771 0.39097121
		 0.86109686 -0.027267559 0.50770932 0.96411747 -0.04678138 0.26132154 0.96411747 -0.04678138
		 0.26132154 0.86109686 -0.027267559 0.50770932 0.78745645 -0.027420318 0.61576021
		 0.921736 -0.047299609 0.3849225 0.921736 -0.047299609 0.3849225 0.78745645 -0.027420318
		 0.61576021 0.70034212 -0.027572682 0.7132746 0.86358458 -0.047817618 0.50193137 0.86358458
		 -0.047817618 0.50193137 0.70034212 -0.027572682 0.7132746 0.60124427 -0.027724743
		 0.79858422 0.79065889 -0.048335522 0.61034596 0.79065889 -0.048335522 0.61034596
		 0.60124427 -0.027724743 0.79858422 0.4918586 -0.027876627 0.87022865 0.7042073 -0.048853368
		 0.70831174 0.7042073 -0.048853368 0.70831174 0.4918586 -0.027876627 0.87022865 0.37407458
		 -0.027927974 0.92697805 0.60570979 -0.049371108 0.79415244 0.60570979 -0.049371108
		 0.79415244 0.37407458 -0.027927974 0.92697805 0.25043127 -0.021626964 0.96789277
		 0.4973087 -0.049958751 0.86613399 0.4973087 -0.049958751 0.86613399 0.25043127 -0.021626964
		 0.96789277 0.066640861 -0.30890423 0.94875562 0.24210875 -0.27518523 0.93040663 -0.93040663
		 -0.27518523 0.24210876 -0.94875562 -0.30890423 0.066640824 -0.79901671 -0.34757668
		 -0.49067572 -0.60601175 -0.71060419 -0.35747913 -0.60601175 -0.71060419 -0.35747913
		 -0.79901671 -0.34757668 -0.49067572 -0.45411032 -0.25333241 -0.85417008 -0.30991262
		 -0.12240926 -0.9428522 -0.30991262 -0.12240926 -0.9428522 -0.45411032 -0.25333241
		 -0.85417008 -0.50708008 0.040639166 -0.86094028 -0.2600264 0.068869255 -0.9631424
		 -0.2600264 0.068869255 -0.9631424 -0.50708008 0.040639166 -0.86094028 -0.61562842
		 0.048286073 -0.78655589 -0.38370201 0.068333052 -0.9209252 -0.38370201 0.068333052
		 -0.9209252 -0.61562842 0.048286073 -0.78655589 -0.71303195 0.04807587 -0.69948149
		 -0.50063741 0.06781622 -0.86299658 -0.50063741 0.06781622 -0.86299658 -0.71303195
		 0.04807587 -0.69948149 -0.79823434 0.047925826 -0.60043728 -0.609016 0.067299195
		 -0.79029757 -0.609016 0.067299195 -0.79029757 -0.79823434 0.047925826 -0.60043728
		 -0.86978221 0.047775347 -0.49111757 -0.7069822 0.06678208 -0.70407128 -0.7069822
		 0.06678208 -0.70407128 -0.86978221 0.047775347 -0.49111757 -0.92645007 0.047624633
		 -0.37339282 -0.79285896 0.066264831 -0.60579181 -0.79285896 0.066264831 -0.60579181
		 -0.92645007 0.047624633 -0.37339282 -0.96726799 0.047473826 -0.24927688 -0.86517578
		 0.065747701 -0.49713987 -0.86517578 0.065747701 -0.49713987 -0.96726799 0.047473826
		 -0.24927688 -0.99153692 0.047322642 -0.12089312 -0.92269427 0.065230392 -0.37997395
		 -0.92269427 0.065230392 -0.37997395 -0.99153692 0.047322642 -0.12089312 -0.99884105
		 0.047171202 0.0095620127 -0.96442908 0.064713068 -0.25629815 -0.96442908 0.064713068
		 -0.25629815 -0.99884105 0.047171202 0.0095620127 -0.98905468 0.047019389 0.13985693
		 -0.98966485 0.064195558 -0.12822787 -0.98966485 0.064195558 -0.12822787 -0.98905468
		 0.047019389 0.13985693 -0.96234488 0.046867538 0.26776075 -0.99796838 0.063678034
		 0.0020449271 -0.99796838 0.063678034 0.0020449271 -0.96234488 0.046867538 0.26776075
		 -0.91916782 0.046715509 0.39108598 -0.98919648 0.063160606 0.13229187 -0.98919648
		 0.063160606 0.13229187 -0.91916782 0.046715509 0.39108598 -0.86026138 0.046562947
		 0.50772268 -0.96349764 0.062642932 0.26028463 -0.96349764 0.062642932 0.26028463
		 -0.86026138 0.046562947 0.50772268 -0.78663355 0.046410285 0.61567342 -0.92131072
		 0.062125288 0.38383186 -0.92131072 0.062125288 0.38383186 -0.78663355 0.046410285
		 0.61567342 -0.69954252 0.046257332 0.71309227 -0.86335582 0.061607633 0.50082052
		 -0.86335582 0.061607633 0.50082052 -0.69954252 0.046257332 0.71309227 -0.60047948
		 0.046104159 0.79830998 -0.79062414 0.061089844 0.60924667 -0.79062414 0.061089844
		 0.60924667 -0.60047948 0.046104159 0.79830998 -0.49113759 0.04595064 0.86986917 -0.70435828
		 0.060572069 0.70725542 -0.70435828 0.060572069 0.70725542 -0.49113759 0.04595064
		 0.86986917 -0.37338886 0.045797076 0.92654377 -0.60603446 0.060054209 0.79316825
		 -0.60603446 0.060054209 0.79316825 -0.37338886 0.045797076 0.92654377 -0.2492478
		 0.045643121 0.9673636 -0.49733353 0.059536245 0.86551428 -0.49733353 0.059536245
		 0.86551428 -0.2492478 0.045643121 0.9673636 -0.12083771 0.045488909 0.99162948 -0.380115
		 0.059018347 0.92305446 -0.380115 0.059018347 0.92305446 -0.12083771 0.045488909 0.99162948
		 0.0096437931 0.045334585 0.99892527 -0.25638402 0.058500376 0.96480304;
	setAttr ".n[1660:1825]" -type "float3"  -0.25638402 0.058500376 0.96480304 0.0096437931
		 0.045334585 0.99892527 0.13994217 0.045045968 0.98913455 -0.12825832 0.057982344
		 0.99004447 -0.12825832 0.057982344 0.99004447 0.13994217 0.045045968 0.98913455 0.26760948
		 0.038664158 0.96275133 0.0013691203 0.057536986 0.99834239 0.0013691203 0.057536986
		 0.99834239 0.26760948 0.038664158 0.96275133 0.30697113 0.035822731 0.95104432 0.1195941
		 0.051189307 0.99150234 0.29640836 0.86192364 0.41137555 0.48511076 0.73456031 0.47443503
		 0.81804347 0.36741513 0.44250527 0.5091157 0.81051099 0.28960848 0.5091157 0.81051099
		 0.28960848 0.81804347 0.36741513 0.44250527 0.96096784 0.27414903 -0.037191175 0.96664619
		 0.15403686 -0.20461626 0.96664619 0.15403686 -0.20461626 0.96096784 0.27414903 -0.037191175
		 0.99980628 -0.017805884 0.0084001003 0.96589702 -0.038505815 -0.25604698 0.96589702
		 -0.038505815 -0.25604698 0.99980628 -0.017805884 0.0084001003 0.98988414 -0.025018046
		 0.13965464 0.99106443 -0.039003555 -0.12755392 0.99106443 -0.039003555 -0.12755392
		 0.98988414 -0.025018046 0.13965464 0.96318865 -0.025103541 0.26765174 0.99921447
		 -0.039522447 0.0028920264 0.99921447 -0.039522447 0.0028920264 0.96318865 -0.025103541
		 0.26765174 0.92001516 -0.025259927 0.39106801 0.99026865 -0.040041436 0.13328418
		 0.99026865 -0.040041436 0.13328418 0.92001516 -0.025259927 0.39106801 0.86110336
		 -0.02541581 0.50779444 0.96438044 -0.040560052 0.26139101 0.96438044 -0.040560052
		 0.26139101 0.86110336 -0.02541581 0.50779444 0.78746057 -0.025571514 0.61583418 0.92199326
		 -0.04107869 0.38502073 0.92199326 -0.04107869 0.38502073 0.78746057 -0.025571514
		 0.61583418 0.70034653 -0.025726978 0.71333921 0.86383283 -0.041597512 0.50205815
		 0.86383283 -0.041597512 0.50205815 0.70034653 -0.025726978 0.71333921 0.60125095
		 -0.025882255 0.79864091 0.79089493 -0.042116188 0.61050111 0.79089493 -0.042116188
		 0.61050111 0.60125095 -0.025882255 0.79864091 0.49186939 -0.026037203 0.87027961
		 0.70442754 -0.042634681 0.70849431 0.70442754 -0.042634681 0.70849431 0.49186939
		 -0.026037203 0.87027961 0.3740721 -0.026191846 0.92702973 0.60591102 -0.043153282
		 0.79436111 0.60591102 -0.043153282 0.79436111 0.3740721 -0.026191846 0.92702973 0.24987526
		 -0.026346285 0.96791953 0.49703118 -0.043671634 0.866633 0.49703118 -0.043671634
		 0.866633 0.24987526 -0.026346285 0.96791953 0.12140344 -0.026500341 0.99224943 0.37965158
		 -0.044189982 0.92407352 0.37965158 -0.044189982 0.92407352 0.12140344 -0.026500341
		 0.99224943 -0.0091455104 -0.026654357 0.99960291 0.25578123 -0.044708397 0.96570039
		 0.25578123 -0.044708397 0.96570039 -0.0091455104 -0.026654357 0.99960291 -0.13953832
		 -0.026808182 0.98985374 0.12753928 -0.045226917 0.99080175 0.12753928 -0.045226917
		 0.99080175 -0.13953832 -0.026808182 0.98985374 -0.26754409 -0.026961599 0.96316838
		 -0.0028799118 -0.04574522 0.99894893 -0.0028799118 -0.04574522 0.99894893 -0.26754409
		 -0.026961599 0.96316838 -0.3909713 -0.027114723 0.92000329 -0.13324358 -0.046263345
		 0.99000293 -0.13324358 -0.046263345 0.99000293 -0.3909713 -0.027114723 0.92000329
		 -0.50770944 -0.027267518 0.8610968 -0.26132149 -0.046781387 0.96411753 -0.26132149
		 -0.046781387 0.96411753 -0.50770944 -0.027267518 0.8610968 -0.61576009 -0.027420314
		 0.78745645 -0.38492247 -0.047299623 0.92173612 -0.38492247 -0.047299623 0.92173612
		 -0.61576009 -0.027420314 0.78745645 -0.7132746 -0.027572732 0.70034224 -0.50193125
		 -0.047817666 0.86358476 -0.50193125 -0.047817666 0.86358476 -0.7132746 -0.027572732
		 0.70034224 -0.79858416 -0.027724769 0.60124421 -0.61034608 -0.048335511 0.79065889
		 -0.61034608 -0.048335511 0.79065889 -0.79858416 -0.027724769 0.60124421 -0.87022871
		 -0.027876569 0.49185857 -0.70831174 -0.048853345 0.70420712 -0.70831174 -0.048853345
		 0.70420712 -0.87022871 -0.027876569 0.49185857 -0.92697805 -0.027927933 0.37407458
		 -0.79415244 -0.049371071 0.60570979 -0.79415244 -0.049371071 0.60570979 -0.92697805
		 -0.027927933 0.37407458 -0.96789277 -0.021626884 0.25043109 -0.86613399 -0.049958717
		 0.49730876 -0.86613399 -0.049958717 0.49730876 -0.96789277 -0.021626884 0.25043109
		 -0.94875562 -0.30890423 0.066640824 -0.93040663 -0.27518523 0.24210876 -0.24210882
		 -0.27518526 -0.93040657 -0.066640861 -0.30890426 -0.9487555 0.49067572 -0.34757674
		 -0.79901671 0.35747916 -0.71060419 -0.60601175 0.35747916 -0.71060419 -0.60601175
		 0.49067572 -0.34757674 -0.79901671 0.85417008 -0.25333244 -0.45411023 0.94285208
		 -0.12240928 -0.30991253 0.94285208 -0.12240928 -0.30991253 0.85417008 -0.25333244
		 -0.45411023 0.86094034 0.040639177 -0.50708002 0.96314245 0.068869278 -0.2600264
		 0.96314245 0.068869278 -0.2600264 0.86094034 0.040639177 -0.50708002 0.78655589 0.048286106
		 -0.61562836 0.92092538 0.06833306 -0.38370204 0.92092538 0.06833306 -0.38370204 0.78655589
		 0.048286106 -0.61562836 0.69948149 0.048075896 -0.71303189 0.86299658 0.067816183
		 -0.50063759 0.86299658 0.067816183 -0.50063759 0.69948149 0.048075896 -0.71303189
		 0.60043734 0.047925811 -0.79823434 0.79029757 0.067299172 -0.609016 0.79029757 0.067299172
		 -0.609016 0.60043734 0.047925811 -0.79823434 0.49111766 0.047775324 -0.86978221 0.70407128
		 0.066782042 -0.7069822 0.70407128 0.066782042 -0.7069822 0.49111766 0.047775324 -0.86978221
		 0.3733927 0.047624569 -0.92645013 0.60579181 0.066264801 -0.79285896 0.60579181 0.066264801
		 -0.79285896 0.3733927 0.047624569 -0.92645013 0.24927701 0.04747384 -0.96726799 0.4971399
		 0.065747701 -0.86517578 0.4971399 0.065747701 -0.86517578 0.24927701 0.04747384 -0.96726799
		 0.12089325 0.047322702 -0.99153686 0.37997404 0.065230422 -0.92269427 0.37997404
		 0.065230422 -0.92269427 0.12089325 0.047322702 -0.99153686 -0.0095618377 0.047171231
		 -0.99884105 0.25629809 0.064713046 -0.96442914 0.25629809 0.064713046 -0.96442914
		 -0.0095618377 0.047171231 -0.99884105 -0.13985674 0.047019348 -0.98905468 0.12822789
		 0.064195521 -0.98966485 0.12822789 0.064195521 -0.98966485 -0.13985674 0.047019348
		 -0.98905468;
	setAttr ".n[1826:1991]" -type "float3"  -0.26776081 0.04686752 -0.96234488 -0.0020449508
		 0.063678034 -0.99796838 -0.0020449508 0.063678034 -0.99796838 -0.26776081 0.04686752
		 -0.96234488 -0.39108598 0.046715483 -0.91916782 -0.1322919 0.063160568 -0.98919648
		 -0.1322919 0.063160568 -0.98919648 -0.39108598 0.046715483 -0.91916782 -0.50772256
		 0.046562936 -0.86026138 -0.2602846 0.062642947 -0.9634977 -0.2602846 0.062642947
		 -0.9634977 -0.50772256 0.046562936 -0.86026138 -0.61567348 0.046410263 -0.78663349
		 -0.38383186 0.062125295 -0.92131084 -0.38383186 0.062125295 -0.92131084 -0.61567348
		 0.046410263 -0.78663349 -0.71309227 0.046257328 -0.69954252 -0.50082052 0.061607603
		 -0.86335582 -0.50082052 0.061607603 -0.86335582 -0.71309227 0.046257328 -0.69954252
		 -0.79830998 0.04610417 -0.6004796 -0.60924667 0.061089858 -0.79062414 -0.60924667
		 0.061089858 -0.79062414 -0.79830998 0.04610417 -0.6004796 -0.86986911 0.045950659
		 -0.49113765 -0.70725548 0.06057208 -0.7043584 -0.70725548 0.06057208 -0.7043584 -0.86986911
		 0.045950659 -0.49113765 -0.92654365 0.045797035 -0.37338912 -0.79316825 0.060054161
		 -0.6060344 -0.79316825 0.060054161 -0.6060344 -0.92654365 0.045797035 -0.37338912
		 -0.9673636 0.045643073 -0.2492478 -0.8655141 0.059536241 -0.49733374 -0.8655141 0.059536241
		 -0.49733374 -0.9673636 0.045643073 -0.2492478 -0.99162948 0.045488928 -0.1208378
		 -0.92305434 0.059018325 -0.38011512 -0.92305434 0.059018325 -0.38011512 -0.99162948
		 0.045488928 -0.1208378 -0.99892539 0.045334566 0.0096438453 -0.96480304 0.05850035
		 -0.2563841 -0.96480304 0.05850035 -0.2563841 -0.99892539 0.045334566 0.0096438453
		 -0.98913455 0.045045931 0.13994245 -0.99004447 0.057982314 -0.12825808 -0.99004447
		 0.057982314 -0.12825808 -0.98913455 0.045045931 0.13994245 -0.96275133 0.03866411
		 0.26760963 -0.99834239 0.057536989 0.0013690535 -0.99834239 0.057536989 0.0013690535
		 -0.96275133 0.03866411 0.26760963 -0.95104432 0.035822738 0.30697113 -0.99150234
		 0.051189303 0.1195941 -0.41137552 0.86192358 0.29640827 -0.47443512 0.73456037 0.48511076
		 -0.44250524 0.36741507 0.81804347 -0.28960848 0.81051093 0.50911564 -0.28960848 0.81051093
		 0.50911564 -0.44250524 0.36741507 0.81804347 0.037191186 0.27414906 0.96096784 0.2046162
		 0.15403695 0.96664619 0.2046162 0.15403695 0.96664619 0.037191186 0.27414906 0.96096784
		 -0.0084003685 -0.017805835 0.99980623 0.25604707 -0.038505834 0.96589702 0.25604707
		 -0.038505834 0.96589702 -0.0084003685 -0.017805835 0.99980623 -0.13965482 -0.025018027
		 0.98988414 0.12755392 -0.039003555 0.99106443 0.12755392 -0.039003555 0.99106443
		 -0.13965482 -0.025018027 0.98988414 -0.26765183 -0.025103489 0.96318865 -0.0028918663
		 -0.039522428 0.99921453 -0.0028918663 -0.039522428 0.99921453 -0.26765183 -0.025103489
		 0.96318865 -0.39106792 -0.025259985 0.9200151 -0.13328411 -0.040041491 0.99026871
		 -0.13328411 -0.040041491 0.99026871 -0.39106792 -0.025259985 0.9200151 -0.50779474
		 -0.025415774 0.86110318 -0.26139119 -0.04056007 0.96438044 -0.26139119 -0.04056007
		 0.96438044 -0.50779474 -0.025415774 0.86110318 -0.61583436 -0.025571452 0.78746051
		 -0.38502073 -0.04107869 0.92199326 -0.38502073 -0.04107869 0.92199326 -0.61583436
		 -0.025571452 0.78746051 -0.71333921 -0.025727058 0.70034653 -0.50205821 -0.041597538
		 0.86383283 -0.50205821 -0.041597538 0.86383283 -0.71333921 -0.025727058 0.70034653
		 -0.79864103 -0.025882265 0.60125089 -0.61050129 -0.042116158 0.79089469 -0.61050129
		 -0.042116158 0.79089469 -0.79864103 -0.025882265 0.60125089 -0.87027973 -0.026037155
		 0.49186918 -0.70849437 -0.042634677 0.70442748 -0.70849437 -0.042634677 0.70442748
		 -0.87027973 -0.026037155 0.49186918 -0.92702973 -0.026191831 0.37407193 -0.79436141
		 -0.043153305 0.60591078 -0.79436141 -0.043153305 0.60591078 -0.92702973 -0.026191831
		 0.37407193 -0.96791953 -0.026346242 0.24987522 -0.86663306 -0.043671601 0.49703115
		 -0.86663306 -0.043671601 0.49703115 -0.96791953 -0.026346242 0.24987522 -0.99224943
		 -0.026500279 0.12140304 -0.92407352 -0.044189971 0.37965146 -0.92407352 -0.044189971
		 0.37965146 -0.99224943 -0.026500279 0.12140304 -0.99960291 -0.026654325 -0.009145706
		 -0.96570039 -0.044708475 0.25578114 -0.96570039 -0.044708475 0.25578114 -0.99960291
		 -0.026654325 -0.009145706 -0.98985374 -0.026808256 -0.13953789 -0.99080175 -0.04522698
		 0.12753947 -0.99080175 -0.04522698 0.12753947 -0.98985374 -0.026808256 -0.13953789
		 -0.96316844 -0.026961641 -0.26754376 -0.99894899 -0.045745213 -0.0028796371 -0.99894899
		 -0.045745213 -0.0028796371 -0.96316844 -0.026961641 -0.26754376 -0.92000335 -0.027114749
		 -0.39097136 -0.99000293 -0.046263359 -0.13324347 -0.99000293 -0.046263359 -0.13324347
		 -0.92000335 -0.027114749 -0.39097136 -0.86109698 -0.027267598 -0.50770932 -0.96411747
		 -0.046781372 -0.26132163 -0.96411747 -0.046781372 -0.26132163 -0.86109698 -0.027267598
		 -0.50770932 -0.78745645 -0.02742029 -0.61576009 -0.92173612 -0.047299605 -0.38492239
		 -0.92173612 -0.047299605 -0.38492239 -0.78745645 -0.02742029 -0.61576009 -0.70034224
		 -0.02757274 -0.7132746 -0.86358476 -0.047817688 -0.50193125 -0.86358476 -0.047817688
		 -0.50193125 -0.70034224 -0.02757274 -0.7132746 -0.60124433 -0.027724775 -0.79858416
		 -0.79065889 -0.048335511 -0.61034596 -0.79065889 -0.048335511 -0.61034596 -0.60124433
		 -0.027724775 -0.79858416 -0.49185875 -0.027876571 -0.87022853 -0.70420712 -0.048853308
		 -0.70831174 -0.70420712 -0.048853308 -0.70831174 -0.49185875 -0.027876571 -0.87022853
		 -0.37407458 -0.027927946 -0.92697805 -0.60570985 -0.04937109 -0.79415244 -0.60570985
		 -0.04937109 -0.79415244 -0.37407458 -0.027927946 -0.92697805 -0.2504313 -0.021626964
		 -0.96789277 -0.49730879 -0.049958754 -0.86613399 -0.49730879 -0.049958754 -0.86613399
		 -0.2504313 -0.021626964 -0.96789277 -0.066640861 -0.30890426 -0.9487555 -0.24210882
		 -0.27518526 -0.93040657 -0.4349007 0.90047842 5.6163174e-08 -0.31404459 0.94940823
		 4.1278838e-08 -0.27197063 0.94940817 -0.15702218 -0.50911576 0.81051093 -0.28960848
		 -0.50911576 0.81051093 -0.28960848 -0.27197063 0.94940817 -0.15702218 -0.1570223
		 0.94940817 -0.27197063 -0.29640833 0.86192352 -0.41137552;
	setAttr ".n[1992:2157]" -type "float3"  -0.29640833 0.86192352 -0.41137552 -0.1570223
		 0.94940817 -0.27197063 4.1885876e-08 0.94940817 -0.31404459 3.3697901e-08 0.90047842
		 -0.43490073 3.3697901e-08 0.90047842 -0.43490073 4.1885876e-08 0.94940817 -0.31404459
		 0.15702221 0.94940817 -0.27197063 0.28960842 0.81051093 -0.5091157 0.28960842 0.81051093
		 -0.5091157 0.15702221 0.94940817 -0.27197063 0.2719706 0.94940823 -0.1570224 0.41137552
		 0.86192352 -0.29640844 0.41137552 0.86192352 -0.29640844 0.2719706 0.94940823 -0.1570224
		 0.31404459 0.94940823 -1.2140835e-08 0.43490067 0.90047842 -6.739581e-08 0.43490067
		 0.90047842 -6.739581e-08 0.31404459 0.94940823 -1.2140835e-08 0.2719706 0.94940823
		 0.15702228 0.5091157 0.81051099 0.28960848 0.5091157 0.81051099 0.28960848 0.2719706
		 0.94940823 0.15702228 0.15702233 0.94940823 0.2719706 0.29640836 0.86192364 0.41137555
		 0.29640836 0.86192364 0.41137555 0.15702233 0.94940823 0.2719706 2.7316879e-08 0.94940823
		 0.31404459 5.6163174e-08 0.90047842 0.43490073 5.6163174e-08 0.90047842 0.43490073
		 2.7316879e-08 0.94940823 0.31404459 -0.15702227 0.94940823 0.27197063 -0.28960848
		 0.81051093 0.50911564 -0.28960848 0.81051093 0.50911564 -0.15702227 0.94940823 0.27197063
		 -0.27197057 0.94940823 0.15702233 -0.41137552 0.86192358 0.29640827 -0.41137552 0.86192358
		 0.29640827 -0.27197057 0.94940823 0.15702233 -0.31404459 0.94940823 4.1278838e-08
		 -0.4349007 0.90047842 5.6163174e-08 -0.31404459 0.94940823 4.1278838e-08 -0.13996455
		 0.99015653 8.1486187e-09 -0.1212129 0.99015653 -0.069982201 -0.27197063 0.94940817
		 -0.15702218 -0.27197063 0.94940817 -0.15702218 -0.1212129 0.99015653 -0.069982201
		 -0.06998229 0.99015647 -0.12121284 -0.1570223 0.94940817 -0.27197063 -0.1570223 0.94940817
		 -0.27197063 -0.06998229 0.99015647 -0.12121284 5.7040332e-08 0.99015653 -0.13996457
		 4.1885876e-08 0.94940817 -0.31404459 4.1885876e-08 0.94940817 -0.31404459 5.7040332e-08
		 0.99015653 -0.13996457 0.069982238 0.99015647 -0.1212129 0.15702221 0.94940817 -0.27197063
		 0.15702221 0.94940817 -0.27197063 0.069982238 0.99015647 -0.1212129 0.12121288 0.99015659
		 -0.069982246 0.2719706 0.94940823 -0.1570224 0.2719706 0.94940823 -0.1570224 0.12121288
		 0.99015659 -0.069982246 0.13996452 0.99015653 2.6483026e-08 0.31404459 0.94940823
		 -1.2140835e-08 0.31404459 0.94940823 -1.2140835e-08 0.13996452 0.99015653 2.6483026e-08
		 0.12121291 0.99015653 0.069982179 0.2719706 0.94940823 0.15702228 0.2719706 0.94940823
		 0.15702228 0.12121291 0.99015653 0.069982179 0.069982305 0.99015653 0.12121284 0.15702233
		 0.94940823 0.2719706 0.15702233 0.94940823 0.2719706 0.069982305 0.99015653 0.12121284
		 2.4445857e-08 0.99015653 0.13996455 2.7316879e-08 0.94940823 0.31404459 2.7316879e-08
		 0.94940823 0.31404459 2.4445857e-08 0.99015653 0.13996455 -0.069982231 0.99015647
		 0.12121288 -0.15702227 0.94940823 0.27197063 -0.15702227 0.94940823 0.27197063 -0.069982231
		 0.99015647 0.12121288 -0.12121286 0.99015653 0.069982275 -0.27197057 0.94940823 0.15702233
		 -0.27197057 0.94940823 0.15702233 -0.12121286 0.99015653 0.069982275 -0.13996455
		 0.99015653 8.1486187e-09 -0.31404459 0.94940823 4.1278838e-08 0 1 0 0 1 0 0 1 0 0
		 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 -0.98463225 -0.17091027 0.035903726
		 -0.99330181 -0.11547123 -0.0042312215 -0.85343432 -0.16911539 -0.49300095 -0.84445357
		 -0.25928798 -0.46868739 -0.84445357 -0.25928798 -0.46868739 -0.85343432 -0.16911539
		 -0.49300095 -0.49202368 -0.17773113 -0.85224664 -0.47406444 -0.27335262 -0.83698344
		 -0.47406444 -0.27335262 -0.83698344 -0.49202368 -0.17773113 -0.85224664 -0.0021799728
		 -0.13881718 -0.99031568 0.029966967 -0.20948148 -0.97735333 0.029966967 -0.20948148
		 -0.97735333 -0.0021799728 -0.13881718 -0.99031568 0.49078259 -0.063621238 -0.86895621
		 0.53492039 -0.085553423 -0.84055984 0.53492039 -0.085553423 -0.84055984 0.49078259
		 -0.063621238 -0.86895621 0.85680687 0.026611736 -0.51495034 0.88521445 0.057729997
		 -0.46158713 0.88521445 0.057729997 -0.46158713 0.85680687 0.026611736 -0.51495034
		 0.99403089 0.10745843 -0.018850522 0.9839496 0.17567106 0.031347994 0.9839496 0.17567106
		 0.031347994 0.99403089 0.10745843 -0.018850522 0.86003989 0.15815018 0.48509789 0.8332094
		 0.24317512 0.49661657 0.8332094 0.24317512 0.49661657 0.86003989 0.15815018 0.48509789
		 0.4887763 0.16619596 0.8564325 0.48929799 0.2534008 0.83449119 0.48929799 0.2534008
		 0.83449119 0.4887763 0.16619596 0.8564325 -0.016799295 0.12964824 0.99141765 0.02550883
		 0.20586754 0.97824734 0.02550883 0.20586754 0.97824734 -0.016799295 0.12964824 0.99141765
		 -0.51564491 0.057430174 0.8548755 -0.46236965 0.1040711 0.88055867 -0.46236965 0.1040711
		 0.88055867 -0.51564491 0.057430174 0.8548755 -0.87181413 -0.032217838 0.48877606
		 -0.84241235 -0.034647573 0.53771836 -0.84241235 -0.034647573 0.53771836 -0.87181413
		 -0.032217838 0.48877606 -0.99330181 -0.11547123 -0.0042312215 -0.98463225 -0.17091027
		 0.035903726 -0.99330181 -0.11547123 -0.0042312215 -0.99986821 -0.014524314 -0.0072477423
		 -0.86420923 -0.021317312 -0.5026809 -0.85343432 -0.16911539 -0.49300095 -0.85343432
		 -0.16911539 -0.49300095 -0.86420923 -0.021317312 -0.5026809 -0.50123143 -0.022408919
		 -0.86502302 -0.49202368 -0.17773113 -0.85224664 -0.49202368 -0.17773113 -0.85224664
		 -0.50123143 -0.022408919 -0.86502302 -0.0059879683 -0.017483089 -0.99982929 -0.0021799728
		 -0.13881718 -0.99031568 -0.0021799728 -0.13881718 -0.99031568 -0.0059879683 -0.017483089
		 -0.99982929 0.49223042 -0.0079465508 -0.87042868 0.49078259 -0.063621238 -0.86895621
		 0.49078259 -0.063621238 -0.86895621 0.49223042 -0.0079465508 -0.87042868;
	setAttr ".n[2158:2323]" -type "float3"  0.86120385 0.0035103452 -0.50824755 0.85680687
		 0.026611736 -0.51495034 0.85680687 0.026611736 -0.51495034 0.86120385 0.0035103452
		 -0.50824755 0.99987662 0.013765193 -0.0075690551 0.99403089 0.10745843 -0.018850522
		 0.99403089 0.10745843 -0.018850522 0.99987662 0.013765193 -0.0075690551 0.86756587
		 0.020176493 0.49691287 0.86003989 0.15815018 0.48509789 0.86003989 0.15815018 0.48509789
		 0.86756587 0.020176493 0.49691287 0.49843588 0.021192215 0.86666751 0.4887763 0.16619596
		 0.8564325 0.4887763 0.16619596 0.8564325 0.49843588 0.021192215 0.86666751 -0.0063099666
		 0.016574766 0.99984264 -0.016799295 0.12964824 0.99141765 -0.016799295 0.12964824
		 0.99141765 -0.0063099666 0.016574766 0.99984264 -0.50788349 0.0074223904 0.86139381
		 -0.51564491 0.057430174 0.8548755 -0.51564491 0.057430174 0.8548755 -0.50788349 0.0074223904
		 0.86139381 -0.87070221 -0.0039604618 0.49179456 -0.87181413 -0.032217838 0.48877606
		 -0.87181413 -0.032217838 0.48877606 -0.87070221 -0.0039604618 0.49179456 -0.99986821
		 -0.014524314 -0.0072477423 -0.99330181 -0.11547123 -0.0042312215 -0.99986821 -0.014524314
		 -0.0072477423 -0.99874115 0.050021365 -0.0037533659 -0.86302614 0.072997652 -0.49985725
		 -0.86420923 -0.021317312 -0.5026809 -0.86420923 -0.021317312 -0.5026809 -0.86302614
		 0.072997652 -0.49985725 -0.49908635 0.076655753 -0.86315519 -0.50123143 -0.022408919
		 -0.86502302 -0.50123143 -0.022408919 -0.86502302 -0.49908635 0.076655753 -0.86315519
		 -0.0028624029 0.060062587 -0.99819046 -0.0059879683 -0.017483089 -0.99982929 -0.0059879683
		 -0.017483089 -0.99982929 -0.0028624029 0.060062587 -0.99819046 0.49511442 0.027475629
		 -0.86839324 0.49223042 -0.0079465508 -0.87042868 0.49223042 -0.0079465508 -0.87042868
		 0.49511442 0.027475629 -0.86839324 0.86230505 -0.012619674 -0.50623202 0.86120385
		 0.0035103452 -0.50824755 0.86120385 0.0035103452 -0.50824755 0.86230505 -0.012619674
		 -0.50623202 0.9987492 -0.049537126 -0.0067935814 0.99987662 0.013765193 -0.0075690551
		 0.99987662 0.013765193 -0.0075690551 0.9987492 -0.049537126 -0.0067935814 0.86539304
		 -0.073186181 0.49572036 0.86756587 0.020176493 0.49691287 0.86756587 0.020176493
		 0.49691287 0.86539304 -0.073186181 0.49572036 0.49706653 -0.076976918 0.86429131
		 0.49843588 0.021192215 0.86666751 0.49843588 0.021192215 0.86666751 0.49706653 -0.076976918
		 0.86429131 -0.0059027425 -0.059841193 0.99819052 -0.0063099666 0.016574766 0.99984264
		 -0.0063099666 0.016574766 0.99984264 -0.0059027425 -0.059841193 0.99819052 -0.50624019
		 -0.026578238 0.86198276 -0.50788349 0.0074223904 0.86139381 -0.50788349 0.0074223904
		 0.86139381 -0.50624019 -0.026578238 0.86198276 -0.86904347 0.013648771 0.49454749
		 -0.87070221 -0.0039604618 0.49179456 -0.87070221 -0.0039604618 0.49179456 -0.86904347
		 0.013648771 0.49454749 -0.99874115 0.050021365 -0.0037533659 -0.99986821 -0.014524314
		 -0.0072477423 -0.99874115 0.050021365 -0.0037533659 -0.99488223 0.10103289 0.0013250471
		 -0.85735893 0.1484977 -0.49283275 -0.86302614 0.072997652 -0.49985725 -0.86302614
		 0.072997652 -0.49985725 -0.85735893 0.1484977 -0.49283275 -0.49299487 0.15611361
		 -0.85591155 -0.49908635 0.076655753 -0.86315519 -0.49908635 0.076655753 -0.86315519
		 -0.49299487 0.15611361 -0.85591155 0.0021181866 0.12169972 -0.99256462 -0.0028624029
		 0.060062587 -0.99819046 -0.0028624029 0.060062587 -0.99819046 0.0021181866 0.12169972
		 -0.99256462 0.4977777 0.055068042 -0.86555463 0.49511442 0.027475629 -0.86839324
		 0.49511442 0.027475629 -0.86839324 0.4977777 0.055068042 -0.86555463 0.86185277 -0.025203928
		 -0.50653201 0.86230505 -0.012619674 -0.50623202 0.86230505 -0.012619674 -0.50623202
		 0.86185277 -0.025203928 -0.50653201 0.99518442 -0.097491816 -0.01016147 0.9987492
		 -0.049537126 -0.0067935814 0.9987492 -0.049537126 -0.0067935814 0.99518442 -0.097491816
		 -0.01016147 0.85997623 -0.14300784 0.48988724 0.86539304 -0.073186181 0.49572036
		 0.86539304 -0.073186181 0.49572036 0.85997623 -0.14300784 0.48988724 0.49183124 -0.15024659
		 0.85762936 0.49706653 -0.076976918 0.86429131 0.49706653 -0.076976918 0.86429131
		 0.49183124 -0.15024659 0.85762936 -0.0093686953 -0.11739822 0.99304062 -0.0059027425
		 -0.059841193 0.99819052 -0.0059027425 -0.059841193 0.99819052 -0.0093686953 -0.11739822
		 0.99304062 -0.50732809 -0.052716058 0.86013907 -0.50624019 -0.026578238 0.86198276
		 -0.50624019 -0.026578238 0.86198276 -0.50732809 -0.052716058 0.86013907 -0.86763066
		 0.027175779 0.49646586 -0.86904347 0.013648771 0.49454749 -0.86904347 0.013648771
		 0.49454749 -0.86763066 0.027175779 0.49646586 -0.99488223 0.10103289 0.0013250471
		 -0.99874115 0.050021365 -0.0037533659 -0.99488223 0.10103289 0.0013250471 -0.99219507
		 0.1220864 0.02537409 -0.85692513 0.1842953 -0.48136753 -0.85735893 0.1484977 -0.49283275
		 -0.85735893 0.1484977 -0.49283275 -0.85692513 0.1842953 -0.48136753 -0.48557997 0.19429423
		 -0.85232729 -0.49299487 0.15611361 -0.85591155 -0.49299487 0.15611361 -0.85591155
		 -0.48557997 0.19429423 -0.85232729 0.021199018 0.14913011 -0.98859036 0.0021181866
		 0.12169972 -0.99256462 0.0021181866 0.12169972 -0.99256462 0.021199018 0.14913011
		 -0.98859036 0.52513403 0.062475286 -0.84872323 0.4977777 0.055068042 -0.86555463
		 0.4977777 0.055068042 -0.86555463 0.52513403 0.062475286 -0.84872323 0.88034695 -0.03843604
		 -0.47277048 0.86185277 -0.025203928 -0.50653201 0.86185277 -0.025203928 -0.50653201
		 0.88034695 -0.03843604 -0.47277048 0.99199665 -0.12416001 0.022954296 0.99518442
		 -0.097491816 -0.01016147 0.99518442 -0.097491816 -0.01016147 0.99199665 -0.12416001
		 0.022954296 0.84759581 -0.17505249 0.50093704 0.85997623 -0.14300784 0.48988724 0.85997623
		 -0.14300784 0.48988724 0.84759581 -0.17505249 0.50093704 0.49575707 -0.18290901 0.84898126
		 0.49183124 -0.15024659 0.85762936 0.49183124 -0.15024659 0.85762936 0.49575707 -0.18290901
		 0.84898126 0.018804653 -0.14672934 0.98899794 -0.0093686953 -0.11739822 0.99304062
		 -0.0093686953 -0.11739822 0.99304062 0.018804653 -0.14672934 0.98899794 -0.47357202
		 -0.071720526 0.87783009 -0.50732809 -0.052716058 0.86013907;
	setAttr ".n[2324:2331]" -type "float3"  -0.50732809 -0.052716058 0.86013907 -0.47357202
		 -0.071720526 0.87783009 -0.84949178 0.026856834 0.52691787 -0.86763066 0.027175779
		 0.49646586 -0.86763066 0.027175779 0.49646586 -0.84949178 0.026856834 0.52691787
		 -0.99219507 0.1220864 0.02537409 -0.99488223 0.10103289 0.0013250471;
	setAttr -s 581 -ch 2332 ".fc";
	setAttr ".fc[0:499]" -type "polyFaces" 
		f 4 0 1 2 3
		f 4 4 5 6 7
		f 4 8 9 10 11
		f 4 12 13 14 15
		f 4 16 17 18 -2
		f 4 19 20 21 -6
		f 4 22 23 24 -10
		f 4 25 26 27 -14
		f 4 28 29 30 -18
		f 4 31 32 33 -21
		f 4 34 35 36 -24
		f 4 37 38 39 -27
		f 4 40 41 42 -30
		f 4 43 44 45 -33
		f 4 46 47 48 -36
		f 4 49 50 51 -39
		f 4 52 53 54 -42
		f 4 55 56 57 -45
		f 4 58 59 60 -48
		f 4 61 62 63 -51
		f 4 64 65 66 -54
		f 4 67 68 69 -57
		f 4 70 71 72 -60
		f 4 73 74 75 -63
		f 4 76 77 78 -66
		f 4 79 80 81 -69
		f 4 82 83 84 -72
		f 4 85 86 87 -75
		f 4 88 89 90 -78
		f 4 91 92 93 -81
		f 4 94 95 96 -84
		f 4 97 98 99 -87
		f 4 100 101 102 -90
		f 4 103 104 105 -93
		f 4 106 107 108 -96
		f 4 109 110 111 -99
		f 4 112 113 114 -102
		f 4 115 116 117 -105
		f 4 118 119 120 -108
		f 4 121 122 123 -111
		f 4 124 125 126 -114
		f 4 127 128 129 -117
		f 4 130 131 132 -120
		f 4 133 134 135 -123
		f 4 136 137 138 -126
		f 4 139 140 141 -129
		f 4 142 143 144 -132
		f 4 145 146 147 -135
		f 4 148 149 150 -138
		f 4 151 152 153 -141
		f 4 154 155 156 -144
		f 4 157 158 159 -147
		f 4 160 161 162 -150
		f 4 163 164 165 -153
		f 4 166 167 168 -156
		f 4 169 170 171 -159
		f 4 172 173 174 -162
		f 4 175 176 177 -165
		f 4 178 179 180 -168
		f 4 181 182 183 -171
		f 4 184 185 186 -174
		f 4 187 188 189 -177
		f 4 190 191 192 -180
		f 4 193 194 195 -183
		f 4 196 197 198 -186
		f 4 199 200 201 -189
		f 4 202 203 204 -192
		f 4 205 206 207 -195
		f 4 208 209 210 -198
		f 4 211 212 213 -201
		f 4 214 215 216 -204
		f 4 217 218 219 -207
		f 4 220 221 222 -210
		f 4 223 224 225 -213
		f 4 226 227 228 -216
		f 4 229 230 231 -219
		f 4 232 233 234 -222
		f 4 235 236 237 -225
		f 4 238 239 240 -228
		f 4 241 242 243 -231
		f 4 244 245 246 -234
		f 4 247 248 249 -237
		f 4 250 251 252 -240
		f 4 253 254 255 -243
		f 4 256 257 258 -246
		f 4 259 260 261 -249
		f 4 262 263 264 -252
		f 4 265 266 267 -255
		f 4 268 269 270 -258
		f 4 271 272 273 -261
		f 4 274 275 276 -264
		f 4 277 278 279 -267
		f 4 280 281 282 -270
		f 4 283 284 285 -273
		f 4 286 287 288 -276
		f 4 289 290 291 -279
		f 4 292 293 294 295
		f 4 -295 296 297 298
		f 4 299 300 301 -294
		f 4 -302 302 303 -297
		f 4 304 305 306 -301
		f 4 -307 307 308 -303
		f 4 309 310 311 -306
		f 4 -312 312 313 -308
		f 4 314 315 316 -311
		f 4 -317 317 318 -313
		f 4 319 320 321 -316
		f 4 -322 322 323 -318
		f 4 324 325 326 -321
		f 4 -327 327 328 -323
		f 4 329 330 331 -326
		f 4 -332 332 333 -328
		f 4 334 335 336 -331
		f 4 -337 337 338 -333
		f 4 339 340 341 -336
		f 4 -342 342 343 -338
		f 4 344 345 346 -341
		f 4 -347 347 348 -343
		f 4 349 350 351 -346
		f 4 -352 352 353 -348
		f 4 354 355 356 -351
		f 4 -357 357 358 -353
		f 4 359 360 361 -356
		f 4 -362 362 363 -358
		f 4 364 365 366 -361
		f 4 -367 367 368 -363
		f 4 369 370 371 -366
		f 4 -372 372 373 -368
		f 4 374 375 376 -371
		f 4 -377 377 378 -373
		f 4 379 380 381 -376
		f 4 -382 382 383 -378
		f 4 384 385 386 -381
		f 4 -387 387 388 -383
		f 4 389 390 391 -386
		f 4 -392 392 393 -388
		f 4 394 395 396 -391
		f 4 -397 397 398 -393
		f 4 399 400 401 -396
		f 4 -402 402 403 -398
		f 4 404 405 406 -401
		f 4 -407 407 408 -403
		f 4 409 410 411 -406
		f 4 -412 412 413 -408
		f 4 414 415 416 417
		f 4 -417 418 419 420
		f 4 421 422 423 -416
		f 4 -424 424 425 -419
		f 4 426 427 428 -423
		f 4 -429 429 430 -425
		f 4 431 432 433 -428
		f 4 -434 434 435 -430
		f 4 436 437 438 -433
		f 4 -439 439 440 -435
		f 4 441 442 443 -438
		f 4 -444 444 445 -440
		f 4 446 447 448 -443
		f 4 -449 449 450 -445
		f 4 451 452 453 -448
		f 4 -454 454 455 -450
		f 4 456 457 458 -453
		f 4 -459 459 460 -455
		f 4 461 462 463 -458
		f 4 -464 464 465 -460
		f 4 466 467 468 -463
		f 4 -469 469 470 -465
		f 4 471 472 473 -468
		f 4 -474 474 475 -470
		f 4 476 477 478 -473
		f 4 -479 479 480 -475
		f 4 481 482 483 -478
		f 4 -484 484 485 -480
		f 4 486 487 488 -483
		f 4 -489 489 490 -485
		f 4 491 492 493 -488
		f 4 -494 494 495 -490
		f 4 496 497 498 -493
		f 4 -499 499 500 -495
		f 4 501 502 503 -498
		f 4 -504 504 505 -500
		f 4 506 507 508 -503
		f 4 -509 509 510 -505
		f 4 511 512 513 -508
		f 4 -514 514 515 -510
		f 4 516 517 518 -513
		f 4 -519 519 520 -515
		f 4 521 522 523 -518
		f 4 -524 524 525 -520
		f 4 526 527 528 -523
		f 4 -529 529 530 -525
		f 4 531 532 533 -528
		f 4 -534 534 535 -530
		f 4 536 537 538 539
		f 4 -539 540 541 542
		f 4 543 544 545 -538
		f 4 -546 546 547 -541
		f 4 548 549 550 -545
		f 4 -551 551 552 -547
		f 4 553 554 555 -550
		f 4 -556 556 557 -552
		f 4 558 559 560 -555
		f 4 -561 561 562 -557
		f 4 563 564 565 -560
		f 4 -566 566 567 -562
		f 4 568 569 570 -565
		f 4 -571 571 572 -567
		f 4 573 574 575 -570
		f 4 -576 576 577 -572
		f 4 578 579 580 -575
		f 4 -581 581 582 -577
		f 4 583 584 585 -580
		f 4 -586 586 587 -582
		f 4 588 589 590 -585
		f 4 -591 591 592 -587
		f 4 593 594 595 -590
		f 4 -596 596 597 -592
		f 4 598 599 600 -595
		f 4 -601 601 602 -597
		f 4 603 604 605 -600
		f 4 -606 606 607 -602
		f 4 608 609 610 -605
		f 4 -611 611 612 -607
		f 4 613 614 615 -610
		f 4 -616 616 617 -612
		f 4 618 619 620 -615
		f 4 -621 621 622 -617
		f 4 623 624 625 -620
		f 4 -626 626 627 -622
		f 4 628 629 630 -625
		f 4 -631 631 632 -627
		f 4 633 634 635 -630
		f 4 -636 636 637 -632
		f 4 638 639 640 -635
		f 4 -641 641 642 -637
		f 4 643 644 645 -640
		f 4 -646 646 647 -642
		f 4 648 649 650 -645
		f 4 -651 651 652 -647
		f 4 653 654 655 -650
		f 4 -656 656 657 -652
		f 4 658 659 660 661
		f 4 -661 662 663 664
		f 4 665 666 667 -660
		f 4 -668 668 669 -663
		f 4 670 671 672 -667
		f 4 -673 673 674 -669
		f 4 675 676 677 -672
		f 4 -678 678 679 -674
		f 4 680 681 682 -677
		f 4 -683 683 684 -679
		f 4 685 686 687 -682
		f 4 -688 688 689 -684
		f 4 690 691 692 -687
		f 4 -693 693 694 -689
		f 4 695 696 697 -692
		f 4 -698 698 699 -694
		f 4 700 701 702 -697
		f 4 -703 703 704 -699
		f 4 705 706 707 -702
		f 4 -708 708 709 -704
		f 4 710 711 712 -707
		f 4 -713 713 714 -709
		f 4 715 716 717 -712
		f 4 -718 718 719 -714
		f 4 720 721 722 -717
		f 4 -723 723 724 -719
		f 4 725 726 727 -722
		f 4 -728 728 729 -724
		f 4 730 731 732 -727
		f 4 -733 733 734 -729
		f 4 735 736 737 -732
		f 4 -738 738 739 -734
		f 4 740 741 742 -737
		f 4 -743 743 744 -739
		f 4 745 746 747 -742
		f 4 -748 748 749 -744
		f 4 750 751 752 -747
		f 4 -753 753 754 -749
		f 4 755 756 757 -752
		f 4 -758 758 759 -754
		f 4 760 761 762 -757
		f 4 -763 763 764 -759
		f 4 765 766 767 -762
		f 4 -768 768 769 -764
		f 4 770 771 772 -767
		f 4 -773 773 774 -769
		f 4 775 776 777 -772
		f 4 -778 778 779 -774
		f 4 780 -296 781 782
		f 4 -782 -299 783 784
		f 4 -784 -298 785 -1
		f 4 -786 -304 786 -17
		f 4 -787 -309 787 -29
		f 4 -788 -314 788 -41
		f 4 -789 -319 789 -53
		f 4 -790 -324 790 -65
		f 4 -791 -329 791 -77
		f 4 -792 -334 792 -89
		f 4 -793 -339 793 -101
		f 4 -794 -344 794 -113
		f 4 -795 -349 795 -125
		f 4 -796 -354 796 -137
		f 4 -797 -359 797 -149
		f 4 -798 -364 798 -161
		f 4 -799 -369 799 -173
		f 4 -800 -374 800 -185
		f 4 -801 -379 801 -197
		f 4 -802 -384 802 -209
		f 4 -803 -389 803 -221
		f 4 -804 -394 804 -233
		f 4 -805 -399 805 -245
		f 4 -806 -404 806 -257
		f 4 -807 -409 807 -269
		f 4 -808 -414 808 -281
		f 4 -809 -413 809 810
		f 4 -810 -411 811 812
		f 4 -812 -410 813 -292
		f 4 -814 -405 814 -280
		f 4 -815 -400 815 -268
		f 4 -816 -395 816 -256
		f 4 -817 -390 817 -244
		f 4 -818 -385 818 -232
		f 4 -819 -380 819 -220
		f 4 -820 -375 820 -208
		f 4 -821 -370 821 -196
		f 4 -822 -365 822 -184
		f 4 -823 -360 823 -172
		f 4 -824 -355 824 -160
		f 4 -825 -350 825 -148
		f 4 -826 -345 826 -136
		f 4 -827 -340 827 -124
		f 4 -828 -335 828 -112
		f 4 -829 -330 829 -100
		f 4 -830 -325 830 -88
		f 4 -831 -320 831 -76
		f 4 -832 -315 832 -64
		f 4 -833 -310 833 -52
		f 4 -834 -305 834 -40
		f 4 -835 -300 835 -28
		f 4 -836 -293 -781 -15
		f 4 836 -418 837 838
		f 4 -838 -421 839 840
		f 4 -840 -420 841 -5
		f 4 -842 -426 842 -20
		f 4 -843 -431 843 -32
		f 4 -844 -436 844 -44
		f 4 -845 -441 845 -56
		f 4 -846 -446 846 -68
		f 4 -847 -451 847 -80
		f 4 -848 -456 848 -92
		f 4 -849 -461 849 -104
		f 4 -850 -466 850 -116
		f 4 -851 -471 851 -128
		f 4 -852 -476 852 -140
		f 4 -853 -481 853 -152
		f 4 -854 -486 854 -164
		f 4 -855 -491 855 -176
		f 4 -856 -496 856 -188
		f 4 -857 -501 857 -200
		f 4 -858 -506 858 -212
		f 4 -859 -511 859 -224
		f 4 -860 -516 860 -236
		f 4 -861 -521 861 -248
		f 4 -862 -526 862 -260
		f 4 -863 -531 863 -272
		f 4 -864 -536 864 -284
		f 4 -865 -535 865 866
		f 4 -866 -533 867 868
		f 4 -868 -532 869 -283
		f 4 -870 -527 870 -271
		f 4 -871 -522 871 -259
		f 4 -872 -517 872 -247
		f 4 -873 -512 873 -235
		f 4 -874 -507 874 -223
		f 4 -875 -502 875 -211
		f 4 -876 -497 876 -199
		f 4 -877 -492 877 -187
		f 4 -878 -487 878 -175
		f 4 -879 -482 879 -163
		f 4 -880 -477 880 -151
		f 4 -881 -472 881 -139
		f 4 -882 -467 882 -127
		f 4 -883 -462 883 -115
		f 4 -884 -457 884 -103
		f 4 -885 -452 885 -91
		f 4 -886 -447 886 -79
		f 4 -887 -442 887 -67
		f 4 -888 -437 888 -55
		f 4 -889 -432 889 -43
		f 4 -890 -427 890 -31
		f 4 -891 -422 891 -19
		f 4 -892 -415 -837 -3
		f 4 892 -540 893 894
		f 4 -894 -543 895 896
		f 4 -896 -542 897 -9
		f 4 -898 -548 898 -23
		f 4 -899 -553 899 -35
		f 4 -900 -558 900 -47
		f 4 -901 -563 901 -59
		f 4 -902 -568 902 -71
		f 4 -903 -573 903 -83
		f 4 -904 -578 904 -95
		f 4 -905 -583 905 -107
		f 4 -906 -588 906 -119
		f 4 -907 -593 907 -131
		f 4 -908 -598 908 -143
		f 4 -909 -603 909 -155
		f 4 -910 -608 910 -167
		f 4 -911 -613 911 -179
		f 4 -912 -618 912 -191
		f 4 -913 -623 913 -203
		f 4 -914 -628 914 -215
		f 4 -915 -633 915 -227
		f 4 -916 -638 916 -239
		f 4 -917 -643 917 -251
		f 4 -918 -648 918 -263
		f 4 -919 -653 919 -275
		f 4 -920 -658 920 -287
		f 4 -921 -657 921 922
		f 4 -922 -655 923 924
		f 4 -924 -654 925 -286
		f 4 -926 -649 926 -274
		f 4 -927 -644 927 -262
		f 4 -928 -639 928 -250
		f 4 -929 -634 929 -238
		f 4 -930 -629 930 -226
		f 4 -931 -624 931 -214
		f 4 -932 -619 932 -202
		f 4 -933 -614 933 -190
		f 4 -934 -609 934 -178
		f 4 -935 -604 935 -166
		f 4 -936 -599 936 -154
		f 4 -937 -594 937 -142
		f 4 -938 -589 938 -130
		f 4 -939 -584 939 -118
		f 4 -940 -579 940 -106
		f 4 -941 -574 941 -94
		f 4 -942 -569 942 -82
		f 4 -943 -564 943 -70
		f 4 -944 -559 944 -58
		f 4 -945 -554 945 -46
		f 4 -946 -549 946 -34
		f 4 -947 -544 947 -22
		f 4 -948 -537 -893 -7
		f 4 948 -662 949 950
		f 4 -950 -665 951 952
		f 4 -952 -664 953 -13
		f 4 -954 -670 954 -26
		f 4 -955 -675 955 -38
		f 4 -956 -680 956 -50
		f 4 -957 -685 957 -62
		f 4 -958 -690 958 -74
		f 4 -959 -695 959 -86
		f 4 -960 -700 960 -98
		f 4 -961 -705 961 -110
		f 4 -962 -710 962 -122
		f 4 -963 -715 963 -134
		f 4 -964 -720 964 -146
		f 4 -965 -725 965 -158
		f 4 -966 -730 966 -170
		f 4 -967 -735 967 -182
		f 4 -968 -740 968 -194
		f 4 -969 -745 969 -206
		f 4 -970 -750 970 -218
		f 4 -971 -755 971 -230
		f 4 -972 -760 972 -242
		f 4 -973 -765 973 -254
		f 4 -974 -770 974 -266
		f 4 -975 -775 975 -278
		f 4 -976 -780 976 -290
		f 4 -977 -779 977 978
		f 4 -978 -777 979 980
		f 4 -980 -776 981 -289
		f 4 -982 -771 982 -277
		f 4 -983 -766 983 -265
		f 4 -984 -761 984 -253
		f 4 -985 -756 985 -241
		f 4 -986 -751 986 -229
		f 4 -987 -746 987 -217
		f 4 -988 -741 988 -205
		f 4 -989 -736 989 -193
		f 4 -990 -731 990 -181
		f 4 -991 -726 991 -169
		f 4 -992 -721 992 -157
		f 4 -993 -716 993 -145
		f 4 -994 -711 994 -133
		f 4 -995 -706 995 -121
		f 4 -996 -701 996 -109
		f 4 -997 -696 997 -97
		f 4 -998 -691 998 -85
		f 4 -999 -686 999 -73
		f 4 -1000 -681 1000 -61
		f 4 -1001 -676 1001 -49
		f 4 -1002 -671 1002 -37
		f 4 -1003 -666 1003 -25
		f 4 -1004 -659 -949 -11
		f 4 1004 1005 1006 -813
		f 4 -1007 1007 1008 -811
		f 4 -1009 1009 1010 -282
		f 4 -1011 1011 1012 -869;
	setAttr ".fc[500:580]"
		f 4 -1013 1013 1014 -867
		f 4 -1015 1015 1016 -285
		f 4 -1017 1017 1018 -925
		f 4 -1019 1019 1020 -923
		f 4 -1021 1021 1022 -288
		f 4 -1023 1023 1024 -981
		f 4 -1025 1025 1026 -979
		f 4 -1027 1027 -1005 -291
		f 4 1028 1029 1030 -1006
		f 4 -1031 1031 1032 -1008
		f 4 -1033 1033 1034 -1010
		f 4 -1035 1035 1036 -1012
		f 4 -1037 1037 1038 -1014
		f 4 -1039 1039 1040 -1016
		f 4 -1041 1041 1042 -1018
		f 4 -1043 1043 1044 -1020
		f 4 -1045 1045 1046 -1022
		f 4 -1047 1047 1048 -1024
		f 4 -1049 1049 1050 -1026
		f 4 -1051 1051 -1029 -1028
		f 12 1052 1053 1054 1055 1056 1057 1058 1059 1060 1061 1062 1063
		f 4 1064 1065 1066 -1030
		f 4 -1067 1067 1068 -1032
		f 4 -1069 1069 1070 -1034
		f 4 -1071 1071 1072 -1036
		f 4 -1073 1073 1074 -1038
		f 4 -1075 1075 1076 -1040
		f 4 -1077 1077 1078 -1042
		f 4 -1079 1079 1080 -1044
		f 4 -1081 1081 1082 -1046
		f 4 -1083 1083 1084 -1048
		f 4 -1085 1085 1086 -1050
		f 4 -1087 1087 -1065 -1052
		f 4 1088 1089 1090 -1066
		f 4 -1091 1091 1092 -1068
		f 4 -1093 1093 1094 -1070
		f 4 -1095 1095 1096 -1072
		f 4 -1097 1097 1098 -1074
		f 4 -1099 1099 1100 -1076
		f 4 -1101 1101 1102 -1078
		f 4 -1103 1103 1104 -1080
		f 4 -1105 1105 1106 -1082
		f 4 -1107 1107 1108 -1084
		f 4 -1109 1109 1110 -1086
		f 4 -1111 1111 -1089 -1088
		f 4 1112 1113 1114 -1090
		f 4 -1115 1115 1116 -1092
		f 4 -1117 1117 1118 -1094
		f 4 -1119 1119 1120 -1096
		f 4 -1121 1121 1122 -1098
		f 4 -1123 1123 1124 -1100
		f 4 -1125 1125 1126 -1102
		f 4 -1127 1127 1128 -1104
		f 4 -1129 1129 1130 -1106
		f 4 -1131 1131 1132 -1108
		f 4 -1133 1133 1134 -1110
		f 4 -1135 1135 -1113 -1112
		f 4 1136 1137 1138 -1114
		f 4 -1139 1139 1140 -1116
		f 4 -1141 1141 1142 -1118
		f 4 -1143 1143 1144 -1120
		f 4 -1145 1145 1146 -1122
		f 4 -1147 1147 1148 -1124
		f 4 -1149 1149 1150 -1126
		f 4 -1151 1151 1152 -1128
		f 4 -1153 1153 1154 -1130
		f 4 -1155 1155 1156 -1132
		f 4 -1157 1157 1158 -1134
		f 4 -1159 1159 -1137 -1136
		f 4 1160 -1064 1161 -1138
		f 4 -1162 -1063 1162 -1140
		f 4 -1163 -1062 1163 -1142
		f 4 -1164 -1061 1164 -1144
		f 4 -1165 -1060 1165 -1146
		f 4 -1166 -1059 1166 -1148
		f 4 -1167 -1058 1167 -1150
		f 4 -1168 -1057 1168 -1152
		f 4 -1169 -1056 1169 -1154
		f 4 -1170 -1055 1170 -1156
		f 4 -1171 -1054 1171 -1158
		f 4 -1172 -1053 -1161 -1160;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "CandleRed";
	rename -uid "DC5A5245-47E5-C46C-FBDD-409E207DE751";
	setAttr ".s" -type "double3" 0.25 0.25 0.25 ;
createNode mesh -n "CandleRedShape" -p "CandleRed";
	rename -uid "5C88B543-4F7A-75CD-F481-439634EA63A3";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.081261321902275085 0.93325945734977722 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 692 ".uvst[0].uvsp";
	setAttr ".uvst[0].uvsp[0:249]" -type "float2" 0.61625391 0.99817598 0.61504811
		 0.99817598 0.61416543 0.99817598 0.61384237 0.99817598 0.61416543 0.99817598 0.61504811
		 0.99817598 0.61625391 0.99817598 0.61745965 0.99817598 0.61834234 0.99817598 0.6186654
		 0.99817598 0.61834234 0.99817598 0.61745965 0.99817598 0.61625391 0.84557402 0.61766887
		 0.87414932 0.61886615 0.87359428 0.61745965 0.84557402 0.61974746 0.87350577 0.61834234
		 0.84557402 0.62007672 0.87390709 0.6186654 0.84557402 0.61976564 0.87469095 0.61834234
		 0.84557402 0.61889756 0.87564749 0.61745965 0.84557402 0.61770517 0.87652004 0.61625391
		 0.84557402 0.61650789 0.87707472 0.61504811 0.84557402 0.61562651 0.87716323 0.61416543
		 0.84557402 0.61529732 0.87676215 0.61384237 0.84557402 0.61560839 0.87597805 0.61416543
		 0.84557402 0.61647648 0.87502193 0.61504811 0.84557402 0.61812115 0.90602851 0.61932677
		 0.90595812 0.62020946 0.90594673 0.62053263 0.90599763 0.62020975 0.90609753 0.61932731
		 0.90621889 0.61812174 0.90633011 0.61691612 0.90640056 0.61603343 0.90641159 0.61571026
		 0.90636063 0.6160332 0.90626115 0.61691564 0.90613937 0.61792177 0.93764925 0.61912584
		 0.93789756 0.62000829 0.93793714 0.6203326 0.93775749 0.62001187 0.93740714 0.6191321
		 0.93697929 0.61792898 0.93658912 0.61672491 0.93634081 0.61584252 0.93630135 0.61551821
		 0.93648088 0.61583889 0.93683147 0.61671865 0.9372592 0.61726695 0.96891904 0.61846602
		 0.96941352 0.61934763 0.96949232 0.61967558 0.96913493 0.619362 0.96843648 0.61849093
		 0.96758413 0.61729574 0.96680701 0.61609668 0.96631217 0.61521506 0.96623337 0.61488712
		 0.96659112 0.6152007 0.96728957 0.61607182 0.96814156 0.080946982 0.87540853 0.081316948
		 0.87978607 0.078920037 0.8795985 0.078695804 0.87540764 0.081734568 0.88465762 0.079253942
		 0.88446718 0.082137167 0.88952702 0.079617351 0.88933808 0.082518458 0.89439642 0.08000344
		 0.89420891 0.082872331 0.89926583 0.080405146 0.8990798 0.083193153 0.90413523 0.080815077
		 0.90395069 0.083476126 0.90900463 0.08122611 0.90882152 0.083717048 0.91387397 0.081630856
		 0.91369241 0.083912492 0.91874337 0.082022429 0.91856331 0.084059954 0.92361277 0.082394183
		 0.92343414 0.084157765 0.92848217 0.082739919 0.92830503 0.084205151 0.93335164 0.083054006
		 0.93317592 0.08420217 0.93822098 0.083331466 0.93804681 0.084149837 0.94309032 0.083568096
		 0.9429177 0.084049761 0.94795978 0.083760262 0.94778848 0.083904684 0.95282912 0.083905578
		 0.95265937 0.083717823 0.95769858 0.084002197 0.95753026 0.083493054 0.96256793 0.084049225
		 0.96240115 0.083235025 0.96743727 0.084046841 0.96727204 0.082948685 0.97230673 0.083995819
		 0.97214293 0.082639396 0.97717601 0.083898067 0.97701377 0.082312912 0.98204535 0.08375597
		 0.98188466 0.081975371 0.98691255 0.083573699 0.9867577 0.081686229 0.99112219 0.083406866
		 0.99112278 0.077972382 0.87540853 0.078006953 0.87978607 0.078999072 0.8795985 0.07927826
		 0.87540764 0.078068137 0.88465762 0.078731745 0.88446718 0.078181505 0.88952702 0.078512251
		 0.88933808 0.078344911 0.89439642 0.078343958 0.89420891 0.078554839 0.89926583 0.07822901
		 0.8990798 0.078806788 0.90413523 0.078168601 0.90395069 0.07909593 0.90900463 0.078162879
		 0.90882152 0.079416603 0.91387397 0.078211099 0.91369241 0.079762965 0.91874337 0.078311503
		 0.91856331 0.08012861 0.92361277 0.078461528 0.92343414 0.080506951 0.92848217 0.078657687
		 0.92830503 0.08089143 0.93335164 0.078895718 0.93317592 0.081275344 0.93822098 0.079170913
		 0.93804681 0.081652254 0.94309032 0.079477638 0.9429177 0.082015783 0.94795978 0.079810053
		 0.94778848 0.082360089 0.95282912 0.08016184 0.95265937 0.082679659 0.95769858 0.080526501
		 0.95753026 0.082969546 0.96256793 0.080897391 0.96240115 0.08322534 0.96743727 0.081267893
		 0.96727204 0.083443344 0.97230673 0.081631452 0.97214293 0.083620667 0.97717601 0.081981808
		 0.97701377 0.083754897 0.98204535 0.082313031 0.98188466 0.083845019 0.98691255 0.082620233
		 0.9867577 0.083853364 0.99112219 0.082871526 0.99112278 0.081575662 0.87540853 0.081205666
		 0.87978607 0.083602607 0.8795985 0.0838269 0.87540764 0.080788076 0.88465762 0.083268672
		 0.88446718 0.080385476 0.88952702 0.082905293 0.88933808 0.080004156 0.89439642 0.082519174
		 0.89420891 0.079650313 0.89926583 0.082117498 0.8990798 0.079329461 0.90413523 0.081707507
		 0.90395069 0.079046458 0.90900463 0.081296563 0.90882152 0.078805596 0.91387397 0.080891788
		 0.91369241 0.078610152 0.91874337 0.080500185 0.91856331 0.07846269 0.92361277 0.080128461
		 0.92343414 0.078364879 0.92848217 0.079782695 0.92830503 0.078317493 0.93335164 0.079468638
		 0.93317592 0.078320473 0.93822098 0.079191118 0.93804681 0.078372866 0.94309032 0.078954607
		 0.9429177 0.078472883 0.94795978 0.078762323 0.94778848 0.07861796 0.95282912 0.078617066
		 0.95265937 0.078804821 0.95769858 0.078520447 0.95753026 0.07902959 0.96256793 0.078473389
		 0.96240115 0.079287618 0.96743727 0.078475803 0.96727204 0.079573959 0.97230673 0.078526795
		 0.97214293 0.079883218 0.97717601 0.078624636 0.97701377 0.080209732 0.98204535 0.078766674
		 0.98188466 0.080547273 0.98691255 0.078948945 0.9867577 0.080836415 0.99112219 0.079115719
		 0.99112278 0.084550261 0.87540853 0.084515691 0.87978607 0.083523512 0.8795985 0.083244383
		 0.87540764 0.084454536 0.88465762 0.083790898 0.88446718 0.084341168 0.88952702 0.084010363
		 0.88933808 0.084177732 0.89439642 0.084178686 0.89420891 0.083967805 0.89926583 0.084293604
		 0.8990798 0.083715856 0.90413523 0.084354043 0.90395069 0.083426684 0.90900463 0.084359765
		 0.90882152 0.083105981 0.91387397 0.084311545 0.91369241 0.082759649 0.91874337 0.084211111
		 0.91856331 0.082394034 0.92361277 0.084061146 0.92343414 0.082015663 0.92848217 0.083864987
		 0.92830503 0.081631213 0.93335164 0.083626866 0.93317592 0.08124727 0.93822098 0.083351731
		 0.93804681;
	setAttr ".uvst[0].uvsp[250:499]" 0.08087039 0.94309032 0.083044976 0.9429177
		 0.080506831 0.94795978 0.082712591 0.94778848 0.080162555 0.95282912 0.082360804
		 0.95265937 0.079842955 0.95769858 0.081996113 0.95753026 0.079553097 0.96256793 0.081625193
		 0.96240115 0.079297274 0.96743727 0.08125478 0.96727204 0.0790793 0.97230673 0.080891192
		 0.97214293 0.078901976 0.97717601 0.080540806 0.97701377 0.078767747 0.98204535 0.080209613
		 0.98188466 0.078677624 0.98691255 0.079902381 0.9867577 0.07866931 0.99112219 0.079651088
		 0.99112278 0.078624219 0.87481785 0.081261337 0.87481785 0.078866333 0.87968802 0.079145283
		 0.88455814 0.079455584 0.88942826 0.079791337 0.89429837 0.080146283 0.89916855 0.080513984
		 0.90403867 0.080887854 0.90890878 0.081261337 0.9137789 0.081627876 0.91864902 0.08198145
		 0.92351913 0.082316011 0.92838931 0.082626224 0.93325949 0.08290714 0.93812966 0.08315444
		 0.94299972 0.083364516 0.9478699 0.083534479 0.95274007 0.083662033 0.95761013 0.083745897
		 0.96248019 0.083785534 0.96735036 0.083781004 0.97222054 0.083733439 0.97709054 0.08364439
		 0.98196071 0.083516359 0.98683077 0.083352387 0.99170107 0.081261337 0.99170107 0.081579894
		 0.98683077 0.081899852 0.98196071 0.082215488 0.97709054 0.082521141 0.97222054 0.082811177
		 0.96735036 0.083080143 0.96248019 0.083322823 0.95761013 0.083534479 0.95274007 0.083710551
		 0.9478699 0.083847404 0.94299972 0.083941817 0.93812966 0.08399117 0.93325949 0.083993852
		 0.92838931 0.08394891 0.92351913 0.083856225 0.91864902 0.083716452 0.9137789 0.08353126
		 0.90890878 0.083303064 0.90403867 0.083035082 0.89916855 0.082731307 0.89429837 0.082396448
		 0.88942826 0.08203584 0.88455814 0.081655353 0.87968802 0.079738766 0.87481785 0.078216225
		 0.87481785 0.079423577 0.87968802 0.079145283 0.88455814 0.078907996 0.88942826 0.078715175
		 0.89429837 0.078569412 0.89916855 0.078472227 0.90403867 0.078424603 0.90890878 0.078426391
		 0.9137789 0.078476697 0.91864902 0.078573763 0.92351913 0.078714997 0.92838931 0.078897208
		 0.93325949 0.079116434 0.93812966 0.079368204 0.94299972 0.079647511 0.9478699 0.079948932
		 0.95274007 0.080266953 0.95761013 0.080595583 0.96248019 0.080928981 0.96735036 0.081261337
		 0.97222054 0.081586748 0.97709054 0.081899852 0.98196071 0.082195371 0.98683077 0.082468599
		 0.99170107 0.083675921 0.99170107 0.083681345 0.98683077 0.08364439 0.98196071 0.083564937
		 0.97709054 0.083443403 0.97222054 0.08328113 0.96735036 0.083080143 0.96248019 0.082843155
		 0.95761013 0.082573682 0.95274007 0.082275808 0.9478699 0.081954241 0.94299972 0.081614226
		 0.93812966 0.081261337 0.93325949 0.080901563 0.92838931 0.080541193 0.92351913 0.080186516
		 0.91864902 0.079843849 0.9137789 0.07951954 0.90890878 0.07921955 0.90403867 0.07894972
		 0.89916855 0.078715175 0.89429837 0.078520834 0.88942826 0.07837072 0.88455814 0.078268319
		 0.87968802 0.083898425 0.87481785 0.081261337 0.87481785 0.083656311 0.87968802 0.083377361
		 0.88455814 0.08306706 0.88942826 0.082731307 0.89429837 0.082376361 0.89916855 0.08200863
		 0.90403867 0.08163479 0.90890878 0.081261337 0.9137789 0.080894709 0.91864902 0.080541164
		 0.92351913 0.080206633 0.92838931 0.07989639 0.93325949 0.079615504 0.93812966 0.079368204
		 0.94299972 0.079158098 0.9478699 0.078988165 0.95274007 0.078860611 0.95761013 0.078776747
		 0.96248019 0.07873711 0.96735036 0.07874164 0.97222054 0.078789204 0.97709054 0.078878254
		 0.98196071 0.079006225 0.98683077 0.079170257 0.99170107 0.081261337 0.99170107 0.08094275
		 0.98683077 0.080622762 0.98196071 0.080307156 0.97709054 0.080001473 0.97222054 0.079711467
		 0.96735036 0.079442471 0.96248019 0.079199821 0.95761013 0.078988165 0.95274007 0.078812093
		 0.9478699 0.07867524 0.94299972 0.078580916 0.93812966 0.078531474 0.93325949 0.078528792
		 0.92838931 0.078573763 0.92351913 0.078666449 0.91864902 0.078806192 0.9137789 0.078991383
		 0.90890878 0.07921955 0.90403867 0.079487532 0.89916855 0.079791337 0.89429837 0.080126196
		 0.88942826 0.080486774 0.88455814 0.08086729 0.87968802 0.082783848 0.87481785 0.084306419
		 0.87481785 0.083099037 0.87968802 0.083377361 0.88455814 0.083614647 0.88942826 0.083807468
		 0.89429837 0.083953261 0.89916855 0.084050417 0.90403867 0.084098041 0.90890878 0.084096253
		 0.9137789 0.084045947 0.91864902 0.08394891 0.92351913 0.083807647 0.92838931 0.083625436
		 0.93325949 0.08340618 0.93812966 0.08315444 0.94299972 0.082875133 0.9478699 0.082573682
		 0.95274007 0.082255691 0.95761013 0.081927031 0.96248019 0.081593603 0.96735036 0.081261337
		 0.97222054 0.080935895 0.97709054 0.080622762 0.98196071 0.080327272 0.98683077 0.080054045
		 0.99170107 0.078846723 0.99170107 0.078841299 0.98683077 0.078878254 0.98196071 0.078957707
		 0.97709054 0.079079181 0.97222054 0.079241484 0.96735036 0.079442471 0.96248019 0.079679459
		 0.95761013 0.079948932 0.95274007 0.080246836 0.9478699 0.080568373 0.94299972 0.080908418
		 0.93812966 0.081261337 0.93325949 0.081621081 0.92838931 0.08198145 0.92351913 0.082336128
		 0.91864902 0.082678765 0.9137789 0.083003104 0.90890878 0.083303064 0.90403867 0.083572984
		 0.89916855 0.083807468 0.89429837 0.08400178 0.88942826 0.084151924 0.88455814 0.084254324
		 0.87968802 0.73178864 0.88381749 0.73210728 0.88831449 0.73132032 0.88831449 0.73125148
		 0.88381749 0.73325539 0.88381749 0.73284054 0.88831449 0.73474038 0.88831449 0.73525894
		 0.88381749 0.73872912 0.88381749 0.73841059 0.88831449 0.73919749 0.88831449 0.73926604
		 0.88381749 0.73726255 0.88381749 0.73767728 0.88831449 0.73577738 0.88831449 0.73525894
		 0.88381749 0.73247433 0.89281154 0.73145509 0.89281154 0.73247433 0.89281154 0.7342397
		 0.89281154 0.73804343 0.89281154 0.73906267 0.89281154 0.73804343 0.89281154 0.73627824
		 0.89281154 0.73288268 0.89730853 0.73165262 0.89730853 0.73216212 0.89730853 0.73376513
		 0.89730853;
	setAttr ".uvst[0].uvsp[500:691]" 0.7376352 0.89730853 0.73886514 0.89730853
		 0.73835564 0.89730853 0.73675281 0.89730853 0.73332453 0.90180558 0.73190838 0.90180558
		 0.73190838 0.90180558 0.73332453 0.90180558 0.73719335 0.90180558 0.73860943 0.90180558
		 0.73860943 0.90180558 0.73719335 0.90180558 0.73379159 0.90630257 0.73221695 0.90630257
		 0.73171651 0.90630257 0.73292476 0.90630257 0.73672622 0.90630257 0.73830092 0.90630257
		 0.73880124 0.90630257 0.73759311 0.90630257 0.73427546 0.91079956 0.73257214 0.91079956
		 0.73158866 0.91079956 0.73257214 0.91079956 0.73624247 0.91079956 0.73794568 0.91079956
		 0.73892915 0.91079956 0.73794568 0.91079956 0.73476744 0.91529661 0.73296684 0.91529661
		 0.73152602 0.91529661 0.73227179 0.91529661 0.73575032 0.91529661 0.73755091 0.91529661
		 0.73899186 0.91529661 0.73824596 0.91529661 0.73525894 0.91979361 0.73339355 0.91979361
		 0.73152834 0.91979361 0.73202813 0.91979361 0.73525894 0.91979361 0.73712426 0.91979361
		 0.73898947 0.91979361 0.73848963 0.91979361 0.73574126 0.92429066 0.73384452 0.92429066
		 0.73159456 0.92429066 0.73184425 0.92429066 0.7347765 0.92429066 0.73667341 0.92429066
		 0.73892331 0.92429066 0.73867357 0.92429066 0.73620653 0.92878771 0.73431122 0.92878771
		 0.73172224 0.92878771 0.73172224 0.92878771 0.73431122 0.92878771 0.73620653 0.92878771
		 0.73879552 0.92878771 0.73879552 0.92878771 0.73664695 0.9332847 0.73478544 0.9332847
		 0.73190808 0.9332847 0.73166311 0.9332847 0.73387098 0.9332847 0.73573232 0.9332847
		 0.73860967 0.9332847 0.73885477 0.9332847 0.73705506 0.93778175 0.73525894 0.93778175
		 0.73214787 0.93778175 0.73166662 0.93778175 0.73346281 0.93778175 0.73525894 0.93778175
		 0.73836994 0.93778175 0.73885119 0.93778175 0.73742473 0.9422788 0.73572326 0.9422788
		 0.73243636 0.9422788 0.73173165 0.9422788 0.73309308 0.9422788 0.7347945 0.9422788
		 0.73808146 0.9422788 0.73878622 0.9422788 0.73775005 0.94677585 0.73617083 0.94677585
		 0.73276764 0.94677585 0.73185581 0.94677585 0.73276764 0.94677585 0.73434711 0.94677585
		 0.73775005 0.94677585 0.738662 0.94677585 0.7380265 0.95127279 0.73659402 0.95127279
		 0.73313522 0.95127279 0.73203588 0.95127279 0.73249125 0.95127279 0.73392391 0.95127279
		 0.73738265 0.95127279 0.738482 0.95127279 0.73825026 0.95576984 0.73698592 0.95576984
		 0.73353195 0.95576984 0.73226768 0.95576984 0.73226768 0.95576984 0.73353195 0.95576984
		 0.73698592 0.95576984 0.73825026 0.95576984 0.73841798 0.96026689 0.73734057 0.96026689
		 0.73395038 0.96026689 0.73254609 0.96026689 0.73209977 0.96026689 0.7331773 0.96026689
		 0.73656756 0.96026689 0.73797166 0.96026689 0.73852849 0.96476376 0.73765242 0.96476376
		 0.73438287 0.96476376 0.73286545 0.96476376 0.73198938 0.96476376 0.73286545 0.96476376
		 0.73613495 0.96476376 0.73765242 0.96476376 0.73858047 0.96926093 0.73791683 0.96926093
		 0.73482168 0.96926093 0.73321939 0.96926093 0.73193729 0.96926093 0.73260093 0.96926093
		 0.7356962 0.96926093 0.73729849 0.96926093 0.73857462 0.97375786 0.73813045 0.97375786
		 0.73525894 0.97375786 0.73360097 0.97375786 0.73194319 0.97375786 0.73238742 0.97375786
		 0.73525894 0.97375786 0.7369169 0.97375786 0.73851204 0.97825485 0.73829031 0.97825485
		 0.73568714 0.97825485 0.73400331 0.97825485 0.73200583 0.97825485 0.7322275 0.97825485
		 0.73483062 0.97825485 0.73651463 0.97825485 0.73839486 0.98275185 0.73839486 0.98275185
		 0.73609912 0.98275185 0.73441863 0.98275185 0.73212296 0.98275185 0.73212296 0.98275185
		 0.73441863 0.98275185 0.73609912 0.98275185 0.73822641 0.9872489 0.73844349 0.9872489
		 0.73648816 0.9872489 0.73483956 0.9872489 0.7322914 0.9872489 0.73207438 0.9872489
		 0.73402977 0.9872489 0.73567808 0.9872489 0.73801064 0.99174595 0.73843634 0.99174595
		 0.7368477 0.99174595 0.73525894 0.99174595 0.73250717 0.99174595 0.73208147 0.99174595
		 0.73367023 0.99174595 0.73525894 0.99174595 0.73525894 0.99239349 0.7371484 0.99239349
		 0.73744071 0.99239349 0.73634988 0.99239349 0.73525894 0.99239349 0.73336947 0.99239349
		 0.73307711 0.99239349 0.73416805 0.99239349 0.73525894 0.99271721 0.73549938 0.99271721
		 0.73567533 0.99271721 0.73573983 0.99271721 0.73567533 0.99271721 0.73549938 0.99271721
		 0.73525894 0.99271721 0.73501849 0.99271721 0.73484242 0.99271721 0.73477793 0.99271721
		 0.73484242 0.99271721 0.73501849 0.99271721;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 472 ".pt";
	setAttr ".pt[0]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[1]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[2]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[3]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[4]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[5]" -type "float3" -2.9802322e-08 0 -1.4901161e-08 ;
	setAttr ".pt[6]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[7]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[8]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[9]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[10]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[11]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[12]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[13]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[14]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[15]" -type "float3" -2.9802322e-08 0 1.4901161e-08 ;
	setAttr ".pt[16]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[17]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[18]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[19]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[20]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[21]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[22]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[23]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[24]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[25]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[26]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[27]" -type "float3" -2.9802322e-08 0 -1.4901161e-08 ;
	setAttr ".pt[28]" -type "float3" -8.9406967e-08 0 0 ;
	setAttr ".pt[29]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[30]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[31]" -type "float3" -2.9802322e-08 0 -1.4901161e-08 ;
	setAttr ".pt[32]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[33]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[34]" -type "float3" -2.9802322e-08 0 1.4901161e-08 ;
	setAttr ".pt[35]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[36]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[37]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[38]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[39]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[40]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[41]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[42]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[43]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[44]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[45]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[46]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[47]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[48]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[49]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[50]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[51]" -type "float3" -2.9802322e-08 0 -1.4901161e-08 ;
	setAttr ".pt[52]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[53]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[54]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[55]" -type "float3" -2.9802322e-08 0 -1.4901161e-08 ;
	setAttr ".pt[56]" -type "float3" -8.9406967e-08 0 0 ;
	setAttr ".pt[57]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[58]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[59]" -type "float3" -2.9802322e-08 0 1.4901161e-08 ;
	setAttr ".pt[60]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[61]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[62]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[63]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[64]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[65]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[66]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[67]" -type "float3" -2.9802322e-08 0 1.4901161e-08 ;
	setAttr ".pt[68]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[69]" -type "float3" -8.9406967e-08 0 0 ;
	setAttr ".pt[70]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[71]" -type "float3" -2.9802322e-08 0 -1.4901161e-08 ;
	setAttr ".pt[72]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[73]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[74]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[75]" -type "float3" -2.9802322e-08 0 -1.4901161e-08 ;
	setAttr ".pt[76]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[77]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[78]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[79]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[80]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[81]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[82]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[83]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[84]" -type "float3" -8.9406967e-08 0 0 ;
	setAttr ".pt[85]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[86]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[87]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[88]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[89]" -type "float3" -8.9406967e-08 0 0 ;
	setAttr ".pt[90]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[91]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[92]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[93]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[94]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[95]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[96]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[97]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[98]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[99]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[100]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[101]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[102]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[103]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[104]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[105]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[106]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[107]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[108]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[109]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[110]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[111]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[112]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[113]" -type "float3" -8.9406967e-08 0 0 ;
	setAttr ".pt[114]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[115]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[116]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[117]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[118]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[119]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[120]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[121]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[122]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[123]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[124]" -type "float3" -8.9406967e-08 0 0 ;
	setAttr ".pt[125]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[126]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[127]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[128]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[129]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[130]" -type "float3" -2.9802322e-08 0 -1.4901161e-08 ;
	setAttr ".pt[131]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[132]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[133]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[134]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[135]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[136]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[137]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[138]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[139]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[140]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[141]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[142]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[143]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[144]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[145]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[146]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[147]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[148]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[149]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[150]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[151]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[152]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[153]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[154]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[155]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[156]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[157]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[158]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[159]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[160]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[161]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[162]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[163]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[164]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[165]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[166]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[167]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[168]" -type "float3" -8.9406967e-08 0 0 ;
	setAttr ".pt[169]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[170]" -type "float3" -2.9802322e-08 0 -1.4901161e-08 ;
	setAttr ".pt[171]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[172]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[173]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[174]" -type "float3" -2.9802322e-08 0 -1.4901161e-08 ;
	setAttr ".pt[175]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[176]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[177]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[178]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[179]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[180]" -type "float3" -8.9406967e-08 0 0 ;
	setAttr ".pt[181]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[182]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[183]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[184]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[185]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[186]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[187]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[188]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[189]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[190]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[191]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[192]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[193]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[194]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[195]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[196]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[197]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[198]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[199]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[200]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[201]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[202]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[203]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[204]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[205]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[206]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[207]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[208]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[209]" -type "float3" -8.9406967e-08 0 0 ;
	setAttr ".pt[210]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[211]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[212]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[213]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[214]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[215]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[216]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[217]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[218]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[219]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[220]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[221]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[222]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[223]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[224]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[225]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[226]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[227]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[228]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[229]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[230]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[231]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[232]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[233]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[234]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[235]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[236]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[237]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[238]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[239]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[240]" -type "float3" -8.9406967e-08 0 0 ;
	setAttr ".pt[241]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[242]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[243]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[244]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[245]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[246]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[247]" -type "float3" -8.9406967e-08 0 0 ;
	setAttr ".pt[248]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[249]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[250]" -type "float3" -2.9802322e-08 0 1.4901161e-08 ;
	setAttr ".pt[251]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[252]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[253]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[254]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[255]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[256]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[257]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[258]" -type "float3" -2.9802322e-08 0 1.4901161e-08 ;
	setAttr ".pt[259]" -type "float3" -2.9802322e-08 0 1.4901161e-08 ;
	setAttr ".pt[260]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[261]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[262]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[263]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[264]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[265]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[266]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[267]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[268]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[269]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[270]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[271]" -type "float3" -2.9802322e-08 0 -1.4901161e-08 ;
	setAttr ".pt[272]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[273]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[274]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[275]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[276]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[277]" -type "float3" -2.9802322e-08 0 -1.4901161e-08 ;
	setAttr ".pt[278]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[279]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[280]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[281]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[282]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[283]" -type "float3" -2.9802322e-08 0 -1.4901161e-08 ;
	setAttr ".pt[284]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[285]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[286]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[287]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[288]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[289]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[290]" -type "float3" -2.9802322e-08 0 -1.4901161e-08 ;
	setAttr ".pt[291]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[292]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[293]" -type "float3" -2.9802322e-08 0 -1.4901161e-08 ;
	setAttr ".pt[294]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[295]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[296]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[297]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[298]" -type "float3" -2.9802322e-08 0 1.4901161e-08 ;
	setAttr ".pt[299]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[300]" -type "float3" -8.9406967e-08 0 0 ;
	setAttr ".pt[301]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[302]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[303]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[304]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[305]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[306]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[307]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[308]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[309]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[310]" -type "float3" -8.9406967e-08 0 0 ;
	setAttr ".pt[311]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[312]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[313]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[314]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[315]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[316]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[317]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[318]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[319]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[320]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[321]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[322]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[323]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[324]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[325]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[326]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[327]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[328]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[329]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[330]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[331]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[332]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[333]" -type "float3" -8.9406967e-08 0 0 ;
	setAttr ".pt[334]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[335]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[336]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[337]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[338]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[339]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[340]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[341]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[342]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[343]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[344]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[345]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[346]" -type "float3" -8.9406967e-08 0 0 ;
	setAttr ".pt[347]" -type "float3" -8.9406967e-08 0 0 ;
	setAttr ".pt[348]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[349]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[350]" -type "float3" -2.9802322e-08 0 -1.4901161e-08 ;
	setAttr ".pt[351]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[352]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[353]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[354]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[355]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[356]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[357]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[358]" -type "float3" -2.9802322e-08 0 1.4901161e-08 ;
	setAttr ".pt[359]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[360]" -type "float3" -2.9802322e-08 0 -1.4901161e-08 ;
	setAttr ".pt[361]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[362]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[363]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[364]" -type "float3" -2.9802322e-08 0 -1.4901161e-08 ;
	setAttr ".pt[365]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[366]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[367]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[368]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[369]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[370]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[371]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[372]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[373]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[374]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[375]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[376]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[377]" -type "float3" -2.9802322e-08 0 -1.4901161e-08 ;
	setAttr ".pt[378]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[379]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[380]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[381]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[382]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[383]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[384]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[385]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[386]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[387]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[388]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[389]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[390]" -type "float3" -2.9802322e-08 0 -1.4901161e-08 ;
	setAttr ".pt[391]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[392]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[393]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[394]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[395]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[396]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[397]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[398]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[399]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[408]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[409]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[410]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[411]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[412]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[413]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[414]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[415]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[416]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[417]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[418]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[419]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[420]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[421]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[422]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[423]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[424]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[425]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[426]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[427]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[428]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[429]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[430]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[431]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[432]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[433]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[434]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[435]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[436]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[437]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[438]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[439]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[440]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[441]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[442]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[443]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[444]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[445]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[446]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[447]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[448]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[449]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[450]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[451]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[452]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[453]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[454]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[455]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[456]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[457]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[458]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[459]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[460]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[461]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[462]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[463]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[464]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[465]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[466]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[467]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[468]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[469]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[470]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[471]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[472]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[473]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[474]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[475]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[476]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[477]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[478]" -type "float3" -8.9406967e-08 0 0 ;
	setAttr ".pt[479]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr -s 480 ".vt";
	setAttr ".vt[0:165]"  0.099999972 0 0 0.086602509 0 -0.050000001 -3.4173461e-08 0 -0.1
		 -0.050000038 0 -0.086602539 -0.10000003 0 8.742278e-09 -0.086602561 0 0.050000004
		 -2.8609835e-08 0 0.1 0.049999963 0 0.086602546 -0.07929451 2.000000238419 6.8842323e-09
		 -0.039647266 2.000000238419 -0.06867104 -3.6341643e-08 2.000000238419 -0.079294473
		 0.068670996 2.000000238419 -0.039647263 0.079294451 2.000000238419 -1.3593036e-08
		 0.039647222 2.000000238419 0.068671033 -1.489056e-08 2.000000238419 0.07929448 -0.068671063 2.000000238419 0.039647259
		 0.098289125 0.083333313 -0.012940052 0.060350943 0.083333313 0.078650869 0.012940023 0.083333313 0.098289154
		 -0.078650884 0.083333313 0.060350996 -0.098289184 0.083333313 0.012940059 -0.060351014 0.083333313 -0.078650862
		 -0.012940085 0.083333313 -0.098289154 0.078650832 0.083333313 -0.060350981 0.09492591 0.16666669 -0.025435328
		 0.069490574 0.16666669 0.069490612 0.025435301 0.16666669 0.09492594 -0.069490626 0.16666669 0.069490604
		 -0.094926022 0.16666669 0.025435338 -0.069490641 0.16666669 -0.069490604 -0.025435364 0.16666669 -0.09492594
		 0.069490574 0.16666669 -0.069490619 0.089996748 0.25000006 -0.037277889 0.077281952 0.25000006 0.059300553
		 0.037277859 0.25000006 0.089996792 -0.059300564 0.25000006 0.077282004 -0.0899968 0.25000006 0.037277896
		 -0.077282026 0.25000006 -0.059300549 -0.037277922 0.25000006 -0.08999677 0.059300523 0.25000006 -0.077281989
		 0.083613947 0.33333331 -0.048274528 0.083613917 0.33333331 0.048274569 0.048274502 0.33333331 0.083613977
		 -0.048274577 0.33333331 0.083613962 -0.083613999 0.33333331 0.048274536 -0.083613984 0.33333331 -0.048274554
		 -0.048274562 0.33333331 -0.083613969 0.048274528 0.33333331 -0.083613947 0.075913064 0.41666669 -0.058250148
		 0.088402621 0.41666669 0.036617603 0.058250118 0.41666669 0.075913094 -0.036617607 0.41666669 0.088402651
		 -0.075913116 0.41666669 0.058250155 -0.088402689 0.41666669 -0.036617581 -0.058250181 0.41666669 -0.075913087
		 0.036617558 0.41666669 -0.088402666 0.067050345 0.50000006 -0.067050435 0.091592565 0.50000006 0.02454217
		 0.067050405 0.50000006 0.067050435 -0.024542173 0.50000006 0.091592617 -0.067050457 0.50000006 0.067050442
		 -0.091592625 0.50000006 -0.024542155 -0.067050472 0.50000006 -0.067050427 0.024542131 0.50000006 -0.091592595
		 0.05719975 0.58333343 -0.074544184 0.093157008 0.58333343 0.012264374 0.074544154 0.58333343 0.05719978
		 -0.012264376 0.58333343 0.09315706 -0.057199799 0.58333343 0.074544191 -0.093157135 0.58333343 -0.012264363
		 -0.074544214 0.58333343 -0.057199772 0.01226434 0.58333343 -0.09315706 0.046549052 0.66666681 -0.080625378
		 0.093098134 0.66666681 9.0548697e-09 0.08062534 0.66666681 0.046549078 -9.8301882e-09 0.66666681 0.093098156
		 -0.046549097 0.66666681 0.080625378 -0.093098193 0.66666681 8.7251975e-09 -0.080625407 0.66666681 -0.046549078
		 -3.057394e-08 0.66666681 -0.093098164 0.035296947 0.75000006 -0.085214429 0.091446325 0.75000006 -0.012039126
		 0.085214399 0.75000006 0.035296977 0.012039126 0.75000006 0.091446355 -0.035297059 0.75000006 0.085214436
		 -0.091446377 0.75000006 0.012039149 -0.085214458 0.75000006 -0.035296969 -0.012039164 0.75000006 -0.09144634
		 0.023648933 0.83333343 -0.088259272 0.088259168 0.83333343 -0.023649028 0.088259242 0.83333343 0.023648962
		 0.023649022 0.83333343 0.08825925 -0.023648983 0.83333343 0.08825928 -0.08825928 0.83333343 0.023649041
		 -0.088259302 0.83333343 -0.023648955 -0.023649061 0.83333343 -0.08825925 0.01181388 0.91666681 -0.089735657
		 0.083620287 0.91666681 -0.034636673 0.08973562 0.91666681 0.011813906 0.034636673 0.91666681 0.08362031
		 -0.011813926 0.91666681 0.089735657 -0.08362034 0.91666681 0.034636691 -0.089735687 0.91666681 -0.011813903
		 -0.03463671 0.91666681 -0.08362031 -2.9192979e-08 1 -0.089647256 0.077636771 1 -0.044823613
		 0.089647219 1 -2.3005464e-10 0.044823617 1 0.077636793 -1.7891159e-08 1 0.089647248
		 -0.077636823 1 0.044823632 -0.089647286 1 5.6742344e-09 -0.04482365 1 -0.077636793
		 -0.011588717 1.083333492 -0.088024944 0.070437409 1.083333492 -0.054048561 0.088024914 1.083333492 -0.011588687
		 0.054048557 1.083333492 0.070437476 0.011588671 1.083333492 0.088024944 -0.070437513 1.083333492 0.054048579
		 -0.088024974 1.083333492 0.011588695 -0.054048598 1.083333492 -0.070437491 -0.022755856 1.16666675 -0.08492592
		 0.06217007 1.16666675 -0.062170085 0.08492589 1.16666675 -0.022755828 0.062170073 1.16666675 0.062170085
		 0.02275575 1.16666675 0.08492592 -0.062170122 1.16666675 0.062170096 -0.08492595 1.16666675 0.022755837
		 -0.062170114 1.16666675 -0.062170092 -0.033316098 1.25000024 -0.080432072 0.05299817 1.25000024 -0.069068596
		 0.080432042 1.25000024 -0.033316083 0.069068588 1.25000024 0.052998178 0.033316046 1.25000024 0.080432065
		 -0.052998211 1.25000024 0.069068611 -0.080432102 1.25000024 0.033316076 -0.069068626 1.25000024 -0.052998189
		 -0.043098181 1.33333349 -0.074648209 0.043098144 1.33333349 -0.074648201 0.074648172 1.33333349 -0.043098152
		 0.074648187 1.33333349 0.043098155 0.043098133 1.33333349 0.074648201 -0.043098193 1.33333349 0.074648209
		 -0.074648231 1.33333349 0.043098163 -0.074648224 1.33333349 -0.04309817 -0.051947843 1.41666675 -0.067699693
		 0.032655735 1.41666675 -0.078837968 0.067699663 1.41666675 -0.05194781 0.078837954 1.41666675 0.032655735
		 0.051947791 1.41666675 0.067699686 -0.032655776 1.41666675 0.078837983 -0.067699723 1.41666675 0.051947821
		 -0.078837998 1.41666675 -0.032655749 -0.059729949 1.5 -0.059729923 0.02186265 1.5 -0.08159259
		 0.059729889 1.5 -0.059729915 0.081592575 1.5 0.021862652 0.059729896 1.5 0.059729911
		 -0.021862691 1.5 0.081592597 -0.059729949 1.5 0.059729926 -0.081592612 1.5 -0.021862669
		 -0.066330805 1.58333349 -0.050897427 0.010913057 1.58333349 -0.082892857 0.050897393 1.58333349 -0.066330776
		 0.082892835 1.58333349 0.010913058 0.066330753 1.58333349 0.050897416 -0.010913098 1.58333349 0.082892857;
	setAttr ".vt[166:331]" -0.050897453 1.58333349 0.066330783 -0.08289288 1.58333349 -0.010913077
		 -0.071659707 1.66666675 -0.041372713 -9.5910142e-09 1.66666675 -0.082745403 0.041372679 1.66666675 -0.071659632
		 0.082745381 1.66666675 -6.8406973e-09 0.071659595 1.66666675 0.041372702 -3.0813116e-08 1.66666675 0.082745411
		 -0.041372735 1.66666675 0.071659617 -0.082745433 1.66666675 -9.6235517e-09 -0.075649776 1.75000024 -0.031335134
		 -0.010687867 1.75000024 -0.081182167 0.031335104 1.75000024 -0.075649738 0.081182145 1.75000024 -0.010687867
		 0.075649656 1.75000024 0.031335127 0.010687826 1.75000024 0.081182167 -0.03133516 1.75000024 0.075649753
		 -0.081182197 1.75000024 0.010687848 -0.078259274 1.83333349 -0.020969508 -0.020969514 1.83333349 -0.078259259
		 0.020969477 1.83333349 -0.078259237 0.078259222 1.83333349 -0.020969514 0.078259215 1.83333349 0.020969499
		 0.020969473 1.83333349 0.078259252 -0.020969532 1.83333349 0.078259245 -0.078259282 1.83333349 0.020969495
		 -0.079471491 1.91666675 -0.010462605 -0.030674869 1.91666675 -0.07405562 0.010462575 1.91666675 -0.079471454
		 0.074055582 1.91666675 -0.030674869 0.079471432 1.91666675 0.010462595 0.030674828 1.91666675 0.074055612
		 -0.010462627 1.91666675 0.079471469 -0.074055642 1.91666675 0.030674849 0.10800727 0.010106623 0.010323178
		 0.10687178 0.085011542 -0.0018275175 0.065123588 0.010091186 0.084251985 0.074290335 0.081802189 0.07688728
		 0.10486279 0.16836959 -0.015540833 0.08306881 0.16511071 0.065921545 0.1011399 0.25169033 -0.02876295
		 0.09027832 0.24845666 0.053987511 0.095773235 0.33501107 -0.041284796 0.095805414 0.33180267 0.041308437
		 0.088880986 0.41833168 -0.052905243 0.099580169 0.41514856 0.028117619 0.080605596 0.5016523 -0.063441895
		 0.1015643 0.49849457 0.014653903 0.071110785 0.58497304 -0.072733909 0.10175176 0.58184057 0.0011572214
		 0.060578391 0.66829377 -0.080644555 0.10016834 0.66518646 -0.012135705 0.04920499 0.75161439 -0.087063
		 0.096870556 0.74853247 -0.024995416 0.037198119 0.83493501 -0.091905929 0.09194427 0.83187848 -0.037203807
		 0.024772748 0.91825563 -0.095118359 0.085502744 0.91522449 -0.048557565 0.012147106 1.0015761852 -0.096674316
		 0.077684157 0.9985705 -0.058871932 -0.00046089385 1.084896803 -0.096576549 0.068648756 1.081916571 -0.067983419
		 -0.012837541 1.16821766 -0.094856232 0.058575734 1.1652627 -0.075752504 -0.02477685 1.25153828 -0.091571651
		 0.047659662 1.24860859 -0.082065627 -0.036084022 1.33485866 -0.086806946 0.036106825 1.33195472 -0.086836897
		 -0.046578757 1.41817927 -0.080670051 0.024131328 1.41530061 -0.090009242 -0.056097839 1.50149989 -0.07329046
		 0.011951184 1.49864674 -0.091554768 -0.06449791 1.58482051 -0.064816602 -0.0002156347 1.58199286 -0.091474995
		 -0.071657531 1.66814113 -0.055412836 -0.012155204 1.66533899 -0.089800194 -0.077478565 1.75146174 -0.045256414
		 -0.023661219 1.74868512 -0.086588509 -0.081887983 1.83478212 -0.03453416 -0.034538619 1.83203101 -0.081924297
		 -0.084847488 1.91806507 -0.023449242 -0.044627123 1.91541529 -0.075936258 -0.085121617 1.99009657 -0.013954277
		 -0.052879278 1.99010658 -0.070459291 -0.010323209 0.010106623 0.10800732 0.0018274868 0.085011542 0.10687181
		 -0.084252 0.010091186 0.065123647 -0.076887287 0.081802189 0.074290395 0.015540803 0.16836959 0.10486282
		 -0.065921552 0.16511071 0.083068848 0.028762916 0.25169033 0.10113993 -0.053987525 0.24845666 0.090278372
		 0.041284766 0.33501107 0.095773287 -0.04130844 0.33180267 0.095805533 0.052905209 0.41833168 0.088881016
		 -0.028117619 0.41514856 0.099580206 0.063441865 0.5016523 0.080605626 -0.014653903 0.49849457 0.10156433
		 0.072733879 0.58497304 0.071110815 -0.0011572223 0.58184057 0.1017518 0.080644518 0.66829377 0.060578417
		 0.012135707 0.66518646 0.10016838 0.08706297 0.75161439 0.04920502 0.024995416 0.74853247 0.096870586
		 0.091905899 0.83493501 0.037198152 0.037203804 0.83187848 0.09194427 0.095118321 0.91825563 0.024772778
		 0.048557565 0.91522449 0.085502766 0.096674271 1.0015761852 0.012147137 0.05887194 0.9985705 0.077684171
		 0.096576519 1.084896803 -0.00046086125 0.067983411 1.081916571 0.068648748 0.094856195 1.16821766 -0.012837511
		 0.075752489 1.1652627 0.058575749 0.091571622 1.25153828 -0.02477682 0.08206562 1.24860859 0.047659665
		 0.086806916 1.33485866 -0.036083993 0.086836882 1.33195472 0.036106817 0.080670014 1.41817927 -0.046578724
		 0.09000922 1.41530061 0.024131324 0.07329043 1.50149989 -0.056097802 0.091554746 1.49864674 0.011951182
		 0.064816572 1.58482051 -0.064497873 0.091474973 1.58199286 -0.0002156375 0.055412803 1.66814113 -0.071657456
		 0.089800172 1.66533899 -0.012155204 0.045256384 1.75146174 -0.077478528 0.086588487 1.74868512 -0.023661233
		 0.034534127 1.83478212 -0.081887946 0.08192426 1.83203101 -0.034538623 0.023449212 1.91806507 -0.08484745
		 0.075936213 1.91541529 -0.044627059 0.01395425 1.99009657 -0.085121565 0.070459247 1.99010658 -0.052879274
		 -0.10800739 0.010106623 -0.010323172 -0.10687184 0.085011542 0.0018275222 -0.065123662 0.010091186 -0.084251978
		 -0.07429041 0.081802189 -0.076887272 -0.10486285 0.16836959 0.015540838 -0.08306887 0.16511071 -0.06592153
		 -0.10113995 0.25169033 0.028762951 -0.090278395 0.24845666 -0.053987511 -0.095773287 0.33501107 0.0412848
		 -0.095805533 0.33180267 -0.041308422 -0.088881098 0.41833168 0.05290525 -0.099580236 0.41514856 -0.028117597
		 -0.080605648 0.5016523 0.063441902 -0.10156436 0.49849457 -0.014653889 -0.071110837 0.58497304 0.072733916
		 -0.10175183 0.58184057 -0.0011572102 -0.060578436 0.66829377 0.080644555 -0.1001684 0.66518646 0.012135724
		 -0.049205046 0.75161439 0.087063 -0.096870609 0.74853247 0.024995439 -0.037198175 0.83493501 0.091905929
		 -0.091944322 0.83187848 0.037203822 -0.024772793 0.91825563 0.095118359 -0.085502796 0.91522449 0.04855758
		 -0.012147154 1.0015761852 0.096674301 -0.077684209 0.9985705 0.058871951 0.00046084635 1.084896803 0.096576549
		 -0.0686488 1.081916571 0.067983441 0.012837495 1.16821766 0.094856232 -0.058575794 1.1652627 0.075752512
		 0.024776798 1.25153828 0.091571644 -0.047659703 1.24860859 0.082065634;
	setAttr ".vt[332:479]" 0.036083974 1.33485866 0.086806946 -0.036106937 1.33195472 0.086836904
		 0.046578705 1.41817927 0.080670036 -0.024131369 1.41530061 0.090009257 0.056097787 1.50149989 0.073290445
		 -0.011951227 1.49864674 0.091554776 0.064497858 1.58482051 0.064816594 0.00021559279 1.58199286 0.091474988
		 0.071657419 1.66814113 0.055412825 0.012155163 1.66533899 0.089800209 0.077478506 1.75146174 0.045256406
		 0.023661178 1.74868512 0.086588509 0.081887923 1.83478212 0.034534149 0.034538582 1.83203101 0.081924297
		 0.084847368 1.91806507 0.023449231 0.044626959 1.91541529 0.07593625 0.085121557 1.99009657 0.013954271
		 0.052879233 1.99010658 0.070459284 0.010323145 0.010106564 -0.10800732 -0.0018275483 0.085011542 -0.10687181
		 0.084251948 0.010091186 -0.065123633 0.076887242 0.081802189 -0.07429038 -0.015540866 0.16836959 -0.10486282
		 0.0659215 0.16511071 -0.08306884 -0.028762981 0.25169033 -0.10113992 0.053987481 0.24845666 -0.090278357
		 -0.041284829 0.33501107 -0.095773242 0.041308396 0.33180267 -0.095805496 -0.052905276 0.41833168 -0.088881023
		 0.028117575 0.41514856 -0.099580199 -0.063441932 0.5016523 -0.080605619 0.014653864 0.49849457 -0.10156433
		 -0.072733939 0.58497304 -0.071110822 0.0011571888 0.58184057 -0.1017518 -0.080644585 0.66829377 -0.060578417
		 -0.012135744 0.66518646 -0.10016837 -0.087063029 0.75161439 -0.049205013 -0.024995454 0.74853247 -0.096870571
		 -0.091905959 0.83493501 -0.037198145 -0.037203841 0.83187848 -0.091944292 -0.095118389 0.91825563 -0.024772774
		 -0.048557602 0.91522449 -0.085502766 -0.096674331 1.0015761852 -0.012147132 -0.05887197 0.9985705 -0.077684179
		 -0.096576579 1.084896803 0.00046086963 -0.067983456 1.081916571 -0.068648793 -0.094856255 1.16821766 0.012837521
		 -0.075752534 1.1652627 -0.058575764 -0.091571674 1.25153828 0.024776828 -0.082065649 1.24860859 -0.04765968
		 -0.086806968 1.33485866 0.036084 -0.086836919 1.33195472 -0.036106855 -0.080670074 1.41817927 0.046578735
		 -0.090009272 1.41530061 -0.024131345 -0.07329049 1.50149989 0.056097813 -0.091554791 1.49864674 -0.011951206
		 -0.064816631 1.58482051 0.064497881 -0.091475017 1.58199286 0.00021561421 -0.055412855 1.66814113 0.071657442
		 -0.089800231 1.66533899 0.012155184 -0.04525644 1.75146174 0.077478543 -0.086588539 1.74868512 0.0236612
		 -0.034534182 1.83478212 0.081887953 -0.081924319 1.83203101 0.034538604 -0.023449264 1.91806507 0.084847465
		 -0.07593628 1.91541529 0.044627041 -0.0139543 1.99009657 0.085121587 -0.070459314 1.99010658 0.052879255
		 -0.054447852 2.012000322 3.8177972e-09 -0.027223922 2.012000322 -0.047153231 -8.4558414e-09 2.012000322 -0.054447845
		 0.04715322 2.012000322 -0.027223943 0.054447852 2.012000322 -1.0143297e-08 0.027223935 2.012000322 0.047153223
		 1.1845327e-08 2.012000322 0.054447852 -0.047153223 2.012000322 0.027223928 -0.012001559 2.018000364 -7.6588513e-10
		 -0.010393664 2.018000364 -0.0060007535 -0.0060007907 2.018000364 -0.010393634 -4.2841844e-08 2.018000364 -0.012001526
		 0.0060007442 2.018000364 -0.01039362 0.010393601 2.018000364 -0.0060007703 0.012001492 2.018000364 -8.1788629e-09
		 0.010393593 2.018000364 0.006000774 0.0060007405 2.018000364 0.010393631 -2.1231052e-08 2.018000364 0.012001529
		 -0.0060007907 2.018000364 0.010393631 -0.010393661 2.018000364 0.0060007628 -0.012001559 2.1900003 -7.6588513e-10
		 -0.010393664 2.1900003 -0.0060007535 -0.0060007907 2.1900003 -0.010393634 -4.2841844e-08 2.1900003 -0.012001526
		 0.0060007442 2.1900003 -0.01039362 0.010393601 2.1900003 -0.0060007703 0.012001492 2.1900003 -8.1788629e-09
		 0.010393593 2.1900003 0.006000774 0.0060007405 2.1900003 0.010393631 -2.1231052e-08 2.1900003 0.012001529
		 -0.0060007907 2.1900003 0.010393631 -0.010393661 2.1900003 0.0060007628 -0.017848885 2.050208092 -0.0070420019
		 -0.016205907 2.049582481 -0.013000503 -0.01180743 2.049482584 -0.017386636 -0.0058320579 2.049935102 -0.019025089
		 0.00011916988 2.050818682 -0.017476868 0.0044515668 2.051896572 -0.013156832 0.0060042944 2.052880049 -0.0072225025
		 0.0043613114 2.053505421 -0.0012639713 -3.7145899e-05 2.053605318 0.0031221369 -0.0060125305 2.053153038 0.0047605969
		 -0.011963742 2.052269459 0.0032123828 -0.01629615 2.051191568 -0.0011076707 -0.019717941 2.086139679 -0.0092929332
		 -0.018109486 2.086060286 -0.015293009 -0.013716522 2.086047411 -0.019685782 -0.0077161794 2.08610487 -0.021294164
		 -0.0017161872 2.086217403 -0.019687213 0.0026757009 2.086354256 -0.015295533 0.0042827064 2.086479425 -0.0092958352
		 0.002674245 2.086558819 -0.0032957294 -0.0017186984 2.086571455 0.0010970198 -0.0077190534 2.086513996 0.0027054076
		 -0.013719029 2.086401701 0.0010984663 -0.018110929 2.08626461 -0.0032932337 -0.018893976 2.12177968 -0.0083006211
		 -0.017279109 2.12205958 -0.014292977 -0.012885121 2.12210417 -0.018684518 -0.0068894159 2.12190175 -0.020298483
		 -0.00089847832 2.12150669 -0.018702438 0.0034823632 2.12102461 -0.01432406 0.0050792904 2.12058496 -0.0083365003
		 0.0034644187 2.12030506 -0.0023441154 -0.00092954858 2.12026048 0.0020474002 -0.0069252672 2.12046289 0.0036613718
		 -0.012916188 2.12085795 0.0020653354 -0.017297041 2.12134004 -0.0023130605 -0.016188078 2.15702438 -0.0050418694
		 -0.014552374 2.15758181 -0.011009133 -0.010155058 2.15767074 -0.015396664 -0.0041744234 2.15726781 -0.017028777
		 0.0017870825 2.15648055 -0.015468175 0.0061320178 2.15551996 -0.011133037 0.0076961853 2.15464377 -0.0051849289
		 0.0060604778 2.15408635 0.00078236411 0.0016631818 2.15399742 0.0051698703 -0.0043174662 2.15440059 0.0068019899
		 -0.010279015 2.15518785 0.0052413964 -0.014623902 2.1561482 0.00090624008;
	setAttr -s 948 ".ed";
	setAttr ".ed[0:165]"  7 17 0 17 18 0 18 6 0 6 7 0 5 19 0 19 20 0 20 4 0 4 5 0
		 3 21 0 21 22 0 22 2 0 2 3 0 1 23 0 23 16 0 16 0 0 0 1 0 17 25 0 25 26 0 26 18 0 19 27 0
		 27 28 0 28 20 0 21 29 0 29 30 0 30 22 0 23 31 0 31 24 0 24 16 0 25 33 0 33 34 0 34 26 0
		 27 35 0 35 36 0 36 28 0 29 37 0 37 38 0 38 30 0 31 39 0 39 32 0 32 24 0 33 41 0 41 42 0
		 42 34 0 35 43 0 43 44 0 44 36 0 37 45 0 45 46 0 46 38 0 39 47 0 47 40 0 40 32 0 41 49 0
		 49 50 0 50 42 0 43 51 0 51 52 0 52 44 0 45 53 0 53 54 0 54 46 0 47 55 0 55 48 0 48 40 0
		 49 57 0 57 58 0 58 50 0 51 59 0 59 60 0 60 52 0 53 61 0 61 62 0 62 54 0 55 63 0 63 56 0
		 56 48 0 57 65 0 65 66 0 66 58 0 59 67 0 67 68 0 68 60 0 61 69 0 69 70 0 70 62 0 63 71 0
		 71 64 0 64 56 0 65 73 0 73 74 0 74 66 0 67 75 0 75 76 0 76 68 0 69 77 0 77 78 0 78 70 0
		 71 79 0 79 72 0 72 64 0 73 81 0 81 82 0 82 74 0 75 83 0 83 84 0 84 76 0 77 85 0 85 86 0
		 86 78 0 79 87 0 87 80 0 80 72 0 81 89 0 89 90 0 90 82 0 83 91 0 91 92 0 92 84 0 85 93 0
		 93 94 0 94 86 0 87 95 0 95 88 0 88 80 0 89 97 0 97 98 0 98 90 0 91 99 0 99 100 0
		 100 92 0 93 101 0 101 102 0 102 94 0 95 103 0 103 96 0 96 88 0 97 105 0 105 106 0
		 106 98 0 99 107 0 107 108 0 108 100 0 101 109 0 109 110 0 110 102 0 103 111 0 111 104 0
		 104 96 0 105 113 0 113 114 0 114 106 0 107 115 0 115 116 0 116 108 0 109 117 0 117 118 0
		 118 110 0 111 119 0 119 112 0 112 104 0 113 121 0 121 122 0 122 114 0 115 123 0 123 124 0
		 124 116 0;
	setAttr ".ed[166:331]" 117 125 0 125 126 0 126 118 0 119 127 0 127 120 0 120 112 0
		 121 129 0 129 130 0 130 122 0 123 131 0 131 132 0 132 124 0 125 133 0 133 134 0 134 126 0
		 127 135 0 135 128 0 128 120 0 129 137 0 137 138 0 138 130 0 131 139 0 139 140 0 140 132 0
		 133 141 0 141 142 0 142 134 0 135 143 0 143 136 0 136 128 0 137 145 0 145 146 0 146 138 0
		 139 147 0 147 148 0 148 140 0 141 149 0 149 150 0 150 142 0 143 151 0 151 144 0 144 136 0
		 145 153 0 153 154 0 154 146 0 147 155 0 155 156 0 156 148 0 149 157 0 157 158 0 158 150 0
		 151 159 0 159 152 0 152 144 0 153 161 0 161 162 0 162 154 0 155 163 0 163 164 0 164 156 0
		 157 165 0 165 166 0 166 158 0 159 167 0 167 160 0 160 152 0 161 169 0 169 170 0 170 162 0
		 163 171 0 171 172 0 172 164 0 165 173 0 173 174 0 174 166 0 167 175 0 175 168 0 168 160 0
		 169 177 0 177 178 0 178 170 0 171 179 0 179 180 0 180 172 0 173 181 0 181 182 0 182 174 0
		 175 183 0 183 176 0 176 168 0 177 185 0 185 186 0 186 178 0 179 187 0 187 188 0 188 180 0
		 181 189 0 189 190 0 190 182 0 183 191 0 191 184 0 184 176 0 185 193 0 193 194 0 194 186 0
		 187 195 0 195 196 0 196 188 0 189 197 0 197 198 0 198 190 0 191 199 0 199 192 0 192 184 0
		 193 9 0 9 10 0 10 194 0 195 11 0 11 12 0 12 196 0 197 13 0 13 14 0 14 198 0 199 15 0
		 15 8 0 8 192 0 200 201 0 201 203 0 203 202 0 202 200 0 201 204 0 204 205 0 205 203 0
		 204 206 0 206 207 0 207 205 0 206 208 0 208 209 0 209 207 0 208 210 0 210 211 0 211 209 0
		 210 212 0 212 213 0 213 211 0 212 214 0 214 215 0 215 213 0 214 216 0 216 217 0 217 215 0
		 216 218 0 218 219 0 219 217 0 218 220 0 220 221 0 221 219 0 220 222 0 222 223 0 223 221 0
		 222 224 0 224 225 0 225 223 0 224 226 0 226 227 0 227 225 0;
	setAttr ".ed[332:497]" 226 228 0 228 229 0 229 227 0 228 230 0 230 231 0 231 229 0
		 230 232 0 232 233 0 233 231 0 232 234 0 234 235 0 235 233 0 234 236 0 236 237 0 237 235 0
		 236 238 0 238 239 0 239 237 0 238 240 0 240 241 0 241 239 0 240 242 0 242 243 0 243 241 0
		 242 244 0 244 245 0 245 243 0 244 246 0 246 247 0 247 245 0 246 248 0 248 249 0 249 247 0
		 250 251 0 251 253 0 253 252 0 252 250 0 251 254 0 254 255 0 255 253 0 254 256 0 256 257 0
		 257 255 0 256 258 0 258 259 0 259 257 0 258 260 0 260 261 0 261 259 0 260 262 0 262 263 0
		 263 261 0 262 264 0 264 265 0 265 263 0 264 266 0 266 267 0 267 265 0 266 268 0 268 269 0
		 269 267 0 268 270 0 270 271 0 271 269 0 270 272 0 272 273 0 273 271 0 272 274 0 274 275 0
		 275 273 0 274 276 0 276 277 0 277 275 0 276 278 0 278 279 0 279 277 0 278 280 0 280 281 0
		 281 279 0 280 282 0 282 283 0 283 281 0 282 284 0 284 285 0 285 283 0 284 286 0 286 287 0
		 287 285 0 286 288 0 288 289 0 289 287 0 288 290 0 290 291 0 291 289 0 290 292 0 292 293 0
		 293 291 0 292 294 0 294 295 0 295 293 0 294 296 0 296 297 0 297 295 0 296 298 0 298 299 0
		 299 297 0 300 301 0 301 303 0 303 302 0 302 300 0 301 304 0 304 305 0 305 303 0 304 306 0
		 306 307 0 307 305 0 306 308 0 308 309 0 309 307 0 308 310 0 310 311 0 311 309 0 310 312 0
		 312 313 0 313 311 0 312 314 0 314 315 0 315 313 0 314 316 0 316 317 0 317 315 0 316 318 0
		 318 319 0 319 317 0 318 320 0 320 321 0 321 319 0 320 322 0 322 323 0 323 321 0 322 324 0
		 324 325 0 325 323 0 324 326 0 326 327 0 327 325 0 326 328 0 328 329 0 329 327 0 328 330 0
		 330 331 0 331 329 0 330 332 0 332 333 0 333 331 0 332 334 0 334 335 0 335 333 0 334 336 0
		 336 337 0 337 335 0 336 338 0 338 339 0 339 337 0 338 340 0 340 341 0;
	setAttr ".ed[498:663]" 341 339 0 340 342 0 342 343 0 343 341 0 342 344 0 344 345 0
		 345 343 0 344 346 0 346 347 0 347 345 0 346 348 0 348 349 0 349 347 0 350 351 0 351 353 0
		 353 352 0 352 350 0 351 354 0 354 355 0 355 353 0 354 356 0 356 357 0 357 355 0 356 358 0
		 358 359 0 359 357 0 358 360 0 360 361 0 361 359 0 360 362 0 362 363 0 363 361 0 362 364 0
		 364 365 0 365 363 0 364 366 0 366 367 0 367 365 0 366 368 0 368 369 0 369 367 0 368 370 0
		 370 371 0 371 369 0 370 372 0 372 373 0 373 371 0 372 374 0 374 375 0 375 373 0 374 376 0
		 376 377 0 377 375 0 376 378 0 378 379 0 379 377 0 378 380 0 380 381 0 381 379 0 380 382 0
		 382 383 0 383 381 0 382 384 0 384 385 0 385 383 0 384 386 0 386 387 0 387 385 0 386 388 0
		 388 389 0 389 387 0 388 390 0 390 391 0 391 389 0 390 392 0 392 393 0 393 391 0 392 394 0
		 394 395 0 395 393 0 394 396 0 396 397 0 397 395 0 396 398 0 398 399 0 399 397 0 0 200 0
		 7 0 0 202 7 0 203 17 0 205 25 0 207 33 0 209 41 0 211 49 0 213 57 0 215 65 0 217 73 0
		 219 81 0 221 89 0 223 97 0 225 105 0 227 113 0 229 121 0 231 129 0 233 137 0 235 145 0
		 237 153 0 239 161 0 241 169 0 243 177 0 245 185 0 247 193 0 249 9 0 248 8 0 8 9 0
		 246 192 0 244 184 0 242 176 0 240 168 0 238 160 0 236 152 0 234 144 0 232 136 0 230 128 0
		 228 120 0 226 112 0 224 104 0 222 96 0 220 88 0 218 80 0 216 72 0 214 64 0 212 56 0
		 210 48 0 208 40 0 206 32 0 204 24 0 201 16 0 6 250 0 5 6 0 252 5 0 253 19 0 255 27 0
		 257 35 0 259 43 0 261 51 0 263 59 0 265 67 0 267 75 0 269 83 0 271 91 0 273 99 0
		 275 107 0 277 115 0 279 123 0 281 131 0 283 139 0 285 147 0 287 155 0 289 163 0 291 171 0
		 293 179 0 295 187 0 297 195 0 299 11 0 298 10 0;
	setAttr ".ed[664:829]" 10 11 0 296 194 0 294 186 0 292 178 0 290 170 0 288 162 0
		 286 154 0 284 146 0 282 138 0 280 130 0 278 122 0 276 114 0 274 106 0 272 98 0 270 90 0
		 268 82 0 266 74 0 264 66 0 262 58 0 260 50 0 258 42 0 256 34 0 254 26 0 251 18 0
		 4 300 0 3 4 0 302 3 0 303 21 0 305 29 0 307 37 0 309 45 0 311 53 0 313 61 0 315 69 0
		 317 77 0 319 85 0 321 93 0 323 101 0 325 109 0 327 117 0 329 125 0 331 133 0 333 141 0
		 335 149 0 337 157 0 339 165 0 341 173 0 343 181 0 345 189 0 347 197 0 349 13 0 348 12 0
		 12 13 0 346 196 0 344 188 0 342 180 0 340 172 0 338 164 0 336 156 0 334 148 0 332 140 0
		 330 132 0 328 124 0 326 116 0 324 108 0 322 100 0 320 92 0 318 84 0 316 76 0 314 68 0
		 312 60 0 310 52 0 308 44 0 306 36 0 304 28 0 301 20 0 2 350 0 1 2 0 352 1 0 353 23 0
		 355 31 0 357 39 0 359 47 0 361 55 0 363 63 0 365 71 0 367 79 0 369 87 0 371 95 0
		 373 103 0 375 111 0 377 119 0 379 127 0 381 135 0 383 143 0 385 151 0 387 159 0 389 167 0
		 391 175 0 393 183 0 395 191 0 397 199 0 399 15 0 398 14 0 14 15 0 396 198 0 394 190 0
		 392 182 0 390 174 0 388 166 0 386 158 0 384 150 0 382 142 0 380 134 0 378 126 0 376 118 0
		 374 110 0 372 102 0 370 94 0 368 86 0 366 78 0 364 70 0 362 62 0 360 54 0 358 46 0
		 356 38 0 354 30 0 351 22 0 8 400 0 400 401 0 401 9 0 401 402 0 402 10 0 402 403 0
		 403 11 0 403 404 0 404 12 0 404 405 0 405 13 0 405 406 0 406 14 0 406 407 0 407 15 0
		 407 400 0 400 408 0 408 409 0 409 410 0 410 401 0 410 411 0 411 402 0 411 412 0 412 413 0
		 413 403 0 413 414 0 414 404 0 414 415 0 415 416 0 416 405 0 416 417 0 417 406 0 417 418 0
		 418 419 0 419 407 0 419 408 0 420 431 0 431 430 0;
	setAttr ".ed[830:947]" 430 429 0 429 428 0 428 427 0 427 426 0 426 425 0 425 424 0
		 424 423 0 423 422 0 422 421 0 421 420 0 408 432 0 432 433 0 433 409 0 433 434 0 434 410 0
		 434 435 0 435 411 0 435 436 0 436 412 0 436 437 0 437 413 0 437 438 0 438 414 0 438 439 0
		 439 415 0 439 440 0 440 416 0 440 441 0 441 417 0 441 442 0 442 418 0 442 443 0 443 419 0
		 443 432 0 432 444 0 444 445 0 445 433 0 445 446 0 446 434 0 446 447 0 447 435 0 447 448 0
		 448 436 0 448 449 0 449 437 0 449 450 0 450 438 0 450 451 0 451 439 0 451 452 0 452 440 0
		 452 453 0 453 441 0 453 454 0 454 442 0 454 455 0 455 443 0 455 444 0 444 456 0 456 457 0
		 457 445 0 457 458 0 458 446 0 458 459 0 459 447 0 459 460 0 460 448 0 460 461 0 461 449 0
		 461 462 0 462 450 0 462 463 0 463 451 0 463 464 0 464 452 0 464 465 0 465 453 0 465 466 0
		 466 454 0 466 467 0 467 455 0 467 456 0 456 468 0 468 469 0 469 457 0 469 470 0 470 458 0
		 470 471 0 471 459 0 471 472 0 472 460 0 472 473 0 473 461 0 473 474 0 474 462 0 474 475 0
		 475 463 0 475 476 0 476 464 0 476 477 0 477 465 0 477 478 0 478 466 0 478 479 0 479 467 0
		 479 468 0 468 420 0 421 469 0 422 470 0 423 471 0 424 472 0 425 473 0 426 474 0 427 475 0
		 428 476 0 429 477 0 430 478 0 431 479 0;
	setAttr -s 1888 ".n";
	setAttr ".n[0:165]" -type "float3"  0.30991256 -0.12240923 0.94285208 0.26002637
		 0.068869255 0.9631424 0.4973087 -0.049958751 0.86613399 0.24210875 -0.27518523 0.93040663
		 -0.94285208 -0.12240928 0.30991262 -0.96314228 0.068869218 0.2600266 -0.86613399
		 -0.049958717 0.49730876 -0.93040663 -0.27518523 0.24210876 -0.30991262 -0.12240926
		 -0.9428522 -0.2600264 0.068869255 -0.9631424 -0.49730879 -0.049958754 -0.86613399
		 -0.24210882 -0.27518526 -0.93040657 0.94285208 -0.12240928 -0.30991253 0.96314245
		 0.068869278 -0.2600264 0.86613399 -0.049958754 -0.49730879 0.93040657 -0.27518523
		 -0.24210879 0.26002637 0.068869255 0.9631424 0.38370168 0.068333134 0.92092532 0.60570979
		 -0.049371108 0.79415244 0.4973087 -0.049958751 0.86613399 -0.96314228 0.068869218
		 0.2600266 -0.9209252 0.068333104 0.38370198 -0.79415244 -0.049371071 0.60570979 -0.86613399
		 -0.049958717 0.49730876 -0.2600264 0.068869255 -0.9631424 -0.38370201 0.068333052
		 -0.9209252 -0.60570985 -0.04937109 -0.79415244 -0.49730879 -0.049958754 -0.86613399
		 0.96314245 0.068869278 -0.2600264 0.92092538 0.06833306 -0.38370204 0.79415238 -0.04937112
		 -0.60570985 0.86613399 -0.049958754 -0.49730879 0.38370168 0.068333134 0.92092532
		 0.50063765 0.067816153 0.86299646 0.7042073 -0.048853368 0.70831174 0.60570979 -0.049371108
		 0.79415244 -0.9209252 0.068333104 0.38370198 -0.86299652 0.067816205 0.50063741 -0.70831174
		 -0.048853345 0.70420712 -0.79415244 -0.049371071 0.60570979 -0.38370201 0.068333052
		 -0.9209252 -0.50063741 0.06781622 -0.86299658 -0.70420712 -0.048853308 -0.70831174
		 -0.60570985 -0.04937109 -0.79415244 0.92092538 0.06833306 -0.38370204 0.86299658
		 0.067816183 -0.50063759 0.70831168 -0.048853368 -0.70420724 0.79415238 -0.04937112
		 -0.60570985 0.50063765 0.067816153 0.86299646 0.60901582 0.067299105 0.79029775 0.79065889
		 -0.048335522 0.61034596 0.7042073 -0.048853368 0.70831174 -0.86299652 0.067816205
		 0.50063741 -0.79029757 0.067299142 0.609016 -0.61034608 -0.048335511 0.79065889 -0.70831174
		 -0.048853345 0.70420712 -0.50063741 0.06781622 -0.86299658 -0.609016 0.067299195
		 -0.79029757 -0.79065889 -0.048335511 -0.61034596 -0.70420712 -0.048853308 -0.70831174
		 0.86299658 0.067816183 -0.50063759 0.79029757 0.067299172 -0.609016 0.61034596 -0.048335522
		 -0.79065889 0.70831168 -0.048853368 -0.70420724 0.60901582 0.067299105 0.79029775
		 0.7069822 0.066782057 0.70407134 0.86358458 -0.047817618 0.50193137 0.79065889 -0.048335522
		 0.61034596 -0.79029757 0.067299142 0.609016 -0.7040711 0.066782065 0.70698243 -0.50193125
		 -0.047817666 0.86358476 -0.61034608 -0.048335511 0.79065889 -0.609016 0.067299195
		 -0.79029757 -0.7069822 0.06678208 -0.70407128 -0.86358476 -0.047817688 -0.50193125
		 -0.79065889 -0.048335511 -0.61034596 0.79029757 0.067299172 -0.609016 0.70407128
		 0.066782042 -0.7069822 0.50193119 -0.04781767 -0.86358476 0.61034596 -0.048335522
		 -0.79065889 0.7069822 0.066782057 0.70407134 0.79285884 0.066264883 0.60579187 0.921736
		 -0.047299609 0.3849225 0.86358458 -0.047817618 0.50193137 -0.7040711 0.066782065
		 0.70698243 -0.60579169 0.06626489 0.79285896 -0.38492247 -0.047299623 0.92173612
		 -0.50193125 -0.047817666 0.86358476 -0.7069822 0.06678208 -0.70407128 -0.79285896
		 0.066264831 -0.60579181 -0.92173612 -0.047299605 -0.38492239 -0.86358476 -0.047817688
		 -0.50193125 0.70407128 0.066782042 -0.7069822 0.60579181 0.066264801 -0.79285896
		 0.3849225 -0.047299616 -0.92173612 0.50193119 -0.04781767 -0.86358476 0.79285884
		 0.066264883 0.60579187 0.86517578 0.065747693 0.49713987 0.96411747 -0.04678138 0.26132154
		 0.921736 -0.047299609 0.3849225 -0.60579169 0.06626489 0.79285896 -0.49713975 0.065747678
		 0.86517584 -0.26132149 -0.046781387 0.96411753 -0.38492247 -0.047299623 0.92173612
		 -0.79285896 0.066264831 -0.60579181 -0.86517578 0.065747701 -0.49713987 -0.96411747
		 -0.046781372 -0.26132163 -0.92173612 -0.047299605 -0.38492239 0.60579181 0.066264801
		 -0.79285896 0.4971399 0.065747701 -0.86517578 0.26132163 -0.046781417 -0.96411747
		 0.3849225 -0.047299616 -0.92173612 0.86517578 0.065747693 0.49713987 0.92269421 0.065230303
		 0.37997416 0.99000293 -0.046263341 0.13324361 0.96411747 -0.04678138 0.26132154 -0.49713975
		 0.065747678 0.86517584 -0.3799741 0.065230347 0.92269433 -0.13324358 -0.046263345
		 0.99000293 -0.26132149 -0.046781387 0.96411753 -0.86517578 0.065747701 -0.49713987
		 -0.92269427 0.065230392 -0.37997395 -0.99000293 -0.046263359 -0.13324347 -0.96411747
		 -0.046781372 -0.26132163 0.4971399 0.065747701 -0.86517578 0.37997404 0.065230422
		 -0.92269427 0.13324349 -0.046263359 -0.99000293 0.26132163 -0.046781417 -0.96411747
		 0.92269421 0.065230303 0.37997416 0.96442908 0.064713039 0.25629824 0.99894893 -0.045745254
		 0.0028797255 0.99000293 -0.046263341 0.13324361 -0.3799741 0.065230347 0.92269433
		 -0.25629809 0.064713098 0.96442908 -0.0028799118 -0.04574522 0.99894893 -0.13324358
		 -0.046263345 0.99000293 -0.92269427 0.065230392 -0.37997395 -0.96442908 0.064713068
		 -0.25629815 -0.99894899 -0.045745213 -0.0028796371 -0.99000293 -0.046263359 -0.13324347
		 0.37997404 0.065230422 -0.92269427 0.25629809 0.064713046 -0.96442914 0.0028795605
		 -0.04574522 -0.99894899 0.13324349 -0.046263359 -0.99000293 0.96442908 0.064713039
		 0.25629824 0.98966485 0.064195581 0.12822798 0.99080175 -0.045226932 -0.1275394 0.99894893
		 -0.045745254 0.0028797255 -0.25629809 0.064713098 0.96442908 -0.12822753 0.064195551
		 0.98966485 0.12753928 -0.045226917 0.99080175 -0.0028799118 -0.04574522 0.99894893
		 -0.96442908 0.064713068 -0.25629815 -0.98966485 0.064195558 -0.12822787 -0.99080175
		 -0.04522698 0.12753947 -0.99894899 -0.045745213 -0.0028796371 0.25629809 0.064713046
		 -0.96442914 0.12822789 0.064195521 -0.98966485 -0.1275395 -0.045226984 -0.99080175
		 0.0028795605 -0.04574522 -0.99894899 0.98966485 0.064195581 0.12822798 0.99796838
		 0.063678049 -0.0020448051 0.96570033 -0.044708405 -0.25578099 0.99080175 -0.045226932
		 -0.1275394 -0.12822753 0.064195551 0.98966485 0.002044939 0.063678034 0.99796838;
	setAttr ".n[166:331]" -type "float3"  0.25578123 -0.044708397 0.96570039 0.12753928
		 -0.045226917 0.99080175 -0.98966485 0.064195558 -0.12822787 -0.99796838 0.063678034
		 0.0020449271 -0.96570039 -0.044708475 0.25578114 -0.99080175 -0.04522698 0.12753947
		 0.12822789 0.064195521 -0.98966485 -0.0020449508 0.063678034 -0.99796838 -0.2557812
		 -0.044708479 -0.96570039 -0.1275395 -0.045226984 -0.99080175 0.99796838 0.063678049
		 -0.0020448051 0.98919648 0.063160561 -0.13229172 0.92407358 -0.044190016 -0.37965158
		 0.96570033 -0.044708405 -0.25578099 0.002044939 0.063678034 0.99796838 0.13229202
		 0.063160628 0.98919636 0.37965158 -0.044189982 0.92407352 0.25578123 -0.044708397
		 0.96570039 -0.99796838 0.063678034 0.0020449271 -0.98919648 0.063160606 0.13229187
		 -0.92407352 -0.044189971 0.37965146 -0.96570039 -0.044708475 0.25578114 -0.0020449508
		 0.063678034 -0.99796838 -0.1322919 0.063160568 -0.98919648 -0.37965193 -0.044190034
		 -0.92407346 -0.2557812 -0.044708479 -0.96570039 0.98919648 0.063160561 -0.13229172
		 0.96349764 0.062642932 -0.26028451 0.86663306 -0.043671615 -0.497031 0.92407358 -0.044190016
		 -0.37965158 0.13229202 0.063160628 0.98919636 0.26028472 0.062642962 0.96349764 0.49703118
		 -0.043671634 0.866633 0.37965158 -0.044189982 0.92407352 -0.98919648 0.063160606
		 0.13229187 -0.96349764 0.062642932 0.26028463 -0.86663306 -0.043671601 0.49703115
		 -0.92407352 -0.044189971 0.37965146 -0.1322919 0.063160568 -0.98919648 -0.2602846
		 0.062642947 -0.9634977 -0.49703109 -0.043671582 -0.86663306 -0.37965193 -0.044190034
		 -0.92407346 0.96349764 0.062642932 -0.26028451 0.92131072 0.062125247 -0.38383207
		 0.79436141 -0.043153297 -0.60591072 0.86663306 -0.043671615 -0.497031 0.26028472
		 0.062642962 0.96349764 0.38383222 0.062125236 0.92131066 0.60591102 -0.043153282
		 0.79436111 0.49703118 -0.043671634 0.866633 -0.96349764 0.062642932 0.26028463 -0.92131072
		 0.062125288 0.38383186 -0.79436141 -0.043153305 0.60591078 -0.86663306 -0.043671601
		 0.49703115 -0.2602846 0.062642947 -0.9634977 -0.38383186 0.062125295 -0.92131084
		 -0.6059109 -0.043153331 -0.79436117 -0.49703109 -0.043671582 -0.86663306 0.92131072
		 0.062125247 -0.38383207 0.86335588 0.061607629 -0.50082028 0.70849431 -0.042634681
		 -0.70442754 0.79436141 -0.043153297 -0.60591072 0.38383222 0.062125236 0.92131066
		 0.5008204 0.06160764 0.86335582 0.70442754 -0.042634681 0.70849431 0.60591102 -0.043153282
		 0.79436111 -0.92131072 0.062125288 0.38383186 -0.86335582 0.061607633 0.50082052
		 -0.70849437 -0.042634677 0.70442748 -0.79436141 -0.043153305 0.60591078 -0.38383186
		 0.062125295 -0.92131084 -0.50082052 0.061607603 -0.86335582 -0.70442754 -0.042634733
		 -0.70849431 -0.6059109 -0.043153331 -0.79436117 0.86335588 0.061607629 -0.50082028
		 0.79062414 0.061089844 -0.60924667 0.61050117 -0.042116158 -0.79089487 0.70849431
		 -0.042634681 -0.70442754 0.5008204 0.06160764 0.86335582 0.60924685 0.061089881 0.79062402
		 0.79089493 -0.042116188 0.61050111 0.70442754 -0.042634681 0.70849431 -0.86335582
		 0.061607633 0.50082052 -0.79062414 0.061089844 0.60924667 -0.61050129 -0.042116158
		 0.79089469 -0.70849437 -0.042634677 0.70442748 -0.50082052 0.061607603 -0.86335582
		 -0.60924667 0.061089858 -0.79062414 -0.79089487 -0.042116184 -0.61050117 -0.70442754
		 -0.042634733 -0.70849431 0.79062414 0.061089844 -0.60924667 0.70435834 0.060572051
		 -0.70725536 0.50205827 -0.041597519 -0.86383277 0.61050117 -0.042116158 -0.79089487
		 0.60924685 0.061089881 0.79062402 0.70725566 0.060572039 0.70435816 0.86383283 -0.041597512
		 0.50205815 0.79089493 -0.042116188 0.61050111 -0.79062414 0.061089844 0.60924667
		 -0.70435828 0.060572069 0.70725542 -0.50205821 -0.041597538 0.86383283 -0.61050129
		 -0.042116158 0.79089469 -0.60924667 0.061089858 -0.79062414 -0.70725548 0.06057208
		 -0.7043584 -0.86383295 -0.041597564 -0.50205809 -0.79089487 -0.042116184 -0.61050117
		 0.70435834 0.060572051 -0.70725536 0.60603452 0.060054149 -0.79316813 0.38502085
		 -0.041078694 -0.92199326 0.50205827 -0.041597519 -0.86383277 0.70725566 0.060572039
		 0.70435816 0.79316837 0.060054146 0.60603422 0.92199326 -0.04107869 0.38502073 0.86383283
		 -0.041597512 0.50205815 -0.70435828 0.060572069 0.70725542 -0.60603446 0.060054209
		 0.79316825 -0.38502073 -0.04107869 0.92199326 -0.50205821 -0.041597538 0.86383283
		 -0.70725548 0.06057208 -0.7043584 -0.79316825 0.060054161 -0.6060344 -0.92199332
		 -0.041078724 -0.38502058 -0.86383295 -0.041597564 -0.50205809 0.60603452 0.060054149
		 -0.79316813 0.49733379 0.059536282 -0.86551404 0.26139137 -0.040560033 -0.96438038
		 0.38502085 -0.041078694 -0.92199326 0.79316837 0.060054146 0.60603422 0.8655141 0.059536301
		 0.49733365 0.96438044 -0.040560052 0.26139101 0.92199326 -0.04107869 0.38502073 -0.60603446
		 0.060054209 0.79316825 -0.49733353 0.059536245 0.86551428 -0.26139119 -0.04056007
		 0.96438044 -0.38502073 -0.04107869 0.92199326 -0.79316825 0.060054161 -0.6060344
		 -0.8655141 0.059536241 -0.49733374 -0.96438044 -0.040560059 -0.26139095 -0.92199332
		 -0.041078724 -0.38502058 0.49733379 0.059536282 -0.86551404 0.38011497 0.05901834
		 -0.92305446 0.13328426 -0.040041436 -0.99026877 0.26139137 -0.040560033 -0.96438038
		 0.8655141 0.059536301 0.49733365 0.92305446 0.059018336 0.38011482 0.99026865 -0.040041436
		 0.13328418 0.96438044 -0.040560052 0.26139101 -0.49733353 0.059536245 0.86551428
		 -0.380115 0.059018347 0.92305446 -0.13328411 -0.040041491 0.99026871 -0.26139119
		 -0.04056007 0.96438044 -0.8655141 0.059536241 -0.49733374 -0.92305434 0.059018325
		 -0.38011512 -0.99026877 -0.04004148 -0.13328423 -0.96438044 -0.040560059 -0.26139095
		 0.38011497 0.05901834 -0.92305446 0.25638422 0.05850032 -0.96480304 0.0028920646
		 -0.039522443 -0.99921447 0.13328426 -0.040041436 -0.99026877 0.92305446 0.059018336
		 0.38011482 0.96480304 0.058500405 0.25638419 0.99921447 -0.039522447 0.0028920264
		 0.99026865 -0.040041436 0.13328418 -0.380115 0.059018347 0.92305446 -0.25638402 0.058500376
		 0.96480304 -0.0028918663 -0.039522428 0.99921453 -0.13328411 -0.040041491 0.99026871;
	setAttr ".n[332:497]" -type "float3"  -0.92305434 0.059018325 -0.38011512 -0.96480304
		 0.05850035 -0.2563841 -0.99921447 -0.039522499 -0.0028919643 -0.99026877 -0.04004148
		 -0.13328423 0.25638422 0.05850032 -0.96480304 0.12825827 0.057982288 -0.99004436
		 -0.12755373 -0.039003532 -0.99106443 0.0028920646 -0.039522443 -0.99921447 0.96480304
		 0.058500405 0.25638419 0.99004447 0.057982359 0.12825808 0.99106443 -0.039003555
		 -0.12755392 0.99921447 -0.039522447 0.0028920264 -0.25638402 0.058500376 0.96480304
		 -0.12825832 0.057982344 0.99004447 0.12755392 -0.039003555 0.99106443 -0.0028918663
		 -0.039522428 0.99921453 -0.96480304 0.05850035 -0.2563841 -0.99004447 0.057982314
		 -0.12825808 -0.99106443 -0.039003547 0.1275539 -0.99921447 -0.039522499 -0.0028919643
		 0.12825827 0.057982288 -0.99004436 -0.0013688861 0.057537008 -0.99834239 -0.25604677
		 -0.038505789 -0.96589708 -0.12755373 -0.039003532 -0.99106443 0.99004447 0.057982359
		 0.12825808 0.99834239 0.057537004 -0.0013692875 0.96589702 -0.038505815 -0.25604698
		 0.99106443 -0.039003555 -0.12755392 -0.12825832 0.057982344 0.99004447 0.0013691203
		 0.057536986 0.99834239 0.25604707 -0.038505834 0.96589702 0.12755392 -0.039003555
		 0.99106443 -0.99004447 0.057982314 -0.12825808 -0.99834239 0.057536989 0.0013690535
		 -0.96589702 -0.038505815 0.25604698 -0.99106443 -0.039003547 0.1275539 -0.0013688861
		 0.057537008 -0.99834239 -0.11959393 0.051189315 -0.99150234 -0.20461604 0.15403694
		 -0.96664619 -0.25604677 -0.038505789 -0.96589708 0.99834239 0.057537004 -0.0013692875
		 0.99150234 0.051189382 -0.1195942 0.96664619 0.15403686 -0.20461626 0.96589702 -0.038505815
		 -0.25604698 0.0013691203 0.057536986 0.99834239 0.1195941 0.051189307 0.99150234
		 0.2046162 0.15403695 0.96664619 0.25604707 -0.038505834 0.96589702 -0.99834239 0.057536989
		 0.0013690535 -0.99150234 0.051189303 0.1195941 -0.96664619 0.15403686 0.20461623
		 -0.96589702 -0.038505815 0.25604698 0.94875562 -0.30890423 -0.066640988 0.96789277
		 -0.021626962 -0.2504313 0.50708008 0.040639095 0.86094028 0.45411026 -0.25333238
		 0.85417008 0.50708008 0.040639095 0.86094028 0.96789277 -0.021626962 -0.2504313 0.92697793
		 -0.027928017 -0.37407479 0.61562818 0.048286129 0.78655607 0.61562818 0.048286129
		 0.78655607 0.92697793 -0.027928017 -0.37407479 0.87022853 -0.027876627 -0.49185881
		 0.71303189 0.048075892 0.69948155 0.71303189 0.048075892 0.69948155 0.87022853 -0.027876627
		 -0.49185881 0.7985841 -0.027724767 -0.60124433 0.79823428 0.047925737 0.6004374 0.79823428
		 0.047925737 0.6004374 0.7985841 -0.027724767 -0.60124433 0.71327448 -0.027572729
		 -0.70034224 0.86978221 0.047775362 0.49111766 0.86978221 0.047775362 0.49111766 0.71327448
		 -0.027572729 -0.70034224 0.61576003 -0.027420323 -0.78745645 0.92645007 0.047624636
		 0.3733927 0.92645007 0.047624636 0.3733927 0.61576003 -0.027420323 -0.78745645 0.50770932
		 -0.02726762 -0.86109698 0.96726787 0.047473837 0.24927694 0.96726787 0.047473837
		 0.24927694 0.50770932 -0.02726762 -0.86109698 0.39097124 -0.027114764 -0.92000335
		 0.99153692 0.047322568 0.12089327 0.99153692 0.047322568 0.12089327 0.39097124 -0.027114764
		 -0.92000335 0.26754367 -0.026961651 -0.96316844 0.99884105 0.047171157 -0.0095619718
		 0.99884105 0.047171157 -0.0095619718 0.26754367 -0.026961651 -0.96316844 0.13953778
		 -0.026808279 -0.9898538 0.98905468 0.047019377 -0.13985687 0.98905468 0.047019377
		 -0.13985687 0.13953778 -0.026808279 -0.9898538 0.0091454787 -0.02665446 -0.99960291
		 0.96234488 0.046867535 -0.26776075 0.96234488 0.046867535 -0.26776075 0.0091454787
		 -0.02665446 -0.99960291 -0.12140366 -0.026500361 -0.99224949 0.91916782 0.046715505
		 -0.39108586 0.91916782 0.046715505 -0.39108586 -0.12140366 -0.026500361 -0.99224949
		 -0.24987547 -0.026346225 -0.96791953 0.86026138 0.046562955 -0.50772256 0.86026138
		 0.046562955 -0.50772256 -0.24987547 -0.026346225 -0.96791953 -0.37407216 -0.0261919
		 -0.92702973 0.78663331 0.046410162 -0.61567384 0.78663331 0.046410162 -0.61567384
		 -0.37407216 -0.0261919 -0.92702973 -0.49186936 -0.026037198 -0.87027961 0.69954258
		 0.046257298 -0.71309233 0.69954258 0.046257298 -0.71309233 -0.49186936 -0.026037198
		 -0.87027961 -0.60125095 -0.025882298 -0.79864097 0.60047942 0.046104167 -0.79831016
		 0.60047942 0.046104167 -0.79831016 -0.60125095 -0.025882298 -0.79864097 -0.70034665
		 -0.02572706 -0.71333915 0.49113765 0.045950636 -0.86986911 0.49113765 0.045950636
		 -0.86986911 -0.70034665 -0.02572706 -0.71333915 -0.78746068 -0.025571493 -0.61583418
		 0.3733888 0.045796953 -0.92654377 0.3733888 0.045796953 -0.92654377 -0.78746068 -0.025571493
		 -0.61583418 -0.86110342 -0.02541581 -0.50779444 0.24924774 0.04564314 -0.9673636
		 0.24924774 0.04564314 -0.9673636 -0.86110342 -0.02541581 -0.50779444 -0.92001516
		 -0.025259975 -0.39106789 0.12083758 0.045488946 -0.99162948 0.12083758 0.045488946
		 -0.99162948 -0.92001516 -0.025259975 -0.39106789 -0.96318865 -0.025103576 -0.26765171
		 -0.0096439384 0.045334473 -0.99892527 -0.0096439384 0.045334473 -0.99892527 -0.96318865
		 -0.025103576 -0.26765171 -0.98988414 -0.025018029 -0.13965479 -0.13994247 0.045045886
		 -0.98913449 -0.13994247 0.045045886 -0.98913449 -0.98988414 -0.025018029 -0.13965479
		 -0.99980623 -0.017805861 -0.0084001832 -0.26760975 0.038664069 -0.96275133 -0.26760975
		 0.038664069 -0.96275133 -0.99980623 -0.017805861 -0.0084001832 -0.9609679 0.274149
		 0.037191294 -0.30697131 0.035822727 -0.95104438 0.066640861 -0.30890423 0.94875562
		 0.25043127 -0.021626964 0.96789277 -0.86094016 0.040639151 0.50708032 -0.85417002
		 -0.25333238 0.45411032 -0.86094016 0.040639151 0.50708032 0.25043127 -0.021626964
		 0.96789277 0.37407458 -0.027927974 0.92697805 -0.78655589 0.048286095 0.61562842
		 -0.78655589 0.048286095 0.61562842 0.37407458 -0.027927974 0.92697805 0.4918586 -0.027876627
		 0.87022865 -0.69948149 0.048075862 0.71303189 -0.69948149 0.048075862 0.71303189
		 0.4918586 -0.027876627 0.87022865 0.60124427 -0.027724743 0.79858422 -0.6004371 0.0479258
		 0.79823458 -0.6004371 0.0479258 0.79823458 0.60124427 -0.027724743 0.79858422;
	setAttr ".n[498:663]" -type "float3"  0.70034212 -0.027572682 0.7132746 -0.49111742
		 0.047775362 0.86978239 -0.49111742 0.047775362 0.86978239 0.70034212 -0.027572682
		 0.7132746 0.78745645 -0.027420318 0.61576021 -0.37339249 0.047624584 0.92645019 -0.37339249
		 0.047624584 0.92645019 0.78745645 -0.027420318 0.61576021 0.86109686 -0.027267559
		 0.50770932 -0.24927692 0.04747384 0.96726799 -0.24927692 0.04747384 0.96726799 0.86109686
		 -0.027267559 0.50770932 0.92000335 -0.027114771 0.39097121 -0.12089305 0.047322582
		 0.99153692 -0.12089305 0.047322582 0.99153692 0.92000335 -0.027114771 0.39097121
		 0.96316844 -0.026961688 0.26754376 0.009562117 0.047171257 0.99884111 0.009562117
		 0.047171257 0.99884111 0.96316844 -0.026961688 0.26754376 0.98985374 -0.026808199
		 0.13953795 0.13985711 0.047019396 0.98905468 0.13985711 0.047019396 0.98905468 0.98985374
		 -0.026808199 0.13953795 0.99960291 -0.026654346 0.0091456128 0.26776096 0.046867486
		 0.96234483 0.26776096 0.046867486 0.96234483 0.99960291 -0.026654346 0.0091456128
		 0.99224943 -0.026500376 -0.1214034 0.39108637 0.046715517 0.91916758 0.39108637 0.046715517
		 0.91916758 0.99224943 -0.026500376 -0.1214034 0.96791953 -0.026346229 -0.2498752
		 0.50772268 0.046563026 0.86026144 0.50772268 0.046563026 0.86026144 0.96791953 -0.026346229
		 -0.2498752 0.92702973 -0.026191898 -0.37407202 0.61567372 0.046410181 0.78663343
		 0.61567372 0.046410181 0.78663343 0.92702973 -0.026191898 -0.37407202 0.87027979
		 -0.026037211 -0.49186918 0.71309251 0.046257272 0.69954222 0.71309251 0.046257272
		 0.69954222 0.87027979 -0.026037211 -0.49186918 0.79864091 -0.025882246 -0.60125101
		 0.79831022 0.046104249 0.6004793 0.79831022 0.046104249 0.6004793 0.79864091 -0.025882246
		 -0.60125101 0.71333933 -0.025727013 -0.70034647 0.86986923 0.045950651 0.49113733
		 0.86986923 0.045950651 0.49113733 0.71333933 -0.025727013 -0.70034647 0.6158343 -0.025571467
		 -0.78746051 0.92654395 0.045796901 0.37338844 0.92654395 0.045796901 0.37338844 0.6158343
		 -0.025571467 -0.78746051 0.50779468 -0.025415769 -0.86110312 0.9673636 0.04564308
		 0.24924734 0.9673636 0.04564308 0.24924734 0.50779468 -0.025415769 -0.86110312 0.3910681
		 -0.025259946 -0.9200151 0.99162948 0.045488909 0.12083733 0.99162948 0.045488909
		 0.12083733 0.3910681 -0.025259946 -0.9200151 0.26765183 -0.025103521 -0.96318865
		 0.99892539 0.045334514 -0.0096442178 0.99892539 0.045334514 -0.0096442178 0.26765183
		 -0.025103521 -0.96318865 0.13965482 -0.025018029 -0.98988414 0.98913449 0.045045994
		 -0.13994268 0.98913449 0.045045994 -0.13994268 0.13965482 -0.025018029 -0.98988414
		 0.0084003275 -0.017805854 -0.99980623 0.96275121 0.038664088 -0.26760998 0.96275121
		 0.038664088 -0.26760998 0.0084003275 -0.017805854 -0.99980623 -0.037191153 0.27414906
		 -0.96096784 0.95104438 0.035822712 -0.30697137 -0.94875562 -0.30890423 0.066640824
		 -0.96789277 -0.021626884 0.25043109 -0.50708008 0.040639166 -0.86094028 -0.45411032
		 -0.25333241 -0.85417008 -0.50708008 0.040639166 -0.86094028 -0.96789277 -0.021626884
		 0.25043109 -0.92697805 -0.027927933 0.37407458 -0.61562842 0.048286073 -0.78655589
		 -0.61562842 0.048286073 -0.78655589 -0.92697805 -0.027927933 0.37407458 -0.87022871
		 -0.027876569 0.49185857 -0.71303195 0.04807587 -0.69948149 -0.71303195 0.04807587
		 -0.69948149 -0.87022871 -0.027876569 0.49185857 -0.79858416 -0.027724769 0.60124421
		 -0.79823434 0.047925826 -0.60043728 -0.79823434 0.047925826 -0.60043728 -0.79858416
		 -0.027724769 0.60124421 -0.7132746 -0.027572732 0.70034224 -0.86978221 0.047775347
		 -0.49111757 -0.86978221 0.047775347 -0.49111757 -0.7132746 -0.027572732 0.70034224
		 -0.61576009 -0.027420314 0.78745645 -0.92645007 0.047624633 -0.37339282 -0.92645007
		 0.047624633 -0.37339282 -0.61576009 -0.027420314 0.78745645 -0.50770944 -0.027267518
		 0.8610968 -0.96726799 0.047473826 -0.24927688 -0.96726799 0.047473826 -0.24927688
		 -0.50770944 -0.027267518 0.8610968 -0.3909713 -0.027114723 0.92000329 -0.99153692
		 0.047322642 -0.12089312 -0.99153692 0.047322642 -0.12089312 -0.3909713 -0.027114723
		 0.92000329 -0.26754409 -0.026961599 0.96316838 -0.99884105 0.047171202 0.0095620127
		 -0.99884105 0.047171202 0.0095620127 -0.26754409 -0.026961599 0.96316838 -0.13953832
		 -0.026808182 0.98985374 -0.98905468 0.047019389 0.13985693 -0.98905468 0.047019389
		 0.13985693 -0.13953832 -0.026808182 0.98985374 -0.0091455104 -0.026654357 0.99960291
		 -0.96234488 0.046867538 0.26776075 -0.96234488 0.046867538 0.26776075 -0.0091455104
		 -0.026654357 0.99960291 0.12140344 -0.026500341 0.99224943 -0.91916782 0.046715509
		 0.39108598 -0.91916782 0.046715509 0.39108598 0.12140344 -0.026500341 0.99224943
		 0.24987526 -0.026346285 0.96791953 -0.86026138 0.046562947 0.50772268 -0.86026138
		 0.046562947 0.50772268 0.24987526 -0.026346285 0.96791953 0.3740721 -0.026191846
		 0.92702973 -0.78663355 0.046410285 0.61567342 -0.78663355 0.046410285 0.61567342
		 0.3740721 -0.026191846 0.92702973 0.49186939 -0.026037203 0.87027961 -0.69954252
		 0.046257332 0.71309227 -0.69954252 0.046257332 0.71309227 0.49186939 -0.026037203
		 0.87027961 0.60125095 -0.025882255 0.79864091 -0.60047948 0.046104159 0.79830998
		 -0.60047948 0.046104159 0.79830998 0.60125095 -0.025882255 0.79864091 0.70034653
		 -0.025726978 0.71333921 -0.49113759 0.04595064 0.86986917 -0.49113759 0.04595064
		 0.86986917 0.70034653 -0.025726978 0.71333921 0.78746057 -0.025571514 0.61583418
		 -0.37338886 0.045797076 0.92654377 -0.37338886 0.045797076 0.92654377 0.78746057
		 -0.025571514 0.61583418 0.86110336 -0.02541581 0.50779444 -0.2492478 0.045643121
		 0.9673636 -0.2492478 0.045643121 0.9673636 0.86110336 -0.02541581 0.50779444 0.92001516
		 -0.025259927 0.39106801 -0.12083771 0.045488909 0.99162948 -0.12083771 0.045488909
		 0.99162948 0.92001516 -0.025259927 0.39106801 0.96318865 -0.025103541 0.26765174
		 0.0096437931 0.045334585 0.99892527 0.0096437931 0.045334585 0.99892527 0.96318865
		 -0.025103541 0.26765174 0.98988414 -0.025018046 0.13965464 0.13994217 0.045045968
		 0.98913455;
	setAttr ".n[664:829]" -type "float3"  0.13994217 0.045045968 0.98913455 0.98988414
		 -0.025018046 0.13965464 0.99980628 -0.017805884 0.0084001003 0.26760948 0.038664158
		 0.96275133 0.26760948 0.038664158 0.96275133 0.99980628 -0.017805884 0.0084001003
		 0.96096784 0.27414903 -0.037191175 0.30697113 0.035822731 0.95104432 -0.066640861
		 -0.30890426 -0.9487555 -0.2504313 -0.021626964 -0.96789277 0.86094034 0.040639177
		 -0.50708002 0.85417008 -0.25333244 -0.45411023 0.86094034 0.040639177 -0.50708002
		 -0.2504313 -0.021626964 -0.96789277 -0.37407458 -0.027927946 -0.92697805 0.78655589
		 0.048286106 -0.61562836 0.78655589 0.048286106 -0.61562836 -0.37407458 -0.027927946
		 -0.92697805 -0.49185875 -0.027876571 -0.87022853 0.69948149 0.048075896 -0.71303189
		 0.69948149 0.048075896 -0.71303189 -0.49185875 -0.027876571 -0.87022853 -0.60124433
		 -0.027724775 -0.79858416 0.60043734 0.047925811 -0.79823434 0.60043734 0.047925811
		 -0.79823434 -0.60124433 -0.027724775 -0.79858416 -0.70034224 -0.02757274 -0.7132746
		 0.49111766 0.047775324 -0.86978221 0.49111766 0.047775324 -0.86978221 -0.70034224
		 -0.02757274 -0.7132746 -0.78745645 -0.02742029 -0.61576009 0.3733927 0.047624569
		 -0.92645013 0.3733927 0.047624569 -0.92645013 -0.78745645 -0.02742029 -0.61576009
		 -0.86109698 -0.027267598 -0.50770932 0.24927701 0.04747384 -0.96726799 0.24927701
		 0.04747384 -0.96726799 -0.86109698 -0.027267598 -0.50770932 -0.92000335 -0.027114749
		 -0.39097136 0.12089325 0.047322702 -0.99153686 0.12089325 0.047322702 -0.99153686
		 -0.92000335 -0.027114749 -0.39097136 -0.96316844 -0.026961641 -0.26754376 -0.0095618377
		 0.047171231 -0.99884105 -0.0095618377 0.047171231 -0.99884105 -0.96316844 -0.026961641
		 -0.26754376 -0.98985374 -0.026808256 -0.13953789 -0.13985674 0.047019348 -0.98905468
		 -0.13985674 0.047019348 -0.98905468 -0.98985374 -0.026808256 -0.13953789 -0.99960291
		 -0.026654325 -0.009145706 -0.26776081 0.04686752 -0.96234488 -0.26776081 0.04686752
		 -0.96234488 -0.99960291 -0.026654325 -0.009145706 -0.99224943 -0.026500279 0.12140304
		 -0.39108598 0.046715483 -0.91916782 -0.39108598 0.046715483 -0.91916782 -0.99224943
		 -0.026500279 0.12140304 -0.96791953 -0.026346242 0.24987522 -0.50772256 0.046562936
		 -0.86026138 -0.50772256 0.046562936 -0.86026138 -0.96791953 -0.026346242 0.24987522
		 -0.92702973 -0.026191831 0.37407193 -0.61567348 0.046410263 -0.78663349 -0.61567348
		 0.046410263 -0.78663349 -0.92702973 -0.026191831 0.37407193 -0.87027973 -0.026037155
		 0.49186918 -0.71309227 0.046257328 -0.69954252 -0.71309227 0.046257328 -0.69954252
		 -0.87027973 -0.026037155 0.49186918 -0.79864103 -0.025882265 0.60125089 -0.79830998
		 0.04610417 -0.6004796 -0.79830998 0.04610417 -0.6004796 -0.79864103 -0.025882265
		 0.60125089 -0.71333921 -0.025727058 0.70034653 -0.86986911 0.045950659 -0.49113765
		 -0.86986911 0.045950659 -0.49113765 -0.71333921 -0.025727058 0.70034653 -0.61583436
		 -0.025571452 0.78746051 -0.92654365 0.045797035 -0.37338912 -0.92654365 0.045797035
		 -0.37338912 -0.61583436 -0.025571452 0.78746051 -0.50779474 -0.025415774 0.86110318
		 -0.9673636 0.045643073 -0.2492478 -0.9673636 0.045643073 -0.2492478 -0.50779474 -0.025415774
		 0.86110318 -0.39106792 -0.025259985 0.9200151 -0.99162948 0.045488928 -0.1208378
		 -0.99162948 0.045488928 -0.1208378 -0.39106792 -0.025259985 0.9200151 -0.26765183
		 -0.025103489 0.96318865 -0.99892539 0.045334566 0.0096438453 -0.99892539 0.045334566
		 0.0096438453 -0.26765183 -0.025103489 0.96318865 -0.13965482 -0.025018027 0.98988414
		 -0.98913455 0.045045931 0.13994245 -0.98913455 0.045045931 0.13994245 -0.13965482
		 -0.025018027 0.98988414 -0.0084003685 -0.017805835 0.99980623 -0.96275133 0.03866411
		 0.26760963 -0.96275133 0.03866411 0.26760963 -0.0084003685 -0.017805835 0.99980623
		 0.037191186 0.27414906 0.96096784 -0.95104432 0.035822738 0.30697113 0.30991256 -0.12240923
		 0.94285208 0.93040657 -0.27518523 -0.24210879 0.94875562 -0.30890423 -0.066640988
		 0.45411026 -0.25333238 0.85417008 0.30991256 -0.12240923 0.94285208 0.45411026 -0.25333238
		 0.85417008 0.50708008 0.040639095 0.86094028 0.26002637 0.068869255 0.9631424 0.26002637
		 0.068869255 0.9631424 0.50708008 0.040639095 0.86094028 0.61562818 0.048286129 0.78655607
		 0.38370168 0.068333134 0.92092532 0.38370168 0.068333134 0.92092532 0.61562818 0.048286129
		 0.78655607 0.71303189 0.048075892 0.69948155 0.50063765 0.067816153 0.86299646 0.50063765
		 0.067816153 0.86299646 0.71303189 0.048075892 0.69948155 0.79823428 0.047925737 0.6004374
		 0.60901582 0.067299105 0.79029775 0.60901582 0.067299105 0.79029775 0.79823428 0.047925737
		 0.6004374 0.86978221 0.047775362 0.49111766 0.7069822 0.066782057 0.70407134 0.7069822
		 0.066782057 0.70407134 0.86978221 0.047775362 0.49111766 0.92645007 0.047624636 0.3733927
		 0.79285884 0.066264883 0.60579187 0.79285884 0.066264883 0.60579187 0.92645007 0.047624636
		 0.3733927 0.96726787 0.047473837 0.24927694 0.86517578 0.065747693 0.49713987 0.86517578
		 0.065747693 0.49713987 0.96726787 0.047473837 0.24927694 0.99153692 0.047322568 0.12089327
		 0.92269421 0.065230303 0.37997416 0.92269421 0.065230303 0.37997416 0.99153692 0.047322568
		 0.12089327 0.99884105 0.047171157 -0.0095619718 0.96442908 0.064713039 0.25629824
		 0.96442908 0.064713039 0.25629824 0.99884105 0.047171157 -0.0095619718 0.98905468
		 0.047019377 -0.13985687 0.98966485 0.064195581 0.12822798 0.98966485 0.064195581
		 0.12822798 0.98905468 0.047019377 -0.13985687 0.96234488 0.046867535 -0.26776075
		 0.99796838 0.063678049 -0.0020448051 0.99796838 0.063678049 -0.0020448051 0.96234488
		 0.046867535 -0.26776075 0.91916782 0.046715505 -0.39108586 0.98919648 0.063160561
		 -0.13229172 0.98919648 0.063160561 -0.13229172 0.91916782 0.046715505 -0.39108586
		 0.86026138 0.046562955 -0.50772256 0.96349764 0.062642932 -0.26028451 0.96349764
		 0.062642932 -0.26028451 0.86026138 0.046562955 -0.50772256 0.78663331 0.046410162
		 -0.61567384 0.92131072 0.062125247 -0.38383207 0.92131072 0.062125247 -0.38383207
		 0.78663331 0.046410162 -0.61567384;
	setAttr ".n[830:995]" -type "float3"  0.69954258 0.046257298 -0.71309233 0.86335588
		 0.061607629 -0.50082028 0.86335588 0.061607629 -0.50082028 0.69954258 0.046257298
		 -0.71309233 0.60047942 0.046104167 -0.79831016 0.79062414 0.061089844 -0.60924667
		 0.79062414 0.061089844 -0.60924667 0.60047942 0.046104167 -0.79831016 0.49113765
		 0.045950636 -0.86986911 0.70435834 0.060572051 -0.70725536 0.70435834 0.060572051
		 -0.70725536 0.49113765 0.045950636 -0.86986911 0.3733888 0.045796953 -0.92654377
		 0.60603452 0.060054149 -0.79316813 0.60603452 0.060054149 -0.79316813 0.3733888 0.045796953
		 -0.92654377 0.24924774 0.04564314 -0.9673636 0.49733379 0.059536282 -0.86551404 0.49733379
		 0.059536282 -0.86551404 0.24924774 0.04564314 -0.9673636 0.12083758 0.045488946 -0.99162948
		 0.38011497 0.05901834 -0.92305446 0.38011497 0.05901834 -0.92305446 0.12083758 0.045488946
		 -0.99162948 -0.0096439384 0.045334473 -0.99892527 0.25638422 0.05850032 -0.96480304
		 0.25638422 0.05850032 -0.96480304 -0.0096439384 0.045334473 -0.99892527 -0.13994247
		 0.045045886 -0.98913449 0.12825827 0.057982288 -0.99004436 0.12825827 0.057982288
		 -0.99004436 -0.13994247 0.045045886 -0.98913449 -0.26760975 0.038664069 -0.96275133
		 -0.0013688861 0.057537008 -0.99834239 -0.0013688861 0.057537008 -0.99834239 -0.26760975
		 0.038664069 -0.96275133 -0.30697131 0.035822727 -0.95104438 -0.11959393 0.051189315
		 -0.99150234 -0.29640833 0.86192352 -0.41137552 -0.48511088 0.73456043 -0.47443491
		 -0.9609679 0.274149 0.037191294 -0.96664619 0.15403686 0.20461623 -0.96664619 0.15403686
		 0.20461623 -0.9609679 0.274149 0.037191294 -0.99980623 -0.017805861 -0.0084001832
		 -0.96589702 -0.038505815 0.25604698 -0.96589702 -0.038505815 0.25604698 -0.99980623
		 -0.017805861 -0.0084001832 -0.98988414 -0.025018029 -0.13965479 -0.99106443 -0.039003547
		 0.1275539 -0.99106443 -0.039003547 0.1275539 -0.98988414 -0.025018029 -0.13965479
		 -0.96318865 -0.025103576 -0.26765171 -0.99921447 -0.039522499 -0.0028919643 -0.99921447
		 -0.039522499 -0.0028919643 -0.96318865 -0.025103576 -0.26765171 -0.92001516 -0.025259975
		 -0.39106789 -0.99026877 -0.04004148 -0.13328423 -0.99026877 -0.04004148 -0.13328423
		 -0.92001516 -0.025259975 -0.39106789 -0.86110342 -0.02541581 -0.50779444 -0.96438044
		 -0.040560059 -0.26139095 -0.96438044 -0.040560059 -0.26139095 -0.86110342 -0.02541581
		 -0.50779444 -0.78746068 -0.025571493 -0.61583418 -0.92199332 -0.041078724 -0.38502058
		 -0.92199332 -0.041078724 -0.38502058 -0.78746068 -0.025571493 -0.61583418 -0.70034665
		 -0.02572706 -0.71333915 -0.86383295 -0.041597564 -0.50205809 -0.86383295 -0.041597564
		 -0.50205809 -0.70034665 -0.02572706 -0.71333915 -0.60125095 -0.025882298 -0.79864097
		 -0.79089487 -0.042116184 -0.61050117 -0.79089487 -0.042116184 -0.61050117 -0.60125095
		 -0.025882298 -0.79864097 -0.49186936 -0.026037198 -0.87027961 -0.70442754 -0.042634733
		 -0.70849431 -0.70442754 -0.042634733 -0.70849431 -0.49186936 -0.026037198 -0.87027961
		 -0.37407216 -0.0261919 -0.92702973 -0.6059109 -0.043153331 -0.79436117 -0.6059109
		 -0.043153331 -0.79436117 -0.37407216 -0.0261919 -0.92702973 -0.24987547 -0.026346225
		 -0.96791953 -0.49703109 -0.043671582 -0.86663306 -0.49703109 -0.043671582 -0.86663306
		 -0.24987547 -0.026346225 -0.96791953 -0.12140366 -0.026500361 -0.99224949 -0.37965193
		 -0.044190034 -0.92407346 -0.37965193 -0.044190034 -0.92407346 -0.12140366 -0.026500361
		 -0.99224949 0.0091454787 -0.02665446 -0.99960291 -0.2557812 -0.044708479 -0.96570039
		 -0.2557812 -0.044708479 -0.96570039 0.0091454787 -0.02665446 -0.99960291 0.13953778
		 -0.026808279 -0.9898538 -0.1275395 -0.045226984 -0.99080175 -0.1275395 -0.045226984
		 -0.99080175 0.13953778 -0.026808279 -0.9898538 0.26754367 -0.026961651 -0.96316844
		 0.0028795605 -0.04574522 -0.99894899 0.0028795605 -0.04574522 -0.99894899 0.26754367
		 -0.026961651 -0.96316844 0.39097124 -0.027114764 -0.92000335 0.13324349 -0.046263359
		 -0.99000293 0.13324349 -0.046263359 -0.99000293 0.39097124 -0.027114764 -0.92000335
		 0.50770932 -0.02726762 -0.86109698 0.26132163 -0.046781417 -0.96411747 0.26132163
		 -0.046781417 -0.96411747 0.50770932 -0.02726762 -0.86109698 0.61576003 -0.027420323
		 -0.78745645 0.3849225 -0.047299616 -0.92173612 0.3849225 -0.047299616 -0.92173612
		 0.61576003 -0.027420323 -0.78745645 0.71327448 -0.027572729 -0.70034224 0.50193119
		 -0.04781767 -0.86358476 0.50193119 -0.04781767 -0.86358476 0.71327448 -0.027572729
		 -0.70034224 0.7985841 -0.027724767 -0.60124433 0.61034596 -0.048335522 -0.79065889
		 0.61034596 -0.048335522 -0.79065889 0.7985841 -0.027724767 -0.60124433 0.87022853
		 -0.027876627 -0.49185881 0.70831168 -0.048853368 -0.70420724 0.70831168 -0.048853368
		 -0.70420724 0.87022853 -0.027876627 -0.49185881 0.92697793 -0.027928017 -0.37407479
		 0.79415238 -0.04937112 -0.60570985 0.79415238 -0.04937112 -0.60570985 0.92697793
		 -0.027928017 -0.37407479 0.96789277 -0.021626962 -0.2504313 0.86613399 -0.049958754
		 -0.49730879 0.86613399 -0.049958754 -0.49730879 0.96789277 -0.021626962 -0.2504313
		 0.94875562 -0.30890423 -0.066640988 0.93040657 -0.27518523 -0.24210879 -0.94285208
		 -0.12240928 0.30991262 0.24210875 -0.27518523 0.93040663 0.066640861 -0.30890423
		 0.94875562 -0.85417002 -0.25333238 0.45411032 -0.94285208 -0.12240928 0.30991262
		 -0.85417002 -0.25333238 0.45411032 -0.86094016 0.040639151 0.50708032 -0.96314228
		 0.068869218 0.2600266 -0.96314228 0.068869218 0.2600266 -0.86094016 0.040639151 0.50708032
		 -0.78655589 0.048286095 0.61562842 -0.9209252 0.068333104 0.38370198 -0.9209252 0.068333104
		 0.38370198 -0.78655589 0.048286095 0.61562842 -0.69948149 0.048075862 0.71303189
		 -0.86299652 0.067816205 0.50063741 -0.86299652 0.067816205 0.50063741 -0.69948149
		 0.048075862 0.71303189 -0.6004371 0.0479258 0.79823458 -0.79029757 0.067299142 0.609016
		 -0.79029757 0.067299142 0.609016 -0.6004371 0.0479258 0.79823458 -0.49111742 0.047775362
		 0.86978239 -0.7040711 0.066782065 0.70698243 -0.7040711 0.066782065 0.70698243 -0.49111742
		 0.047775362 0.86978239 -0.37339249 0.047624584 0.92645019 -0.60579169 0.06626489
		 0.79285896;
	setAttr ".n[996:1161]" -type "float3"  -0.60579169 0.06626489 0.79285896 -0.37339249
		 0.047624584 0.92645019 -0.24927692 0.04747384 0.96726799 -0.49713975 0.065747678
		 0.86517584 -0.49713975 0.065747678 0.86517584 -0.24927692 0.04747384 0.96726799 -0.12089305
		 0.047322582 0.99153692 -0.3799741 0.065230347 0.92269433 -0.3799741 0.065230347 0.92269433
		 -0.12089305 0.047322582 0.99153692 0.009562117 0.047171257 0.99884111 -0.25629809
		 0.064713098 0.96442908 -0.25629809 0.064713098 0.96442908 0.009562117 0.047171257
		 0.99884111 0.13985711 0.047019396 0.98905468 -0.12822753 0.064195551 0.98966485 -0.12822753
		 0.064195551 0.98966485 0.13985711 0.047019396 0.98905468 0.26776096 0.046867486 0.96234483
		 0.002044939 0.063678034 0.99796838 0.002044939 0.063678034 0.99796838 0.26776096
		 0.046867486 0.96234483 0.39108637 0.046715517 0.91916758 0.13229202 0.063160628 0.98919636
		 0.13229202 0.063160628 0.98919636 0.39108637 0.046715517 0.91916758 0.50772268 0.046563026
		 0.86026144 0.26028472 0.062642962 0.96349764 0.26028472 0.062642962 0.96349764 0.50772268
		 0.046563026 0.86026144 0.61567372 0.046410181 0.78663343 0.38383222 0.062125236 0.92131066
		 0.38383222 0.062125236 0.92131066 0.61567372 0.046410181 0.78663343 0.71309251 0.046257272
		 0.69954222 0.5008204 0.06160764 0.86335582 0.5008204 0.06160764 0.86335582 0.71309251
		 0.046257272 0.69954222 0.79831022 0.046104249 0.6004793 0.60924685 0.061089881 0.79062402
		 0.60924685 0.061089881 0.79062402 0.79831022 0.046104249 0.6004793 0.86986923 0.045950651
		 0.49113733 0.70725566 0.060572039 0.70435816 0.70725566 0.060572039 0.70435816 0.86986923
		 0.045950651 0.49113733 0.92654395 0.045796901 0.37338844 0.79316837 0.060054146 0.60603422
		 0.79316837 0.060054146 0.60603422 0.92654395 0.045796901 0.37338844 0.9673636 0.04564308
		 0.24924734 0.8655141 0.059536301 0.49733365 0.8655141 0.059536301 0.49733365 0.9673636
		 0.04564308 0.24924734 0.99162948 0.045488909 0.12083733 0.92305446 0.059018336 0.38011482
		 0.92305446 0.059018336 0.38011482 0.99162948 0.045488909 0.12083733 0.99892539 0.045334514
		 -0.0096442178 0.96480304 0.058500405 0.25638419 0.96480304 0.058500405 0.25638419
		 0.99892539 0.045334514 -0.0096442178 0.98913449 0.045045994 -0.13994268 0.99004447
		 0.057982359 0.12825808 0.99004447 0.057982359 0.12825808 0.98913449 0.045045994 -0.13994268
		 0.96275121 0.038664088 -0.26760998 0.99834239 0.057537004 -0.0013692875 0.99834239
		 0.057537004 -0.0013692875 0.96275121 0.038664088 -0.26760998 0.95104438 0.035822712
		 -0.30697137 0.99150234 0.051189382 -0.1195942 0.41137552 0.86192352 -0.29640844 0.4744347
		 0.73456049 -0.48511088 -0.037191153 0.27414906 -0.96096784 -0.20461604 0.15403694
		 -0.96664619 -0.20461604 0.15403694 -0.96664619 -0.037191153 0.27414906 -0.96096784
		 0.0084003275 -0.017805854 -0.99980623 -0.25604677 -0.038505789 -0.96589708 -0.25604677
		 -0.038505789 -0.96589708 0.0084003275 -0.017805854 -0.99980623 0.13965482 -0.025018029
		 -0.98988414 -0.12755373 -0.039003532 -0.99106443 -0.12755373 -0.039003532 -0.99106443
		 0.13965482 -0.025018029 -0.98988414 0.26765183 -0.025103521 -0.96318865 0.0028920646
		 -0.039522443 -0.99921447 0.0028920646 -0.039522443 -0.99921447 0.26765183 -0.025103521
		 -0.96318865 0.3910681 -0.025259946 -0.9200151 0.13328426 -0.040041436 -0.99026877
		 0.13328426 -0.040041436 -0.99026877 0.3910681 -0.025259946 -0.9200151 0.50779468
		 -0.025415769 -0.86110312 0.26139137 -0.040560033 -0.96438038 0.26139137 -0.040560033
		 -0.96438038 0.50779468 -0.025415769 -0.86110312 0.6158343 -0.025571467 -0.78746051
		 0.38502085 -0.041078694 -0.92199326 0.38502085 -0.041078694 -0.92199326 0.6158343
		 -0.025571467 -0.78746051 0.71333933 -0.025727013 -0.70034647 0.50205827 -0.041597519
		 -0.86383277 0.50205827 -0.041597519 -0.86383277 0.71333933 -0.025727013 -0.70034647
		 0.79864091 -0.025882246 -0.60125101 0.61050117 -0.042116158 -0.79089487 0.61050117
		 -0.042116158 -0.79089487 0.79864091 -0.025882246 -0.60125101 0.87027979 -0.026037211
		 -0.49186918 0.70849431 -0.042634681 -0.70442754 0.70849431 -0.042634681 -0.70442754
		 0.87027979 -0.026037211 -0.49186918 0.92702973 -0.026191898 -0.37407202 0.79436141
		 -0.043153297 -0.60591072 0.79436141 -0.043153297 -0.60591072 0.92702973 -0.026191898
		 -0.37407202 0.96791953 -0.026346229 -0.2498752 0.86663306 -0.043671615 -0.497031
		 0.86663306 -0.043671615 -0.497031 0.96791953 -0.026346229 -0.2498752 0.99224943 -0.026500376
		 -0.1214034 0.92407358 -0.044190016 -0.37965158 0.92407358 -0.044190016 -0.37965158
		 0.99224943 -0.026500376 -0.1214034 0.99960291 -0.026654346 0.0091456128 0.96570033
		 -0.044708405 -0.25578099 0.96570033 -0.044708405 -0.25578099 0.99960291 -0.026654346
		 0.0091456128 0.98985374 -0.026808199 0.13953795 0.99080175 -0.045226932 -0.1275394
		 0.99080175 -0.045226932 -0.1275394 0.98985374 -0.026808199 0.13953795 0.96316844
		 -0.026961688 0.26754376 0.99894893 -0.045745254 0.0028797255 0.99894893 -0.045745254
		 0.0028797255 0.96316844 -0.026961688 0.26754376 0.92000335 -0.027114771 0.39097121
		 0.99000293 -0.046263341 0.13324361 0.99000293 -0.046263341 0.13324361 0.92000335
		 -0.027114771 0.39097121 0.86109686 -0.027267559 0.50770932 0.96411747 -0.04678138
		 0.26132154 0.96411747 -0.04678138 0.26132154 0.86109686 -0.027267559 0.50770932 0.78745645
		 -0.027420318 0.61576021 0.921736 -0.047299609 0.3849225 0.921736 -0.047299609 0.3849225
		 0.78745645 -0.027420318 0.61576021 0.70034212 -0.027572682 0.7132746 0.86358458 -0.047817618
		 0.50193137 0.86358458 -0.047817618 0.50193137 0.70034212 -0.027572682 0.7132746 0.60124427
		 -0.027724743 0.79858422 0.79065889 -0.048335522 0.61034596 0.79065889 -0.048335522
		 0.61034596 0.60124427 -0.027724743 0.79858422 0.4918586 -0.027876627 0.87022865 0.7042073
		 -0.048853368 0.70831174 0.7042073 -0.048853368 0.70831174 0.4918586 -0.027876627
		 0.87022865 0.37407458 -0.027927974 0.92697805 0.60570979 -0.049371108 0.79415244
		 0.60570979 -0.049371108 0.79415244 0.37407458 -0.027927974 0.92697805;
	setAttr ".n[1162:1327]" -type "float3"  0.25043127 -0.021626964 0.96789277 0.4973087
		 -0.049958751 0.86613399 0.4973087 -0.049958751 0.86613399 0.25043127 -0.021626964
		 0.96789277 0.066640861 -0.30890423 0.94875562 0.24210875 -0.27518523 0.93040663 -0.30991262
		 -0.12240926 -0.9428522 -0.93040663 -0.27518523 0.24210876 -0.94875562 -0.30890423
		 0.066640824 -0.45411032 -0.25333241 -0.85417008 -0.30991262 -0.12240926 -0.9428522
		 -0.45411032 -0.25333241 -0.85417008 -0.50708008 0.040639166 -0.86094028 -0.2600264
		 0.068869255 -0.9631424 -0.2600264 0.068869255 -0.9631424 -0.50708008 0.040639166
		 -0.86094028 -0.61562842 0.048286073 -0.78655589 -0.38370201 0.068333052 -0.9209252
		 -0.38370201 0.068333052 -0.9209252 -0.61562842 0.048286073 -0.78655589 -0.71303195
		 0.04807587 -0.69948149 -0.50063741 0.06781622 -0.86299658 -0.50063741 0.06781622
		 -0.86299658 -0.71303195 0.04807587 -0.69948149 -0.79823434 0.047925826 -0.60043728
		 -0.609016 0.067299195 -0.79029757 -0.609016 0.067299195 -0.79029757 -0.79823434 0.047925826
		 -0.60043728 -0.86978221 0.047775347 -0.49111757 -0.7069822 0.06678208 -0.70407128
		 -0.7069822 0.06678208 -0.70407128 -0.86978221 0.047775347 -0.49111757 -0.92645007
		 0.047624633 -0.37339282 -0.79285896 0.066264831 -0.60579181 -0.79285896 0.066264831
		 -0.60579181 -0.92645007 0.047624633 -0.37339282 -0.96726799 0.047473826 -0.24927688
		 -0.86517578 0.065747701 -0.49713987 -0.86517578 0.065747701 -0.49713987 -0.96726799
		 0.047473826 -0.24927688 -0.99153692 0.047322642 -0.12089312 -0.92269427 0.065230392
		 -0.37997395 -0.92269427 0.065230392 -0.37997395 -0.99153692 0.047322642 -0.12089312
		 -0.99884105 0.047171202 0.0095620127 -0.96442908 0.064713068 -0.25629815 -0.96442908
		 0.064713068 -0.25629815 -0.99884105 0.047171202 0.0095620127 -0.98905468 0.047019389
		 0.13985693 -0.98966485 0.064195558 -0.12822787 -0.98966485 0.064195558 -0.12822787
		 -0.98905468 0.047019389 0.13985693 -0.96234488 0.046867538 0.26776075 -0.99796838
		 0.063678034 0.0020449271 -0.99796838 0.063678034 0.0020449271 -0.96234488 0.046867538
		 0.26776075 -0.91916782 0.046715509 0.39108598 -0.98919648 0.063160606 0.13229187
		 -0.98919648 0.063160606 0.13229187 -0.91916782 0.046715509 0.39108598 -0.86026138
		 0.046562947 0.50772268 -0.96349764 0.062642932 0.26028463 -0.96349764 0.062642932
		 0.26028463 -0.86026138 0.046562947 0.50772268 -0.78663355 0.046410285 0.61567342
		 -0.92131072 0.062125288 0.38383186 -0.92131072 0.062125288 0.38383186 -0.78663355
		 0.046410285 0.61567342 -0.69954252 0.046257332 0.71309227 -0.86335582 0.061607633
		 0.50082052 -0.86335582 0.061607633 0.50082052 -0.69954252 0.046257332 0.71309227
		 -0.60047948 0.046104159 0.79830998 -0.79062414 0.061089844 0.60924667 -0.79062414
		 0.061089844 0.60924667 -0.60047948 0.046104159 0.79830998 -0.49113759 0.04595064
		 0.86986917 -0.70435828 0.060572069 0.70725542 -0.70435828 0.060572069 0.70725542
		 -0.49113759 0.04595064 0.86986917 -0.37338886 0.045797076 0.92654377 -0.60603446
		 0.060054209 0.79316825 -0.60603446 0.060054209 0.79316825 -0.37338886 0.045797076
		 0.92654377 -0.2492478 0.045643121 0.9673636 -0.49733353 0.059536245 0.86551428 -0.49733353
		 0.059536245 0.86551428 -0.2492478 0.045643121 0.9673636 -0.12083771 0.045488909 0.99162948
		 -0.380115 0.059018347 0.92305446 -0.380115 0.059018347 0.92305446 -0.12083771 0.045488909
		 0.99162948 0.0096437931 0.045334585 0.99892527 -0.25638402 0.058500376 0.96480304
		 -0.25638402 0.058500376 0.96480304 0.0096437931 0.045334585 0.99892527 0.13994217
		 0.045045968 0.98913455 -0.12825832 0.057982344 0.99004447 -0.12825832 0.057982344
		 0.99004447 0.13994217 0.045045968 0.98913455 0.26760948 0.038664158 0.96275133 0.0013691203
		 0.057536986 0.99834239 0.0013691203 0.057536986 0.99834239 0.26760948 0.038664158
		 0.96275133 0.30697113 0.035822731 0.95104432 0.1195941 0.051189307 0.99150234 0.29640836
		 0.86192364 0.41137555 0.48511076 0.73456031 0.47443503 0.96096784 0.27414903 -0.037191175
		 0.96664619 0.15403686 -0.20461626 0.96664619 0.15403686 -0.20461626 0.96096784 0.27414903
		 -0.037191175 0.99980628 -0.017805884 0.0084001003 0.96589702 -0.038505815 -0.25604698
		 0.96589702 -0.038505815 -0.25604698 0.99980628 -0.017805884 0.0084001003 0.98988414
		 -0.025018046 0.13965464 0.99106443 -0.039003555 -0.12755392 0.99106443 -0.039003555
		 -0.12755392 0.98988414 -0.025018046 0.13965464 0.96318865 -0.025103541 0.26765174
		 0.99921447 -0.039522447 0.0028920264 0.99921447 -0.039522447 0.0028920264 0.96318865
		 -0.025103541 0.26765174 0.92001516 -0.025259927 0.39106801 0.99026865 -0.040041436
		 0.13328418 0.99026865 -0.040041436 0.13328418 0.92001516 -0.025259927 0.39106801
		 0.86110336 -0.02541581 0.50779444 0.96438044 -0.040560052 0.26139101 0.96438044 -0.040560052
		 0.26139101 0.86110336 -0.02541581 0.50779444 0.78746057 -0.025571514 0.61583418 0.92199326
		 -0.04107869 0.38502073 0.92199326 -0.04107869 0.38502073 0.78746057 -0.025571514
		 0.61583418 0.70034653 -0.025726978 0.71333921 0.86383283 -0.041597512 0.50205815
		 0.86383283 -0.041597512 0.50205815 0.70034653 -0.025726978 0.71333921 0.60125095
		 -0.025882255 0.79864091 0.79089493 -0.042116188 0.61050111 0.79089493 -0.042116188
		 0.61050111 0.60125095 -0.025882255 0.79864091 0.49186939 -0.026037203 0.87027961
		 0.70442754 -0.042634681 0.70849431 0.70442754 -0.042634681 0.70849431 0.49186939
		 -0.026037203 0.87027961 0.3740721 -0.026191846 0.92702973 0.60591102 -0.043153282
		 0.79436111 0.60591102 -0.043153282 0.79436111 0.3740721 -0.026191846 0.92702973 0.24987526
		 -0.026346285 0.96791953 0.49703118 -0.043671634 0.866633 0.49703118 -0.043671634
		 0.866633 0.24987526 -0.026346285 0.96791953 0.12140344 -0.026500341 0.99224943 0.37965158
		 -0.044189982 0.92407352 0.37965158 -0.044189982 0.92407352 0.12140344 -0.026500341
		 0.99224943 -0.0091455104 -0.026654357 0.99960291 0.25578123 -0.044708397 0.96570039
		 0.25578123 -0.044708397 0.96570039 -0.0091455104 -0.026654357 0.99960291 -0.13953832
		 -0.026808182 0.98985374 0.12753928 -0.045226917 0.99080175;
	setAttr ".n[1328:1493]" -type "float3"  0.12753928 -0.045226917 0.99080175 -0.13953832
		 -0.026808182 0.98985374 -0.26754409 -0.026961599 0.96316838 -0.0028799118 -0.04574522
		 0.99894893 -0.0028799118 -0.04574522 0.99894893 -0.26754409 -0.026961599 0.96316838
		 -0.3909713 -0.027114723 0.92000329 -0.13324358 -0.046263345 0.99000293 -0.13324358
		 -0.046263345 0.99000293 -0.3909713 -0.027114723 0.92000329 -0.50770944 -0.027267518
		 0.8610968 -0.26132149 -0.046781387 0.96411753 -0.26132149 -0.046781387 0.96411753
		 -0.50770944 -0.027267518 0.8610968 -0.61576009 -0.027420314 0.78745645 -0.38492247
		 -0.047299623 0.92173612 -0.38492247 -0.047299623 0.92173612 -0.61576009 -0.027420314
		 0.78745645 -0.7132746 -0.027572732 0.70034224 -0.50193125 -0.047817666 0.86358476
		 -0.50193125 -0.047817666 0.86358476 -0.7132746 -0.027572732 0.70034224 -0.79858416
		 -0.027724769 0.60124421 -0.61034608 -0.048335511 0.79065889 -0.61034608 -0.048335511
		 0.79065889 -0.79858416 -0.027724769 0.60124421 -0.87022871 -0.027876569 0.49185857
		 -0.70831174 -0.048853345 0.70420712 -0.70831174 -0.048853345 0.70420712 -0.87022871
		 -0.027876569 0.49185857 -0.92697805 -0.027927933 0.37407458 -0.79415244 -0.049371071
		 0.60570979 -0.79415244 -0.049371071 0.60570979 -0.92697805 -0.027927933 0.37407458
		 -0.96789277 -0.021626884 0.25043109 -0.86613399 -0.049958717 0.49730876 -0.86613399
		 -0.049958717 0.49730876 -0.96789277 -0.021626884 0.25043109 -0.94875562 -0.30890423
		 0.066640824 -0.93040663 -0.27518523 0.24210876 0.94285208 -0.12240928 -0.30991253
		 -0.24210882 -0.27518526 -0.93040657 -0.066640861 -0.30890426 -0.9487555 0.85417008
		 -0.25333244 -0.45411023 0.94285208 -0.12240928 -0.30991253 0.85417008 -0.25333244
		 -0.45411023 0.86094034 0.040639177 -0.50708002 0.96314245 0.068869278 -0.2600264
		 0.96314245 0.068869278 -0.2600264 0.86094034 0.040639177 -0.50708002 0.78655589 0.048286106
		 -0.61562836 0.92092538 0.06833306 -0.38370204 0.92092538 0.06833306 -0.38370204 0.78655589
		 0.048286106 -0.61562836 0.69948149 0.048075896 -0.71303189 0.86299658 0.067816183
		 -0.50063759 0.86299658 0.067816183 -0.50063759 0.69948149 0.048075896 -0.71303189
		 0.60043734 0.047925811 -0.79823434 0.79029757 0.067299172 -0.609016 0.79029757 0.067299172
		 -0.609016 0.60043734 0.047925811 -0.79823434 0.49111766 0.047775324 -0.86978221 0.70407128
		 0.066782042 -0.7069822 0.70407128 0.066782042 -0.7069822 0.49111766 0.047775324 -0.86978221
		 0.3733927 0.047624569 -0.92645013 0.60579181 0.066264801 -0.79285896 0.60579181 0.066264801
		 -0.79285896 0.3733927 0.047624569 -0.92645013 0.24927701 0.04747384 -0.96726799 0.4971399
		 0.065747701 -0.86517578 0.4971399 0.065747701 -0.86517578 0.24927701 0.04747384 -0.96726799
		 0.12089325 0.047322702 -0.99153686 0.37997404 0.065230422 -0.92269427 0.37997404
		 0.065230422 -0.92269427 0.12089325 0.047322702 -0.99153686 -0.0095618377 0.047171231
		 -0.99884105 0.25629809 0.064713046 -0.96442914 0.25629809 0.064713046 -0.96442914
		 -0.0095618377 0.047171231 -0.99884105 -0.13985674 0.047019348 -0.98905468 0.12822789
		 0.064195521 -0.98966485 0.12822789 0.064195521 -0.98966485 -0.13985674 0.047019348
		 -0.98905468 -0.26776081 0.04686752 -0.96234488 -0.0020449508 0.063678034 -0.99796838
		 -0.0020449508 0.063678034 -0.99796838 -0.26776081 0.04686752 -0.96234488 -0.39108598
		 0.046715483 -0.91916782 -0.1322919 0.063160568 -0.98919648 -0.1322919 0.063160568
		 -0.98919648 -0.39108598 0.046715483 -0.91916782 -0.50772256 0.046562936 -0.86026138
		 -0.2602846 0.062642947 -0.9634977 -0.2602846 0.062642947 -0.9634977 -0.50772256 0.046562936
		 -0.86026138 -0.61567348 0.046410263 -0.78663349 -0.38383186 0.062125295 -0.92131084
		 -0.38383186 0.062125295 -0.92131084 -0.61567348 0.046410263 -0.78663349 -0.71309227
		 0.046257328 -0.69954252 -0.50082052 0.061607603 -0.86335582 -0.50082052 0.061607603
		 -0.86335582 -0.71309227 0.046257328 -0.69954252 -0.79830998 0.04610417 -0.6004796
		 -0.60924667 0.061089858 -0.79062414 -0.60924667 0.061089858 -0.79062414 -0.79830998
		 0.04610417 -0.6004796 -0.86986911 0.045950659 -0.49113765 -0.70725548 0.06057208
		 -0.7043584 -0.70725548 0.06057208 -0.7043584 -0.86986911 0.045950659 -0.49113765
		 -0.92654365 0.045797035 -0.37338912 -0.79316825 0.060054161 -0.6060344 -0.79316825
		 0.060054161 -0.6060344 -0.92654365 0.045797035 -0.37338912 -0.9673636 0.045643073
		 -0.2492478 -0.8655141 0.059536241 -0.49733374 -0.8655141 0.059536241 -0.49733374
		 -0.9673636 0.045643073 -0.2492478 -0.99162948 0.045488928 -0.1208378 -0.92305434
		 0.059018325 -0.38011512 -0.92305434 0.059018325 -0.38011512 -0.99162948 0.045488928
		 -0.1208378 -0.99892539 0.045334566 0.0096438453 -0.96480304 0.05850035 -0.2563841
		 -0.96480304 0.05850035 -0.2563841 -0.99892539 0.045334566 0.0096438453 -0.98913455
		 0.045045931 0.13994245 -0.99004447 0.057982314 -0.12825808 -0.99004447 0.057982314
		 -0.12825808 -0.98913455 0.045045931 0.13994245 -0.96275133 0.03866411 0.26760963
		 -0.99834239 0.057536989 0.0013690535 -0.99834239 0.057536989 0.0013690535 -0.96275133
		 0.03866411 0.26760963 -0.95104432 0.035822738 0.30697113 -0.99150234 0.051189303
		 0.1195941 -0.41137552 0.86192358 0.29640827 -0.47443512 0.73456037 0.48511076 0.037191186
		 0.27414906 0.96096784 0.2046162 0.15403695 0.96664619 0.2046162 0.15403695 0.96664619
		 0.037191186 0.27414906 0.96096784 -0.0084003685 -0.017805835 0.99980623 0.25604707
		 -0.038505834 0.96589702 0.25604707 -0.038505834 0.96589702 -0.0084003685 -0.017805835
		 0.99980623 -0.13965482 -0.025018027 0.98988414 0.12755392 -0.039003555 0.99106443
		 0.12755392 -0.039003555 0.99106443 -0.13965482 -0.025018027 0.98988414 -0.26765183
		 -0.025103489 0.96318865 -0.0028918663 -0.039522428 0.99921453 -0.0028918663 -0.039522428
		 0.99921453 -0.26765183 -0.025103489 0.96318865 -0.39106792 -0.025259985 0.9200151
		 -0.13328411 -0.040041491 0.99026871 -0.13328411 -0.040041491 0.99026871 -0.39106792
		 -0.025259985 0.9200151 -0.50779474 -0.025415774 0.86110318 -0.26139119 -0.04056007
		 0.96438044 -0.26139119 -0.04056007 0.96438044 -0.50779474 -0.025415774 0.86110318;
	setAttr ".n[1494:1659]" -type "float3"  -0.61583436 -0.025571452 0.78746051 -0.38502073
		 -0.04107869 0.92199326 -0.38502073 -0.04107869 0.92199326 -0.61583436 -0.025571452
		 0.78746051 -0.71333921 -0.025727058 0.70034653 -0.50205821 -0.041597538 0.86383283
		 -0.50205821 -0.041597538 0.86383283 -0.71333921 -0.025727058 0.70034653 -0.79864103
		 -0.025882265 0.60125089 -0.61050129 -0.042116158 0.79089469 -0.61050129 -0.042116158
		 0.79089469 -0.79864103 -0.025882265 0.60125089 -0.87027973 -0.026037155 0.49186918
		 -0.70849437 -0.042634677 0.70442748 -0.70849437 -0.042634677 0.70442748 -0.87027973
		 -0.026037155 0.49186918 -0.92702973 -0.026191831 0.37407193 -0.79436141 -0.043153305
		 0.60591078 -0.79436141 -0.043153305 0.60591078 -0.92702973 -0.026191831 0.37407193
		 -0.96791953 -0.026346242 0.24987522 -0.86663306 -0.043671601 0.49703115 -0.86663306
		 -0.043671601 0.49703115 -0.96791953 -0.026346242 0.24987522 -0.99224943 -0.026500279
		 0.12140304 -0.92407352 -0.044189971 0.37965146 -0.92407352 -0.044189971 0.37965146
		 -0.99224943 -0.026500279 0.12140304 -0.99960291 -0.026654325 -0.009145706 -0.96570039
		 -0.044708475 0.25578114 -0.96570039 -0.044708475 0.25578114 -0.99960291 -0.026654325
		 -0.009145706 -0.98985374 -0.026808256 -0.13953789 -0.99080175 -0.04522698 0.12753947
		 -0.99080175 -0.04522698 0.12753947 -0.98985374 -0.026808256 -0.13953789 -0.96316844
		 -0.026961641 -0.26754376 -0.99894899 -0.045745213 -0.0028796371 -0.99894899 -0.045745213
		 -0.0028796371 -0.96316844 -0.026961641 -0.26754376 -0.92000335 -0.027114749 -0.39097136
		 -0.99000293 -0.046263359 -0.13324347 -0.99000293 -0.046263359 -0.13324347 -0.92000335
		 -0.027114749 -0.39097136 -0.86109698 -0.027267598 -0.50770932 -0.96411747 -0.046781372
		 -0.26132163 -0.96411747 -0.046781372 -0.26132163 -0.86109698 -0.027267598 -0.50770932
		 -0.78745645 -0.02742029 -0.61576009 -0.92173612 -0.047299605 -0.38492239 -0.92173612
		 -0.047299605 -0.38492239 -0.78745645 -0.02742029 -0.61576009 -0.70034224 -0.02757274
		 -0.7132746 -0.86358476 -0.047817688 -0.50193125 -0.86358476 -0.047817688 -0.50193125
		 -0.70034224 -0.02757274 -0.7132746 -0.60124433 -0.027724775 -0.79858416 -0.79065889
		 -0.048335511 -0.61034596 -0.79065889 -0.048335511 -0.61034596 -0.60124433 -0.027724775
		 -0.79858416 -0.49185875 -0.027876571 -0.87022853 -0.70420712 -0.048853308 -0.70831174
		 -0.70420712 -0.048853308 -0.70831174 -0.49185875 -0.027876571 -0.87022853 -0.37407458
		 -0.027927946 -0.92697805 -0.60570985 -0.04937109 -0.79415244 -0.60570985 -0.04937109
		 -0.79415244 -0.37407458 -0.027927946 -0.92697805 -0.2504313 -0.021626964 -0.96789277
		 -0.49730879 -0.049958754 -0.86613399 -0.49730879 -0.049958754 -0.86613399 -0.2504313
		 -0.021626964 -0.96789277 -0.066640861 -0.30890426 -0.9487555 -0.24210882 -0.27518526
		 -0.93040657 -0.29640833 0.86192352 -0.41137552 -0.4349007 0.90047842 5.6163174e-08
		 -0.31404459 0.94940823 4.1278838e-08 -0.1570223 0.94940817 -0.27197063 -0.29640833
		 0.86192352 -0.41137552 -0.1570223 0.94940817 -0.27197063 4.1885876e-08 0.94940817
		 -0.31404459 3.3697901e-08 0.90047842 -0.43490073 0.41137552 0.86192352 -0.29640844
		 3.3697901e-08 0.90047842 -0.43490073 4.1885876e-08 0.94940817 -0.31404459 0.2719706
		 0.94940823 -0.1570224 0.41137552 0.86192352 -0.29640844 0.2719706 0.94940823 -0.1570224
		 0.31404459 0.94940823 -1.2140835e-08 0.43490067 0.90047842 -6.739581e-08 0.29640836
		 0.86192364 0.41137555 0.43490067 0.90047842 -6.739581e-08 0.31404459 0.94940823 -1.2140835e-08
		 0.15702233 0.94940823 0.2719706 0.29640836 0.86192364 0.41137555 0.15702233 0.94940823
		 0.2719706 2.7316879e-08 0.94940823 0.31404459 5.6163174e-08 0.90047842 0.43490073
		 -0.41137552 0.86192358 0.29640827 5.6163174e-08 0.90047842 0.43490073 2.7316879e-08
		 0.94940823 0.31404459 -0.27197057 0.94940823 0.15702233 -0.41137552 0.86192358 0.29640827
		 -0.27197057 0.94940823 0.15702233 -0.31404459 0.94940823 4.1278838e-08 -0.4349007
		 0.90047842 5.6163174e-08 -0.1570223 0.94940817 -0.27197063 -0.31404459 0.94940823
		 4.1278838e-08 -0.13996455 0.99015653 8.1486187e-09 -0.1212129 0.99015653 -0.069982201
		 -0.06998229 0.99015647 -0.12121284 -0.1570223 0.94940817 -0.27197063 -0.06998229
		 0.99015647 -0.12121284 5.7040332e-08 0.99015653 -0.13996457 4.1885876e-08 0.94940817
		 -0.31404459 0.2719706 0.94940823 -0.1570224 4.1885876e-08 0.94940817 -0.31404459
		 5.7040332e-08 0.99015653 -0.13996457 0.069982238 0.99015647 -0.1212129 0.12121288
		 0.99015659 -0.069982246 0.2719706 0.94940823 -0.1570224 0.12121288 0.99015659 -0.069982246
		 0.13996452 0.99015653 2.6483026e-08 0.31404459 0.94940823 -1.2140835e-08 0.15702233
		 0.94940823 0.2719706 0.31404459 0.94940823 -1.2140835e-08 0.13996452 0.99015653 2.6483026e-08
		 0.12121291 0.99015653 0.069982179 0.069982305 0.99015653 0.12121284 0.15702233 0.94940823
		 0.2719706 0.069982305 0.99015653 0.12121284 2.4445857e-08 0.99015653 0.13996455 2.7316879e-08
		 0.94940823 0.31404459 -0.27197057 0.94940823 0.15702233 2.7316879e-08 0.94940823
		 0.31404459 2.4445857e-08 0.99015653 0.13996455 -0.069982231 0.99015647 0.12121288
		 -0.12121286 0.99015653 0.069982275 -0.27197057 0.94940823 0.15702233 -0.12121286
		 0.99015653 0.069982275 -0.13996455 0.99015653 8.1486187e-09 -0.31404459 0.94940823
		 4.1278838e-08 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0
		 1 0 -0.98463225 -0.17091027 0.035903726 -0.99330181 -0.11547123 -0.0042312215 -0.85343432
		 -0.16911539 -0.49300095 -0.84445357 -0.25928798 -0.46868739 -0.84445357 -0.25928798
		 -0.46868739 -0.85343432 -0.16911539 -0.49300095 -0.49202368 -0.17773113 -0.85224664
		 -0.47406444 -0.27335262 -0.83698344 -0.47406444 -0.27335262 -0.83698344 -0.49202368
		 -0.17773113 -0.85224664 -0.0021799728 -0.13881718 -0.99031568 0.029966967 -0.20948148
		 -0.97735333;
	setAttr ".n[1660:1825]" -type "float3"  0.029966967 -0.20948148 -0.97735333 -0.0021799728
		 -0.13881718 -0.99031568 0.49078259 -0.063621238 -0.86895621 0.53492039 -0.085553423
		 -0.84055984 0.53492039 -0.085553423 -0.84055984 0.49078259 -0.063621238 -0.86895621
		 0.85680687 0.026611736 -0.51495034 0.88521445 0.057729997 -0.46158713 0.88521445
		 0.057729997 -0.46158713 0.85680687 0.026611736 -0.51495034 0.99403089 0.10745843
		 -0.018850522 0.9839496 0.17567106 0.031347994 0.9839496 0.17567106 0.031347994 0.99403089
		 0.10745843 -0.018850522 0.86003989 0.15815018 0.48509789 0.8332094 0.24317512 0.49661657
		 0.8332094 0.24317512 0.49661657 0.86003989 0.15815018 0.48509789 0.4887763 0.16619596
		 0.8564325 0.48929799 0.2534008 0.83449119 0.48929799 0.2534008 0.83449119 0.4887763
		 0.16619596 0.8564325 -0.016799295 0.12964824 0.99141765 0.02550883 0.20586754 0.97824734
		 0.02550883 0.20586754 0.97824734 -0.016799295 0.12964824 0.99141765 -0.51564491 0.057430174
		 0.8548755 -0.46236965 0.1040711 0.88055867 -0.46236965 0.1040711 0.88055867 -0.51564491
		 0.057430174 0.8548755 -0.87181413 -0.032217838 0.48877606 -0.84241235 -0.034647573
		 0.53771836 -0.84241235 -0.034647573 0.53771836 -0.87181413 -0.032217838 0.48877606
		 -0.99330181 -0.11547123 -0.0042312215 -0.98463225 -0.17091027 0.035903726 -0.99330181
		 -0.11547123 -0.0042312215 -0.99986821 -0.014524314 -0.0072477423 -0.86420923 -0.021317312
		 -0.5026809 -0.85343432 -0.16911539 -0.49300095 -0.85343432 -0.16911539 -0.49300095
		 -0.86420923 -0.021317312 -0.5026809 -0.50123143 -0.022408919 -0.86502302 -0.49202368
		 -0.17773113 -0.85224664 -0.49202368 -0.17773113 -0.85224664 -0.50123143 -0.022408919
		 -0.86502302 -0.0059879683 -0.017483089 -0.99982929 -0.0021799728 -0.13881718 -0.99031568
		 -0.0021799728 -0.13881718 -0.99031568 -0.0059879683 -0.017483089 -0.99982929 0.49223042
		 -0.0079465508 -0.87042868 0.49078259 -0.063621238 -0.86895621 0.49078259 -0.063621238
		 -0.86895621 0.49223042 -0.0079465508 -0.87042868 0.86120385 0.0035103452 -0.50824755
		 0.85680687 0.026611736 -0.51495034 0.85680687 0.026611736 -0.51495034 0.86120385
		 0.0035103452 -0.50824755 0.99987662 0.013765193 -0.0075690551 0.99403089 0.10745843
		 -0.018850522 0.99403089 0.10745843 -0.018850522 0.99987662 0.013765193 -0.0075690551
		 0.86756587 0.020176493 0.49691287 0.86003989 0.15815018 0.48509789 0.86003989 0.15815018
		 0.48509789 0.86756587 0.020176493 0.49691287 0.49843588 0.021192215 0.86666751 0.4887763
		 0.16619596 0.8564325 0.4887763 0.16619596 0.8564325 0.49843588 0.021192215 0.86666751
		 -0.0063099666 0.016574766 0.99984264 -0.016799295 0.12964824 0.99141765 -0.016799295
		 0.12964824 0.99141765 -0.0063099666 0.016574766 0.99984264 -0.50788349 0.0074223904
		 0.86139381 -0.51564491 0.057430174 0.8548755 -0.51564491 0.057430174 0.8548755 -0.50788349
		 0.0074223904 0.86139381 -0.87070221 -0.0039604618 0.49179456 -0.87181413 -0.032217838
		 0.48877606 -0.87181413 -0.032217838 0.48877606 -0.87070221 -0.0039604618 0.49179456
		 -0.99986821 -0.014524314 -0.0072477423 -0.99330181 -0.11547123 -0.0042312215 -0.99986821
		 -0.014524314 -0.0072477423 -0.99874115 0.050021365 -0.0037533659 -0.86302614 0.072997652
		 -0.49985725 -0.86420923 -0.021317312 -0.5026809 -0.86420923 -0.021317312 -0.5026809
		 -0.86302614 0.072997652 -0.49985725 -0.49908635 0.076655753 -0.86315519 -0.50123143
		 -0.022408919 -0.86502302 -0.50123143 -0.022408919 -0.86502302 -0.49908635 0.076655753
		 -0.86315519 -0.0028624029 0.060062587 -0.99819046 -0.0059879683 -0.017483089 -0.99982929
		 -0.0059879683 -0.017483089 -0.99982929 -0.0028624029 0.060062587 -0.99819046 0.49511442
		 0.027475629 -0.86839324 0.49223042 -0.0079465508 -0.87042868 0.49223042 -0.0079465508
		 -0.87042868 0.49511442 0.027475629 -0.86839324 0.86230505 -0.012619674 -0.50623202
		 0.86120385 0.0035103452 -0.50824755 0.86120385 0.0035103452 -0.50824755 0.86230505
		 -0.012619674 -0.50623202 0.9987492 -0.049537126 -0.0067935814 0.99987662 0.013765193
		 -0.0075690551 0.99987662 0.013765193 -0.0075690551 0.9987492 -0.049537126 -0.0067935814
		 0.86539304 -0.073186181 0.49572036 0.86756587 0.020176493 0.49691287 0.86756587 0.020176493
		 0.49691287 0.86539304 -0.073186181 0.49572036 0.49706653 -0.076976918 0.86429131
		 0.49843588 0.021192215 0.86666751 0.49843588 0.021192215 0.86666751 0.49706653 -0.076976918
		 0.86429131 -0.0059027425 -0.059841193 0.99819052 -0.0063099666 0.016574766 0.99984264
		 -0.0063099666 0.016574766 0.99984264 -0.0059027425 -0.059841193 0.99819052 -0.50624019
		 -0.026578238 0.86198276 -0.50788349 0.0074223904 0.86139381 -0.50788349 0.0074223904
		 0.86139381 -0.50624019 -0.026578238 0.86198276 -0.86904347 0.013648771 0.49454749
		 -0.87070221 -0.0039604618 0.49179456 -0.87070221 -0.0039604618 0.49179456 -0.86904347
		 0.013648771 0.49454749 -0.99874115 0.050021365 -0.0037533659 -0.99986821 -0.014524314
		 -0.0072477423 -0.99874115 0.050021365 -0.0037533659 -0.99488223 0.10103289 0.0013250471
		 -0.85735893 0.1484977 -0.49283275 -0.86302614 0.072997652 -0.49985725 -0.86302614
		 0.072997652 -0.49985725 -0.85735893 0.1484977 -0.49283275 -0.49299487 0.15611361
		 -0.85591155 -0.49908635 0.076655753 -0.86315519 -0.49908635 0.076655753 -0.86315519
		 -0.49299487 0.15611361 -0.85591155 0.0021181866 0.12169972 -0.99256462 -0.0028624029
		 0.060062587 -0.99819046 -0.0028624029 0.060062587 -0.99819046 0.0021181866 0.12169972
		 -0.99256462 0.4977777 0.055068042 -0.86555463 0.49511442 0.027475629 -0.86839324
		 0.49511442 0.027475629 -0.86839324 0.4977777 0.055068042 -0.86555463 0.86185277 -0.025203928
		 -0.50653201 0.86230505 -0.012619674 -0.50623202 0.86230505 -0.012619674 -0.50623202
		 0.86185277 -0.025203928 -0.50653201 0.99518442 -0.097491816 -0.01016147 0.9987492
		 -0.049537126 -0.0067935814 0.9987492 -0.049537126 -0.0067935814 0.99518442 -0.097491816
		 -0.01016147 0.85997623 -0.14300784 0.48988724 0.86539304 -0.073186181 0.49572036
		 0.86539304 -0.073186181 0.49572036 0.85997623 -0.14300784 0.48988724 0.49183124 -0.15024659
		 0.85762936 0.49706653 -0.076976918 0.86429131 0.49706653 -0.076976918 0.86429131
		 0.49183124 -0.15024659 0.85762936;
	setAttr ".n[1826:1887]" -type "float3"  -0.0093686953 -0.11739822 0.99304062
		 -0.0059027425 -0.059841193 0.99819052 -0.0059027425 -0.059841193 0.99819052 -0.0093686953
		 -0.11739822 0.99304062 -0.50732809 -0.052716058 0.86013907 -0.50624019 -0.026578238
		 0.86198276 -0.50624019 -0.026578238 0.86198276 -0.50732809 -0.052716058 0.86013907
		 -0.86763066 0.027175779 0.49646586 -0.86904347 0.013648771 0.49454749 -0.86904347
		 0.013648771 0.49454749 -0.86763066 0.027175779 0.49646586 -0.99488223 0.10103289
		 0.0013250471 -0.99874115 0.050021365 -0.0037533659 -0.99488223 0.10103289 0.0013250471
		 -0.99219507 0.1220864 0.02537409 -0.85692513 0.1842953 -0.48136753 -0.85735893 0.1484977
		 -0.49283275 -0.85735893 0.1484977 -0.49283275 -0.85692513 0.1842953 -0.48136753 -0.48557997
		 0.19429423 -0.85232729 -0.49299487 0.15611361 -0.85591155 -0.49299487 0.15611361
		 -0.85591155 -0.48557997 0.19429423 -0.85232729 0.021199018 0.14913011 -0.98859036
		 0.0021181866 0.12169972 -0.99256462 0.0021181866 0.12169972 -0.99256462 0.021199018
		 0.14913011 -0.98859036 0.52513403 0.062475286 -0.84872323 0.4977777 0.055068042 -0.86555463
		 0.4977777 0.055068042 -0.86555463 0.52513403 0.062475286 -0.84872323 0.88034695 -0.03843604
		 -0.47277048 0.86185277 -0.025203928 -0.50653201 0.86185277 -0.025203928 -0.50653201
		 0.88034695 -0.03843604 -0.47277048 0.99199665 -0.12416001 0.022954296 0.99518442
		 -0.097491816 -0.01016147 0.99518442 -0.097491816 -0.01016147 0.99199665 -0.12416001
		 0.022954296 0.84759581 -0.17505249 0.50093704 0.85997623 -0.14300784 0.48988724 0.85997623
		 -0.14300784 0.48988724 0.84759581 -0.17505249 0.50093704 0.49575707 -0.18290901 0.84898126
		 0.49183124 -0.15024659 0.85762936 0.49183124 -0.15024659 0.85762936 0.49575707 -0.18290901
		 0.84898126 0.018804653 -0.14672934 0.98899794 -0.0093686953 -0.11739822 0.99304062
		 -0.0093686953 -0.11739822 0.99304062 0.018804653 -0.14672934 0.98899794 -0.47357202
		 -0.071720526 0.87783009 -0.50732809 -0.052716058 0.86013907 -0.50732809 -0.052716058
		 0.86013907 -0.47357202 -0.071720526 0.87783009 -0.84949178 0.026856834 0.52691787
		 -0.86763066 0.027175779 0.49646586 -0.86763066 0.027175779 0.49646586 -0.84949178
		 0.026856834 0.52691787 -0.99219507 0.1220864 0.02537409 -0.99488223 0.10103289 0.0013250471;
	setAttr -s 469 -ch 1888 ".fc[0:468]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 472 473 474 475
		f 4 4 5 6 7
		mu 0 4 476 477 478 479
		f 4 8 9 10 11
		mu 0 4 480 481 482 483
		f 4 12 13 14 15
		mu 0 4 484 485 486 487
		f 4 16 17 18 -2
		mu 0 4 473 488 489 474
		f 4 19 20 21 -6
		mu 0 4 477 490 491 478
		f 4 22 23 24 -10
		mu 0 4 481 492 493 482
		f 4 25 26 27 -14
		mu 0 4 485 494 495 486
		f 4 28 29 30 -18
		mu 0 4 488 496 497 489
		f 4 31 32 33 -21
		mu 0 4 490 498 499 491
		f 4 34 35 36 -24
		mu 0 4 492 500 501 493
		f 4 37 38 39 -27
		mu 0 4 494 502 503 495
		f 4 40 41 42 -30
		mu 0 4 496 504 505 497
		f 4 43 44 45 -33
		mu 0 4 498 506 507 499
		f 4 46 47 48 -36
		mu 0 4 500 508 509 501
		f 4 49 50 51 -39
		mu 0 4 502 510 511 503
		f 4 52 53 54 -42
		mu 0 4 504 512 513 505
		f 4 55 56 57 -45
		mu 0 4 506 514 515 507
		f 4 58 59 60 -48
		mu 0 4 508 516 517 509
		f 4 61 62 63 -51
		mu 0 4 510 518 519 511
		f 4 64 65 66 -54
		mu 0 4 512 520 521 513
		f 4 67 68 69 -57
		mu 0 4 514 522 523 515
		f 4 70 71 72 -60
		mu 0 4 516 524 525 517
		f 4 73 74 75 -63
		mu 0 4 518 526 527 519
		f 4 76 77 78 -66
		mu 0 4 520 528 529 521
		f 4 79 80 81 -69
		mu 0 4 522 530 531 523
		f 4 82 83 84 -72
		mu 0 4 524 532 533 525
		f 4 85 86 87 -75
		mu 0 4 526 534 535 527
		f 4 88 89 90 -78
		mu 0 4 528 536 537 529
		f 4 91 92 93 -81
		mu 0 4 530 538 539 531
		f 4 94 95 96 -84
		mu 0 4 532 540 541 533
		f 4 97 98 99 -87
		mu 0 4 534 542 543 535
		f 4 100 101 102 -90
		mu 0 4 536 544 545 537
		f 4 103 104 105 -93
		mu 0 4 538 546 547 539
		f 4 106 107 108 -96
		mu 0 4 540 548 549 541
		f 4 109 110 111 -99
		mu 0 4 542 550 551 543
		f 4 112 113 114 -102
		mu 0 4 544 552 553 545
		f 4 115 116 117 -105
		mu 0 4 546 554 555 547
		f 4 118 119 120 -108
		mu 0 4 548 556 557 549
		f 4 121 122 123 -111
		mu 0 4 550 558 559 551
		f 4 124 125 126 -114
		mu 0 4 552 560 561 553
		f 4 127 128 129 -117
		mu 0 4 554 562 563 555
		f 4 130 131 132 -120
		mu 0 4 556 564 565 557
		f 4 133 134 135 -123
		mu 0 4 558 566 567 559
		f 4 136 137 138 -126
		mu 0 4 560 568 569 561
		f 4 139 140 141 -129
		mu 0 4 562 570 571 563
		f 4 142 143 144 -132
		mu 0 4 564 572 573 565
		f 4 145 146 147 -135
		mu 0 4 566 574 575 567
		f 4 148 149 150 -138
		mu 0 4 568 576 577 569
		f 4 151 152 153 -141
		mu 0 4 570 578 579 571
		f 4 154 155 156 -144
		mu 0 4 572 580 581 573
		f 4 157 158 159 -147
		mu 0 4 574 582 583 575
		f 4 160 161 162 -150
		mu 0 4 576 584 585 577
		f 4 163 164 165 -153
		mu 0 4 578 586 587 579
		f 4 166 167 168 -156
		mu 0 4 580 588 589 581
		f 4 169 170 171 -159
		mu 0 4 582 590 591 583
		f 4 172 173 174 -162
		mu 0 4 584 592 593 585
		f 4 175 176 177 -165
		mu 0 4 586 594 595 587
		f 4 178 179 180 -168
		mu 0 4 588 596 597 589
		f 4 181 182 183 -171
		mu 0 4 590 598 599 591
		f 4 184 185 186 -174
		mu 0 4 592 600 601 593
		f 4 187 188 189 -177
		mu 0 4 594 602 603 595
		f 4 190 191 192 -180
		mu 0 4 596 604 605 597
		f 4 193 194 195 -183
		mu 0 4 598 606 607 599
		f 4 196 197 198 -186
		mu 0 4 600 608 609 601
		f 4 199 200 201 -189
		mu 0 4 602 610 611 603
		f 4 202 203 204 -192
		mu 0 4 604 612 613 605
		f 4 205 206 207 -195
		mu 0 4 606 614 615 607
		f 4 208 209 210 -198
		mu 0 4 608 616 617 609
		f 4 211 212 213 -201
		mu 0 4 610 618 619 611
		f 4 214 215 216 -204
		mu 0 4 612 620 621 613
		f 4 217 218 219 -207
		mu 0 4 614 622 623 615
		f 4 220 221 222 -210
		mu 0 4 616 624 625 617
		f 4 223 224 225 -213
		mu 0 4 618 626 627 619
		f 4 226 227 228 -216
		mu 0 4 620 628 629 621
		f 4 229 230 231 -219
		mu 0 4 622 630 631 623
		f 4 232 233 234 -222
		mu 0 4 624 632 633 625
		f 4 235 236 237 -225
		mu 0 4 626 634 635 627
		f 4 238 239 240 -228
		mu 0 4 628 636 637 629
		f 4 241 242 243 -231
		mu 0 4 630 638 639 631
		f 4 244 245 246 -234
		mu 0 4 632 640 641 633
		f 4 247 248 249 -237
		mu 0 4 634 642 643 635
		f 4 250 251 252 -240
		mu 0 4 636 644 645 637
		f 4 253 254 255 -243
		mu 0 4 638 646 647 639
		f 4 256 257 258 -246
		mu 0 4 640 648 649 641
		f 4 259 260 261 -249
		mu 0 4 642 650 651 643
		f 4 262 263 264 -252
		mu 0 4 644 652 653 645
		f 4 265 266 267 -255
		mu 0 4 646 654 655 647
		f 4 268 269 270 -258
		mu 0 4 648 656 657 649
		f 4 271 272 273 -261
		mu 0 4 650 658 659 651
		f 4 274 275 276 -264
		mu 0 4 652 660 661 653
		f 4 277 278 279 -267
		mu 0 4 654 662 663 655
		f 4 280 281 282 -270
		mu 0 4 656 664 665 657
		f 4 283 284 285 -273
		mu 0 4 658 666 667 659
		f 4 286 287 288 -276
		mu 0 4 660 668 669 661
		f 4 289 290 291 -279
		mu 0 4 662 670 671 663
		f 4 292 293 294 295
		mu 0 4 72 73 74 75
		f 4 -294 296 297 298
		mu 0 4 74 73 76 77
		f 4 -298 299 300 301
		mu 0 4 77 76 78 79
		f 4 -301 302 303 304
		mu 0 4 79 78 80 81
		f 4 -304 305 306 307
		mu 0 4 81 80 82 83
		f 4 -307 308 309 310
		mu 0 4 83 82 84 85
		f 4 -310 311 312 313
		mu 0 4 85 84 86 87
		f 4 -313 314 315 316
		mu 0 4 87 86 88 89
		f 4 -316 317 318 319
		mu 0 4 89 88 90 91
		f 4 -319 320 321 322
		mu 0 4 91 90 92 93
		f 4 -322 323 324 325
		mu 0 4 93 92 94 95
		f 4 -325 326 327 328
		mu 0 4 95 94 96 97
		f 4 -328 329 330 331
		mu 0 4 97 96 98 99
		f 4 -331 332 333 334
		mu 0 4 99 98 100 101
		f 4 -334 335 336 337
		mu 0 4 101 100 102 103
		f 4 -337 338 339 340
		mu 0 4 103 102 104 105
		f 4 -340 341 342 343
		mu 0 4 105 104 106 107
		f 4 -343 344 345 346
		mu 0 4 107 106 108 109
		f 4 -346 347 348 349
		mu 0 4 109 108 110 111
		f 4 -349 350 351 352
		mu 0 4 111 110 112 113
		f 4 -352 353 354 355
		mu 0 4 113 112 114 115
		f 4 -355 356 357 358
		mu 0 4 115 114 116 117
		f 4 -358 359 360 361
		mu 0 4 117 116 118 119
		f 4 -361 362 363 364
		mu 0 4 119 118 120 121
		f 4 365 366 367 368
		mu 0 4 122 123 124 125
		f 4 -367 369 370 371
		mu 0 4 124 123 126 127
		f 4 -371 372 373 374
		mu 0 4 127 126 128 129
		f 4 -374 375 376 377
		mu 0 4 129 128 130 131
		f 4 -377 378 379 380
		mu 0 4 131 130 132 133
		f 4 -380 381 382 383
		mu 0 4 133 132 134 135
		f 4 -383 384 385 386
		mu 0 4 135 134 136 137
		f 4 -386 387 388 389
		mu 0 4 137 136 138 139
		f 4 -389 390 391 392
		mu 0 4 139 138 140 141
		f 4 -392 393 394 395
		mu 0 4 141 140 142 143
		f 4 -395 396 397 398
		mu 0 4 143 142 144 145
		f 4 -398 399 400 401
		mu 0 4 145 144 146 147
		f 4 -401 402 403 404
		mu 0 4 147 146 148 149
		f 4 -404 405 406 407
		mu 0 4 149 148 150 151
		f 4 -407 408 409 410
		mu 0 4 151 150 152 153
		f 4 -410 411 412 413
		mu 0 4 153 152 154 155
		f 4 -413 414 415 416
		mu 0 4 155 154 156 157
		f 4 -416 417 418 419
		mu 0 4 157 156 158 159
		f 4 -419 420 421 422
		mu 0 4 159 158 160 161
		f 4 -422 423 424 425
		mu 0 4 161 160 162 163
		f 4 -425 426 427 428
		mu 0 4 163 162 164 165
		f 4 -428 429 430 431
		mu 0 4 165 164 166 167
		f 4 -431 432 433 434
		mu 0 4 167 166 168 169
		f 4 -434 435 436 437
		mu 0 4 169 168 170 171
		f 4 438 439 440 441
		mu 0 4 172 173 174 175
		f 4 -440 442 443 444
		mu 0 4 174 173 176 177
		f 4 -444 445 446 447
		mu 0 4 177 176 178 179
		f 4 -447 448 449 450
		mu 0 4 179 178 180 181
		f 4 -450 451 452 453
		mu 0 4 181 180 182 183
		f 4 -453 454 455 456
		mu 0 4 183 182 184 185
		f 4 -456 457 458 459
		mu 0 4 185 184 186 187
		f 4 -459 460 461 462
		mu 0 4 187 186 188 189
		f 4 -462 463 464 465
		mu 0 4 189 188 190 191
		f 4 -465 466 467 468
		mu 0 4 191 190 192 193
		f 4 -468 469 470 471
		mu 0 4 193 192 194 195
		f 4 -471 472 473 474
		mu 0 4 195 194 196 197
		f 4 -474 475 476 477
		mu 0 4 197 196 198 199
		f 4 -477 478 479 480
		mu 0 4 199 198 200 201
		f 4 -480 481 482 483
		mu 0 4 201 200 202 203
		f 4 -483 484 485 486
		mu 0 4 203 202 204 205
		f 4 -486 487 488 489
		mu 0 4 205 204 206 207
		f 4 -489 490 491 492
		mu 0 4 207 206 208 209
		f 4 -492 493 494 495
		mu 0 4 209 208 210 211
		f 4 -495 496 497 498
		mu 0 4 211 210 212 213
		f 4 -498 499 500 501
		mu 0 4 213 212 214 215
		f 4 -501 502 503 504
		mu 0 4 215 214 216 217
		f 4 -504 505 506 507
		mu 0 4 217 216 218 219
		f 4 -507 508 509 510
		mu 0 4 219 218 220 221
		f 4 511 512 513 514
		mu 0 4 222 223 224 225
		f 4 -513 515 516 517
		mu 0 4 224 223 226 227
		f 4 -517 518 519 520
		mu 0 4 227 226 228 229
		f 4 -520 521 522 523
		mu 0 4 229 228 230 231
		f 4 -523 524 525 526
		mu 0 4 231 230 232 233
		f 4 -526 527 528 529
		mu 0 4 233 232 234 235
		f 4 -529 530 531 532
		mu 0 4 235 234 236 237
		f 4 -532 533 534 535
		mu 0 4 237 236 238 239
		f 4 -535 536 537 538
		mu 0 4 239 238 240 241
		f 4 -538 539 540 541
		mu 0 4 241 240 242 243
		f 4 -541 542 543 544
		mu 0 4 243 242 244 245
		f 4 -544 545 546 547
		mu 0 4 245 244 246 247
		f 4 -547 548 549 550
		mu 0 4 247 246 248 249
		f 4 -550 551 552 553
		mu 0 4 249 248 250 251
		f 4 -553 554 555 556
		mu 0 4 251 250 252 253
		f 4 -556 557 558 559
		mu 0 4 253 252 254 255
		f 4 -559 560 561 562
		mu 0 4 255 254 256 257
		f 4 -562 563 564 565
		mu 0 4 257 256 258 259
		f 4 -565 566 567 568
		mu 0 4 259 258 260 261
		f 4 -568 569 570 571
		mu 0 4 261 260 262 263
		f 4 -571 572 573 574
		mu 0 4 263 262 264 265
		f 4 -574 575 576 577
		mu 0 4 265 264 266 267
		f 4 -577 578 579 580
		mu 0 4 267 266 268 269
		f 4 -580 581 582 583
		mu 0 4 269 268 270 271
		f 4 585 584 -296 586
		mu 0 4 272 273 72 75
		f 4 -587 -295 587 -1
		mu 0 4 272 75 74 274
		f 4 -588 -299 588 -17
		mu 0 4 274 74 77 275
		f 4 -589 -302 589 -29
		mu 0 4 275 77 79 276
		f 4 -590 -305 590 -41
		mu 0 4 276 79 81 277
		f 4 -591 -308 591 -53
		mu 0 4 277 81 83 278
		f 4 -592 -311 592 -65
		mu 0 4 278 83 85 279
		f 4 -593 -314 593 -77
		mu 0 4 279 85 87 280
		f 4 -594 -317 594 -89
		mu 0 4 280 87 89 281
		f 4 -595 -320 595 -101
		mu 0 4 281 89 91 282
		f 4 -596 -323 596 -113
		mu 0 4 282 91 93 283
		f 4 -597 -326 597 -125
		mu 0 4 283 93 95 284
		f 4 -598 -329 598 -137
		mu 0 4 284 95 97 285
		f 4 -599 -332 599 -149
		mu 0 4 285 97 99 286
		f 4 -600 -335 600 -161
		mu 0 4 286 99 101 287
		f 4 -601 -338 601 -173
		mu 0 4 287 101 103 288
		f 4 -602 -341 602 -185
		mu 0 4 288 103 105 289
		f 4 -603 -344 603 -197
		mu 0 4 289 105 107 290
		f 4 -604 -347 604 -209
		mu 0 4 290 107 109 291
		f 4 -605 -350 605 -221
		mu 0 4 291 109 111 292
		f 4 -606 -353 606 -233
		mu 0 4 292 111 113 293
		f 4 -607 -356 607 -245
		mu 0 4 293 113 115 294
		f 4 -608 -359 608 -257
		mu 0 4 294 115 117 295
		f 4 -609 -362 609 -269
		mu 0 4 295 117 119 296
		f 4 -610 -365 610 -281
		mu 0 4 296 119 121 297
		f 4 -611 -364 611 612
		mu 0 4 297 121 120 298
		f 4 -612 -363 613 -292
		mu 0 4 298 120 118 299
		f 4 -614 -360 614 -280
		mu 0 4 299 118 116 300
		f 4 -615 -357 615 -268
		mu 0 4 300 116 114 301
		f 4 -616 -354 616 -256
		mu 0 4 301 114 112 302
		f 4 -617 -351 617 -244
		mu 0 4 302 112 110 303
		f 4 -618 -348 618 -232
		mu 0 4 303 110 108 304
		f 4 -619 -345 619 -220
		mu 0 4 304 108 106 305
		f 4 -620 -342 620 -208
		mu 0 4 305 106 104 306
		f 4 -621 -339 621 -196
		mu 0 4 306 104 102 307
		f 4 -622 -336 622 -184
		mu 0 4 307 102 100 308
		f 4 -623 -333 623 -172
		mu 0 4 308 100 98 309
		f 4 -624 -330 624 -160
		mu 0 4 309 98 96 310
		f 4 -625 -327 625 -148
		mu 0 4 310 96 94 311
		f 4 -626 -324 626 -136
		mu 0 4 311 94 92 312
		f 4 -627 -321 627 -124
		mu 0 4 312 92 90 313
		f 4 -628 -318 628 -112
		mu 0 4 313 90 88 314
		f 4 -629 -315 629 -100
		mu 0 4 314 88 86 315
		f 4 -630 -312 630 -88
		mu 0 4 315 86 84 316
		f 4 -631 -309 631 -76
		mu 0 4 316 84 82 317
		f 4 -632 -306 632 -64
		mu 0 4 317 82 80 318
		f 4 -633 -303 633 -52
		mu 0 4 318 80 78 319
		f 4 -634 -300 634 -40
		mu 0 4 319 78 76 320
		f 4 -635 -297 635 -28
		mu 0 4 320 76 73 321
		f 4 -636 -293 -585 -15
		mu 0 4 321 73 72 273
		f 4 637 636 -369 638
		mu 0 4 322 323 122 125
		f 4 -639 -368 639 -5
		mu 0 4 322 125 124 324
		f 4 -640 -372 640 -20
		mu 0 4 324 124 127 325
		f 4 -641 -375 641 -32
		mu 0 4 325 127 129 326
		f 4 -642 -378 642 -44
		mu 0 4 326 129 131 327
		f 4 -643 -381 643 -56
		mu 0 4 327 131 133 328
		f 4 -644 -384 644 -68
		mu 0 4 328 133 135 329
		f 4 -645 -387 645 -80
		mu 0 4 329 135 137 330
		f 4 -646 -390 646 -92
		mu 0 4 330 137 139 331
		f 4 -647 -393 647 -104
		mu 0 4 331 139 141 332
		f 4 -648 -396 648 -116
		mu 0 4 332 141 143 333
		f 4 -649 -399 649 -128
		mu 0 4 333 143 145 334
		f 4 -650 -402 650 -140
		mu 0 4 334 145 147 335
		f 4 -651 -405 651 -152
		mu 0 4 335 147 149 336
		f 4 -652 -408 652 -164
		mu 0 4 336 149 151 337
		f 4 -653 -411 653 -176
		mu 0 4 337 151 153 338
		f 4 -654 -414 654 -188
		mu 0 4 338 153 155 339
		f 4 -655 -417 655 -200
		mu 0 4 339 155 157 340
		f 4 -656 -420 656 -212
		mu 0 4 340 157 159 341
		f 4 -657 -423 657 -224
		mu 0 4 341 159 161 342
		f 4 -658 -426 658 -236
		mu 0 4 342 161 163 343
		f 4 -659 -429 659 -248
		mu 0 4 343 163 165 344
		f 4 -660 -432 660 -260
		mu 0 4 344 165 167 345
		f 4 -661 -435 661 -272
		mu 0 4 345 167 169 346
		f 4 -662 -438 662 -284
		mu 0 4 346 169 171 347
		f 4 -663 -437 663 664
		mu 0 4 347 171 170 348
		f 4 -664 -436 665 -283
		mu 0 4 348 170 168 349
		f 4 -666 -433 666 -271
		mu 0 4 349 168 166 350
		f 4 -667 -430 667 -259
		mu 0 4 350 166 164 351
		f 4 -668 -427 668 -247
		mu 0 4 351 164 162 352
		f 4 -669 -424 669 -235
		mu 0 4 352 162 160 353
		f 4 -670 -421 670 -223
		mu 0 4 353 160 158 354
		f 4 -671 -418 671 -211
		mu 0 4 354 158 156 355
		f 4 -672 -415 672 -199
		mu 0 4 355 156 154 356
		f 4 -673 -412 673 -187
		mu 0 4 356 154 152 357
		f 4 -674 -409 674 -175
		mu 0 4 357 152 150 358
		f 4 -675 -406 675 -163
		mu 0 4 358 150 148 359
		f 4 -676 -403 676 -151
		mu 0 4 359 148 146 360
		f 4 -677 -400 677 -139
		mu 0 4 360 146 144 361
		f 4 -678 -397 678 -127
		mu 0 4 361 144 142 362
		f 4 -679 -394 679 -115
		mu 0 4 362 142 140 363
		f 4 -680 -391 680 -103
		mu 0 4 363 140 138 364
		f 4 -681 -388 681 -91
		mu 0 4 364 138 136 365
		f 4 -682 -385 682 -79
		mu 0 4 365 136 134 366
		f 4 -683 -382 683 -67
		mu 0 4 366 134 132 367
		f 4 -684 -379 684 -55
		mu 0 4 367 132 130 368
		f 4 -685 -376 685 -43
		mu 0 4 368 130 128 369
		f 4 -686 -373 686 -31
		mu 0 4 369 128 126 370
		f 4 -687 -370 687 -19
		mu 0 4 370 126 123 371
		f 4 -688 -366 -637 -3
		mu 0 4 371 123 122 323
		f 4 689 688 -442 690
		mu 0 4 372 373 172 175
		f 4 -691 -441 691 -9
		mu 0 4 372 175 174 374
		f 4 -692 -445 692 -23
		mu 0 4 374 174 177 375
		f 4 -693 -448 693 -35
		mu 0 4 375 177 179 376
		f 4 -694 -451 694 -47
		mu 0 4 376 179 181 377
		f 4 -695 -454 695 -59
		mu 0 4 377 181 183 378
		f 4 -696 -457 696 -71
		mu 0 4 378 183 185 379
		f 4 -697 -460 697 -83
		mu 0 4 379 185 187 380
		f 4 -698 -463 698 -95
		mu 0 4 380 187 189 381
		f 4 -699 -466 699 -107
		mu 0 4 381 189 191 382
		f 4 -700 -469 700 -119
		mu 0 4 382 191 193 383
		f 4 -701 -472 701 -131
		mu 0 4 383 193 195 384
		f 4 -702 -475 702 -143
		mu 0 4 384 195 197 385
		f 4 -703 -478 703 -155
		mu 0 4 385 197 199 386
		f 4 -704 -481 704 -167
		mu 0 4 386 199 201 387
		f 4 -705 -484 705 -179
		mu 0 4 387 201 203 388
		f 4 -706 -487 706 -191
		mu 0 4 388 203 205 389
		f 4 -707 -490 707 -203
		mu 0 4 389 205 207 390
		f 4 -708 -493 708 -215
		mu 0 4 390 207 209 391
		f 4 -709 -496 709 -227
		mu 0 4 391 209 211 392
		f 4 -710 -499 710 -239
		mu 0 4 392 211 213 393
		f 4 -711 -502 711 -251
		mu 0 4 393 213 215 394
		f 4 -712 -505 712 -263
		mu 0 4 394 215 217 395
		f 4 -713 -508 713 -275
		mu 0 4 395 217 219 396
		f 4 -714 -511 714 -287
		mu 0 4 396 219 221 397
		f 4 -715 -510 715 716
		mu 0 4 397 221 220 398
		f 4 -716 -509 717 -286
		mu 0 4 398 220 218 399
		f 4 -718 -506 718 -274
		mu 0 4 399 218 216 400
		f 4 -719 -503 719 -262
		mu 0 4 400 216 214 401
		f 4 -720 -500 720 -250
		mu 0 4 401 214 212 402
		f 4 -721 -497 721 -238
		mu 0 4 402 212 210 403
		f 4 -722 -494 722 -226
		mu 0 4 403 210 208 404
		f 4 -723 -491 723 -214
		mu 0 4 404 208 206 405
		f 4 -724 -488 724 -202
		mu 0 4 405 206 204 406
		f 4 -725 -485 725 -190
		mu 0 4 406 204 202 407
		f 4 -726 -482 726 -178
		mu 0 4 407 202 200 408
		f 4 -727 -479 727 -166
		mu 0 4 408 200 198 409
		f 4 -728 -476 728 -154
		mu 0 4 409 198 196 410
		f 4 -729 -473 729 -142
		mu 0 4 410 196 194 411
		f 4 -730 -470 730 -130
		mu 0 4 411 194 192 412
		f 4 -731 -467 731 -118
		mu 0 4 412 192 190 413
		f 4 -732 -464 732 -106
		mu 0 4 413 190 188 414
		f 4 -733 -461 733 -94
		mu 0 4 414 188 186 415
		f 4 -734 -458 734 -82
		mu 0 4 415 186 184 416
		f 4 -735 -455 735 -70
		mu 0 4 416 184 182 417
		f 4 -736 -452 736 -58
		mu 0 4 417 182 180 418
		f 4 -737 -449 737 -46
		mu 0 4 418 180 178 419
		f 4 -738 -446 738 -34
		mu 0 4 419 178 176 420
		f 4 -739 -443 739 -22
		mu 0 4 420 176 173 421
		f 4 -740 -439 -689 -7
		mu 0 4 421 173 172 373
		f 4 741 740 -515 742
		mu 0 4 422 423 222 225
		f 4 -743 -514 743 -13
		mu 0 4 422 225 224 424
		f 4 -744 -518 744 -26
		mu 0 4 424 224 227 425
		f 4 -745 -521 745 -38
		mu 0 4 425 227 229 426
		f 4 -746 -524 746 -50
		mu 0 4 426 229 231 427
		f 4 -747 -527 747 -62
		mu 0 4 427 231 233 428
		f 4 -748 -530 748 -74
		mu 0 4 428 233 235 429
		f 4 -749 -533 749 -86
		mu 0 4 429 235 237 430
		f 4 -750 -536 750 -98
		mu 0 4 430 237 239 431
		f 4 -751 -539 751 -110
		mu 0 4 431 239 241 432
		f 4 -752 -542 752 -122
		mu 0 4 432 241 243 433
		f 4 -753 -545 753 -134
		mu 0 4 433 243 245 434
		f 4 -754 -548 754 -146
		mu 0 4 434 245 247 435
		f 4 -755 -551 755 -158
		mu 0 4 435 247 249 436
		f 4 -756 -554 756 -170
		mu 0 4 436 249 251 437
		f 4 -757 -557 757 -182
		mu 0 4 437 251 253 438
		f 4 -758 -560 758 -194
		mu 0 4 438 253 255 439
		f 4 -759 -563 759 -206
		mu 0 4 439 255 257 440
		f 4 -760 -566 760 -218
		mu 0 4 440 257 259 441
		f 4 -761 -569 761 -230
		mu 0 4 441 259 261 442
		f 4 -762 -572 762 -242
		mu 0 4 442 261 263 443
		f 4 -763 -575 763 -254
		mu 0 4 443 263 265 444
		f 4 -764 -578 764 -266
		mu 0 4 444 265 267 445
		f 4 -765 -581 765 -278
		mu 0 4 445 267 269 446
		f 4 -766 -584 766 -290
		mu 0 4 446 269 271 447
		f 4 -767 -583 767 768
		mu 0 4 447 271 270 448
		f 4 -768 -582 769 -289
		mu 0 4 448 270 268 449
		f 4 -770 -579 770 -277
		mu 0 4 449 268 266 450
		f 4 -771 -576 771 -265
		mu 0 4 450 266 264 451
		f 4 -772 -573 772 -253
		mu 0 4 451 264 262 452
		f 4 -773 -570 773 -241
		mu 0 4 452 262 260 453
		f 4 -774 -567 774 -229
		mu 0 4 453 260 258 454
		f 4 -775 -564 775 -217
		mu 0 4 454 258 256 455
		f 4 -776 -561 776 -205
		mu 0 4 455 256 254 456
		f 4 -777 -558 777 -193
		mu 0 4 456 254 252 457
		f 4 -778 -555 778 -181
		mu 0 4 457 252 250 458
		f 4 -779 -552 779 -169
		mu 0 4 458 250 248 459
		f 4 -780 -549 780 -157
		mu 0 4 459 248 246 460
		f 4 -781 -546 781 -145
		mu 0 4 460 246 244 461
		f 4 -782 -543 782 -133
		mu 0 4 461 244 242 462
		f 4 -783 -540 783 -121
		mu 0 4 462 242 240 463
		f 4 -784 -537 784 -109
		mu 0 4 463 240 238 464
		f 4 -785 -534 785 -97
		mu 0 4 464 238 236 465
		f 4 -786 -531 786 -85
		mu 0 4 465 236 234 466
		f 4 -787 -528 787 -73
		mu 0 4 466 234 232 467
		f 4 -788 -525 788 -61
		mu 0 4 467 232 230 468
		f 4 -789 -522 789 -49
		mu 0 4 468 230 228 469
		f 4 -790 -519 790 -37
		mu 0 4 469 228 226 470
		f 4 -791 -516 791 -25
		mu 0 4 470 226 223 471
		f 4 -792 -512 -741 -11
		mu 0 4 471 223 222 423
		f 4 -613 792 793 794
		mu 0 4 664 671 672 673
		f 4 -795 795 796 -282
		mu 0 4 664 673 674 665
		f 4 -665 -797 797 798
		mu 0 4 666 665 674 675
		f 4 -799 799 800 -285
		mu 0 4 666 675 676 667
		f 4 -717 -801 801 802
		mu 0 4 668 667 676 677
		f 4 -803 803 804 -288
		mu 0 4 668 677 678 669
		f 4 -769 -805 805 806
		mu 0 4 670 669 678 679
		f 4 -807 807 -793 -291
		mu 0 4 670 679 672 671
		f 5 -794 808 809 810 811
		mu 0 5 673 672 680 681 682
		f 4 -812 812 813 -796
		mu 0 4 673 682 683 674
		f 5 -798 -814 814 815 816
		mu 0 5 675 674 683 684 685
		f 4 -817 817 818 -800
		mu 0 4 675 685 686 676
		f 5 -802 -819 819 820 821
		mu 0 5 677 676 686 687 688
		f 4 -822 822 823 -804
		mu 0 4 677 688 689 678
		f 5 -806 -824 824 825 826
		mu 0 5 679 678 689 690 691
		f 4 -827 827 -809 -808
		mu 0 4 679 691 680 672
		f 12 828 829 830 831 832 833 834 835 836 837 838 839
		mu 0 12 0 1 2 3 4 5 6 7 8 9 10 11
		f 4 840 841 842 -810
		mu 0 4 12 13 14 15
		f 4 -843 843 844 -811
		mu 0 4 15 14 16 17
		f 4 -845 845 846 -813
		mu 0 4 17 16 18 19
		f 4 -847 847 848 -815
		mu 0 4 19 18 20 21
		f 4 -849 849 850 -816
		mu 0 4 21 20 22 23
		f 4 -851 851 852 -818
		mu 0 4 23 22 24 25
		f 4 -853 853 854 -820
		mu 0 4 25 24 26 27
		f 4 -855 855 856 -821
		mu 0 4 27 26 28 29
		f 4 -857 857 858 -823
		mu 0 4 29 28 30 31
		f 4 -859 859 860 -825
		mu 0 4 31 30 32 33
		f 4 -861 861 862 -826
		mu 0 4 33 32 34 35
		f 4 -863 863 -841 -828
		mu 0 4 35 34 13 12
		f 4 864 865 866 -842
		mu 0 4 13 36 37 14
		f 4 -867 867 868 -844
		mu 0 4 14 37 38 16
		f 4 -869 869 870 -846
		mu 0 4 16 38 39 18
		f 4 -871 871 872 -848
		mu 0 4 18 39 40 20
		f 4 -873 873 874 -850
		mu 0 4 20 40 41 22
		f 4 -875 875 876 -852
		mu 0 4 22 41 42 24
		f 4 -877 877 878 -854
		mu 0 4 24 42 43 26
		f 4 -879 879 880 -856
		mu 0 4 26 43 44 28
		f 4 -881 881 882 -858
		mu 0 4 28 44 45 30
		f 4 -883 883 884 -860
		mu 0 4 30 45 46 32
		f 4 -885 885 886 -862
		mu 0 4 32 46 47 34
		f 4 -887 887 -865 -864
		mu 0 4 34 47 36 13
		f 4 888 889 890 -866
		mu 0 4 36 48 49 37
		f 4 -891 891 892 -868
		mu 0 4 37 49 50 38
		f 4 -893 893 894 -870
		mu 0 4 38 50 51 39
		f 4 -895 895 896 -872
		mu 0 4 39 51 52 40
		f 4 -897 897 898 -874
		mu 0 4 40 52 53 41
		f 4 -899 899 900 -876
		mu 0 4 41 53 54 42
		f 4 -901 901 902 -878
		mu 0 4 42 54 55 43
		f 4 -903 903 904 -880
		mu 0 4 43 55 56 44
		f 4 -905 905 906 -882
		mu 0 4 44 56 57 45
		f 4 -907 907 908 -884
		mu 0 4 45 57 58 46
		f 4 -909 909 910 -886
		mu 0 4 46 58 59 47
		f 4 -911 911 -889 -888
		mu 0 4 47 59 48 36
		f 4 912 913 914 -890
		mu 0 4 48 60 61 49
		f 4 -915 915 916 -892
		mu 0 4 49 61 62 50
		f 4 -917 917 918 -894
		mu 0 4 50 62 63 51
		f 4 -919 919 920 -896
		mu 0 4 51 63 64 52
		f 4 -921 921 922 -898
		mu 0 4 52 64 65 53
		f 4 -923 923 924 -900
		mu 0 4 53 65 66 54
		f 4 -925 925 926 -902
		mu 0 4 54 66 67 55
		f 4 -927 927 928 -904
		mu 0 4 55 67 68 56
		f 4 -929 929 930 -906
		mu 0 4 56 68 69 57
		f 4 -931 931 932 -908
		mu 0 4 57 69 70 58
		f 4 -933 933 934 -910
		mu 0 4 58 70 71 59
		f 4 -935 935 -913 -912
		mu 0 4 59 71 60 48
		f 4 936 -840 937 -914
		mu 0 4 60 0 11 61
		f 4 -938 -839 938 -916
		mu 0 4 61 11 10 62
		f 4 -939 -838 939 -918
		mu 0 4 62 10 9 63
		f 4 -940 -837 940 -920
		mu 0 4 63 9 8 64
		f 4 -941 -836 941 -922
		mu 0 4 64 8 7 65
		f 4 -942 -835 942 -924
		mu 0 4 65 7 6 66
		f 4 -943 -834 943 -926
		mu 0 4 66 6 5 67
		f 4 -944 -833 944 -928
		mu 0 4 67 5 4 68
		f 4 -945 -832 945 -930
		mu 0 4 68 4 3 69
		f 4 -946 -831 946 -932
		mu 0 4 69 3 2 70
		f 4 -947 -830 947 -934
		mu 0 4 70 2 1 71
		f 4 -948 -829 -937 -936
		mu 0 4 71 1 0 60;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".dr" 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode mesh -n "polySurfaceShape1" -p "CandleRed";
	rename -uid "99CB95CF-484A-0C79-E0C4-96A54F06E177";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 592 ".vt";
	setAttr ".vt[0:165]"  0.1 0 0 0.086602539 0 -0.050000001 0.049999997 0 -0.086602546
		 -4.371139e-09 0 -0.1 -0.050000008 0 -0.086602539 -0.086602539 0 -0.050000008 -0.1 0 8.742278e-09
		 -0.086602531 0 0.050000019 -0.049999993 0 0.086602546 1.1924881e-09 0 0.1 0.049999993 0 0.086602546
		 0.086602561 0 0.049999978 -0.07929448 2.000000238419 6.8842323e-09 -0.068671048 2.000000238419 -0.039647214
		 -0.039647236 2.000000238419 -0.06867104 -6.5393198e-09 2.000000238419 -0.079294473
		 0.039647229 2.000000238419 -0.068671033 0.068671025 2.000000238419 -0.039647263 0.07929448 2.000000238419 -1.3593036e-08
		 0.068671033 2.000000238419 0.039647244 0.039647251 2.000000238419 0.068671033 1.4911762e-08 2.000000238419 0.07929448
		 -0.039647233 2.000000238419 0.06867104 -0.068671033 2.000000238419 0.039647244 0.098289154 0.083333343 -0.012940052
		 0.060350973 0.083333343 0.078650869 0.012940053 0.083333343 0.098289154 -0.078650855 0.083333343 0.060350996
		 -0.098289154 0.083333343 0.012940059 -0.060350984 0.083333343 -0.078650862 -0.012940055 0.083333343 -0.098289154
		 0.078650862 0.083333343 -0.060350981 0.09492594 0.16666669 -0.025435328 0.069490604 0.16666669 0.069490612
		 0.02543533 0.16666669 0.09492594 -0.069490597 0.16666669 0.069490619 -0.094925933 0.16666669 0.025435338
		 -0.069490612 0.16666669 -0.069490604 -0.025435334 0.16666669 -0.09492594 0.069490604 0.16666669 -0.069490604
		 0.089996777 0.25000003 -0.037277889 0.077281982 0.25000003 0.059300553 0.037277889 0.25000003 0.089996777
		 -0.059300534 0.25000003 0.077282004 -0.08999677 0.25000003 0.037277896 -0.077281997 0.25000003 -0.059300549
		 -0.037277892 0.25000003 -0.08999677 0.059300553 0.25000003 -0.077281989 0.083613977 0.33333337 -0.048274528
		 0.083613947 0.33333337 0.048274569 0.048274532 0.33333337 0.083613977 -0.048274547 0.33333337 0.083613962
		 -0.083613969 0.33333337 0.048274536 -0.083613954 0.33333337 -0.048274554 -0.048274532 0.33333337 -0.083613969
		 0.048274558 0.33333337 -0.083613947 0.075913094 0.41666672 -0.058250148 0.088402651 0.41666672 0.036617603
		 0.058250148 0.41666672 0.075913094 -0.036617577 0.41666672 0.088402666 -0.075913087 0.41666672 0.058250155
		 -0.088402659 0.41666672 -0.036617581 -0.058250152 0.41666672 -0.075913087 0.036617588 0.41666672 -0.088402651
		 0.067050435 0.50000006 -0.067050435 0.091592595 0.50000006 0.02454217 0.067050435 0.50000006 0.067050435
		 -0.024542144 0.50000006 0.091592602 -0.067050427 0.50000006 0.067050442 -0.091592595 0.50000006 -0.024542155
		 -0.067050442 0.50000006 -0.067050427 0.02454216 0.50000006 -0.091592595 0.05719978 0.58333343 -0.074544184
		 0.093157038 0.58333343 0.012264374 0.074544184 0.58333343 0.05719978 -0.012264346 0.58333343 0.093157046
		 -0.057199769 0.58333343 0.074544191 -0.093157046 0.58333343 -0.012264363 -0.074544184 0.58333343 -0.057199772
		 0.01226437 0.58333343 -0.093157046 0.046549082 0.66666675 -0.080625378 0.093098164 0.66666675 9.0548697e-09
		 0.08062537 0.66666675 0.046549078 1.9972134e-08 0.66666675 0.093098171 -0.046549067 0.66666675 0.080625378
		 -0.093098164 0.66666675 8.7251975e-09 -0.080625378 0.66666675 -0.046549078 -7.7161766e-10 0.66666675 -0.093098164
		 0.035296977 0.75000006 -0.085214429 0.091446355 0.75000006 -0.012039126 0.085214429 0.75000006 0.035296977
		 0.012039156 0.75000006 0.091446355 -0.035296969 0.75000006 0.085214436 -0.091446348 0.75000006 0.012039149
		 -0.085214429 0.75000006 -0.035296969 -0.012039134 0.75000006 -0.09144634 0.023648962 0.83333343 -0.088259272
		 0.088259257 0.83333343 -0.023649028 0.088259272 0.83333343 0.023648962 0.023649052 0.83333343 0.08825925
		 -0.023648953 0.83333343 0.08825928 -0.08825925 0.83333343 0.023649041 -0.088259272 0.83333343 -0.023648955
		 -0.023649031 0.83333343 -0.08825925 0.01181391 0.91666675 -0.089735657 0.083620317 0.91666675 -0.034636673
		 0.08973565 0.91666675 0.011813906 0.034636702 0.91666675 0.08362031 -0.011813896 0.91666675 0.089735657
		 -0.08362031 0.91666675 0.034636691 -0.089735657 0.91666675 -0.011813903 -0.03463668 0.91666675 -0.08362031
		 6.0934291e-10 1.000000119209 -0.089647256 0.077636801 1.000000119209 -0.044823613
		 0.089647248 1.000000119209 -2.3005464e-10 0.044823647 1.000000119209 0.077636793
		 1.1911164e-08 1.000000119209 0.089647248 -0.077636793 1.000000119209 0.044823632
		 -0.089647256 1.000000119209 5.6742344e-09 -0.04482362 1.000000119209 -0.077636793
		 -0.011588687 1.083333492 -0.088024944 0.070437498 1.083333492 -0.054048561 0.088024944 1.083333492 -0.011588687
		 0.054048587 1.083333492 0.070437476 0.011588701 1.083333492 0.088024944 -0.070437483 1.083333492 0.054048579
		 -0.088024944 1.083333492 0.011588695 -0.054048568 1.083333492 -0.070437491 -0.022755826 1.16666687 -0.08492592
		 0.062170099 1.16666687 -0.062170085 0.08492592 1.16666687 -0.022755828 0.062170103 1.16666687 0.062170085
		 0.022755839 1.16666687 0.08492592 -0.062170092 1.16666687 0.062170096 -0.08492592 1.16666687 0.022755837
		 -0.062170085 1.16666687 -0.062170092 -0.033316068 1.25000024 -0.080432072 0.0529982 1.25000024 -0.069068596
		 0.080432072 1.25000024 -0.033316068 0.069068618 1.25000024 0.052998178 0.033316076 1.25000024 0.080432065
		 -0.052998181 1.25000024 0.069068611 -0.080432072 1.25000024 0.033316076 -0.069068596 1.25000024 -0.052998189
		 -0.043098152 1.33333349 -0.074648209 0.043098174 1.33333349 -0.074648201 0.074648201 1.33333349 -0.043098152
		 0.074648216 1.33333349 0.043098155 0.043098163 1.33333349 0.074648201 -0.043098163 1.33333349 0.074648209
		 -0.074648201 1.33333349 0.043098163 -0.074648194 1.33333349 -0.04309817 -0.051947813 1.41666687 -0.067699693
		 0.032655764 1.41666687 -0.078837968 0.067699693 1.41666687 -0.05194781 0.078837983 1.41666687 0.032655735
		 0.051947821 1.41666687 0.067699686 -0.032655746 1.41666687 0.078837983 -0.067699693 1.41666687 0.051947821
		 -0.078837968 1.41666687 -0.032655749 -0.059729919 1.50000012 -0.059729923 0.02186268 1.50000012 -0.08159259
		 0.059729919 1.50000012 -0.059729915 0.081592605 1.50000012 0.021862652 0.059729926 1.50000012 0.059729911
		 -0.021862661 1.50000012 0.081592597;
	setAttr ".vt[166:331]" -0.059729919 1.50000012 0.059729926 -0.081592582 1.50000012 -0.021862669
		 -0.066330776 1.58333349 -0.050897427 0.010913087 1.58333349 -0.082892857 0.050897423 1.58333349 -0.066330776
		 0.082892865 1.58333349 0.010913058 0.066330783 1.58333349 0.050897416 -0.010913068 1.58333349 0.082892857
		 -0.050897423 1.58333349 0.066330783 -0.08289285 1.58333349 -0.010913077 -0.071659617 1.66666687 -0.041372713
		 2.0211308e-08 1.66666687 -0.082745403 0.041372709 1.66666687 -0.071659617 0.082745411 1.66666687 -6.8406973e-09
		 0.071659625 1.66666687 0.041372702 -1.0107924e-09 1.66666687 0.082745411 -0.041372705 1.66666687 0.071659632
		 -0.082745403 1.66666687 -9.6235517e-09 -0.075649746 1.75000024 -0.031335134 -0.010687837 1.75000024 -0.081182167
		 0.031335134 1.75000024 -0.075649738 0.081182174 1.75000024 -0.010687867 0.075649746 1.75000024 0.031335127
		 0.010687856 1.75000024 0.081182167 -0.03133513 1.75000024 0.075649753 -0.081182167 1.75000024 0.010687848
		 -0.078259245 1.83333349 -0.020969508 -0.020969484 1.83333349 -0.078259259 0.020969506 1.83333349 -0.078259237
		 0.078259252 1.83333349 -0.020969514 0.078259245 1.83333349 0.020969499 0.020969503 1.83333349 0.078259252
		 -0.020969503 1.83333349 0.078259245 -0.078259252 1.83333349 0.020969495 -0.079471461 1.91666687 -0.010462605
		 -0.030674839 1.91666687 -0.07405562 0.010462604 1.91666687 -0.079471454 0.074055612 1.91666687 -0.030674869
		 0.079471461 1.91666687 0.010462595 0.030674858 1.91666687 0.074055612 -0.010462597 1.91666687 0.079471469
		 -0.074055612 1.91666687 0.030674849 0.1080073 0.010106593 0.010323178 0.095785886 0.010106774 0.054522518
		 0.10083051 0.083434939 0.041761748 0.10687181 0.085011534 -0.0018275175 0.065123618 0.010091209 0.084251985
		 0.074290365 0.081802174 0.07688728 0.10458556 0.1667683 0.028020203 0.10486282 0.16836958 -0.015540833
		 0.08306884 0.16511071 0.065921545 0.10649281 0.25010166 0.014016732 0.10113993 0.2516903 -0.02876295
		 0.09027835 0.24845666 0.053987511 0.10654858 0.333435 -3.252909e-06 0.095773265 0.33501101 -0.041284796
		 0.095805503 0.33180264 0.041308437 0.10478126 0.41676837 -0.013797994 0.088881016 0.41833168 -0.052905243
		 0.099580199 0.41514859 0.028117619 0.10125051 0.50010169 -0.027133366 0.080605626 0.50165236 -0.063441895
		 0.10156433 0.49849454 0.014653903 0.096045636 0.58343512 -0.039786905 0.071110815 0.58497304 -0.072733909
		 0.10175179 0.58184052 0.0011572214 0.089283571 0.66676843 -0.051551633 0.060578421 0.66829371 -0.080644555
		 0.10016837 0.66518652 -0.012135705 0.081106454 0.75010175 -0.062239237 0.04920502 0.75161433 -0.087063
		 0.096870586 0.74853247 -0.024995416 0.071678668 0.83343512 -0.071683273 0.037198149 0.83493501 -0.091905929
		 0.0919443 0.83187848 -0.037203807 0.061183725 0.91676843 -0.079741485 0.024772778 0.91825563 -0.095118359
		 0.085502774 0.91522449 -0.048557565 0.049820594 1.00010180473 -0.086298212 0.012147136 1.0015763044 -0.096674316
		 0.077684186 0.99857056 -0.058871932 0.037800059 1.083435178 -0.091265723 -0.00046086404 1.084896922 -0.096576549
		 0.068648785 1.081916571 -0.067983419 0.02534082 1.16676855 -0.094585501 -0.012837511 1.16821766 -0.094856232
		 0.058575764 1.1652627 -0.075752504 0.012665521 1.25010204 -0.096228607 -0.02477682 1.25153828 -0.091571651
		 0.047659691 1.24860871 -0.082065627 -3.1598477e-06 1.3334353 -0.09619581 -0.036083993 1.33485878 -0.086806946
		 0.036106855 1.33195472 -0.086836897 -0.012446603 1.41676867 -0.094517089 -0.046578728 1.41817939 -0.080670051
		 0.024131358 1.41530073 -0.090009242 -0.024453769 1.50010192 -0.091250531 -0.056097809 1.50149989 -0.07329046
		 0.011951214 1.49864674 -0.091554768 -0.035824958 1.5834353 -0.086480975 -0.064497881 1.58482051 -0.064816602
		 -0.0002156049 1.58199286 -0.091474995 -0.046375155 1.66676867 -0.08031787 -0.071657442 1.66814113 -0.055412836
		 -0.012155174 1.66533899 -0.089800194 -0.055936813 1.75010204 -0.072893113 -0.077478535 1.75146174 -0.045256414
		 -0.023661189 1.74868512 -0.086588509 -0.064362638 1.8334353 -0.064358249 -0.081887953 1.83478224 -0.03453416
		 -0.034538589 1.83203113 -0.081924297 -0.071528018 1.91676867 -0.054881446 -0.084847458 1.91806507 -0.023449242
		 -0.044627033 1.91541541 -0.075936258 -0.077343978 1.99010777 -0.045442384 -0.085121587 1.99009669 -0.013954277
		 -0.052879248 1.9901067 -0.070459291 -0.010323179 0.010106594 0.1080073 -0.054522533 0.010106775 0.095785871
		 -0.04176176 0.083434939 0.10083051 0.0018275166 0.085011534 0.10687181 -0.08425197 0.010091211 0.065123647
		 -0.076887257 0.081802174 0.074290395 -0.02802022 0.1667683 0.10458554 0.015540833 0.16836958 0.10486282
		 -0.065921523 0.16511071 0.083068848 -0.014016747 0.25010166 0.1064928 0.028762946 0.2516903 0.10113993
		 -0.053987496 0.24845666 0.090278372 3.2355756e-06 0.333435 0.10654858 0.041284796 0.33501101 0.095773272
		 -0.04130841 0.33180261 0.095805518 0.013797976 0.41676837 0.10478126 0.052905239 0.41833168 0.088881016
		 -0.02811759 0.41514859 0.099580206 0.027133346 0.50010169 0.10125051 0.063441895 0.50165236 0.080605626
		 -0.014653874 0.49849454 0.10156433 0.03978689 0.58343512 0.096045643 0.072733909 0.58497304 0.071110815
		 -0.0011571925 0.58184052 0.1017518 0.051551618 0.66676843 0.089283578 0.080644548 0.66829371 0.060578417
		 0.012135737 0.66518652 0.10016838 0.062239222 0.75010175 0.081106462 0.087063 0.75161433 0.04920502
		 0.024995446 0.74853247 0.096870586 0.071683258 0.83343512 0.071678676 0.091905929 0.83493501 0.037198152
		 0.037203833 0.83187848 0.091944285 0.079741463 0.91676843 0.061183736 0.095118351 0.91825563 0.024772778
		 0.048557594 0.91522449 0.085502766 0.086298198 1.00010180473 0.049820606 0.096674301 1.0015763044 0.012147137
		 0.05887197 0.99857056 0.077684171 0.091265708 1.083435178 0.037800081 0.096576549 1.084896922 -0.00046086125
		 0.067983441 1.081916571 0.068648763 0.094585501 1.16676855 0.025340836 0.094856225 1.16821766 -0.012837511
		 0.075752519 1.1652627 0.058575749 0.0962286 1.25010204 0.012665541 0.091571651 1.25153828 -0.02477682
		 0.082065649 1.24860871 0.047659665 0.09619581 1.3334353 -3.1415236e-06;
	setAttr ".vt[332:497]" 0.086806946 1.33485878 -0.036083993 0.086836912 1.33195472 0.036106832
		 0.094517082 1.41676867 -0.012446582 0.080670044 1.41817939 -0.046578724 0.09000925 1.41530073 0.024131324
		 0.091250531 1.50010192 -0.024453746 0.07329046 1.50149989 -0.056097802 0.091554776 1.49864674 0.011951182
		 0.086480968 1.5834353 -0.035824936 0.064816602 1.58482051 -0.064497873 0.091475002 1.58199286 -0.0002156375
		 0.080317877 1.66676867 -0.046375126 0.055412833 1.66814113 -0.071657442 0.089800201 1.66533899 -0.012155204
		 0.07289312 1.75010204 -0.055936791 0.045256414 1.75146174 -0.077478528 0.086588517 1.74868512 -0.023661219
		 0.064358264 1.8334353 -0.064362615 0.034534156 1.83478224 -0.081887946 0.081924289 1.83203113 -0.034538623
		 0.054881461 1.91676867 -0.071527995 0.023449242 1.91806507 -0.08484745 0.075936243 1.91541541 -0.044627059
		 0.045442399 1.99010777 -0.077343963 0.01395428 1.99009669 -0.085121579 0.070459276 1.9901067 -0.052879274
		 -0.1080073 0.010106594 -0.010323172 -0.095785864 0.010106775 -0.054522548 -0.1008305 0.083434947 -0.041761778
		 -0.10687181 0.085011542 0.0018275222 -0.065123633 0.010091209 -0.084251978 -0.07429038 0.081802174 -0.076887272
		 -0.10458554 0.1667683 -0.028020237 -0.10486282 0.16836958 0.015540838 -0.08306884 0.16511071 -0.06592153
		 -0.1064928 0.25010166 -0.014016764 -0.10113992 0.2516903 0.028762951 -0.090278365 0.24845666 -0.053987511
		 -0.10654858 0.333435 3.2198811e-06 -0.095773257 0.33501101 0.0412848 -0.095805503 0.33180261 -0.041308422
		 -0.10478126 0.41676837 0.013797959 -0.088881008 0.41833168 0.05290525 -0.099580206 0.41514859 -0.028117597
		 -0.10125052 0.50010169 0.027133336 -0.080605619 0.50165236 0.063441902 -0.10156433 0.49849454 -0.014653889
		 -0.096045643 0.58343512 0.039786868 -0.071110807 0.58497304 0.072733916 -0.1017518 0.58184052 -0.0011572102
		 -0.089283578 0.66676843 0.051551599 -0.060578406 0.66829371 0.080644555 -0.10016837 0.66518652 0.012135724
		 -0.081106469 0.75010175 0.062239207 -0.049205016 0.75161433 0.087063 -0.096870579 0.74853247 0.024995439
		 -0.071678683 0.83343512 0.071683243 -0.037198145 0.83493501 0.091905929 -0.091944292 0.83187848 0.037203822
		 -0.061183747 0.91676843 0.079741463 -0.024772763 0.91825563 0.095118359 -0.085502766 0.91522449 0.04855758
		 -0.049820621 1.00010180473 0.08629819 -0.012147124 1.0015763044 0.096674301 -0.077684179 0.99857056 0.058871951
		 -0.037800092 1.083435178 0.091265708 0.00046087615 1.084896922 0.096576549 -0.06864877 1.081916571 0.067983441
		 -0.02534085 1.16676855 0.094585501 0.012837525 1.16821766 0.094856232 -0.058575764 1.1652627 0.075752512
		 -0.012665554 1.25010204 0.096228607 0.024776828 1.25153828 0.091571644 -0.047659673 1.24860871 0.082065634
		 3.1261461e-06 1.3334353 0.09619581 0.036084004 1.33485878 0.086806946 -0.036106847 1.33195472 0.086836904
		 0.012446573 1.41676867 0.094517097 0.046578735 1.41817939 0.080670036 -0.024131339 1.41530073 0.090009257
		 0.024453733 1.50010192 0.091250539 0.056097817 1.50149989 0.073290445 -0.011951197 1.49864674 0.091554776
		 0.035824932 1.5834353 0.08648099 0.064497888 1.58482051 0.064816594 0.0002156226 1.58199286 0.091474988
		 0.046375122 1.66676867 0.080317892 0.071657449 1.66814113 0.055412825 0.012155193 1.66533899 0.089800209
		 0.055936787 1.75010204 0.072893143 0.077478535 1.75146174 0.045256406 0.023661207 1.74868512 0.086588509
		 0.064362623 1.8334353 0.064358279 0.081887953 1.83478224 0.034534149 0.034538612 1.83203113 0.081924297
		 0.071528003 1.91676867 0.05488148 0.084847458 1.91806507 0.023449231 0.044627048 1.91541541 0.07593625
		 0.077343963 1.99010777 0.045442417 0.085121587 1.99009669 0.013954271 0.052879263 1.9901067 0.070459284
		 0.010323175 0.010106592 -0.1080073 0.054522537 0.010106774 -0.095785871 0.041761767 0.083434939 -0.10083051
		 -0.0018275185 0.085011534 -0.10687181 0.084251978 0.010091211 -0.065123633 0.076887272 0.081802174 -0.07429038
		 0.028020227 0.1667683 -0.10458554 -0.015540836 0.16836958 -0.10486282 0.06592153 0.16511071 -0.08306884
		 0.014016752 0.25010166 -0.1064928 -0.028762951 0.2516903 -0.10113992 0.053987511 0.24845666 -0.090278357
		 -3.2277944e-06 0.333435 -0.10654858 -0.0412848 0.33501101 -0.095773257 0.041308425 0.33180261 -0.095805496
		 -0.013797969 0.41676837 -0.10478126 -0.052905247 0.41833168 -0.088881008 0.028117605 0.41514859 -0.099580199
		 -0.027133344 0.50010169 -0.10125051 -0.063441902 0.50165236 -0.080605619 0.014653894 0.49849454 -0.10156433
		 -0.039786886 0.58343512 -0.096045643 -0.072733909 0.58497304 -0.071110807 0.0011572186 0.58184052 -0.1017518
		 -0.051551614 0.66676843 -0.089283578 -0.080644555 0.66829371 -0.060578417 -0.012135714 0.66518652 -0.10016837
		 -0.062239219 0.75010175 -0.081106462 -0.087063 0.75161433 -0.049205013 -0.024995424 0.74853247 -0.096870571
		 -0.071683258 0.83343512 -0.071678676 -0.091905929 0.83493501 -0.037198145 -0.037203811 0.83187848 -0.091944292
		 -0.079741463 0.91676843 -0.061183736 -0.095118359 0.91825563 -0.024772774 -0.048557572 0.91522449 -0.085502766
		 -0.086298183 1.00010180473 -0.049820613 -0.096674301 1.0015763044 -0.012147132 -0.05887194 0.99857056 -0.077684179
		 -0.091265708 1.083435178 -0.037800081 -0.096576549 1.084896922 0.00046086963 -0.067983426 1.081916571 -0.068648778
		 -0.094585493 1.16676855 -0.025340836 -0.094856225 1.16821766 0.012837521 -0.075752504 1.1652627 -0.058575764
		 -0.0962286 1.25010204 -0.012665541 -0.091571644 1.25153828 0.024776828 -0.08206562 1.24860871 -0.04765968
		 -0.096195802 1.3334353 3.1372917e-06 -0.086806938 1.33485878 0.036084 -0.086836889 1.33195472 -0.036106855
		 -0.094517089 1.41676867 0.012446583 -0.080670044 1.41817939 0.046578735 -0.090009242 1.41530073 -0.024131345
		 -0.091250539 1.50010192 0.024453746 -0.07329046 1.50149989 0.056097813 -0.091554761 1.49864674 -0.011951206
		 -0.086480975 1.5834353 0.035824943 -0.064816602 1.58482051 0.064497881 -0.091474988 1.58199286 0.00021561421
		 -0.080317885 1.66676867 0.046375133 -0.055412825 1.66814113 0.071657456 -0.089800201 1.66533899 0.012155184
		 -0.072893135 1.75010204 0.055936795 -0.04525641 1.75146174 0.077478543;
	setAttr ".vt[498:591]" -0.086588509 1.74868512 0.0236612 -0.064358264 1.8334353 0.064362623
		 -0.034534153 1.83478224 0.081887953 -0.081924289 1.83203113 0.034538604 -0.054881465 1.91676867 0.071528003
		 -0.023449235 1.91806507 0.084847465 -0.07593625 1.91541541 0.044627041 -0.045442406 1.99010777 0.077343971
		 -0.013954271 1.99009669 0.085121587 -0.070459284 1.9901067 0.052879255 -0.054447852 2.012000322 3.8177972e-09
		 -0.047153234 2.012000322 -0.027223904 -0.027223922 2.012000322 -0.047153231 -8.4558414e-09 2.012000322 -0.054447845
		 0.027223922 2.012000322 -0.04715322 0.04715322 2.012000322 -0.027223943 0.054447852 2.012000322 -1.0143297e-08
		 0.04715322 2.012000322 0.027223933 0.027223935 2.012000322 0.047153223 1.1845327e-08 2.012000322 0.054447852
		 -0.027223919 2.012000322 0.047153227 -0.047153223 2.012000322 0.027223928 -0.012001529 2.018000364 -7.6588513e-10
		 -0.010393634 2.018000364 -0.0060007535 -0.0060007609 2.018000364 -0.010393634 -1.3039522e-08 2.018000364 -0.012001526
		 0.006000774 2.018000364 -0.01039362 0.010393631 2.018000364 -0.0060007703 0.012001522 2.018000364 -8.1788629e-09
		 0.010393623 2.018000364 0.006000774 0.0060007703 2.018000364 0.010393631 8.571269e-09 2.018000364 0.012001529
		 -0.0060007609 2.018000364 0.010393631 -0.010393631 2.018000364 0.0060007628 -0.012001529 2.1900003 -7.6588513e-10
		 -0.010393634 2.1900003 -0.0060007535 -0.0060007609 2.1900003 -0.010393634 -1.3039522e-08 2.1900003 -0.012001526
		 0.006000774 2.1900003 -0.01039362 0.010393631 2.1900003 -0.0060007703 0.012001522 2.1900003 -8.1788629e-09
		 0.010393623 2.1900003 0.006000774 0.0060007703 2.1900003 0.010393631 8.571269e-09 2.1900003 0.012001529
		 -0.0060007609 2.1900003 0.010393631 -0.010393631 2.1900003 0.0060007628 -0.017848855 2.050208092 -0.0070420019
		 -0.016205877 2.049582481 -0.013000503 -0.0118074 2.049482584 -0.017386636 -0.0058320281 2.049935102 -0.019025089
		 0.00011919969 2.050818682 -0.017476868 0.0044515966 2.051896572 -0.013156832 0.0060043242 2.052880049 -0.0072225025
		 0.0043613412 2.053505421 -0.0012639713 -3.7116097e-05 2.053605318 0.0031221369 -0.0060125007 2.053153038 0.0047605969
		 -0.011963712 2.052269459 0.0032123828 -0.01629612 2.051191568 -0.0011076707 -0.019717911 2.086139679 -0.0092929332
		 -0.018109456 2.086060286 -0.015293009 -0.013716492 2.086047411 -0.019685782 -0.0077161496 2.08610487 -0.021294164
		 -0.0017161574 2.086217403 -0.019687213 0.0026757307 2.086354256 -0.015295533 0.0042827362 2.086479425 -0.0092958352
		 0.0026742748 2.086558819 -0.0032957294 -0.0017186686 2.086571455 0.0010970198 -0.0077190236 2.086513996 0.0027054076
		 -0.013718999 2.086401701 0.0010984663 -0.018110899 2.08626461 -0.0032932337 -0.018893946 2.12177968 -0.0083006211
		 -0.017279079 2.12205958 -0.014292977 -0.012885091 2.12210417 -0.018684518 -0.0068893861 2.12190175 -0.020298483
		 -0.00089844852 2.12150669 -0.018702438 0.003482393 2.12102461 -0.01432406 0.0050793202 2.12058496 -0.0083365003
		 0.0034644485 2.12030506 -0.0023441154 -0.00092951878 2.12026048 0.0020474002 -0.0069252374 2.12046289 0.0036613718
		 -0.012916158 2.12085795 0.0020653354 -0.017297011 2.12134004 -0.0023130605 -0.016188048 2.15702438 -0.0050418694
		 -0.014552345 2.15758181 -0.011009133 -0.010155029 2.15767074 -0.015396664 -0.0041743936 2.15726781 -0.017028777
		 0.0017871123 2.15648055 -0.015468175 0.0061320476 2.15551996 -0.011133037 0.0076962151 2.15464377 -0.0051849289
		 0.0060605076 2.15408635 0.00078236411 0.0016632116 2.15399742 0.0051698703 -0.0043174364 2.15440059 0.0068019899
		 -0.010278925 2.15518785 0.0052413964 -0.014623872 2.1561482 0.00090624008;
	setAttr -s 1172 ".ed";
	setAttr ".ed[0:165]"  10 25 0 25 26 0 26 9 0 9 10 0 7 27 0 27 28 0 28 6 0
		 6 7 0 4 29 0 29 30 0 30 3 0 3 4 0 1 31 0 31 24 0 24 0 0 0 1 0 25 33 0 33 34 0 34 26 0
		 27 35 0 35 36 0 36 28 0 29 37 0 37 38 0 38 30 0 31 39 0 39 32 0 32 24 0 33 41 0 41 42 0
		 42 34 0 35 43 0 43 44 0 44 36 0 37 45 0 45 46 0 46 38 0 39 47 0 47 40 0 40 32 0 41 49 0
		 49 50 0 50 42 0 43 51 0 51 52 0 52 44 0 45 53 0 53 54 0 54 46 0 47 55 0 55 48 0 48 40 0
		 49 57 0 57 58 0 58 50 0 51 59 0 59 60 0 60 52 0 53 61 0 61 62 0 62 54 0 55 63 0 63 56 0
		 56 48 0 57 65 0 65 66 0 66 58 0 59 67 0 67 68 0 68 60 0 61 69 0 69 70 0 70 62 0 63 71 0
		 71 64 0 64 56 0 65 73 0 73 74 0 74 66 0 67 75 0 75 76 0 76 68 0 69 77 0 77 78 0 78 70 0
		 71 79 0 79 72 0 72 64 0 73 81 0 81 82 0 82 74 0 75 83 0 83 84 0 84 76 0 77 85 0 85 86 0
		 86 78 0 79 87 0 87 80 0 80 72 0 81 89 0 89 90 0 90 82 0 83 91 0 91 92 0 92 84 0 85 93 0
		 93 94 0 94 86 0 87 95 0 95 88 0 88 80 0 89 97 0 97 98 0 98 90 0 91 99 0 99 100 0
		 100 92 0 93 101 0 101 102 0 102 94 0 95 103 0 103 96 0 96 88 0 97 105 0 105 106 0
		 106 98 0 99 107 0 107 108 0 108 100 0 101 109 0 109 110 0 110 102 0 103 111 0 111 104 0
		 104 96 0 105 113 0 113 114 0 114 106 0 107 115 0 115 116 0 116 108 0 109 117 0 117 118 0
		 118 110 0 111 119 0 119 112 0 112 104 0 113 121 0 121 122 0 122 114 0 115 123 0 123 124 0
		 124 116 0 117 125 0 125 126 0 126 118 0 119 127 0 127 120 0 120 112 0 121 129 0 129 130 0
		 130 122 0 123 131 0 131 132 0 132 124 0;
	setAttr ".ed[166:331]" 125 133 0 133 134 0 134 126 0 127 135 0 135 128 0 128 120 0
		 129 137 0 137 138 0 138 130 0 131 139 0 139 140 0 140 132 0 133 141 0 141 142 0 142 134 0
		 135 143 0 143 136 0 136 128 0 137 145 0 145 146 0 146 138 0 139 147 0 147 148 0 148 140 0
		 141 149 0 149 150 0 150 142 0 143 151 0 151 144 0 144 136 0 145 153 0 153 154 0 154 146 0
		 147 155 0 155 156 0 156 148 0 149 157 0 157 158 0 158 150 0 151 159 0 159 152 0 152 144 0
		 153 161 0 161 162 0 162 154 0 155 163 0 163 164 0 164 156 0 157 165 0 165 166 0 166 158 0
		 159 167 0 167 160 0 160 152 0 161 169 0 169 170 0 170 162 0 163 171 0 171 172 0 172 164 0
		 165 173 0 173 174 0 174 166 0 167 175 0 175 168 0 168 160 0 169 177 0 177 178 0 178 170 0
		 171 179 0 179 180 0 180 172 0 173 181 0 181 182 0 182 174 0 175 183 0 183 176 0 176 168 0
		 177 185 0 185 186 0 186 178 0 179 187 0 187 188 0 188 180 0 181 189 0 189 190 0 190 182 0
		 183 191 0 191 184 0 184 176 0 185 193 0 193 194 0 194 186 0 187 195 0 195 196 0 196 188 0
		 189 197 0 197 198 0 198 190 0 191 199 0 199 192 0 192 184 0 193 201 0 201 202 0 202 194 0
		 195 203 0 203 204 0 204 196 0 197 205 0 205 206 0 206 198 0 199 207 0 207 200 0 200 192 0
		 201 14 0 14 15 0 15 202 0 203 17 0 17 18 0 18 204 0 205 20 0 20 21 0 21 206 0 207 23 0
		 23 12 0 12 200 0 208 211 0 211 210 0 210 209 0 209 208 0 210 213 0 213 212 0 212 209 0
		 211 215 0 215 214 0 214 210 0 214 216 0 216 213 0 215 218 0 218 217 0 217 214 0 217 219 0
		 219 216 0 218 221 0 221 220 0 220 217 0 220 222 0 222 219 0 221 224 0 224 223 0 223 220 0
		 223 225 0 225 222 0 224 227 0 227 226 0 226 223 0 226 228 0 228 225 0 227 230 0 230 229 0
		 229 226 0 229 231 0 231 228 0 230 233 0 233 232 0 232 229 0;
	setAttr ".ed[332:497]" 232 234 0 234 231 0 233 236 0 236 235 0 235 232 0 235 237 0
		 237 234 0 236 239 0 239 238 0 238 235 0 238 240 0 240 237 0 239 242 0 242 241 0 241 238 0
		 241 243 0 243 240 0 242 245 0 245 244 0 244 241 0 244 246 0 246 243 0 245 248 0 248 247 0
		 247 244 0 247 249 0 249 246 0 248 251 0 251 250 0 250 247 0 250 252 0 252 249 0 251 254 0
		 254 253 0 253 250 0 253 255 0 255 252 0 254 257 0 257 256 0 256 253 0 256 258 0 258 255 0
		 257 260 0 260 259 0 259 256 0 259 261 0 261 258 0 260 263 0 263 262 0 262 259 0 262 264 0
		 264 261 0 263 266 0 266 265 0 265 262 0 265 267 0 267 264 0 266 269 0 269 268 0 268 265 0
		 268 270 0 270 267 0 269 272 0 272 271 0 271 268 0 271 273 0 273 270 0 272 275 0 275 274 0
		 274 271 0 274 276 0 276 273 0 275 278 0 278 277 0 277 274 0 277 279 0 279 276 0 278 281 0
		 281 280 0 280 277 0 280 282 0 282 279 0 283 286 0 286 285 0 285 284 0 284 283 0 285 288 0
		 288 287 0 287 284 0 286 290 0 290 289 0 289 285 0 289 291 0 291 288 0 290 293 0 293 292 0
		 292 289 0 292 294 0 294 291 0 293 296 0 296 295 0 295 292 0 295 297 0 297 294 0 296 299 0
		 299 298 0 298 295 0 298 300 0 300 297 0 299 302 0 302 301 0 301 298 0 301 303 0 303 300 0
		 302 305 0 305 304 0 304 301 0 304 306 0 306 303 0 305 308 0 308 307 0 307 304 0 307 309 0
		 309 306 0 308 311 0 311 310 0 310 307 0 310 312 0 312 309 0 311 314 0 314 313 0 313 310 0
		 313 315 0 315 312 0 314 317 0 317 316 0 316 313 0 316 318 0 318 315 0 317 320 0 320 319 0
		 319 316 0 319 321 0 321 318 0 320 323 0 323 322 0 322 319 0 322 324 0 324 321 0 323 326 0
		 326 325 0 325 322 0 325 327 0 327 324 0 326 329 0 329 328 0 328 325 0 328 330 0 330 327 0
		 329 332 0 332 331 0 331 328 0 331 333 0 333 330 0 332 335 0 335 334 0;
	setAttr ".ed[498:663]" 334 331 0 334 336 0 336 333 0 335 338 0 338 337 0 337 334 0
		 337 339 0 339 336 0 338 341 0 341 340 0 340 337 0 340 342 0 342 339 0 341 344 0 344 343 0
		 343 340 0 343 345 0 345 342 0 344 347 0 347 346 0 346 343 0 346 348 0 348 345 0 347 350 0
		 350 349 0 349 346 0 349 351 0 351 348 0 350 353 0 353 352 0 352 349 0 352 354 0 354 351 0
		 353 356 0 356 355 0 355 352 0 355 357 0 357 354 0 358 361 0 361 360 0 360 359 0 359 358 0
		 360 363 0 363 362 0 362 359 0 361 365 0 365 364 0 364 360 0 364 366 0 366 363 0 365 368 0
		 368 367 0 367 364 0 367 369 0 369 366 0 368 371 0 371 370 0 370 367 0 370 372 0 372 369 0
		 371 374 0 374 373 0 373 370 0 373 375 0 375 372 0 374 377 0 377 376 0 376 373 0 376 378 0
		 378 375 0 377 380 0 380 379 0 379 376 0 379 381 0 381 378 0 380 383 0 383 382 0 382 379 0
		 382 384 0 384 381 0 383 386 0 386 385 0 385 382 0 385 387 0 387 384 0 386 389 0 389 388 0
		 388 385 0 388 390 0 390 387 0 389 392 0 392 391 0 391 388 0 391 393 0 393 390 0 392 395 0
		 395 394 0 394 391 0 394 396 0 396 393 0 395 398 0 398 397 0 397 394 0 397 399 0 399 396 0
		 398 401 0 401 400 0 400 397 0 400 402 0 402 399 0 401 404 0 404 403 0 403 400 0 403 405 0
		 405 402 0 404 407 0 407 406 0 406 403 0 406 408 0 408 405 0 407 410 0 410 409 0 409 406 0
		 409 411 0 411 408 0 410 413 0 413 412 0 412 409 0 412 414 0 414 411 0 413 416 0 416 415 0
		 415 412 0 415 417 0 417 414 0 416 419 0 419 418 0 418 415 0 418 420 0 420 417 0 419 422 0
		 422 421 0 421 418 0 421 423 0 423 420 0 422 425 0 425 424 0 424 421 0 424 426 0 426 423 0
		 425 428 0 428 427 0 427 424 0 427 429 0 429 426 0 428 431 0 431 430 0 430 427 0 430 432 0
		 432 429 0 433 436 0 436 435 0 435 434 0 434 433 0 435 438 0 438 437 0;
	setAttr ".ed[664:829]" 437 434 0 436 440 0 440 439 0 439 435 0 439 441 0 441 438 0
		 440 443 0 443 442 0 442 439 0 442 444 0 444 441 0 443 446 0 446 445 0 445 442 0 445 447 0
		 447 444 0 446 449 0 449 448 0 448 445 0 448 450 0 450 447 0 449 452 0 452 451 0 451 448 0
		 451 453 0 453 450 0 452 455 0 455 454 0 454 451 0 454 456 0 456 453 0 455 458 0 458 457 0
		 457 454 0 457 459 0 459 456 0 458 461 0 461 460 0 460 457 0 460 462 0 462 459 0 461 464 0
		 464 463 0 463 460 0 463 465 0 465 462 0 464 467 0 467 466 0 466 463 0 466 468 0 468 465 0
		 467 470 0 470 469 0 469 466 0 469 471 0 471 468 0 470 473 0 473 472 0 472 469 0 472 474 0
		 474 471 0 473 476 0 476 475 0 475 472 0 475 477 0 477 474 0 476 479 0 479 478 0 478 475 0
		 478 480 0 480 477 0 479 482 0 482 481 0 481 478 0 481 483 0 483 480 0 482 485 0 485 484 0
		 484 481 0 484 486 0 486 483 0 485 488 0 488 487 0 487 484 0 487 489 0 489 486 0 488 491 0
		 491 490 0 490 487 0 490 492 0 492 489 0 491 494 0 494 493 0 493 490 0 493 495 0 495 492 0
		 494 497 0 497 496 0 496 493 0 496 498 0 498 495 0 497 500 0 500 499 0 499 496 0 499 501 0
		 501 498 0 500 503 0 503 502 0 502 499 0 502 504 0 504 501 0 503 506 0 506 505 0 505 502 0
		 505 507 0 507 504 0 0 208 0 209 11 0 11 0 0 212 10 0 10 11 0 213 25 0 216 33 0 219 41 0
		 222 49 0 225 57 0 228 65 0 231 73 0 234 81 0 237 89 0 240 97 0 243 105 0 246 113 0
		 249 121 0 252 129 0 255 137 0 258 145 0 261 153 0 264 161 0 267 169 0 270 177 0 273 185 0
		 276 193 0 279 201 0 282 14 0 280 13 0 13 14 0 281 12 0 12 13 0 278 200 0 275 192 0
		 272 184 0 269 176 0 266 168 0 263 160 0 260 152 0 257 144 0 254 136 0 251 128 0 248 120 0
		 245 112 0 242 104 0 239 96 0 236 88 0 233 80 0 230 72 0;
	setAttr ".ed[830:995]" 227 64 0 224 56 0 221 48 0 218 40 0 215 32 0 211 24 0
		 9 283 0 284 8 0 8 9 0 287 7 0 7 8 0 288 27 0 291 35 0 294 43 0 297 51 0 300 59 0
		 303 67 0 306 75 0 309 83 0 312 91 0 315 99 0 318 107 0 321 115 0 324 123 0 327 131 0
		 330 139 0 333 147 0 336 155 0 339 163 0 342 171 0 345 179 0 348 187 0 351 195 0 354 203 0
		 357 17 0 355 16 0 16 17 0 356 15 0 15 16 0 353 202 0 350 194 0 347 186 0 344 178 0
		 341 170 0 338 162 0 335 154 0 332 146 0 329 138 0 326 130 0 323 122 0 320 114 0 317 106 0
		 314 98 0 311 90 0 308 82 0 305 74 0 302 66 0 299 58 0 296 50 0 293 42 0 290 34 0
		 286 26 0 6 358 0 359 5 0 5 6 0 362 4 0 4 5 0 363 29 0 366 37 0 369 45 0 372 53 0
		 375 61 0 378 69 0 381 77 0 384 85 0 387 93 0 390 101 0 393 109 0 396 117 0 399 125 0
		 402 133 0 405 141 0 408 149 0 411 157 0 414 165 0 417 173 0 420 181 0 423 189 0 426 197 0
		 429 205 0 432 20 0 430 19 0 19 20 0 431 18 0 18 19 0 428 204 0 425 196 0 422 188 0
		 419 180 0 416 172 0 413 164 0 410 156 0 407 148 0 404 140 0 401 132 0 398 124 0 395 116 0
		 392 108 0 389 100 0 386 92 0 383 84 0 380 76 0 377 68 0 374 60 0 371 52 0 368 44 0
		 365 36 0 361 28 0 3 433 0 434 2 0 2 3 0 437 1 0 1 2 0 438 31 0 441 39 0 444 47 0
		 447 55 0 450 63 0 453 71 0 456 79 0 459 87 0 462 95 0 465 103 0 468 111 0 471 119 0
		 474 127 0 477 135 0 480 143 0 483 151 0 486 159 0 489 167 0 492 175 0 495 183 0 498 191 0
		 501 199 0 504 207 0 507 23 0 505 22 0 22 23 0 506 21 0 21 22 0 503 206 0 500 198 0
		 497 190 0 494 182 0 491 174 0 488 166 0 485 158 0 482 150 0 479 142 0 476 134 0 473 126 0
		 470 118 0 467 110 0 464 102 0 461 94 0;
	setAttr ".ed[996:1161]" 458 86 0 455 78 0 452 70 0 449 62 0 446 54 0 443 46 0
		 440 38 0 436 30 0 12 508 0 508 509 0 509 13 0 509 510 0 510 14 0 510 511 0 511 15 0
		 511 512 0 512 16 0 512 513 0 513 17 0 513 514 0 514 18 0 514 515 0 515 19 0 515 516 0
		 516 20 0 516 517 0 517 21 0 517 518 0 518 22 0 518 519 0 519 23 0 519 508 0 508 520 0
		 520 521 0 521 509 0 521 522 0 522 510 0 522 523 0 523 511 0 523 524 0 524 512 0 524 525 0
		 525 513 0 525 526 0 526 514 0 526 527 0 527 515 0 527 528 0 528 516 0 528 529 0 529 517 0
		 529 530 0 530 518 0 530 531 0 531 519 0 531 520 0 532 543 0 543 542 0 542 541 0 541 540 0
		 540 539 0 539 538 0 538 537 0 537 536 0 536 535 0 535 534 0 534 533 0 533 532 0 520 544 0
		 544 545 0 545 521 0 545 546 0 546 522 0 546 547 0 547 523 0 547 548 0 548 524 0 548 549 0
		 549 525 0 549 550 0 550 526 0 550 551 0 551 527 0 551 552 0 552 528 0 552 553 0 553 529 0
		 553 554 0 554 530 0 554 555 0 555 531 0 555 544 0 544 556 0 556 557 0 557 545 0 557 558 0
		 558 546 0 558 559 0 559 547 0 559 560 0 560 548 0 560 561 0 561 549 0 561 562 0 562 550 0
		 562 563 0 563 551 0 563 564 0 564 552 0 564 565 0 565 553 0 565 566 0 566 554 0 566 567 0
		 567 555 0 567 556 0 556 568 0 568 569 0 569 557 0 569 570 0 570 558 0 570 571 0 571 559 0
		 571 572 0 572 560 0 572 573 0 573 561 0 573 574 0 574 562 0 574 575 0 575 563 0 575 576 0
		 576 564 0 576 577 0 577 565 0 577 578 0 578 566 0 578 579 0 579 567 0 579 568 0 568 580 0
		 580 581 0 581 569 0 581 582 0 582 570 0 582 583 0 583 571 0 583 584 0 584 572 0 584 585 0
		 585 573 0 585 586 0 586 574 0 586 587 0 587 575 0 587 588 0 588 576 0 588 589 0 589 577 0
		 589 590 0 590 578 0 590 591 0 591 579 0 591 580 0 580 532 0 533 581 0;
	setAttr ".ed[1162:1171]" 534 582 0 535 583 0 536 584 0 537 585 0 538 586 0 539 587 0
		 540 588 0 541 589 0 542 590 0 543 591 0;
	setAttr -s 2332 ".n";
	setAttr ".n[0:165]" -type "float3"  0.30991256 -0.12240923 0.94285208 0.26002637
		 0.068869255 0.9631424 0.4973087 -0.049958751 0.86613399 0.24210875 -0.27518523 0.93040663
		 -0.94285208 -0.12240928 0.30991262 -0.96314228 0.068869218 0.2600266 -0.86613399
		 -0.049958717 0.49730876 -0.93040663 -0.27518523 0.24210876 -0.30991262 -0.12240926
		 -0.9428522 -0.2600264 0.068869255 -0.9631424 -0.49730879 -0.049958754 -0.86613399
		 -0.24210882 -0.27518526 -0.93040657 0.94285208 -0.12240928 -0.30991253 0.96314245
		 0.068869278 -0.2600264 0.86613399 -0.049958754 -0.49730879 0.93040657 -0.27518523
		 -0.24210879 0.26002637 0.068869255 0.9631424 0.38370168 0.068333134 0.92092532 0.60570979
		 -0.049371108 0.79415244 0.4973087 -0.049958751 0.86613399 -0.96314228 0.068869218
		 0.2600266 -0.9209252 0.068333104 0.38370198 -0.79415244 -0.049371071 0.60570979 -0.86613399
		 -0.049958717 0.49730876 -0.2600264 0.068869255 -0.9631424 -0.38370201 0.068333052
		 -0.9209252 -0.60570985 -0.04937109 -0.79415244 -0.49730879 -0.049958754 -0.86613399
		 0.96314245 0.068869278 -0.2600264 0.92092538 0.06833306 -0.38370204 0.79415238 -0.04937112
		 -0.60570985 0.86613399 -0.049958754 -0.49730879 0.38370168 0.068333134 0.92092532
		 0.50063765 0.067816153 0.86299646 0.7042073 -0.048853368 0.70831174 0.60570979 -0.049371108
		 0.79415244 -0.9209252 0.068333104 0.38370198 -0.86299652 0.067816205 0.50063741 -0.70831174
		 -0.048853345 0.70420712 -0.79415244 -0.049371071 0.60570979 -0.38370201 0.068333052
		 -0.9209252 -0.50063741 0.06781622 -0.86299658 -0.70420712 -0.048853308 -0.70831174
		 -0.60570985 -0.04937109 -0.79415244 0.92092538 0.06833306 -0.38370204 0.86299658
		 0.067816183 -0.50063759 0.70831168 -0.048853368 -0.70420724 0.79415238 -0.04937112
		 -0.60570985 0.50063765 0.067816153 0.86299646 0.60901582 0.067299105 0.79029775 0.79065889
		 -0.048335522 0.61034596 0.7042073 -0.048853368 0.70831174 -0.86299652 0.067816205
		 0.50063741 -0.79029757 0.067299142 0.609016 -0.61034608 -0.048335511 0.79065889 -0.70831174
		 -0.048853345 0.70420712 -0.50063741 0.06781622 -0.86299658 -0.609016 0.067299195
		 -0.79029757 -0.79065889 -0.048335511 -0.61034596 -0.70420712 -0.048853308 -0.70831174
		 0.86299658 0.067816183 -0.50063759 0.79029757 0.067299172 -0.609016 0.61034596 -0.048335522
		 -0.79065889 0.70831168 -0.048853368 -0.70420724 0.60901582 0.067299105 0.79029775
		 0.7069822 0.066782057 0.70407134 0.86358458 -0.047817618 0.50193137 0.79065889 -0.048335522
		 0.61034596 -0.79029757 0.067299142 0.609016 -0.7040711 0.066782065 0.70698243 -0.50193125
		 -0.047817666 0.86358476 -0.61034608 -0.048335511 0.79065889 -0.609016 0.067299195
		 -0.79029757 -0.7069822 0.06678208 -0.70407128 -0.86358476 -0.047817688 -0.50193125
		 -0.79065889 -0.048335511 -0.61034596 0.79029757 0.067299172 -0.609016 0.70407128
		 0.066782042 -0.7069822 0.50193119 -0.04781767 -0.86358476 0.61034596 -0.048335522
		 -0.79065889 0.7069822 0.066782057 0.70407134 0.79285884 0.066264883 0.60579187 0.921736
		 -0.047299609 0.3849225 0.86358458 -0.047817618 0.50193137 -0.7040711 0.066782065
		 0.70698243 -0.60579169 0.06626489 0.79285896 -0.38492247 -0.047299623 0.92173612
		 -0.50193125 -0.047817666 0.86358476 -0.7069822 0.06678208 -0.70407128 -0.79285896
		 0.066264831 -0.60579181 -0.92173612 -0.047299605 -0.38492239 -0.86358476 -0.047817688
		 -0.50193125 0.70407128 0.066782042 -0.7069822 0.60579181 0.066264801 -0.79285896
		 0.3849225 -0.047299616 -0.92173612 0.50193119 -0.04781767 -0.86358476 0.79285884
		 0.066264883 0.60579187 0.86517578 0.065747693 0.49713987 0.96411747 -0.04678138 0.26132154
		 0.921736 -0.047299609 0.3849225 -0.60579169 0.06626489 0.79285896 -0.49713975 0.065747678
		 0.86517584 -0.26132149 -0.046781387 0.96411753 -0.38492247 -0.047299623 0.92173612
		 -0.79285896 0.066264831 -0.60579181 -0.86517578 0.065747701 -0.49713987 -0.96411747
		 -0.046781372 -0.26132163 -0.92173612 -0.047299605 -0.38492239 0.60579181 0.066264801
		 -0.79285896 0.4971399 0.065747701 -0.86517578 0.26132163 -0.046781417 -0.96411747
		 0.3849225 -0.047299616 -0.92173612 0.86517578 0.065747693 0.49713987 0.92269421 0.065230303
		 0.37997416 0.99000293 -0.046263341 0.13324361 0.96411747 -0.04678138 0.26132154 -0.49713975
		 0.065747678 0.86517584 -0.3799741 0.065230347 0.92269433 -0.13324358 -0.046263345
		 0.99000293 -0.26132149 -0.046781387 0.96411753 -0.86517578 0.065747701 -0.49713987
		 -0.92269427 0.065230392 -0.37997395 -0.99000293 -0.046263359 -0.13324347 -0.96411747
		 -0.046781372 -0.26132163 0.4971399 0.065747701 -0.86517578 0.37997404 0.065230422
		 -0.92269427 0.13324349 -0.046263359 -0.99000293 0.26132163 -0.046781417 -0.96411747
		 0.92269421 0.065230303 0.37997416 0.96442908 0.064713039 0.25629824 0.99894893 -0.045745254
		 0.0028797255 0.99000293 -0.046263341 0.13324361 -0.3799741 0.065230347 0.92269433
		 -0.25629809 0.064713098 0.96442908 -0.0028799118 -0.04574522 0.99894893 -0.13324358
		 -0.046263345 0.99000293 -0.92269427 0.065230392 -0.37997395 -0.96442908 0.064713068
		 -0.25629815 -0.99894899 -0.045745213 -0.0028796371 -0.99000293 -0.046263359 -0.13324347
		 0.37997404 0.065230422 -0.92269427 0.25629809 0.064713046 -0.96442914 0.0028795605
		 -0.04574522 -0.99894899 0.13324349 -0.046263359 -0.99000293 0.96442908 0.064713039
		 0.25629824 0.98966485 0.064195581 0.12822798 0.99080175 -0.045226932 -0.1275394 0.99894893
		 -0.045745254 0.0028797255 -0.25629809 0.064713098 0.96442908 -0.12822753 0.064195551
		 0.98966485 0.12753928 -0.045226917 0.99080175 -0.0028799118 -0.04574522 0.99894893
		 -0.96442908 0.064713068 -0.25629815 -0.98966485 0.064195558 -0.12822787 -0.99080175
		 -0.04522698 0.12753947 -0.99894899 -0.045745213 -0.0028796371 0.25629809 0.064713046
		 -0.96442914 0.12822789 0.064195521 -0.98966485 -0.1275395 -0.045226984 -0.99080175
		 0.0028795605 -0.04574522 -0.99894899 0.98966485 0.064195581 0.12822798 0.99796838
		 0.063678049 -0.0020448051 0.96570033 -0.044708405 -0.25578099 0.99080175 -0.045226932
		 -0.1275394 -0.12822753 0.064195551 0.98966485 0.002044939 0.063678034 0.99796838;
	setAttr ".n[166:331]" -type "float3"  0.25578123 -0.044708397 0.96570039 0.12753928
		 -0.045226917 0.99080175 -0.98966485 0.064195558 -0.12822787 -0.99796838 0.063678034
		 0.0020449271 -0.96570039 -0.044708475 0.25578114 -0.99080175 -0.04522698 0.12753947
		 0.12822789 0.064195521 -0.98966485 -0.0020449508 0.063678034 -0.99796838 -0.2557812
		 -0.044708479 -0.96570039 -0.1275395 -0.045226984 -0.99080175 0.99796838 0.063678049
		 -0.0020448051 0.98919648 0.063160561 -0.13229172 0.92407358 -0.044190016 -0.37965158
		 0.96570033 -0.044708405 -0.25578099 0.002044939 0.063678034 0.99796838 0.13229202
		 0.063160628 0.98919636 0.37965158 -0.044189982 0.92407352 0.25578123 -0.044708397
		 0.96570039 -0.99796838 0.063678034 0.0020449271 -0.98919648 0.063160606 0.13229187
		 -0.92407352 -0.044189971 0.37965146 -0.96570039 -0.044708475 0.25578114 -0.0020449508
		 0.063678034 -0.99796838 -0.1322919 0.063160568 -0.98919648 -0.37965193 -0.044190034
		 -0.92407346 -0.2557812 -0.044708479 -0.96570039 0.98919648 0.063160561 -0.13229172
		 0.96349764 0.062642932 -0.26028451 0.86663306 -0.043671615 -0.497031 0.92407358 -0.044190016
		 -0.37965158 0.13229202 0.063160628 0.98919636 0.26028472 0.062642962 0.96349764 0.49703118
		 -0.043671634 0.866633 0.37965158 -0.044189982 0.92407352 -0.98919648 0.063160606
		 0.13229187 -0.96349764 0.062642932 0.26028463 -0.86663306 -0.043671601 0.49703115
		 -0.92407352 -0.044189971 0.37965146 -0.1322919 0.063160568 -0.98919648 -0.2602846
		 0.062642947 -0.9634977 -0.49703109 -0.043671582 -0.86663306 -0.37965193 -0.044190034
		 -0.92407346 0.96349764 0.062642932 -0.26028451 0.92131072 0.062125247 -0.38383207
		 0.79436141 -0.043153297 -0.60591072 0.86663306 -0.043671615 -0.497031 0.26028472
		 0.062642962 0.96349764 0.38383222 0.062125236 0.92131066 0.60591102 -0.043153282
		 0.79436111 0.49703118 -0.043671634 0.866633 -0.96349764 0.062642932 0.26028463 -0.92131072
		 0.062125288 0.38383186 -0.79436141 -0.043153305 0.60591078 -0.86663306 -0.043671601
		 0.49703115 -0.2602846 0.062642947 -0.9634977 -0.38383186 0.062125295 -0.92131084
		 -0.6059109 -0.043153331 -0.79436117 -0.49703109 -0.043671582 -0.86663306 0.92131072
		 0.062125247 -0.38383207 0.86335588 0.061607629 -0.50082028 0.70849431 -0.042634681
		 -0.70442754 0.79436141 -0.043153297 -0.60591072 0.38383222 0.062125236 0.92131066
		 0.5008204 0.06160764 0.86335582 0.70442754 -0.042634681 0.70849431 0.60591102 -0.043153282
		 0.79436111 -0.92131072 0.062125288 0.38383186 -0.86335582 0.061607633 0.50082052
		 -0.70849437 -0.042634677 0.70442748 -0.79436141 -0.043153305 0.60591078 -0.38383186
		 0.062125295 -0.92131084 -0.50082052 0.061607603 -0.86335582 -0.70442754 -0.042634733
		 -0.70849431 -0.6059109 -0.043153331 -0.79436117 0.86335588 0.061607629 -0.50082028
		 0.79062414 0.061089844 -0.60924667 0.61050117 -0.042116158 -0.79089487 0.70849431
		 -0.042634681 -0.70442754 0.5008204 0.06160764 0.86335582 0.60924685 0.061089881 0.79062402
		 0.79089493 -0.042116188 0.61050111 0.70442754 -0.042634681 0.70849431 -0.86335582
		 0.061607633 0.50082052 -0.79062414 0.061089844 0.60924667 -0.61050129 -0.042116158
		 0.79089469 -0.70849437 -0.042634677 0.70442748 -0.50082052 0.061607603 -0.86335582
		 -0.60924667 0.061089858 -0.79062414 -0.79089487 -0.042116184 -0.61050117 -0.70442754
		 -0.042634733 -0.70849431 0.79062414 0.061089844 -0.60924667 0.70435834 0.060572051
		 -0.70725536 0.50205827 -0.041597519 -0.86383277 0.61050117 -0.042116158 -0.79089487
		 0.60924685 0.061089881 0.79062402 0.70725566 0.060572039 0.70435816 0.86383283 -0.041597512
		 0.50205815 0.79089493 -0.042116188 0.61050111 -0.79062414 0.061089844 0.60924667
		 -0.70435828 0.060572069 0.70725542 -0.50205821 -0.041597538 0.86383283 -0.61050129
		 -0.042116158 0.79089469 -0.60924667 0.061089858 -0.79062414 -0.70725548 0.06057208
		 -0.7043584 -0.86383295 -0.041597564 -0.50205809 -0.79089487 -0.042116184 -0.61050117
		 0.70435834 0.060572051 -0.70725536 0.60603452 0.060054149 -0.79316813 0.38502085
		 -0.041078694 -0.92199326 0.50205827 -0.041597519 -0.86383277 0.70725566 0.060572039
		 0.70435816 0.79316837 0.060054146 0.60603422 0.92199326 -0.04107869 0.38502073 0.86383283
		 -0.041597512 0.50205815 -0.70435828 0.060572069 0.70725542 -0.60603446 0.060054209
		 0.79316825 -0.38502073 -0.04107869 0.92199326 -0.50205821 -0.041597538 0.86383283
		 -0.70725548 0.06057208 -0.7043584 -0.79316825 0.060054161 -0.6060344 -0.92199332
		 -0.041078724 -0.38502058 -0.86383295 -0.041597564 -0.50205809 0.60603452 0.060054149
		 -0.79316813 0.49733379 0.059536282 -0.86551404 0.26139137 -0.040560033 -0.96438038
		 0.38502085 -0.041078694 -0.92199326 0.79316837 0.060054146 0.60603422 0.8655141 0.059536301
		 0.49733365 0.96438044 -0.040560052 0.26139101 0.92199326 -0.04107869 0.38502073 -0.60603446
		 0.060054209 0.79316825 -0.49733353 0.059536245 0.86551428 -0.26139119 -0.04056007
		 0.96438044 -0.38502073 -0.04107869 0.92199326 -0.79316825 0.060054161 -0.6060344
		 -0.8655141 0.059536241 -0.49733374 -0.96438044 -0.040560059 -0.26139095 -0.92199332
		 -0.041078724 -0.38502058 0.49733379 0.059536282 -0.86551404 0.38011497 0.05901834
		 -0.92305446 0.13328426 -0.040041436 -0.99026877 0.26139137 -0.040560033 -0.96438038
		 0.8655141 0.059536301 0.49733365 0.92305446 0.059018336 0.38011482 0.99026865 -0.040041436
		 0.13328418 0.96438044 -0.040560052 0.26139101 -0.49733353 0.059536245 0.86551428
		 -0.380115 0.059018347 0.92305446 -0.13328411 -0.040041491 0.99026871 -0.26139119
		 -0.04056007 0.96438044 -0.8655141 0.059536241 -0.49733374 -0.92305434 0.059018325
		 -0.38011512 -0.99026877 -0.04004148 -0.13328423 -0.96438044 -0.040560059 -0.26139095
		 0.38011497 0.05901834 -0.92305446 0.25638422 0.05850032 -0.96480304 0.0028920646
		 -0.039522443 -0.99921447 0.13328426 -0.040041436 -0.99026877 0.92305446 0.059018336
		 0.38011482 0.96480304 0.058500405 0.25638419 0.99921447 -0.039522447 0.0028920264
		 0.99026865 -0.040041436 0.13328418 -0.380115 0.059018347 0.92305446 -0.25638402 0.058500376
		 0.96480304 -0.0028918663 -0.039522428 0.99921453 -0.13328411 -0.040041491 0.99026871;
	setAttr ".n[332:497]" -type "float3"  -0.92305434 0.059018325 -0.38011512 -0.96480304
		 0.05850035 -0.2563841 -0.99921447 -0.039522499 -0.0028919643 -0.99026877 -0.04004148
		 -0.13328423 0.25638422 0.05850032 -0.96480304 0.12825827 0.057982288 -0.99004436
		 -0.12755373 -0.039003532 -0.99106443 0.0028920646 -0.039522443 -0.99921447 0.96480304
		 0.058500405 0.25638419 0.99004447 0.057982359 0.12825808 0.99106443 -0.039003555
		 -0.12755392 0.99921447 -0.039522447 0.0028920264 -0.25638402 0.058500376 0.96480304
		 -0.12825832 0.057982344 0.99004447 0.12755392 -0.039003555 0.99106443 -0.0028918663
		 -0.039522428 0.99921453 -0.96480304 0.05850035 -0.2563841 -0.99004447 0.057982314
		 -0.12825808 -0.99106443 -0.039003547 0.1275539 -0.99921447 -0.039522499 -0.0028919643
		 0.12825827 0.057982288 -0.99004436 -0.0013688861 0.057537008 -0.99834239 -0.25604677
		 -0.038505789 -0.96589708 -0.12755373 -0.039003532 -0.99106443 0.99004447 0.057982359
		 0.12825808 0.99834239 0.057537004 -0.0013692875 0.96589702 -0.038505815 -0.25604698
		 0.99106443 -0.039003555 -0.12755392 -0.12825832 0.057982344 0.99004447 0.0013691203
		 0.057536986 0.99834239 0.25604707 -0.038505834 0.96589702 0.12755392 -0.039003555
		 0.99106443 -0.99004447 0.057982314 -0.12825808 -0.99834239 0.057536989 0.0013690535
		 -0.96589702 -0.038505815 0.25604698 -0.99106443 -0.039003547 0.1275539 -0.0013688861
		 0.057537008 -0.99834239 -0.11959393 0.051189315 -0.99150234 -0.20461604 0.15403694
		 -0.96664619 -0.25604677 -0.038505789 -0.96589708 0.99834239 0.057537004 -0.0013692875
		 0.99150234 0.051189382 -0.1195942 0.96664619 0.15403686 -0.20461626 0.96589702 -0.038505815
		 -0.25604698 0.0013691203 0.057536986 0.99834239 0.1195941 0.051189307 0.99150234
		 0.2046162 0.15403695 0.96664619 0.25604707 -0.038505834 0.96589702 -0.99834239 0.057536989
		 0.0013690535 -0.99150234 0.051189303 0.1195941 -0.96664619 0.15403686 0.20461623
		 -0.96589702 -0.038505815 0.25604698 0.94875562 -0.30890423 -0.066640988 0.96789277
		 -0.021626962 -0.2504313 0.92433822 0.011690823 0.38139498 0.79901677 -0.34757668
		 0.49067566 0.79901677 -0.34757668 0.49067566 0.92433822 0.011690823 0.38139498 0.50708008
		 0.040639095 0.86094028 0.45411026 -0.25333238 0.85417008 0.96789277 -0.021626962
		 -0.2504313 0.92697793 -0.027928017 -0.37407479 0.96597499 0.010143185 0.25843674
		 0.92433822 0.011690823 0.38139498 0.92433822 0.011690823 0.38139498 0.96597499 0.010143185
		 0.25843674 0.61562818 0.048286129 0.78655607 0.50708008 0.040639095 0.86094028 0.92697793
		 -0.027928017 -0.37407479 0.87022853 -0.027876627 -0.49185881 0.99144363 0.010144086
		 0.13014057 0.96597499 0.010143185 0.25843674 0.96597499 0.010143185 0.25843674 0.99144363
		 0.010144086 0.13014057 0.71303189 0.048075892 0.69948155 0.61562818 0.048286129 0.78655607
		 0.87022853 -0.027876627 -0.49185881 0.7985841 -0.027724767 -0.60124433 0.99994856
		 0.010144981 -0.0003822271 0.99144363 0.010144086 0.13014057 0.99144363 0.010144086
		 0.13014057 0.99994856 0.010144981 -0.0003822271 0.79823428 0.047925737 0.6004374
		 0.71303189 0.048075892 0.69948155 0.7985841 -0.027724767 -0.60124433 0.71327448 -0.027572729
		 -0.70034224 0.99134386 0.010145888 -0.13089865 0.99994856 0.010144981 -0.0003822271
		 0.99994856 0.010144981 -0.0003822271 0.99134386 0.010145888 -0.13089865 0.86978221
		 0.047775362 0.49111766 0.79823428 0.047925737 0.6004374 0.71327448 -0.027572729 -0.70034224
		 0.61576003 -0.027420323 -0.78745645 0.96577686 0.010146672 -0.25917575 0.99134386
		 0.010145888 -0.13089865 0.99134386 0.010145888 -0.13089865 0.96577686 0.010146672
		 -0.25917575 0.92645007 0.047624636 0.3733927 0.86978221 0.047775362 0.49111766 0.61576003
		 -0.027420323 -0.78745645 0.50770932 -0.02726762 -0.86109698 0.92368525 0.010147805
		 -0.38301745 0.96577686 0.010146672 -0.25917575 0.96577686 0.010146672 -0.25917575
		 0.92368525 0.010147805 -0.38301745 0.96726787 0.047473837 0.24927694 0.92645007 0.047624636
		 0.3733927 0.50770932 -0.02726762 -0.86109698 0.39097124 -0.027114764 -0.92000335
		 0.865789 0.010148641 -0.50030649 0.92368525 0.010147805 -0.38301745 0.92368525 0.010147805
		 -0.38301745 0.865789 0.010148641 -0.50030649 0.99153692 0.047322568 0.12089327 0.96726787
		 0.047473837 0.24927694 0.39097124 -0.027114764 -0.92000335 0.26754367 -0.026961651
		 -0.96316844 0.7930786 0.010149556 -0.60903466 0.865789 0.010148641 -0.50030649 0.865789
		 0.010148641 -0.50030649 0.7930786 0.010149556 -0.60903466 0.99884105 0.047171157
		 -0.0095619718 0.99153692 0.047322568 0.12089327 0.26754367 -0.026961651 -0.96316844
		 0.13953778 -0.026808279 -0.9898538 0.70679814 0.010150363 -0.70734257 0.7930786 0.010149556
		 -0.60903466 0.7930786 0.010149556 -0.60903466 0.70679814 0.010150363 -0.70734257
		 0.98905468 0.047019377 -0.13985687 0.99884105 0.047171157 -0.0095619718 0.13953778
		 -0.026808279 -0.9898538 0.0091454787 -0.02665446 -0.99960291 0.60842431 0.010151323
		 -0.79354692 0.70679814 0.010150363 -0.70734257 0.70679814 0.010150363 -0.70734257
		 0.60842431 0.010151323 -0.79354692 0.96234488 0.046867535 -0.26776075 0.98905468
		 0.047019377 -0.13985687 0.0091454787 -0.02665446 -0.99960291 -0.12140366 -0.026500361
		 -0.99224949 0.49964029 0.01015232 -0.86617345 0.60842431 0.010151323 -0.79354692
		 0.60842431 0.010151323 -0.79354692 0.49964029 0.01015232 -0.86617345 0.91916782 0.046715505
		 -0.39108586 0.96234488 0.046867535 -0.26776075 -0.12140366 -0.026500361 -0.99224949
		 -0.24987547 -0.026346225 -0.96791953 0.38230702 0.010153234 -0.92397958 0.49964029
		 0.01015232 -0.86617345 0.49964029 0.01015232 -0.86617345 0.38230702 0.010153234 -0.92397958
		 0.86026138 0.046562955 -0.50772256 0.91916782 0.046715505 -0.39108586 -0.24987547
		 -0.026346225 -0.96791953 -0.37407216 -0.0261919 -0.92702973 0.258432 0.01015388 -0.96597606
		 0.38230702 0.010153234 -0.92397958 0.38230702 0.010153234 -0.92397958 0.258432 0.01015388
		 -0.96597606 0.78663331 0.046410162 -0.61567384 0.86026138 0.046562955 -0.50772256
		 -0.37407216 -0.0261919 -0.92702973 -0.49186936 -0.026037198 -0.87027961;
	setAttr ".n[498:663]" -type "float3"  0.13013506 0.010154807 -0.99144423 0.258432
		 0.01015388 -0.96597606 0.258432 0.01015388 -0.96597606 0.13013506 0.010154807 -0.99144423
		 0.69954258 0.046257298 -0.71309233 0.78663331 0.046410162 -0.61567384 -0.49186936
		 -0.026037198 -0.87027961 -0.60125095 -0.025882298 -0.79864097 -0.000388143 0.010155702
		 -0.99994832 0.13013506 0.010154807 -0.99144423 0.13013506 0.010154807 -0.99144423
		 -0.000388143 0.010155702 -0.99994832 0.60047942 0.046104167 -0.79831016 0.69954258
		 0.046257298 -0.71309233 -0.60125095 -0.025882298 -0.79864097 -0.70034665 -0.02572706
		 -0.71333915 -0.13090526 0.010156611 -0.9913429 -0.000388143 0.010155702 -0.99994832
		 -0.000388143 0.010155702 -0.99994832 -0.13090526 0.010156611 -0.9913429 0.49113765
		 0.045950636 -0.86986911 0.60047942 0.046104167 -0.79831016 -0.70034665 -0.02572706
		 -0.71333915 -0.78746068 -0.025571493 -0.61583418 -0.25918242 0.010157448 -0.96577501
		 -0.13090526 0.010156611 -0.9913429 -0.13090526 0.010156611 -0.9913429 -0.25918242
		 0.010157448 -0.96577501 0.3733888 0.045796953 -0.92654377 0.49113765 0.045950636
		 -0.86986911 -0.78746068 -0.025571493 -0.61583418 -0.86110342 -0.02541581 -0.50779444
		 -0.38302448 0.010158284 -0.92368233 -0.25918242 0.010157448 -0.96577501 -0.25918242
		 0.010157448 -0.96577501 -0.38302448 0.010158284 -0.92368233 0.24924774 0.04564314
		 -0.9673636 0.3733888 0.045796953 -0.92654377 -0.86110342 -0.02541581 -0.50779444
		 -0.92001516 -0.025259975 -0.39106789 -0.5003134 0.010159073 -0.86578482 -0.38302448
		 0.010158284 -0.92368233 -0.38302448 0.010158284 -0.92368233 -0.5003134 0.010159073
		 -0.86578482 0.12083758 0.045488946 -0.99162948 0.24924774 0.04564314 -0.9673636 -0.92001516
		 -0.025259975 -0.39106789 -0.96318865 -0.025103576 -0.26765171 -0.60904175 0.010160017
		 -0.793073 -0.5003134 0.010159073 -0.86578482 -0.5003134 0.010159073 -0.86578482 -0.60904175
		 0.010160017 -0.793073 -0.0096439384 0.045334473 -0.99892527 0.12083758 0.045488946
		 -0.99162948 -0.96318865 -0.025103576 -0.26765171 -0.98988414 -0.025018029 -0.13965479
		 -0.70734876 0.010160848 -0.7067917 -0.60904175 0.010160017 -0.793073 -0.60904175
		 0.010160017 -0.793073 -0.70734876 0.010160848 -0.7067917 -0.13994247 0.045045886
		 -0.98913449 -0.0096439384 0.045334473 -0.99892527 -0.98988414 -0.025018029 -0.13965479
		 -0.99980623 -0.017805861 -0.0084001832 -0.79324317 0.0083544934 -0.60884774 -0.70734876
		 0.010160848 -0.7067917 -0.70734876 0.010160848 -0.7067917 -0.79324317 0.0083544934
		 -0.60884774 -0.26760975 0.038664069 -0.96275133 -0.13994247 0.045045886 -0.98913449
		 -0.99980623 -0.017805861 -0.0084001832 -0.9609679 0.274149 0.037191294 -0.81804359
		 0.36741507 -0.44250518 -0.79324317 0.0083544934 -0.60884774 -0.79324317 0.0083544934
		 -0.60884774 -0.81804359 0.36741507 -0.44250518 -0.30697131 0.035822727 -0.95104438
		 -0.26760975 0.038664069 -0.96275133 0.066640861 -0.30890423 0.94875562 0.25043127
		 -0.021626964 0.96789277 -0.38139498 0.011690795 0.92433822 -0.49067566 -0.34757671
		 0.79901683 -0.49067566 -0.34757671 0.79901683 -0.38139498 0.011690795 0.92433822
		 -0.86094016 0.040639151 0.50708032 -0.85417002 -0.25333238 0.45411032 0.25043127
		 -0.021626964 0.96789277 0.37407458 -0.027927974 0.92697805 -0.25843692 0.010143259
		 0.96597487 -0.38139498 0.011690795 0.92433822 -0.38139498 0.011690795 0.92433822
		 -0.25843692 0.010143259 0.96597487 -0.78655589 0.048286095 0.61562842 -0.86094016
		 0.040639151 0.50708032 0.37407458 -0.027927974 0.92697805 0.4918586 -0.027876627
		 0.87022865 -0.13014048 0.010143982 0.99144369 -0.25843692 0.010143259 0.96597487
		 -0.25843692 0.010143259 0.96597487 -0.13014048 0.010143982 0.99144369 -0.69948149
		 0.048075862 0.71303189 -0.78655589 0.048286095 0.61562842 0.4918586 -0.027876627
		 0.87022865 0.60124427 -0.027724743 0.79858422 0.00038211886 0.010144952 0.9999485
		 -0.13014048 0.010143982 0.99144369 -0.13014048 0.010143982 0.99144369 0.00038211886
		 0.010144952 0.9999485 -0.6004371 0.0479258 0.79823458 -0.69948149 0.048075862 0.71303189
		 0.60124427 -0.027724743 0.79858422 0.70034212 -0.027572682 0.7132746 0.13089864 0.010145943
		 0.99134386 0.00038211886 0.010144952 0.9999485 0.00038211886 0.010144952 0.9999485
		 0.13089864 0.010145943 0.99134386 -0.49111742 0.047775362 0.86978239 -0.6004371 0.0479258
		 0.79823458 0.70034212 -0.027572682 0.7132746 0.78745645 -0.027420318 0.61576021 0.25917572
		 0.010146632 0.96577686 0.13089864 0.010145943 0.99134386 0.13089864 0.010145943 0.99134386
		 0.25917572 0.010146632 0.96577686 -0.37339249 0.047624584 0.92645019 -0.49111742
		 0.047775362 0.86978239 0.78745645 -0.027420318 0.61576021 0.86109686 -0.027267559
		 0.50770932 0.38301757 0.010147703 0.92368525 0.25917572 0.010146632 0.96577686 0.25917572
		 0.010146632 0.96577686 0.38301757 0.010147703 0.92368525 -0.24927692 0.04747384 0.96726799
		 -0.37339249 0.047624584 0.92645019 0.86109686 -0.027267559 0.50770932 0.92000335
		 -0.027114771 0.39097121 0.50030661 0.010148612 0.86578882 0.38301757 0.010147703
		 0.92368525 0.38301757 0.010147703 0.92368525 0.50030661 0.010148612 0.86578882 -0.12089305
		 0.047322582 0.99153692 -0.24927692 0.04747384 0.96726799 0.92000335 -0.027114771
		 0.39097121 0.96316844 -0.026961688 0.26754376 0.60903466 0.01014955 0.7930786 0.50030661
		 0.010148612 0.86578882 0.50030661 0.010148612 0.86578882 0.60903466 0.01014955 0.7930786
		 0.009562117 0.047171257 0.99884111 -0.12089305 0.047322582 0.99153692 0.96316844
		 -0.026961688 0.26754376 0.98985374 -0.026808199 0.13953795 0.70734245 0.010150391
		 0.70679814 0.60903466 0.01014955 0.7930786 0.60903466 0.01014955 0.7930786 0.70734245
		 0.010150391 0.70679814 0.13985711 0.047019396 0.98905468 0.009562117 0.047171257
		 0.99884111 0.98985374 -0.026808199 0.13953795 0.99960291 -0.026654346 0.0091456128
		 0.79354697 0.010151297 0.60842437 0.70734245 0.010150391 0.70679814 0.70734245 0.010150391
		 0.70679814 0.79354697 0.010151297 0.60842437 0.26776096 0.046867486 0.96234483 0.13985711
		 0.047019396 0.98905468;
	setAttr ".n[664:829]" -type "float3"  0.99960291 -0.026654346 0.0091456128
		 0.99224943 -0.026500376 -0.1214034 0.86617362 0.010152203 0.49964008 0.79354697 0.010151297
		 0.60842437 0.79354697 0.010151297 0.60842437 0.86617362 0.010152203 0.49964008 0.39108637
		 0.046715517 0.91916758 0.26776096 0.046867486 0.96234483 0.99224943 -0.026500376
		 -0.1214034 0.96791953 -0.026346229 -0.2498752 0.92397952 0.01015316 0.3823072 0.86617362
		 0.010152203 0.49964008 0.86617362 0.010152203 0.49964008 0.92397952 0.01015316 0.3823072
		 0.50772268 0.046563026 0.86026144 0.39108637 0.046715517 0.91916758 0.96791953 -0.026346229
		 -0.2498752 0.92702973 -0.026191898 -0.37407202 0.96597606 0.01015383 0.25843194 0.92397952
		 0.01015316 0.3823072 0.92397952 0.01015316 0.3823072 0.96597606 0.01015383 0.25843194
		 0.61567372 0.046410181 0.78663343 0.50772268 0.046563026 0.86026144 0.92702973 -0.026191898
		 -0.37407202 0.87027979 -0.026037211 -0.49186918 0.99144429 0.01015481 0.13013507
		 0.96597606 0.01015383 0.25843194 0.96597606 0.01015383 0.25843194 0.99144429 0.01015481
		 0.13013507 0.71309251 0.046257272 0.69954222 0.61567372 0.046410181 0.78663343 0.87027979
		 -0.026037211 -0.49186918 0.79864091 -0.025882246 -0.60125101 0.99994832 0.010155697
		 -0.00038816757 0.99144429 0.01015481 0.13013507 0.99144429 0.01015481 0.13013507
		 0.99994832 0.010155697 -0.00038816757 0.79831022 0.046104249 0.6004793 0.71309251
		 0.046257272 0.69954222 0.79864091 -0.025882246 -0.60125101 0.71333933 -0.025727013
		 -0.70034647 0.99134278 0.010156613 -0.13090524 0.99994832 0.010155697 -0.00038816757
		 0.99994832 0.010155697 -0.00038816757 0.99134278 0.010156613 -0.13090524 0.86986923
		 0.045950651 0.49113733 0.79831022 0.046104249 0.6004793 0.71333933 -0.025727013 -0.70034647
		 0.6158343 -0.025571467 -0.78746051 0.96577501 0.010157458 -0.25918242 0.99134278
		 0.010156613 -0.13090524 0.99134278 0.010156613 -0.13090524 0.96577501 0.010157458
		 -0.25918242 0.92654395 0.045796901 0.37338844 0.86986923 0.045950651 0.49113733 0.6158343
		 -0.025571467 -0.78746051 0.50779468 -0.025415769 -0.86110312 0.92368233 0.010158237
		 -0.3830246 0.96577501 0.010157458 -0.25918242 0.96577501 0.010157458 -0.25918242
		 0.92368233 0.010158237 -0.3830246 0.9673636 0.04564308 0.24924734 0.92654395 0.045796901
		 0.37338844 0.50779468 -0.025415769 -0.86110312 0.3910681 -0.025259946 -0.9200151
		 0.86578482 0.010158993 -0.5003134 0.92368233 0.010158237 -0.3830246 0.92368233 0.010158237
		 -0.3830246 0.86578482 0.010158993 -0.5003134 0.99162948 0.045488909 0.12083733 0.9673636
		 0.04564308 0.24924734 0.3910681 -0.025259946 -0.9200151 0.26765183 -0.025103521 -0.96318865
		 0.79307288 0.010159923 -0.60904199 0.86578482 0.010158993 -0.5003134 0.86578482 0.010158993
		 -0.5003134 0.79307288 0.010159923 -0.60904199 0.99892539 0.045334514 -0.0096442178
		 0.99162948 0.045488909 0.12083733 0.26765183 -0.025103521 -0.96318865 0.13965482
		 -0.025018029 -0.98988414 0.70679152 0.010160809 -0.70734882 0.79307288 0.010159923
		 -0.60904199 0.79307288 0.010159923 -0.60904199 0.70679152 0.010160809 -0.70734882
		 0.98913449 0.045045994 -0.13994268 0.99892539 0.045334514 -0.0096442178 0.13965482
		 -0.025018029 -0.98988414 0.0084003275 -0.017805854 -0.99980623 0.60884774 0.008354459
		 -0.79324317 0.70679152 0.010160809 -0.70734882 0.70679152 0.010160809 -0.70734882
		 0.60884774 0.008354459 -0.79324317 0.96275121 0.038664088 -0.26760998 0.98913449
		 0.045045994 -0.13994268 0.0084003275 -0.017805854 -0.99980623 -0.037191153 0.27414906
		 -0.96096784 0.44250509 0.36741504 -0.81804359 0.60884774 0.008354459 -0.79324317
		 0.60884774 0.008354459 -0.79324317 0.44250509 0.36741504 -0.81804359 0.95104438 0.035822712
		 -0.30697137 0.96275121 0.038664088 -0.26760998 -0.94875562 -0.30890423 0.066640824
		 -0.96789277 -0.021626884 0.25043109 -0.92433816 0.011690829 -0.3813951 -0.79901671
		 -0.34757668 -0.49067572 -0.79901671 -0.34757668 -0.49067572 -0.92433816 0.011690829
		 -0.3813951 -0.50708008 0.040639166 -0.86094028 -0.45411032 -0.25333241 -0.85417008
		 -0.96789277 -0.021626884 0.25043109 -0.92697805 -0.027927933 0.37407458 -0.96597487
		 0.010143223 -0.25843698 -0.92433816 0.011690829 -0.3813951 -0.92433816 0.011690829
		 -0.3813951 -0.96597487 0.010143223 -0.25843698 -0.61562842 0.048286073 -0.78655589
		 -0.50708008 0.040639166 -0.86094028 -0.92697805 -0.027927933 0.37407458 -0.87022871
		 -0.027876569 0.49185857 -0.99144369 0.010143944 -0.13014051 -0.96597487 0.010143223
		 -0.25843698 -0.96597487 0.010143223 -0.25843698 -0.99144369 0.010143944 -0.13014051
		 -0.71303195 0.04807587 -0.69948149 -0.61562842 0.048286073 -0.78655589 -0.87022871
		 -0.027876569 0.49185857 -0.79858416 -0.027724769 0.60124421 -0.9999485 0.010144923
		 0.00038203536 -0.99144369 0.010143944 -0.13014051 -0.99144369 0.010143944 -0.13014051
		 -0.9999485 0.010144923 0.00038203536 -0.79823434 0.047925826 -0.60043728 -0.71303195
		 0.04807587 -0.69948149 -0.79858416 -0.027724769 0.60124421 -0.7132746 -0.027572732
		 0.70034224 -0.99134392 0.010145861 0.13089854 -0.9999485 0.010144923 0.00038203536
		 -0.9999485 0.010144923 0.00038203536 -0.99134392 0.010145861 0.13089854 -0.86978221
		 0.047775347 -0.49111757 -0.79823434 0.047925826 -0.60043728 -0.7132746 -0.027572732
		 0.70034224 -0.61576009 -0.027420314 0.78745645 -0.96577686 0.010146652 0.25917563
		 -0.99134392 0.010145861 0.13089854 -0.99134392 0.010145861 0.13089854 -0.96577686
		 0.010146652 0.25917563 -0.92645007 0.047624633 -0.37339282 -0.86978221 0.047775347
		 -0.49111757 -0.61576009 -0.027420314 0.78745645 -0.50770944 -0.027267518 0.8610968
		 -0.92368537 0.010147831 0.38301742 -0.96577686 0.010146652 0.25917563 -0.96577686
		 0.010146652 0.25917563 -0.92368537 0.010147831 0.38301742 -0.96726799 0.047473826
		 -0.24927688 -0.92645007 0.047624633 -0.37339282 -0.50770944 -0.027267518 0.8610968
		 -0.3909713 -0.027114723 0.92000329 -0.865789 0.010148583 0.50030649 -0.92368537 0.010147831
		 0.38301742 -0.92368537 0.010147831 0.38301742 -0.865789 0.010148583 0.50030649;
	setAttr ".n[830:995]" -type "float3"  -0.99153692 0.047322642 -0.12089312 -0.96726799
		 0.047473826 -0.24927688 -0.3909713 -0.027114723 0.92000329 -0.26754409 -0.026961599
		 0.96316838 -0.79307878 0.01014953 0.60903454 -0.865789 0.010148583 0.50030649 -0.865789
		 0.010148583 0.50030649 -0.79307878 0.01014953 0.60903454 -0.99884105 0.047171202
		 0.0095620127 -0.99153692 0.047322642 -0.12089312 -0.26754409 -0.026961599 0.96316838
		 -0.13953832 -0.026808182 0.98985374 -0.7067982 0.010150325 0.70734251 -0.79307878
		 0.01014953 0.60903454 -0.79307878 0.01014953 0.60903454 -0.7067982 0.010150325 0.70734251
		 -0.98905468 0.047019389 0.13985693 -0.99884105 0.047171202 0.0095620127 -0.13953832
		 -0.026808182 0.98985374 -0.0091455104 -0.026654357 0.99960291 -0.60842437 0.010151261
		 0.79354686 -0.7067982 0.010150325 0.70734251 -0.7067982 0.010150325 0.70734251 -0.60842437
		 0.010151261 0.79354686 -0.96234488 0.046867538 0.26776075 -0.98905468 0.047019389
		 0.13985693 -0.0091455104 -0.026654357 0.99960291 0.12140344 -0.026500341 0.99224943
		 -0.49964026 0.010152234 0.86617351 -0.60842437 0.010151261 0.79354686 -0.60842437
		 0.010151261 0.79354686 -0.49964026 0.010152234 0.86617351 -0.91916782 0.046715509
		 0.39108598 -0.96234488 0.046867538 0.26776075 0.12140344 -0.026500341 0.99224943
		 0.24987526 -0.026346285 0.96791953 -0.38230717 0.010153128 0.92397952 -0.49964026
		 0.010152234 0.86617351 -0.49964026 0.010152234 0.86617351 -0.38230717 0.010153128
		 0.92397952 -0.86026138 0.046562947 0.50772268 -0.91916782 0.046715509 0.39108598
		 0.24987526 -0.026346285 0.96791953 0.3740721 -0.026191846 0.92702973 -0.25843206
		 0.01015381 0.96597606 -0.38230717 0.010153128 0.92397952 -0.38230717 0.010153128
		 0.92397952 -0.25843206 0.01015381 0.96597606 -0.78663355 0.046410285 0.61567342 -0.86026138
		 0.046562947 0.50772268 0.3740721 -0.026191846 0.92702973 0.49186939 -0.026037203
		 0.87027961 -0.13013521 0.010154823 0.99144423 -0.25843206 0.01015381 0.96597606 -0.25843206
		 0.01015381 0.96597606 -0.13013521 0.010154823 0.99144423 -0.69954252 0.046257332
		 0.71309227 -0.78663355 0.046410285 0.61567342 0.49186939 -0.026037203 0.87027961
		 0.60125095 -0.025882255 0.79864091 0.00038794643 0.010155684 0.99994832 -0.13013521
		 0.010154823 0.99144423 -0.13013521 0.010154823 0.99144423 0.00038794643 0.010155684
		 0.99994832 -0.60047948 0.046104159 0.79830998 -0.69954252 0.046257332 0.71309227
		 0.60125095 -0.025882255 0.79864091 0.70034653 -0.025726978 0.71333921 0.13090536
		 0.010156555 0.9913429 0.00038794643 0.010155684 0.99994832 0.00038794643 0.010155684
		 0.99994832 0.13090536 0.010156555 0.9913429 -0.49113759 0.04595064 0.86986917 -0.60047948
		 0.046104159 0.79830998 0.70034653 -0.025726978 0.71333921 0.78746057 -0.025571514
		 0.61583418 0.25918233 0.010157409 0.96577495 0.13090536 0.010156555 0.9913429 0.13090536
		 0.010156555 0.9913429 0.25918233 0.010157409 0.96577495 -0.37338886 0.045797076 0.92654377
		 -0.49113759 0.04595064 0.86986917 0.78746057 -0.025571514 0.61583418 0.86110336 -0.02541581
		 0.50779444 0.38302425 0.010158229 0.92368245 0.25918233 0.010157409 0.96577495 0.25918233
		 0.010157409 0.96577495 0.38302425 0.010158229 0.92368245 -0.2492478 0.045643121 0.9673636
		 -0.37338886 0.045797076 0.92654377 0.86110336 -0.02541581 0.50779444 0.92001516 -0.025259927
		 0.39106801 0.5003134 0.010158995 0.86578482 0.38302425 0.010158229 0.92368245 0.38302425
		 0.010158229 0.92368245 0.5003134 0.010158995 0.86578482 -0.12083771 0.045488909 0.99162948
		 -0.2492478 0.045643121 0.9673636 0.92001516 -0.025259927 0.39106801 0.96318865 -0.025103541
		 0.26765174 0.60904175 0.010159927 0.79307306 0.5003134 0.010158995 0.86578482 0.5003134
		 0.010158995 0.86578482 0.60904175 0.010159927 0.79307306 0.0096437931 0.045334585
		 0.99892527 -0.12083771 0.045488909 0.99162948 0.96318865 -0.025103541 0.26765174
		 0.98988414 -0.025018046 0.13965464 0.70734888 0.010160781 0.70679164 0.60904175 0.010159927
		 0.79307306 0.60904175 0.010159927 0.79307306 0.70734888 0.010160781 0.70679164 0.13994217
		 0.045045968 0.98913455 0.0096437931 0.045334585 0.99892527 0.98988414 -0.025018046
		 0.13965464 0.99980628 -0.017805884 0.0084001003 0.79324311 0.0083545018 0.6088478
		 0.70734888 0.010160781 0.70679164 0.70734888 0.010160781 0.70679164 0.79324311 0.0083545018
		 0.6088478 0.26760948 0.038664158 0.96275133 0.13994217 0.045045968 0.98913455 0.99980628
		 -0.017805884 0.0084001003 0.96096784 0.27414903 -0.037191175 0.81804347 0.36741513
		 0.44250527 0.79324311 0.0083545018 0.6088478 0.79324311 0.0083545018 0.6088478 0.81804347
		 0.36741513 0.44250527 0.30697113 0.035822731 0.95104432 0.26760948 0.038664158 0.96275133
		 -0.066640861 -0.30890426 -0.9487555 -0.2504313 -0.021626964 -0.96789277 0.38139501
		 0.011690795 -0.92433822 0.49067572 -0.34757674 -0.79901671 0.49067572 -0.34757674
		 -0.79901671 0.38139501 0.011690795 -0.92433822 0.86094034 0.040639177 -0.50708002
		 0.85417008 -0.25333244 -0.45411023 -0.2504313 -0.021626964 -0.96789277 -0.37407458
		 -0.027927946 -0.92697805 0.25843704 0.010143274 -0.96597487 0.38139501 0.011690795
		 -0.92433822 0.38139501 0.011690795 -0.92433822 0.25843704 0.010143274 -0.96597487
		 0.78655589 0.048286106 -0.61562836 0.86094034 0.040639177 -0.50708002 -0.37407458
		 -0.027927946 -0.92697805 -0.49185875 -0.027876571 -0.87022853 0.1301405 0.010143986
		 -0.99144363 0.25843704 0.010143274 -0.96597487 0.25843704 0.010143274 -0.96597487
		 0.1301405 0.010143986 -0.99144363 0.69948149 0.048075896 -0.71303189 0.78655589 0.048286106
		 -0.61562836 -0.49185875 -0.027876571 -0.87022853 -0.60124433 -0.027724775 -0.79858416
		 -0.00038199604 0.010144978 -0.9999485 0.1301405 0.010143986 -0.99144363 0.1301405
		 0.010143986 -0.99144363 -0.00038199604 0.010144978 -0.9999485 0.60043734 0.047925811
		 -0.79823434 0.69948149 0.048075896 -0.71303189 -0.60124433 -0.027724775 -0.79858416
		 -0.70034224 -0.02757274 -0.7132746 -0.13089854 0.010145911 -0.99134392 -0.00038199604
		 0.010144978 -0.9999485;
	setAttr ".n[996:1161]" -type "float3"  -0.00038199604 0.010144978 -0.9999485
		 -0.13089854 0.010145911 -0.99134392 0.49111766 0.047775324 -0.86978221 0.60043734
		 0.047925811 -0.79823434 -0.70034224 -0.02757274 -0.7132746 -0.78745645 -0.02742029
		 -0.61576009 -0.25917563 0.010146637 -0.96577686 -0.13089854 0.010145911 -0.99134392
		 -0.13089854 0.010145911 -0.99134392 -0.25917563 0.010146637 -0.96577686 0.3733927
		 0.047624569 -0.92645013 0.49111766 0.047775324 -0.86978221 -0.78745645 -0.02742029
		 -0.61576009 -0.86109698 -0.027267598 -0.50770932 -0.3830176 0.010147748 -0.92368537
		 -0.25917563 0.010146637 -0.96577686 -0.25917563 0.010146637 -0.96577686 -0.3830176
		 0.010147748 -0.92368537 0.24927701 0.04747384 -0.96726799 0.3733927 0.047624569 -0.92645013
		 -0.86109698 -0.027267598 -0.50770932 -0.92000335 -0.027114749 -0.39097136 -0.50030643
		 0.010148652 -0.865789 -0.3830176 0.010147748 -0.92368537 -0.3830176 0.010147748 -0.92368537
		 -0.50030643 0.010148652 -0.865789 0.12089325 0.047322702 -0.99153686 0.24927701 0.04747384
		 -0.96726799 -0.92000335 -0.027114749 -0.39097136 -0.96316844 -0.026961641 -0.26754376
		 -0.6090346 0.010149576 -0.79307878 -0.50030643 0.010148652 -0.865789 -0.50030643
		 0.010148652 -0.865789 -0.6090346 0.010149576 -0.79307878 -0.0095618377 0.047171231
		 -0.99884105 0.12089325 0.047322702 -0.99153686 -0.96316844 -0.026961641 -0.26754376
		 -0.98985374 -0.026808256 -0.13953789 -0.70734245 0.010150379 -0.70679814 -0.6090346
		 0.010149576 -0.79307878 -0.6090346 0.010149576 -0.79307878 -0.70734245 0.010150379
		 -0.70679814 -0.13985674 0.047019348 -0.98905468 -0.0095618377 0.047171231 -0.99884105
		 -0.98985374 -0.026808256 -0.13953789 -0.99960291 -0.026654325 -0.009145706 -0.79354686
		 0.010151376 -0.60842448 -0.70734245 0.010150379 -0.70679814 -0.70734245 0.010150379
		 -0.70679814 -0.79354686 0.010151376 -0.60842448 -0.26776081 0.04686752 -0.96234488
		 -0.13985674 0.047019348 -0.98905468 -0.99960291 -0.026654325 -0.009145706 -0.99224943
		 -0.026500279 0.12140304 -0.86617345 0.010152255 -0.49964041 -0.79354686 0.010151376
		 -0.60842448 -0.79354686 0.010151376 -0.60842448 -0.86617345 0.010152255 -0.49964041
		 -0.39108598 0.046715483 -0.91916782 -0.26776081 0.04686752 -0.96234488 -0.99224943
		 -0.026500279 0.12140304 -0.96791953 -0.026346242 0.24987522 -0.92397952 0.010153139
		 -0.38230723 -0.86617345 0.010152255 -0.49964041 -0.86617345 0.010152255 -0.49964041
		 -0.92397952 0.010153139 -0.38230723 -0.50772256 0.046562936 -0.86026138 -0.39108598
		 0.046715483 -0.91916782 -0.96791953 -0.026346242 0.24987522 -0.92702973 -0.026191831
		 0.37407193 -0.96597606 0.010153846 -0.258432 -0.92397952 0.010153139 -0.38230723
		 -0.92397952 0.010153139 -0.38230723 -0.96597606 0.010153846 -0.258432 -0.61567348
		 0.046410263 -0.78663349 -0.50772256 0.046562936 -0.86026138 -0.92702973 -0.026191831
		 0.37407193 -0.87027973 -0.026037155 0.49186918 -0.99144423 0.01015483 -0.13013524
		 -0.96597606 0.010153846 -0.258432 -0.96597606 0.010153846 -0.258432 -0.99144423 0.01015483
		 -0.13013524 -0.71309227 0.046257328 -0.69954252 -0.61567348 0.046410263 -0.78663349
		 -0.87027973 -0.026037155 0.49186918 -0.79864103 -0.025882265 0.60125089 -0.99994838
		 0.010155682 0.00038797109 -0.99144423 0.01015483 -0.13013524 -0.99144423 0.01015483
		 -0.13013524 -0.99994838 0.010155682 0.00038797109 -0.79830998 0.04610417 -0.6004796
		 -0.71309227 0.046257328 -0.69954252 -0.79864103 -0.025882265 0.60125089 -0.71333921
		 -0.025727058 0.70034653 -0.9913429 0.010156537 0.13090512 -0.99994838 0.010155682
		 0.00038797109 -0.99994838 0.010155682 0.00038797109 -0.9913429 0.010156537 0.13090512
		 -0.86986911 0.045950659 -0.49113765 -0.79830998 0.04610417 -0.6004796 -0.71333921
		 -0.025727058 0.70034653 -0.61583436 -0.025571452 0.78746051 -0.96577501 0.010157495
		 0.25918207 -0.9913429 0.010156537 0.13090512 -0.9913429 0.010156537 0.13090512 -0.96577501
		 0.010157495 0.25918207 -0.92654365 0.045797035 -0.37338912 -0.86986911 0.045950659
		 -0.49113765 -0.61583436 -0.025571452 0.78746051 -0.50779474 -0.025415774 0.86110318
		 -0.92368245 0.010158257 0.38302436 -0.96577501 0.010157495 0.25918207 -0.96577501
		 0.010157495 0.25918207 -0.92368245 0.010158257 0.38302436 -0.9673636 0.045643073
		 -0.2492478 -0.92654365 0.045797035 -0.37338912 -0.50779474 -0.025415774 0.86110318
		 -0.39106792 -0.025259985 0.9200151 -0.86578482 0.010158987 0.50031328 -0.92368245
		 0.010158257 0.38302436 -0.92368245 0.010158257 0.38302436 -0.86578482 0.010158987
		 0.50031328 -0.99162948 0.045488928 -0.1208378 -0.9673636 0.045643073 -0.2492478 -0.39106792
		 -0.025259985 0.9200151 -0.26765183 -0.025103489 0.96318865 -0.79307312 0.01016002
		 0.60904175 -0.86578482 0.010158987 0.50031328 -0.86578482 0.010158987 0.50031328
		 -0.79307312 0.01016002 0.60904175 -0.99892539 0.045334566 0.0096438453 -0.99162948
		 0.045488928 -0.1208378 -0.26765183 -0.025103489 0.96318865 -0.13965482 -0.025018027
		 0.98988414 -0.7067917 0.01016085 0.7073487 -0.79307312 0.01016002 0.60904175 -0.79307312
		 0.01016002 0.60904175 -0.7067917 0.01016085 0.7073487 -0.98913455 0.045045931 0.13994245
		 -0.99892539 0.045334566 0.0096438453 -0.13965482 -0.025018027 0.98988414 -0.0084003685
		 -0.017805835 0.99980623 -0.60884792 0.0083544636 0.79324299 -0.7067917 0.01016085
		 0.7073487 -0.7067917 0.01016085 0.7073487 -0.60884792 0.0083544636 0.79324299 -0.96275133
		 0.03866411 0.26760963 -0.98913455 0.045045931 0.13994245 -0.0084003685 -0.017805835
		 0.99980623 0.037191186 0.27414906 0.96096784 -0.44250524 0.36741507 0.81804347 -0.60884792
		 0.0083544636 0.79324299 -0.60884792 0.0083544636 0.79324299 -0.44250524 0.36741507
		 0.81804347 -0.95104432 0.035822738 0.30697113 -0.96275133 0.03866411 0.26760963 0.93040657
		 -0.27518523 -0.24210879 0.94875562 -0.30890423 -0.066640988 0.79901677 -0.34757668
		 0.49067566 0.60601175 -0.71060419 0.3574791 0.60601175 -0.71060419 0.3574791 0.79901677
		 -0.34757668 0.49067566 0.45411026 -0.25333238 0.85417008 0.30991256 -0.12240923 0.94285208
		 0.30991256 -0.12240923 0.94285208 0.45411026 -0.25333238 0.85417008;
	setAttr ".n[1162:1327]" -type "float3"  0.50708008 0.040639095 0.86094028 0.26002637
		 0.068869255 0.9631424 0.26002637 0.068869255 0.9631424 0.50708008 0.040639095 0.86094028
		 0.61562818 0.048286129 0.78655607 0.38370168 0.068333134 0.92092532 0.38370168 0.068333134
		 0.92092532 0.61562818 0.048286129 0.78655607 0.71303189 0.048075892 0.69948155 0.50063765
		 0.067816153 0.86299646 0.50063765 0.067816153 0.86299646 0.71303189 0.048075892 0.69948155
		 0.79823428 0.047925737 0.6004374 0.60901582 0.067299105 0.79029775 0.60901582 0.067299105
		 0.79029775 0.79823428 0.047925737 0.6004374 0.86978221 0.047775362 0.49111766 0.7069822
		 0.066782057 0.70407134 0.7069822 0.066782057 0.70407134 0.86978221 0.047775362 0.49111766
		 0.92645007 0.047624636 0.3733927 0.79285884 0.066264883 0.60579187 0.79285884 0.066264883
		 0.60579187 0.92645007 0.047624636 0.3733927 0.96726787 0.047473837 0.24927694 0.86517578
		 0.065747693 0.49713987 0.86517578 0.065747693 0.49713987 0.96726787 0.047473837 0.24927694
		 0.99153692 0.047322568 0.12089327 0.92269421 0.065230303 0.37997416 0.92269421 0.065230303
		 0.37997416 0.99153692 0.047322568 0.12089327 0.99884105 0.047171157 -0.0095619718
		 0.96442908 0.064713039 0.25629824 0.96442908 0.064713039 0.25629824 0.99884105 0.047171157
		 -0.0095619718 0.98905468 0.047019377 -0.13985687 0.98966485 0.064195581 0.12822798
		 0.98966485 0.064195581 0.12822798 0.98905468 0.047019377 -0.13985687 0.96234488 0.046867535
		 -0.26776075 0.99796838 0.063678049 -0.0020448051 0.99796838 0.063678049 -0.0020448051
		 0.96234488 0.046867535 -0.26776075 0.91916782 0.046715505 -0.39108586 0.98919648
		 0.063160561 -0.13229172 0.98919648 0.063160561 -0.13229172 0.91916782 0.046715505
		 -0.39108586 0.86026138 0.046562955 -0.50772256 0.96349764 0.062642932 -0.26028451
		 0.96349764 0.062642932 -0.26028451 0.86026138 0.046562955 -0.50772256 0.78663331
		 0.046410162 -0.61567384 0.92131072 0.062125247 -0.38383207 0.92131072 0.062125247
		 -0.38383207 0.78663331 0.046410162 -0.61567384 0.69954258 0.046257298 -0.71309233
		 0.86335588 0.061607629 -0.50082028 0.86335588 0.061607629 -0.50082028 0.69954258
		 0.046257298 -0.71309233 0.60047942 0.046104167 -0.79831016 0.79062414 0.061089844
		 -0.60924667 0.79062414 0.061089844 -0.60924667 0.60047942 0.046104167 -0.79831016
		 0.49113765 0.045950636 -0.86986911 0.70435834 0.060572051 -0.70725536 0.70435834
		 0.060572051 -0.70725536 0.49113765 0.045950636 -0.86986911 0.3733888 0.045796953
		 -0.92654377 0.60603452 0.060054149 -0.79316813 0.60603452 0.060054149 -0.79316813
		 0.3733888 0.045796953 -0.92654377 0.24924774 0.04564314 -0.9673636 0.49733379 0.059536282
		 -0.86551404 0.49733379 0.059536282 -0.86551404 0.24924774 0.04564314 -0.9673636 0.12083758
		 0.045488946 -0.99162948 0.38011497 0.05901834 -0.92305446 0.38011497 0.05901834 -0.92305446
		 0.12083758 0.045488946 -0.99162948 -0.0096439384 0.045334473 -0.99892527 0.25638422
		 0.05850032 -0.96480304 0.25638422 0.05850032 -0.96480304 -0.0096439384 0.045334473
		 -0.99892527 -0.13994247 0.045045886 -0.98913449 0.12825827 0.057982288 -0.99004436
		 0.12825827 0.057982288 -0.99004436 -0.13994247 0.045045886 -0.98913449 -0.26760975
		 0.038664069 -0.96275133 -0.0013688861 0.057537008 -0.99834239 -0.0013688861 0.057537008
		 -0.99834239 -0.26760975 0.038664069 -0.96275133 -0.30697131 0.035822727 -0.95104438
		 -0.11959393 0.051189315 -0.99150234 -0.29640833 0.86192352 -0.41137552 -0.48511088
		 0.73456043 -0.47443491 -0.81804359 0.36741507 -0.44250518 -0.50911576 0.81051093
		 -0.28960848 -0.50911576 0.81051093 -0.28960848 -0.81804359 0.36741507 -0.44250518
		 -0.9609679 0.274149 0.037191294 -0.96664619 0.15403686 0.20461623 -0.96664619 0.15403686
		 0.20461623 -0.9609679 0.274149 0.037191294 -0.99980623 -0.017805861 -0.0084001832
		 -0.96589702 -0.038505815 0.25604698 -0.96589702 -0.038505815 0.25604698 -0.99980623
		 -0.017805861 -0.0084001832 -0.98988414 -0.025018029 -0.13965479 -0.99106443 -0.039003547
		 0.1275539 -0.99106443 -0.039003547 0.1275539 -0.98988414 -0.025018029 -0.13965479
		 -0.96318865 -0.025103576 -0.26765171 -0.99921447 -0.039522499 -0.0028919643 -0.99921447
		 -0.039522499 -0.0028919643 -0.96318865 -0.025103576 -0.26765171 -0.92001516 -0.025259975
		 -0.39106789 -0.99026877 -0.04004148 -0.13328423 -0.99026877 -0.04004148 -0.13328423
		 -0.92001516 -0.025259975 -0.39106789 -0.86110342 -0.02541581 -0.50779444 -0.96438044
		 -0.040560059 -0.26139095 -0.96438044 -0.040560059 -0.26139095 -0.86110342 -0.02541581
		 -0.50779444 -0.78746068 -0.025571493 -0.61583418 -0.92199332 -0.041078724 -0.38502058
		 -0.92199332 -0.041078724 -0.38502058 -0.78746068 -0.025571493 -0.61583418 -0.70034665
		 -0.02572706 -0.71333915 -0.86383295 -0.041597564 -0.50205809 -0.86383295 -0.041597564
		 -0.50205809 -0.70034665 -0.02572706 -0.71333915 -0.60125095 -0.025882298 -0.79864097
		 -0.79089487 -0.042116184 -0.61050117 -0.79089487 -0.042116184 -0.61050117 -0.60125095
		 -0.025882298 -0.79864097 -0.49186936 -0.026037198 -0.87027961 -0.70442754 -0.042634733
		 -0.70849431 -0.70442754 -0.042634733 -0.70849431 -0.49186936 -0.026037198 -0.87027961
		 -0.37407216 -0.0261919 -0.92702973 -0.6059109 -0.043153331 -0.79436117 -0.6059109
		 -0.043153331 -0.79436117 -0.37407216 -0.0261919 -0.92702973 -0.24987547 -0.026346225
		 -0.96791953 -0.49703109 -0.043671582 -0.86663306 -0.49703109 -0.043671582 -0.86663306
		 -0.24987547 -0.026346225 -0.96791953 -0.12140366 -0.026500361 -0.99224949 -0.37965193
		 -0.044190034 -0.92407346 -0.37965193 -0.044190034 -0.92407346 -0.12140366 -0.026500361
		 -0.99224949 0.0091454787 -0.02665446 -0.99960291 -0.2557812 -0.044708479 -0.96570039
		 -0.2557812 -0.044708479 -0.96570039 0.0091454787 -0.02665446 -0.99960291 0.13953778
		 -0.026808279 -0.9898538 -0.1275395 -0.045226984 -0.99080175 -0.1275395 -0.045226984
		 -0.99080175 0.13953778 -0.026808279 -0.9898538 0.26754367 -0.026961651 -0.96316844
		 0.0028795605 -0.04574522 -0.99894899 0.0028795605 -0.04574522 -0.99894899 0.26754367
		 -0.026961651 -0.96316844 0.39097124 -0.027114764 -0.92000335 0.13324349 -0.046263359
		 -0.99000293;
	setAttr ".n[1328:1493]" -type "float3"  0.13324349 -0.046263359 -0.99000293 0.39097124
		 -0.027114764 -0.92000335 0.50770932 -0.02726762 -0.86109698 0.26132163 -0.046781417
		 -0.96411747 0.26132163 -0.046781417 -0.96411747 0.50770932 -0.02726762 -0.86109698
		 0.61576003 -0.027420323 -0.78745645 0.3849225 -0.047299616 -0.92173612 0.3849225
		 -0.047299616 -0.92173612 0.61576003 -0.027420323 -0.78745645 0.71327448 -0.027572729
		 -0.70034224 0.50193119 -0.04781767 -0.86358476 0.50193119 -0.04781767 -0.86358476
		 0.71327448 -0.027572729 -0.70034224 0.7985841 -0.027724767 -0.60124433 0.61034596
		 -0.048335522 -0.79065889 0.61034596 -0.048335522 -0.79065889 0.7985841 -0.027724767
		 -0.60124433 0.87022853 -0.027876627 -0.49185881 0.70831168 -0.048853368 -0.70420724
		 0.70831168 -0.048853368 -0.70420724 0.87022853 -0.027876627 -0.49185881 0.92697793
		 -0.027928017 -0.37407479 0.79415238 -0.04937112 -0.60570985 0.79415238 -0.04937112
		 -0.60570985 0.92697793 -0.027928017 -0.37407479 0.96789277 -0.021626962 -0.2504313
		 0.86613399 -0.049958754 -0.49730879 0.86613399 -0.049958754 -0.49730879 0.96789277
		 -0.021626962 -0.2504313 0.94875562 -0.30890423 -0.066640988 0.93040657 -0.27518523
		 -0.24210879 0.24210875 -0.27518523 0.93040663 0.066640861 -0.30890423 0.94875562
		 -0.49067566 -0.34757671 0.79901683 -0.35747913 -0.71060425 0.60601181 -0.35747913
		 -0.71060425 0.60601181 -0.49067566 -0.34757671 0.79901683 -0.85417002 -0.25333238
		 0.45411032 -0.94285208 -0.12240928 0.30991262 -0.94285208 -0.12240928 0.30991262
		 -0.85417002 -0.25333238 0.45411032 -0.86094016 0.040639151 0.50708032 -0.96314228
		 0.068869218 0.2600266 -0.96314228 0.068869218 0.2600266 -0.86094016 0.040639151 0.50708032
		 -0.78655589 0.048286095 0.61562842 -0.9209252 0.068333104 0.38370198 -0.9209252 0.068333104
		 0.38370198 -0.78655589 0.048286095 0.61562842 -0.69948149 0.048075862 0.71303189
		 -0.86299652 0.067816205 0.50063741 -0.86299652 0.067816205 0.50063741 -0.69948149
		 0.048075862 0.71303189 -0.6004371 0.0479258 0.79823458 -0.79029757 0.067299142 0.609016
		 -0.79029757 0.067299142 0.609016 -0.6004371 0.0479258 0.79823458 -0.49111742 0.047775362
		 0.86978239 -0.7040711 0.066782065 0.70698243 -0.7040711 0.066782065 0.70698243 -0.49111742
		 0.047775362 0.86978239 -0.37339249 0.047624584 0.92645019 -0.60579169 0.06626489
		 0.79285896 -0.60579169 0.06626489 0.79285896 -0.37339249 0.047624584 0.92645019 -0.24927692
		 0.04747384 0.96726799 -0.49713975 0.065747678 0.86517584 -0.49713975 0.065747678
		 0.86517584 -0.24927692 0.04747384 0.96726799 -0.12089305 0.047322582 0.99153692 -0.3799741
		 0.065230347 0.92269433 -0.3799741 0.065230347 0.92269433 -0.12089305 0.047322582
		 0.99153692 0.009562117 0.047171257 0.99884111 -0.25629809 0.064713098 0.96442908
		 -0.25629809 0.064713098 0.96442908 0.009562117 0.047171257 0.99884111 0.13985711
		 0.047019396 0.98905468 -0.12822753 0.064195551 0.98966485 -0.12822753 0.064195551
		 0.98966485 0.13985711 0.047019396 0.98905468 0.26776096 0.046867486 0.96234483 0.002044939
		 0.063678034 0.99796838 0.002044939 0.063678034 0.99796838 0.26776096 0.046867486
		 0.96234483 0.39108637 0.046715517 0.91916758 0.13229202 0.063160628 0.98919636 0.13229202
		 0.063160628 0.98919636 0.39108637 0.046715517 0.91916758 0.50772268 0.046563026 0.86026144
		 0.26028472 0.062642962 0.96349764 0.26028472 0.062642962 0.96349764 0.50772268 0.046563026
		 0.86026144 0.61567372 0.046410181 0.78663343 0.38383222 0.062125236 0.92131066 0.38383222
		 0.062125236 0.92131066 0.61567372 0.046410181 0.78663343 0.71309251 0.046257272 0.69954222
		 0.5008204 0.06160764 0.86335582 0.5008204 0.06160764 0.86335582 0.71309251 0.046257272
		 0.69954222 0.79831022 0.046104249 0.6004793 0.60924685 0.061089881 0.79062402 0.60924685
		 0.061089881 0.79062402 0.79831022 0.046104249 0.6004793 0.86986923 0.045950651 0.49113733
		 0.70725566 0.060572039 0.70435816 0.70725566 0.060572039 0.70435816 0.86986923 0.045950651
		 0.49113733 0.92654395 0.045796901 0.37338844 0.79316837 0.060054146 0.60603422 0.79316837
		 0.060054146 0.60603422 0.92654395 0.045796901 0.37338844 0.9673636 0.04564308 0.24924734
		 0.8655141 0.059536301 0.49733365 0.8655141 0.059536301 0.49733365 0.9673636 0.04564308
		 0.24924734 0.99162948 0.045488909 0.12083733 0.92305446 0.059018336 0.38011482 0.92305446
		 0.059018336 0.38011482 0.99162948 0.045488909 0.12083733 0.99892539 0.045334514 -0.0096442178
		 0.96480304 0.058500405 0.25638419 0.96480304 0.058500405 0.25638419 0.99892539 0.045334514
		 -0.0096442178 0.98913449 0.045045994 -0.13994268 0.99004447 0.057982359 0.12825808
		 0.99004447 0.057982359 0.12825808 0.98913449 0.045045994 -0.13994268 0.96275121 0.038664088
		 -0.26760998 0.99834239 0.057537004 -0.0013692875 0.99834239 0.057537004 -0.0013692875
		 0.96275121 0.038664088 -0.26760998 0.95104438 0.035822712 -0.30697137 0.99150234
		 0.051189382 -0.1195942 0.41137552 0.86192352 -0.29640844 0.4744347 0.73456049 -0.48511088
		 0.44250509 0.36741504 -0.81804359 0.28960842 0.81051093 -0.5091157 0.28960842 0.81051093
		 -0.5091157 0.44250509 0.36741504 -0.81804359 -0.037191153 0.27414906 -0.96096784
		 -0.20461604 0.15403694 -0.96664619 -0.20461604 0.15403694 -0.96664619 -0.037191153
		 0.27414906 -0.96096784 0.0084003275 -0.017805854 -0.99980623 -0.25604677 -0.038505789
		 -0.96589708 -0.25604677 -0.038505789 -0.96589708 0.0084003275 -0.017805854 -0.99980623
		 0.13965482 -0.025018029 -0.98988414 -0.12755373 -0.039003532 -0.99106443 -0.12755373
		 -0.039003532 -0.99106443 0.13965482 -0.025018029 -0.98988414 0.26765183 -0.025103521
		 -0.96318865 0.0028920646 -0.039522443 -0.99921447 0.0028920646 -0.039522443 -0.99921447
		 0.26765183 -0.025103521 -0.96318865 0.3910681 -0.025259946 -0.9200151 0.13328426
		 -0.040041436 -0.99026877 0.13328426 -0.040041436 -0.99026877 0.3910681 -0.025259946
		 -0.9200151 0.50779468 -0.025415769 -0.86110312 0.26139137 -0.040560033 -0.96438038
		 0.26139137 -0.040560033 -0.96438038 0.50779468 -0.025415769 -0.86110312;
	setAttr ".n[1494:1659]" -type "float3"  0.6158343 -0.025571467 -0.78746051 0.38502085
		 -0.041078694 -0.92199326 0.38502085 -0.041078694 -0.92199326 0.6158343 -0.025571467
		 -0.78746051 0.71333933 -0.025727013 -0.70034647 0.50205827 -0.041597519 -0.86383277
		 0.50205827 -0.041597519 -0.86383277 0.71333933 -0.025727013 -0.70034647 0.79864091
		 -0.025882246 -0.60125101 0.61050117 -0.042116158 -0.79089487 0.61050117 -0.042116158
		 -0.79089487 0.79864091 -0.025882246 -0.60125101 0.87027979 -0.026037211 -0.49186918
		 0.70849431 -0.042634681 -0.70442754 0.70849431 -0.042634681 -0.70442754 0.87027979
		 -0.026037211 -0.49186918 0.92702973 -0.026191898 -0.37407202 0.79436141 -0.043153297
		 -0.60591072 0.79436141 -0.043153297 -0.60591072 0.92702973 -0.026191898 -0.37407202
		 0.96791953 -0.026346229 -0.2498752 0.86663306 -0.043671615 -0.497031 0.86663306 -0.043671615
		 -0.497031 0.96791953 -0.026346229 -0.2498752 0.99224943 -0.026500376 -0.1214034 0.92407358
		 -0.044190016 -0.37965158 0.92407358 -0.044190016 -0.37965158 0.99224943 -0.026500376
		 -0.1214034 0.99960291 -0.026654346 0.0091456128 0.96570033 -0.044708405 -0.25578099
		 0.96570033 -0.044708405 -0.25578099 0.99960291 -0.026654346 0.0091456128 0.98985374
		 -0.026808199 0.13953795 0.99080175 -0.045226932 -0.1275394 0.99080175 -0.045226932
		 -0.1275394 0.98985374 -0.026808199 0.13953795 0.96316844 -0.026961688 0.26754376
		 0.99894893 -0.045745254 0.0028797255 0.99894893 -0.045745254 0.0028797255 0.96316844
		 -0.026961688 0.26754376 0.92000335 -0.027114771 0.39097121 0.99000293 -0.046263341
		 0.13324361 0.99000293 -0.046263341 0.13324361 0.92000335 -0.027114771 0.39097121
		 0.86109686 -0.027267559 0.50770932 0.96411747 -0.04678138 0.26132154 0.96411747 -0.04678138
		 0.26132154 0.86109686 -0.027267559 0.50770932 0.78745645 -0.027420318 0.61576021
		 0.921736 -0.047299609 0.3849225 0.921736 -0.047299609 0.3849225 0.78745645 -0.027420318
		 0.61576021 0.70034212 -0.027572682 0.7132746 0.86358458 -0.047817618 0.50193137 0.86358458
		 -0.047817618 0.50193137 0.70034212 -0.027572682 0.7132746 0.60124427 -0.027724743
		 0.79858422 0.79065889 -0.048335522 0.61034596 0.79065889 -0.048335522 0.61034596
		 0.60124427 -0.027724743 0.79858422 0.4918586 -0.027876627 0.87022865 0.7042073 -0.048853368
		 0.70831174 0.7042073 -0.048853368 0.70831174 0.4918586 -0.027876627 0.87022865 0.37407458
		 -0.027927974 0.92697805 0.60570979 -0.049371108 0.79415244 0.60570979 -0.049371108
		 0.79415244 0.37407458 -0.027927974 0.92697805 0.25043127 -0.021626964 0.96789277
		 0.4973087 -0.049958751 0.86613399 0.4973087 -0.049958751 0.86613399 0.25043127 -0.021626964
		 0.96789277 0.066640861 -0.30890423 0.94875562 0.24210875 -0.27518523 0.93040663 -0.93040663
		 -0.27518523 0.24210876 -0.94875562 -0.30890423 0.066640824 -0.79901671 -0.34757668
		 -0.49067572 -0.60601175 -0.71060419 -0.35747913 -0.60601175 -0.71060419 -0.35747913
		 -0.79901671 -0.34757668 -0.49067572 -0.45411032 -0.25333241 -0.85417008 -0.30991262
		 -0.12240926 -0.9428522 -0.30991262 -0.12240926 -0.9428522 -0.45411032 -0.25333241
		 -0.85417008 -0.50708008 0.040639166 -0.86094028 -0.2600264 0.068869255 -0.9631424
		 -0.2600264 0.068869255 -0.9631424 -0.50708008 0.040639166 -0.86094028 -0.61562842
		 0.048286073 -0.78655589 -0.38370201 0.068333052 -0.9209252 -0.38370201 0.068333052
		 -0.9209252 -0.61562842 0.048286073 -0.78655589 -0.71303195 0.04807587 -0.69948149
		 -0.50063741 0.06781622 -0.86299658 -0.50063741 0.06781622 -0.86299658 -0.71303195
		 0.04807587 -0.69948149 -0.79823434 0.047925826 -0.60043728 -0.609016 0.067299195
		 -0.79029757 -0.609016 0.067299195 -0.79029757 -0.79823434 0.047925826 -0.60043728
		 -0.86978221 0.047775347 -0.49111757 -0.7069822 0.06678208 -0.70407128 -0.7069822
		 0.06678208 -0.70407128 -0.86978221 0.047775347 -0.49111757 -0.92645007 0.047624633
		 -0.37339282 -0.79285896 0.066264831 -0.60579181 -0.79285896 0.066264831 -0.60579181
		 -0.92645007 0.047624633 -0.37339282 -0.96726799 0.047473826 -0.24927688 -0.86517578
		 0.065747701 -0.49713987 -0.86517578 0.065747701 -0.49713987 -0.96726799 0.047473826
		 -0.24927688 -0.99153692 0.047322642 -0.12089312 -0.92269427 0.065230392 -0.37997395
		 -0.92269427 0.065230392 -0.37997395 -0.99153692 0.047322642 -0.12089312 -0.99884105
		 0.047171202 0.0095620127 -0.96442908 0.064713068 -0.25629815 -0.96442908 0.064713068
		 -0.25629815 -0.99884105 0.047171202 0.0095620127 -0.98905468 0.047019389 0.13985693
		 -0.98966485 0.064195558 -0.12822787 -0.98966485 0.064195558 -0.12822787 -0.98905468
		 0.047019389 0.13985693 -0.96234488 0.046867538 0.26776075 -0.99796838 0.063678034
		 0.0020449271 -0.99796838 0.063678034 0.0020449271 -0.96234488 0.046867538 0.26776075
		 -0.91916782 0.046715509 0.39108598 -0.98919648 0.063160606 0.13229187 -0.98919648
		 0.063160606 0.13229187 -0.91916782 0.046715509 0.39108598 -0.86026138 0.046562947
		 0.50772268 -0.96349764 0.062642932 0.26028463 -0.96349764 0.062642932 0.26028463
		 -0.86026138 0.046562947 0.50772268 -0.78663355 0.046410285 0.61567342 -0.92131072
		 0.062125288 0.38383186 -0.92131072 0.062125288 0.38383186 -0.78663355 0.046410285
		 0.61567342 -0.69954252 0.046257332 0.71309227 -0.86335582 0.061607633 0.50082052
		 -0.86335582 0.061607633 0.50082052 -0.69954252 0.046257332 0.71309227 -0.60047948
		 0.046104159 0.79830998 -0.79062414 0.061089844 0.60924667 -0.79062414 0.061089844
		 0.60924667 -0.60047948 0.046104159 0.79830998 -0.49113759 0.04595064 0.86986917 -0.70435828
		 0.060572069 0.70725542 -0.70435828 0.060572069 0.70725542 -0.49113759 0.04595064
		 0.86986917 -0.37338886 0.045797076 0.92654377 -0.60603446 0.060054209 0.79316825
		 -0.60603446 0.060054209 0.79316825 -0.37338886 0.045797076 0.92654377 -0.2492478
		 0.045643121 0.9673636 -0.49733353 0.059536245 0.86551428 -0.49733353 0.059536245
		 0.86551428 -0.2492478 0.045643121 0.9673636 -0.12083771 0.045488909 0.99162948 -0.380115
		 0.059018347 0.92305446 -0.380115 0.059018347 0.92305446 -0.12083771 0.045488909 0.99162948
		 0.0096437931 0.045334585 0.99892527 -0.25638402 0.058500376 0.96480304;
	setAttr ".n[1660:1825]" -type "float3"  -0.25638402 0.058500376 0.96480304 0.0096437931
		 0.045334585 0.99892527 0.13994217 0.045045968 0.98913455 -0.12825832 0.057982344
		 0.99004447 -0.12825832 0.057982344 0.99004447 0.13994217 0.045045968 0.98913455 0.26760948
		 0.038664158 0.96275133 0.0013691203 0.057536986 0.99834239 0.0013691203 0.057536986
		 0.99834239 0.26760948 0.038664158 0.96275133 0.30697113 0.035822731 0.95104432 0.1195941
		 0.051189307 0.99150234 0.29640836 0.86192364 0.41137555 0.48511076 0.73456031 0.47443503
		 0.81804347 0.36741513 0.44250527 0.5091157 0.81051099 0.28960848 0.5091157 0.81051099
		 0.28960848 0.81804347 0.36741513 0.44250527 0.96096784 0.27414903 -0.037191175 0.96664619
		 0.15403686 -0.20461626 0.96664619 0.15403686 -0.20461626 0.96096784 0.27414903 -0.037191175
		 0.99980628 -0.017805884 0.0084001003 0.96589702 -0.038505815 -0.25604698 0.96589702
		 -0.038505815 -0.25604698 0.99980628 -0.017805884 0.0084001003 0.98988414 -0.025018046
		 0.13965464 0.99106443 -0.039003555 -0.12755392 0.99106443 -0.039003555 -0.12755392
		 0.98988414 -0.025018046 0.13965464 0.96318865 -0.025103541 0.26765174 0.99921447
		 -0.039522447 0.0028920264 0.99921447 -0.039522447 0.0028920264 0.96318865 -0.025103541
		 0.26765174 0.92001516 -0.025259927 0.39106801 0.99026865 -0.040041436 0.13328418
		 0.99026865 -0.040041436 0.13328418 0.92001516 -0.025259927 0.39106801 0.86110336
		 -0.02541581 0.50779444 0.96438044 -0.040560052 0.26139101 0.96438044 -0.040560052
		 0.26139101 0.86110336 -0.02541581 0.50779444 0.78746057 -0.025571514 0.61583418 0.92199326
		 -0.04107869 0.38502073 0.92199326 -0.04107869 0.38502073 0.78746057 -0.025571514
		 0.61583418 0.70034653 -0.025726978 0.71333921 0.86383283 -0.041597512 0.50205815
		 0.86383283 -0.041597512 0.50205815 0.70034653 -0.025726978 0.71333921 0.60125095
		 -0.025882255 0.79864091 0.79089493 -0.042116188 0.61050111 0.79089493 -0.042116188
		 0.61050111 0.60125095 -0.025882255 0.79864091 0.49186939 -0.026037203 0.87027961
		 0.70442754 -0.042634681 0.70849431 0.70442754 -0.042634681 0.70849431 0.49186939
		 -0.026037203 0.87027961 0.3740721 -0.026191846 0.92702973 0.60591102 -0.043153282
		 0.79436111 0.60591102 -0.043153282 0.79436111 0.3740721 -0.026191846 0.92702973 0.24987526
		 -0.026346285 0.96791953 0.49703118 -0.043671634 0.866633 0.49703118 -0.043671634
		 0.866633 0.24987526 -0.026346285 0.96791953 0.12140344 -0.026500341 0.99224943 0.37965158
		 -0.044189982 0.92407352 0.37965158 -0.044189982 0.92407352 0.12140344 -0.026500341
		 0.99224943 -0.0091455104 -0.026654357 0.99960291 0.25578123 -0.044708397 0.96570039
		 0.25578123 -0.044708397 0.96570039 -0.0091455104 -0.026654357 0.99960291 -0.13953832
		 -0.026808182 0.98985374 0.12753928 -0.045226917 0.99080175 0.12753928 -0.045226917
		 0.99080175 -0.13953832 -0.026808182 0.98985374 -0.26754409 -0.026961599 0.96316838
		 -0.0028799118 -0.04574522 0.99894893 -0.0028799118 -0.04574522 0.99894893 -0.26754409
		 -0.026961599 0.96316838 -0.3909713 -0.027114723 0.92000329 -0.13324358 -0.046263345
		 0.99000293 -0.13324358 -0.046263345 0.99000293 -0.3909713 -0.027114723 0.92000329
		 -0.50770944 -0.027267518 0.8610968 -0.26132149 -0.046781387 0.96411753 -0.26132149
		 -0.046781387 0.96411753 -0.50770944 -0.027267518 0.8610968 -0.61576009 -0.027420314
		 0.78745645 -0.38492247 -0.047299623 0.92173612 -0.38492247 -0.047299623 0.92173612
		 -0.61576009 -0.027420314 0.78745645 -0.7132746 -0.027572732 0.70034224 -0.50193125
		 -0.047817666 0.86358476 -0.50193125 -0.047817666 0.86358476 -0.7132746 -0.027572732
		 0.70034224 -0.79858416 -0.027724769 0.60124421 -0.61034608 -0.048335511 0.79065889
		 -0.61034608 -0.048335511 0.79065889 -0.79858416 -0.027724769 0.60124421 -0.87022871
		 -0.027876569 0.49185857 -0.70831174 -0.048853345 0.70420712 -0.70831174 -0.048853345
		 0.70420712 -0.87022871 -0.027876569 0.49185857 -0.92697805 -0.027927933 0.37407458
		 -0.79415244 -0.049371071 0.60570979 -0.79415244 -0.049371071 0.60570979 -0.92697805
		 -0.027927933 0.37407458 -0.96789277 -0.021626884 0.25043109 -0.86613399 -0.049958717
		 0.49730876 -0.86613399 -0.049958717 0.49730876 -0.96789277 -0.021626884 0.25043109
		 -0.94875562 -0.30890423 0.066640824 -0.93040663 -0.27518523 0.24210876 -0.24210882
		 -0.27518526 -0.93040657 -0.066640861 -0.30890426 -0.9487555 0.49067572 -0.34757674
		 -0.79901671 0.35747916 -0.71060419 -0.60601175 0.35747916 -0.71060419 -0.60601175
		 0.49067572 -0.34757674 -0.79901671 0.85417008 -0.25333244 -0.45411023 0.94285208
		 -0.12240928 -0.30991253 0.94285208 -0.12240928 -0.30991253 0.85417008 -0.25333244
		 -0.45411023 0.86094034 0.040639177 -0.50708002 0.96314245 0.068869278 -0.2600264
		 0.96314245 0.068869278 -0.2600264 0.86094034 0.040639177 -0.50708002 0.78655589 0.048286106
		 -0.61562836 0.92092538 0.06833306 -0.38370204 0.92092538 0.06833306 -0.38370204 0.78655589
		 0.048286106 -0.61562836 0.69948149 0.048075896 -0.71303189 0.86299658 0.067816183
		 -0.50063759 0.86299658 0.067816183 -0.50063759 0.69948149 0.048075896 -0.71303189
		 0.60043734 0.047925811 -0.79823434 0.79029757 0.067299172 -0.609016 0.79029757 0.067299172
		 -0.609016 0.60043734 0.047925811 -0.79823434 0.49111766 0.047775324 -0.86978221 0.70407128
		 0.066782042 -0.7069822 0.70407128 0.066782042 -0.7069822 0.49111766 0.047775324 -0.86978221
		 0.3733927 0.047624569 -0.92645013 0.60579181 0.066264801 -0.79285896 0.60579181 0.066264801
		 -0.79285896 0.3733927 0.047624569 -0.92645013 0.24927701 0.04747384 -0.96726799 0.4971399
		 0.065747701 -0.86517578 0.4971399 0.065747701 -0.86517578 0.24927701 0.04747384 -0.96726799
		 0.12089325 0.047322702 -0.99153686 0.37997404 0.065230422 -0.92269427 0.37997404
		 0.065230422 -0.92269427 0.12089325 0.047322702 -0.99153686 -0.0095618377 0.047171231
		 -0.99884105 0.25629809 0.064713046 -0.96442914 0.25629809 0.064713046 -0.96442914
		 -0.0095618377 0.047171231 -0.99884105 -0.13985674 0.047019348 -0.98905468 0.12822789
		 0.064195521 -0.98966485 0.12822789 0.064195521 -0.98966485 -0.13985674 0.047019348
		 -0.98905468;
	setAttr ".n[1826:1991]" -type "float3"  -0.26776081 0.04686752 -0.96234488 -0.0020449508
		 0.063678034 -0.99796838 -0.0020449508 0.063678034 -0.99796838 -0.26776081 0.04686752
		 -0.96234488 -0.39108598 0.046715483 -0.91916782 -0.1322919 0.063160568 -0.98919648
		 -0.1322919 0.063160568 -0.98919648 -0.39108598 0.046715483 -0.91916782 -0.50772256
		 0.046562936 -0.86026138 -0.2602846 0.062642947 -0.9634977 -0.2602846 0.062642947
		 -0.9634977 -0.50772256 0.046562936 -0.86026138 -0.61567348 0.046410263 -0.78663349
		 -0.38383186 0.062125295 -0.92131084 -0.38383186 0.062125295 -0.92131084 -0.61567348
		 0.046410263 -0.78663349 -0.71309227 0.046257328 -0.69954252 -0.50082052 0.061607603
		 -0.86335582 -0.50082052 0.061607603 -0.86335582 -0.71309227 0.046257328 -0.69954252
		 -0.79830998 0.04610417 -0.6004796 -0.60924667 0.061089858 -0.79062414 -0.60924667
		 0.061089858 -0.79062414 -0.79830998 0.04610417 -0.6004796 -0.86986911 0.045950659
		 -0.49113765 -0.70725548 0.06057208 -0.7043584 -0.70725548 0.06057208 -0.7043584 -0.86986911
		 0.045950659 -0.49113765 -0.92654365 0.045797035 -0.37338912 -0.79316825 0.060054161
		 -0.6060344 -0.79316825 0.060054161 -0.6060344 -0.92654365 0.045797035 -0.37338912
		 -0.9673636 0.045643073 -0.2492478 -0.8655141 0.059536241 -0.49733374 -0.8655141 0.059536241
		 -0.49733374 -0.9673636 0.045643073 -0.2492478 -0.99162948 0.045488928 -0.1208378
		 -0.92305434 0.059018325 -0.38011512 -0.92305434 0.059018325 -0.38011512 -0.99162948
		 0.045488928 -0.1208378 -0.99892539 0.045334566 0.0096438453 -0.96480304 0.05850035
		 -0.2563841 -0.96480304 0.05850035 -0.2563841 -0.99892539 0.045334566 0.0096438453
		 -0.98913455 0.045045931 0.13994245 -0.99004447 0.057982314 -0.12825808 -0.99004447
		 0.057982314 -0.12825808 -0.98913455 0.045045931 0.13994245 -0.96275133 0.03866411
		 0.26760963 -0.99834239 0.057536989 0.0013690535 -0.99834239 0.057536989 0.0013690535
		 -0.96275133 0.03866411 0.26760963 -0.95104432 0.035822738 0.30697113 -0.99150234
		 0.051189303 0.1195941 -0.41137552 0.86192358 0.29640827 -0.47443512 0.73456037 0.48511076
		 -0.44250524 0.36741507 0.81804347 -0.28960848 0.81051093 0.50911564 -0.28960848 0.81051093
		 0.50911564 -0.44250524 0.36741507 0.81804347 0.037191186 0.27414906 0.96096784 0.2046162
		 0.15403695 0.96664619 0.2046162 0.15403695 0.96664619 0.037191186 0.27414906 0.96096784
		 -0.0084003685 -0.017805835 0.99980623 0.25604707 -0.038505834 0.96589702 0.25604707
		 -0.038505834 0.96589702 -0.0084003685 -0.017805835 0.99980623 -0.13965482 -0.025018027
		 0.98988414 0.12755392 -0.039003555 0.99106443 0.12755392 -0.039003555 0.99106443
		 -0.13965482 -0.025018027 0.98988414 -0.26765183 -0.025103489 0.96318865 -0.0028918663
		 -0.039522428 0.99921453 -0.0028918663 -0.039522428 0.99921453 -0.26765183 -0.025103489
		 0.96318865 -0.39106792 -0.025259985 0.9200151 -0.13328411 -0.040041491 0.99026871
		 -0.13328411 -0.040041491 0.99026871 -0.39106792 -0.025259985 0.9200151 -0.50779474
		 -0.025415774 0.86110318 -0.26139119 -0.04056007 0.96438044 -0.26139119 -0.04056007
		 0.96438044 -0.50779474 -0.025415774 0.86110318 -0.61583436 -0.025571452 0.78746051
		 -0.38502073 -0.04107869 0.92199326 -0.38502073 -0.04107869 0.92199326 -0.61583436
		 -0.025571452 0.78746051 -0.71333921 -0.025727058 0.70034653 -0.50205821 -0.041597538
		 0.86383283 -0.50205821 -0.041597538 0.86383283 -0.71333921 -0.025727058 0.70034653
		 -0.79864103 -0.025882265 0.60125089 -0.61050129 -0.042116158 0.79089469 -0.61050129
		 -0.042116158 0.79089469 -0.79864103 -0.025882265 0.60125089 -0.87027973 -0.026037155
		 0.49186918 -0.70849437 -0.042634677 0.70442748 -0.70849437 -0.042634677 0.70442748
		 -0.87027973 -0.026037155 0.49186918 -0.92702973 -0.026191831 0.37407193 -0.79436141
		 -0.043153305 0.60591078 -0.79436141 -0.043153305 0.60591078 -0.92702973 -0.026191831
		 0.37407193 -0.96791953 -0.026346242 0.24987522 -0.86663306 -0.043671601 0.49703115
		 -0.86663306 -0.043671601 0.49703115 -0.96791953 -0.026346242 0.24987522 -0.99224943
		 -0.026500279 0.12140304 -0.92407352 -0.044189971 0.37965146 -0.92407352 -0.044189971
		 0.37965146 -0.99224943 -0.026500279 0.12140304 -0.99960291 -0.026654325 -0.009145706
		 -0.96570039 -0.044708475 0.25578114 -0.96570039 -0.044708475 0.25578114 -0.99960291
		 -0.026654325 -0.009145706 -0.98985374 -0.026808256 -0.13953789 -0.99080175 -0.04522698
		 0.12753947 -0.99080175 -0.04522698 0.12753947 -0.98985374 -0.026808256 -0.13953789
		 -0.96316844 -0.026961641 -0.26754376 -0.99894899 -0.045745213 -0.0028796371 -0.99894899
		 -0.045745213 -0.0028796371 -0.96316844 -0.026961641 -0.26754376 -0.92000335 -0.027114749
		 -0.39097136 -0.99000293 -0.046263359 -0.13324347 -0.99000293 -0.046263359 -0.13324347
		 -0.92000335 -0.027114749 -0.39097136 -0.86109698 -0.027267598 -0.50770932 -0.96411747
		 -0.046781372 -0.26132163 -0.96411747 -0.046781372 -0.26132163 -0.86109698 -0.027267598
		 -0.50770932 -0.78745645 -0.02742029 -0.61576009 -0.92173612 -0.047299605 -0.38492239
		 -0.92173612 -0.047299605 -0.38492239 -0.78745645 -0.02742029 -0.61576009 -0.70034224
		 -0.02757274 -0.7132746 -0.86358476 -0.047817688 -0.50193125 -0.86358476 -0.047817688
		 -0.50193125 -0.70034224 -0.02757274 -0.7132746 -0.60124433 -0.027724775 -0.79858416
		 -0.79065889 -0.048335511 -0.61034596 -0.79065889 -0.048335511 -0.61034596 -0.60124433
		 -0.027724775 -0.79858416 -0.49185875 -0.027876571 -0.87022853 -0.70420712 -0.048853308
		 -0.70831174 -0.70420712 -0.048853308 -0.70831174 -0.49185875 -0.027876571 -0.87022853
		 -0.37407458 -0.027927946 -0.92697805 -0.60570985 -0.04937109 -0.79415244 -0.60570985
		 -0.04937109 -0.79415244 -0.37407458 -0.027927946 -0.92697805 -0.2504313 -0.021626964
		 -0.96789277 -0.49730879 -0.049958754 -0.86613399 -0.49730879 -0.049958754 -0.86613399
		 -0.2504313 -0.021626964 -0.96789277 -0.066640861 -0.30890426 -0.9487555 -0.24210882
		 -0.27518526 -0.93040657 -0.4349007 0.90047842 5.6163174e-08 -0.31404459 0.94940823
		 4.1278838e-08 -0.27197063 0.94940817 -0.15702218 -0.50911576 0.81051093 -0.28960848
		 -0.50911576 0.81051093 -0.28960848 -0.27197063 0.94940817 -0.15702218 -0.1570223
		 0.94940817 -0.27197063 -0.29640833 0.86192352 -0.41137552;
	setAttr ".n[1992:2157]" -type "float3"  -0.29640833 0.86192352 -0.41137552 -0.1570223
		 0.94940817 -0.27197063 4.1885876e-08 0.94940817 -0.31404459 3.3697901e-08 0.90047842
		 -0.43490073 3.3697901e-08 0.90047842 -0.43490073 4.1885876e-08 0.94940817 -0.31404459
		 0.15702221 0.94940817 -0.27197063 0.28960842 0.81051093 -0.5091157 0.28960842 0.81051093
		 -0.5091157 0.15702221 0.94940817 -0.27197063 0.2719706 0.94940823 -0.1570224 0.41137552
		 0.86192352 -0.29640844 0.41137552 0.86192352 -0.29640844 0.2719706 0.94940823 -0.1570224
		 0.31404459 0.94940823 -1.2140835e-08 0.43490067 0.90047842 -6.739581e-08 0.43490067
		 0.90047842 -6.739581e-08 0.31404459 0.94940823 -1.2140835e-08 0.2719706 0.94940823
		 0.15702228 0.5091157 0.81051099 0.28960848 0.5091157 0.81051099 0.28960848 0.2719706
		 0.94940823 0.15702228 0.15702233 0.94940823 0.2719706 0.29640836 0.86192364 0.41137555
		 0.29640836 0.86192364 0.41137555 0.15702233 0.94940823 0.2719706 2.7316879e-08 0.94940823
		 0.31404459 5.6163174e-08 0.90047842 0.43490073 5.6163174e-08 0.90047842 0.43490073
		 2.7316879e-08 0.94940823 0.31404459 -0.15702227 0.94940823 0.27197063 -0.28960848
		 0.81051093 0.50911564 -0.28960848 0.81051093 0.50911564 -0.15702227 0.94940823 0.27197063
		 -0.27197057 0.94940823 0.15702233 -0.41137552 0.86192358 0.29640827 -0.41137552 0.86192358
		 0.29640827 -0.27197057 0.94940823 0.15702233 -0.31404459 0.94940823 4.1278838e-08
		 -0.4349007 0.90047842 5.6163174e-08 -0.31404459 0.94940823 4.1278838e-08 -0.13996455
		 0.99015653 8.1486187e-09 -0.1212129 0.99015653 -0.069982201 -0.27197063 0.94940817
		 -0.15702218 -0.27197063 0.94940817 -0.15702218 -0.1212129 0.99015653 -0.069982201
		 -0.06998229 0.99015647 -0.12121284 -0.1570223 0.94940817 -0.27197063 -0.1570223 0.94940817
		 -0.27197063 -0.06998229 0.99015647 -0.12121284 5.7040332e-08 0.99015653 -0.13996457
		 4.1885876e-08 0.94940817 -0.31404459 4.1885876e-08 0.94940817 -0.31404459 5.7040332e-08
		 0.99015653 -0.13996457 0.069982238 0.99015647 -0.1212129 0.15702221 0.94940817 -0.27197063
		 0.15702221 0.94940817 -0.27197063 0.069982238 0.99015647 -0.1212129 0.12121288 0.99015659
		 -0.069982246 0.2719706 0.94940823 -0.1570224 0.2719706 0.94940823 -0.1570224 0.12121288
		 0.99015659 -0.069982246 0.13996452 0.99015653 2.6483026e-08 0.31404459 0.94940823
		 -1.2140835e-08 0.31404459 0.94940823 -1.2140835e-08 0.13996452 0.99015653 2.6483026e-08
		 0.12121291 0.99015653 0.069982179 0.2719706 0.94940823 0.15702228 0.2719706 0.94940823
		 0.15702228 0.12121291 0.99015653 0.069982179 0.069982305 0.99015653 0.12121284 0.15702233
		 0.94940823 0.2719706 0.15702233 0.94940823 0.2719706 0.069982305 0.99015653 0.12121284
		 2.4445857e-08 0.99015653 0.13996455 2.7316879e-08 0.94940823 0.31404459 2.7316879e-08
		 0.94940823 0.31404459 2.4445857e-08 0.99015653 0.13996455 -0.069982231 0.99015647
		 0.12121288 -0.15702227 0.94940823 0.27197063 -0.15702227 0.94940823 0.27197063 -0.069982231
		 0.99015647 0.12121288 -0.12121286 0.99015653 0.069982275 -0.27197057 0.94940823 0.15702233
		 -0.27197057 0.94940823 0.15702233 -0.12121286 0.99015653 0.069982275 -0.13996455
		 0.99015653 8.1486187e-09 -0.31404459 0.94940823 4.1278838e-08 0 1 0 0 1 0 0 1 0 0
		 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 -0.98463225 -0.17091027 0.035903726
		 -0.99330181 -0.11547123 -0.0042312215 -0.85343432 -0.16911539 -0.49300095 -0.84445357
		 -0.25928798 -0.46868739 -0.84445357 -0.25928798 -0.46868739 -0.85343432 -0.16911539
		 -0.49300095 -0.49202368 -0.17773113 -0.85224664 -0.47406444 -0.27335262 -0.83698344
		 -0.47406444 -0.27335262 -0.83698344 -0.49202368 -0.17773113 -0.85224664 -0.0021799728
		 -0.13881718 -0.99031568 0.029966967 -0.20948148 -0.97735333 0.029966967 -0.20948148
		 -0.97735333 -0.0021799728 -0.13881718 -0.99031568 0.49078259 -0.063621238 -0.86895621
		 0.53492039 -0.085553423 -0.84055984 0.53492039 -0.085553423 -0.84055984 0.49078259
		 -0.063621238 -0.86895621 0.85680687 0.026611736 -0.51495034 0.88521445 0.057729997
		 -0.46158713 0.88521445 0.057729997 -0.46158713 0.85680687 0.026611736 -0.51495034
		 0.99403089 0.10745843 -0.018850522 0.9839496 0.17567106 0.031347994 0.9839496 0.17567106
		 0.031347994 0.99403089 0.10745843 -0.018850522 0.86003989 0.15815018 0.48509789 0.8332094
		 0.24317512 0.49661657 0.8332094 0.24317512 0.49661657 0.86003989 0.15815018 0.48509789
		 0.4887763 0.16619596 0.8564325 0.48929799 0.2534008 0.83449119 0.48929799 0.2534008
		 0.83449119 0.4887763 0.16619596 0.8564325 -0.016799295 0.12964824 0.99141765 0.02550883
		 0.20586754 0.97824734 0.02550883 0.20586754 0.97824734 -0.016799295 0.12964824 0.99141765
		 -0.51564491 0.057430174 0.8548755 -0.46236965 0.1040711 0.88055867 -0.46236965 0.1040711
		 0.88055867 -0.51564491 0.057430174 0.8548755 -0.87181413 -0.032217838 0.48877606
		 -0.84241235 -0.034647573 0.53771836 -0.84241235 -0.034647573 0.53771836 -0.87181413
		 -0.032217838 0.48877606 -0.99330181 -0.11547123 -0.0042312215 -0.98463225 -0.17091027
		 0.035903726 -0.99330181 -0.11547123 -0.0042312215 -0.99986821 -0.014524314 -0.0072477423
		 -0.86420923 -0.021317312 -0.5026809 -0.85343432 -0.16911539 -0.49300095 -0.85343432
		 -0.16911539 -0.49300095 -0.86420923 -0.021317312 -0.5026809 -0.50123143 -0.022408919
		 -0.86502302 -0.49202368 -0.17773113 -0.85224664 -0.49202368 -0.17773113 -0.85224664
		 -0.50123143 -0.022408919 -0.86502302 -0.0059879683 -0.017483089 -0.99982929 -0.0021799728
		 -0.13881718 -0.99031568 -0.0021799728 -0.13881718 -0.99031568 -0.0059879683 -0.017483089
		 -0.99982929 0.49223042 -0.0079465508 -0.87042868 0.49078259 -0.063621238 -0.86895621
		 0.49078259 -0.063621238 -0.86895621 0.49223042 -0.0079465508 -0.87042868;
	setAttr ".n[2158:2323]" -type "float3"  0.86120385 0.0035103452 -0.50824755 0.85680687
		 0.026611736 -0.51495034 0.85680687 0.026611736 -0.51495034 0.86120385 0.0035103452
		 -0.50824755 0.99987662 0.013765193 -0.0075690551 0.99403089 0.10745843 -0.018850522
		 0.99403089 0.10745843 -0.018850522 0.99987662 0.013765193 -0.0075690551 0.86756587
		 0.020176493 0.49691287 0.86003989 0.15815018 0.48509789 0.86003989 0.15815018 0.48509789
		 0.86756587 0.020176493 0.49691287 0.49843588 0.021192215 0.86666751 0.4887763 0.16619596
		 0.8564325 0.4887763 0.16619596 0.8564325 0.49843588 0.021192215 0.86666751 -0.0063099666
		 0.016574766 0.99984264 -0.016799295 0.12964824 0.99141765 -0.016799295 0.12964824
		 0.99141765 -0.0063099666 0.016574766 0.99984264 -0.50788349 0.0074223904 0.86139381
		 -0.51564491 0.057430174 0.8548755 -0.51564491 0.057430174 0.8548755 -0.50788349 0.0074223904
		 0.86139381 -0.87070221 -0.0039604618 0.49179456 -0.87181413 -0.032217838 0.48877606
		 -0.87181413 -0.032217838 0.48877606 -0.87070221 -0.0039604618 0.49179456 -0.99986821
		 -0.014524314 -0.0072477423 -0.99330181 -0.11547123 -0.0042312215 -0.99986821 -0.014524314
		 -0.0072477423 -0.99874115 0.050021365 -0.0037533659 -0.86302614 0.072997652 -0.49985725
		 -0.86420923 -0.021317312 -0.5026809 -0.86420923 -0.021317312 -0.5026809 -0.86302614
		 0.072997652 -0.49985725 -0.49908635 0.076655753 -0.86315519 -0.50123143 -0.022408919
		 -0.86502302 -0.50123143 -0.022408919 -0.86502302 -0.49908635 0.076655753 -0.86315519
		 -0.0028624029 0.060062587 -0.99819046 -0.0059879683 -0.017483089 -0.99982929 -0.0059879683
		 -0.017483089 -0.99982929 -0.0028624029 0.060062587 -0.99819046 0.49511442 0.027475629
		 -0.86839324 0.49223042 -0.0079465508 -0.87042868 0.49223042 -0.0079465508 -0.87042868
		 0.49511442 0.027475629 -0.86839324 0.86230505 -0.012619674 -0.50623202 0.86120385
		 0.0035103452 -0.50824755 0.86120385 0.0035103452 -0.50824755 0.86230505 -0.012619674
		 -0.50623202 0.9987492 -0.049537126 -0.0067935814 0.99987662 0.013765193 -0.0075690551
		 0.99987662 0.013765193 -0.0075690551 0.9987492 -0.049537126 -0.0067935814 0.86539304
		 -0.073186181 0.49572036 0.86756587 0.020176493 0.49691287 0.86756587 0.020176493
		 0.49691287 0.86539304 -0.073186181 0.49572036 0.49706653 -0.076976918 0.86429131
		 0.49843588 0.021192215 0.86666751 0.49843588 0.021192215 0.86666751 0.49706653 -0.076976918
		 0.86429131 -0.0059027425 -0.059841193 0.99819052 -0.0063099666 0.016574766 0.99984264
		 -0.0063099666 0.016574766 0.99984264 -0.0059027425 -0.059841193 0.99819052 -0.50624019
		 -0.026578238 0.86198276 -0.50788349 0.0074223904 0.86139381 -0.50788349 0.0074223904
		 0.86139381 -0.50624019 -0.026578238 0.86198276 -0.86904347 0.013648771 0.49454749
		 -0.87070221 -0.0039604618 0.49179456 -0.87070221 -0.0039604618 0.49179456 -0.86904347
		 0.013648771 0.49454749 -0.99874115 0.050021365 -0.0037533659 -0.99986821 -0.014524314
		 -0.0072477423 -0.99874115 0.050021365 -0.0037533659 -0.99488223 0.10103289 0.0013250471
		 -0.85735893 0.1484977 -0.49283275 -0.86302614 0.072997652 -0.49985725 -0.86302614
		 0.072997652 -0.49985725 -0.85735893 0.1484977 -0.49283275 -0.49299487 0.15611361
		 -0.85591155 -0.49908635 0.076655753 -0.86315519 -0.49908635 0.076655753 -0.86315519
		 -0.49299487 0.15611361 -0.85591155 0.0021181866 0.12169972 -0.99256462 -0.0028624029
		 0.060062587 -0.99819046 -0.0028624029 0.060062587 -0.99819046 0.0021181866 0.12169972
		 -0.99256462 0.4977777 0.055068042 -0.86555463 0.49511442 0.027475629 -0.86839324
		 0.49511442 0.027475629 -0.86839324 0.4977777 0.055068042 -0.86555463 0.86185277 -0.025203928
		 -0.50653201 0.86230505 -0.012619674 -0.50623202 0.86230505 -0.012619674 -0.50623202
		 0.86185277 -0.025203928 -0.50653201 0.99518442 -0.097491816 -0.01016147 0.9987492
		 -0.049537126 -0.0067935814 0.9987492 -0.049537126 -0.0067935814 0.99518442 -0.097491816
		 -0.01016147 0.85997623 -0.14300784 0.48988724 0.86539304 -0.073186181 0.49572036
		 0.86539304 -0.073186181 0.49572036 0.85997623 -0.14300784 0.48988724 0.49183124 -0.15024659
		 0.85762936 0.49706653 -0.076976918 0.86429131 0.49706653 -0.076976918 0.86429131
		 0.49183124 -0.15024659 0.85762936 -0.0093686953 -0.11739822 0.99304062 -0.0059027425
		 -0.059841193 0.99819052 -0.0059027425 -0.059841193 0.99819052 -0.0093686953 -0.11739822
		 0.99304062 -0.50732809 -0.052716058 0.86013907 -0.50624019 -0.026578238 0.86198276
		 -0.50624019 -0.026578238 0.86198276 -0.50732809 -0.052716058 0.86013907 -0.86763066
		 0.027175779 0.49646586 -0.86904347 0.013648771 0.49454749 -0.86904347 0.013648771
		 0.49454749 -0.86763066 0.027175779 0.49646586 -0.99488223 0.10103289 0.0013250471
		 -0.99874115 0.050021365 -0.0037533659 -0.99488223 0.10103289 0.0013250471 -0.99219507
		 0.1220864 0.02537409 -0.85692513 0.1842953 -0.48136753 -0.85735893 0.1484977 -0.49283275
		 -0.85735893 0.1484977 -0.49283275 -0.85692513 0.1842953 -0.48136753 -0.48557997 0.19429423
		 -0.85232729 -0.49299487 0.15611361 -0.85591155 -0.49299487 0.15611361 -0.85591155
		 -0.48557997 0.19429423 -0.85232729 0.021199018 0.14913011 -0.98859036 0.0021181866
		 0.12169972 -0.99256462 0.0021181866 0.12169972 -0.99256462 0.021199018 0.14913011
		 -0.98859036 0.52513403 0.062475286 -0.84872323 0.4977777 0.055068042 -0.86555463
		 0.4977777 0.055068042 -0.86555463 0.52513403 0.062475286 -0.84872323 0.88034695 -0.03843604
		 -0.47277048 0.86185277 -0.025203928 -0.50653201 0.86185277 -0.025203928 -0.50653201
		 0.88034695 -0.03843604 -0.47277048 0.99199665 -0.12416001 0.022954296 0.99518442
		 -0.097491816 -0.01016147 0.99518442 -0.097491816 -0.01016147 0.99199665 -0.12416001
		 0.022954296 0.84759581 -0.17505249 0.50093704 0.85997623 -0.14300784 0.48988724 0.85997623
		 -0.14300784 0.48988724 0.84759581 -0.17505249 0.50093704 0.49575707 -0.18290901 0.84898126
		 0.49183124 -0.15024659 0.85762936 0.49183124 -0.15024659 0.85762936 0.49575707 -0.18290901
		 0.84898126 0.018804653 -0.14672934 0.98899794 -0.0093686953 -0.11739822 0.99304062
		 -0.0093686953 -0.11739822 0.99304062 0.018804653 -0.14672934 0.98899794 -0.47357202
		 -0.071720526 0.87783009 -0.50732809 -0.052716058 0.86013907;
	setAttr ".n[2324:2331]" -type "float3"  -0.50732809 -0.052716058 0.86013907 -0.47357202
		 -0.071720526 0.87783009 -0.84949178 0.026856834 0.52691787 -0.86763066 0.027175779
		 0.49646586 -0.86763066 0.027175779 0.49646586 -0.84949178 0.026856834 0.52691787
		 -0.99219507 0.1220864 0.02537409 -0.99488223 0.10103289 0.0013250471;
	setAttr -s 581 -ch 2332 ".fc";
	setAttr ".fc[0:499]" -type "polyFaces" 
		f 4 0 1 2 3
		f 4 4 5 6 7
		f 4 8 9 10 11
		f 4 12 13 14 15
		f 4 16 17 18 -2
		f 4 19 20 21 -6
		f 4 22 23 24 -10
		f 4 25 26 27 -14
		f 4 28 29 30 -18
		f 4 31 32 33 -21
		f 4 34 35 36 -24
		f 4 37 38 39 -27
		f 4 40 41 42 -30
		f 4 43 44 45 -33
		f 4 46 47 48 -36
		f 4 49 50 51 -39
		f 4 52 53 54 -42
		f 4 55 56 57 -45
		f 4 58 59 60 -48
		f 4 61 62 63 -51
		f 4 64 65 66 -54
		f 4 67 68 69 -57
		f 4 70 71 72 -60
		f 4 73 74 75 -63
		f 4 76 77 78 -66
		f 4 79 80 81 -69
		f 4 82 83 84 -72
		f 4 85 86 87 -75
		f 4 88 89 90 -78
		f 4 91 92 93 -81
		f 4 94 95 96 -84
		f 4 97 98 99 -87
		f 4 100 101 102 -90
		f 4 103 104 105 -93
		f 4 106 107 108 -96
		f 4 109 110 111 -99
		f 4 112 113 114 -102
		f 4 115 116 117 -105
		f 4 118 119 120 -108
		f 4 121 122 123 -111
		f 4 124 125 126 -114
		f 4 127 128 129 -117
		f 4 130 131 132 -120
		f 4 133 134 135 -123
		f 4 136 137 138 -126
		f 4 139 140 141 -129
		f 4 142 143 144 -132
		f 4 145 146 147 -135
		f 4 148 149 150 -138
		f 4 151 152 153 -141
		f 4 154 155 156 -144
		f 4 157 158 159 -147
		f 4 160 161 162 -150
		f 4 163 164 165 -153
		f 4 166 167 168 -156
		f 4 169 170 171 -159
		f 4 172 173 174 -162
		f 4 175 176 177 -165
		f 4 178 179 180 -168
		f 4 181 182 183 -171
		f 4 184 185 186 -174
		f 4 187 188 189 -177
		f 4 190 191 192 -180
		f 4 193 194 195 -183
		f 4 196 197 198 -186
		f 4 199 200 201 -189
		f 4 202 203 204 -192
		f 4 205 206 207 -195
		f 4 208 209 210 -198
		f 4 211 212 213 -201
		f 4 214 215 216 -204
		f 4 217 218 219 -207
		f 4 220 221 222 -210
		f 4 223 224 225 -213
		f 4 226 227 228 -216
		f 4 229 230 231 -219
		f 4 232 233 234 -222
		f 4 235 236 237 -225
		f 4 238 239 240 -228
		f 4 241 242 243 -231
		f 4 244 245 246 -234
		f 4 247 248 249 -237
		f 4 250 251 252 -240
		f 4 253 254 255 -243
		f 4 256 257 258 -246
		f 4 259 260 261 -249
		f 4 262 263 264 -252
		f 4 265 266 267 -255
		f 4 268 269 270 -258
		f 4 271 272 273 -261
		f 4 274 275 276 -264
		f 4 277 278 279 -267
		f 4 280 281 282 -270
		f 4 283 284 285 -273
		f 4 286 287 288 -276
		f 4 289 290 291 -279
		f 4 292 293 294 295
		f 4 -295 296 297 298
		f 4 299 300 301 -294
		f 4 -302 302 303 -297
		f 4 304 305 306 -301
		f 4 -307 307 308 -303
		f 4 309 310 311 -306
		f 4 -312 312 313 -308
		f 4 314 315 316 -311
		f 4 -317 317 318 -313
		f 4 319 320 321 -316
		f 4 -322 322 323 -318
		f 4 324 325 326 -321
		f 4 -327 327 328 -323
		f 4 329 330 331 -326
		f 4 -332 332 333 -328
		f 4 334 335 336 -331
		f 4 -337 337 338 -333
		f 4 339 340 341 -336
		f 4 -342 342 343 -338
		f 4 344 345 346 -341
		f 4 -347 347 348 -343
		f 4 349 350 351 -346
		f 4 -352 352 353 -348
		f 4 354 355 356 -351
		f 4 -357 357 358 -353
		f 4 359 360 361 -356
		f 4 -362 362 363 -358
		f 4 364 365 366 -361
		f 4 -367 367 368 -363
		f 4 369 370 371 -366
		f 4 -372 372 373 -368
		f 4 374 375 376 -371
		f 4 -377 377 378 -373
		f 4 379 380 381 -376
		f 4 -382 382 383 -378
		f 4 384 385 386 -381
		f 4 -387 387 388 -383
		f 4 389 390 391 -386
		f 4 -392 392 393 -388
		f 4 394 395 396 -391
		f 4 -397 397 398 -393
		f 4 399 400 401 -396
		f 4 -402 402 403 -398
		f 4 404 405 406 -401
		f 4 -407 407 408 -403
		f 4 409 410 411 -406
		f 4 -412 412 413 -408
		f 4 414 415 416 417
		f 4 -417 418 419 420
		f 4 421 422 423 -416
		f 4 -424 424 425 -419
		f 4 426 427 428 -423
		f 4 -429 429 430 -425
		f 4 431 432 433 -428
		f 4 -434 434 435 -430
		f 4 436 437 438 -433
		f 4 -439 439 440 -435
		f 4 441 442 443 -438
		f 4 -444 444 445 -440
		f 4 446 447 448 -443
		f 4 -449 449 450 -445
		f 4 451 452 453 -448
		f 4 -454 454 455 -450
		f 4 456 457 458 -453
		f 4 -459 459 460 -455
		f 4 461 462 463 -458
		f 4 -464 464 465 -460
		f 4 466 467 468 -463
		f 4 -469 469 470 -465
		f 4 471 472 473 -468
		f 4 -474 474 475 -470
		f 4 476 477 478 -473
		f 4 -479 479 480 -475
		f 4 481 482 483 -478
		f 4 -484 484 485 -480
		f 4 486 487 488 -483
		f 4 -489 489 490 -485
		f 4 491 492 493 -488
		f 4 -494 494 495 -490
		f 4 496 497 498 -493
		f 4 -499 499 500 -495
		f 4 501 502 503 -498
		f 4 -504 504 505 -500
		f 4 506 507 508 -503
		f 4 -509 509 510 -505
		f 4 511 512 513 -508
		f 4 -514 514 515 -510
		f 4 516 517 518 -513
		f 4 -519 519 520 -515
		f 4 521 522 523 -518
		f 4 -524 524 525 -520
		f 4 526 527 528 -523
		f 4 -529 529 530 -525
		f 4 531 532 533 -528
		f 4 -534 534 535 -530
		f 4 536 537 538 539
		f 4 -539 540 541 542
		f 4 543 544 545 -538
		f 4 -546 546 547 -541
		f 4 548 549 550 -545
		f 4 -551 551 552 -547
		f 4 553 554 555 -550
		f 4 -556 556 557 -552
		f 4 558 559 560 -555
		f 4 -561 561 562 -557
		f 4 563 564 565 -560
		f 4 -566 566 567 -562
		f 4 568 569 570 -565
		f 4 -571 571 572 -567
		f 4 573 574 575 -570
		f 4 -576 576 577 -572
		f 4 578 579 580 -575
		f 4 -581 581 582 -577
		f 4 583 584 585 -580
		f 4 -586 586 587 -582
		f 4 588 589 590 -585
		f 4 -591 591 592 -587
		f 4 593 594 595 -590
		f 4 -596 596 597 -592
		f 4 598 599 600 -595
		f 4 -601 601 602 -597
		f 4 603 604 605 -600
		f 4 -606 606 607 -602
		f 4 608 609 610 -605
		f 4 -611 611 612 -607
		f 4 613 614 615 -610
		f 4 -616 616 617 -612
		f 4 618 619 620 -615
		f 4 -621 621 622 -617
		f 4 623 624 625 -620
		f 4 -626 626 627 -622
		f 4 628 629 630 -625
		f 4 -631 631 632 -627
		f 4 633 634 635 -630
		f 4 -636 636 637 -632
		f 4 638 639 640 -635
		f 4 -641 641 642 -637
		f 4 643 644 645 -640
		f 4 -646 646 647 -642
		f 4 648 649 650 -645
		f 4 -651 651 652 -647
		f 4 653 654 655 -650
		f 4 -656 656 657 -652
		f 4 658 659 660 661
		f 4 -661 662 663 664
		f 4 665 666 667 -660
		f 4 -668 668 669 -663
		f 4 670 671 672 -667
		f 4 -673 673 674 -669
		f 4 675 676 677 -672
		f 4 -678 678 679 -674
		f 4 680 681 682 -677
		f 4 -683 683 684 -679
		f 4 685 686 687 -682
		f 4 -688 688 689 -684
		f 4 690 691 692 -687
		f 4 -693 693 694 -689
		f 4 695 696 697 -692
		f 4 -698 698 699 -694
		f 4 700 701 702 -697
		f 4 -703 703 704 -699
		f 4 705 706 707 -702
		f 4 -708 708 709 -704
		f 4 710 711 712 -707
		f 4 -713 713 714 -709
		f 4 715 716 717 -712
		f 4 -718 718 719 -714
		f 4 720 721 722 -717
		f 4 -723 723 724 -719
		f 4 725 726 727 -722
		f 4 -728 728 729 -724
		f 4 730 731 732 -727
		f 4 -733 733 734 -729
		f 4 735 736 737 -732
		f 4 -738 738 739 -734
		f 4 740 741 742 -737
		f 4 -743 743 744 -739
		f 4 745 746 747 -742
		f 4 -748 748 749 -744
		f 4 750 751 752 -747
		f 4 -753 753 754 -749
		f 4 755 756 757 -752
		f 4 -758 758 759 -754
		f 4 760 761 762 -757
		f 4 -763 763 764 -759
		f 4 765 766 767 -762
		f 4 -768 768 769 -764
		f 4 770 771 772 -767
		f 4 -773 773 774 -769
		f 4 775 776 777 -772
		f 4 -778 778 779 -774
		f 4 780 -296 781 782
		f 4 -782 -299 783 784
		f 4 -784 -298 785 -1
		f 4 -786 -304 786 -17
		f 4 -787 -309 787 -29
		f 4 -788 -314 788 -41
		f 4 -789 -319 789 -53
		f 4 -790 -324 790 -65
		f 4 -791 -329 791 -77
		f 4 -792 -334 792 -89
		f 4 -793 -339 793 -101
		f 4 -794 -344 794 -113
		f 4 -795 -349 795 -125
		f 4 -796 -354 796 -137
		f 4 -797 -359 797 -149
		f 4 -798 -364 798 -161
		f 4 -799 -369 799 -173
		f 4 -800 -374 800 -185
		f 4 -801 -379 801 -197
		f 4 -802 -384 802 -209
		f 4 -803 -389 803 -221
		f 4 -804 -394 804 -233
		f 4 -805 -399 805 -245
		f 4 -806 -404 806 -257
		f 4 -807 -409 807 -269
		f 4 -808 -414 808 -281
		f 4 -809 -413 809 810
		f 4 -810 -411 811 812
		f 4 -812 -410 813 -292
		f 4 -814 -405 814 -280
		f 4 -815 -400 815 -268
		f 4 -816 -395 816 -256
		f 4 -817 -390 817 -244
		f 4 -818 -385 818 -232
		f 4 -819 -380 819 -220
		f 4 -820 -375 820 -208
		f 4 -821 -370 821 -196
		f 4 -822 -365 822 -184
		f 4 -823 -360 823 -172
		f 4 -824 -355 824 -160
		f 4 -825 -350 825 -148
		f 4 -826 -345 826 -136
		f 4 -827 -340 827 -124
		f 4 -828 -335 828 -112
		f 4 -829 -330 829 -100
		f 4 -830 -325 830 -88
		f 4 -831 -320 831 -76
		f 4 -832 -315 832 -64
		f 4 -833 -310 833 -52
		f 4 -834 -305 834 -40
		f 4 -835 -300 835 -28
		f 4 -836 -293 -781 -15
		f 4 836 -418 837 838
		f 4 -838 -421 839 840
		f 4 -840 -420 841 -5
		f 4 -842 -426 842 -20
		f 4 -843 -431 843 -32
		f 4 -844 -436 844 -44
		f 4 -845 -441 845 -56
		f 4 -846 -446 846 -68
		f 4 -847 -451 847 -80
		f 4 -848 -456 848 -92
		f 4 -849 -461 849 -104
		f 4 -850 -466 850 -116
		f 4 -851 -471 851 -128
		f 4 -852 -476 852 -140
		f 4 -853 -481 853 -152
		f 4 -854 -486 854 -164
		f 4 -855 -491 855 -176
		f 4 -856 -496 856 -188
		f 4 -857 -501 857 -200
		f 4 -858 -506 858 -212
		f 4 -859 -511 859 -224
		f 4 -860 -516 860 -236
		f 4 -861 -521 861 -248
		f 4 -862 -526 862 -260
		f 4 -863 -531 863 -272
		f 4 -864 -536 864 -284
		f 4 -865 -535 865 866
		f 4 -866 -533 867 868
		f 4 -868 -532 869 -283
		f 4 -870 -527 870 -271
		f 4 -871 -522 871 -259
		f 4 -872 -517 872 -247
		f 4 -873 -512 873 -235
		f 4 -874 -507 874 -223
		f 4 -875 -502 875 -211
		f 4 -876 -497 876 -199
		f 4 -877 -492 877 -187
		f 4 -878 -487 878 -175
		f 4 -879 -482 879 -163
		f 4 -880 -477 880 -151
		f 4 -881 -472 881 -139
		f 4 -882 -467 882 -127
		f 4 -883 -462 883 -115
		f 4 -884 -457 884 -103
		f 4 -885 -452 885 -91
		f 4 -886 -447 886 -79
		f 4 -887 -442 887 -67
		f 4 -888 -437 888 -55
		f 4 -889 -432 889 -43
		f 4 -890 -427 890 -31
		f 4 -891 -422 891 -19
		f 4 -892 -415 -837 -3
		f 4 892 -540 893 894
		f 4 -894 -543 895 896
		f 4 -896 -542 897 -9
		f 4 -898 -548 898 -23
		f 4 -899 -553 899 -35
		f 4 -900 -558 900 -47
		f 4 -901 -563 901 -59
		f 4 -902 -568 902 -71
		f 4 -903 -573 903 -83
		f 4 -904 -578 904 -95
		f 4 -905 -583 905 -107
		f 4 -906 -588 906 -119
		f 4 -907 -593 907 -131
		f 4 -908 -598 908 -143
		f 4 -909 -603 909 -155
		f 4 -910 -608 910 -167
		f 4 -911 -613 911 -179
		f 4 -912 -618 912 -191
		f 4 -913 -623 913 -203
		f 4 -914 -628 914 -215
		f 4 -915 -633 915 -227
		f 4 -916 -638 916 -239
		f 4 -917 -643 917 -251
		f 4 -918 -648 918 -263
		f 4 -919 -653 919 -275
		f 4 -920 -658 920 -287
		f 4 -921 -657 921 922
		f 4 -922 -655 923 924
		f 4 -924 -654 925 -286
		f 4 -926 -649 926 -274
		f 4 -927 -644 927 -262
		f 4 -928 -639 928 -250
		f 4 -929 -634 929 -238
		f 4 -930 -629 930 -226
		f 4 -931 -624 931 -214
		f 4 -932 -619 932 -202
		f 4 -933 -614 933 -190
		f 4 -934 -609 934 -178
		f 4 -935 -604 935 -166
		f 4 -936 -599 936 -154
		f 4 -937 -594 937 -142
		f 4 -938 -589 938 -130
		f 4 -939 -584 939 -118
		f 4 -940 -579 940 -106
		f 4 -941 -574 941 -94
		f 4 -942 -569 942 -82
		f 4 -943 -564 943 -70
		f 4 -944 -559 944 -58
		f 4 -945 -554 945 -46
		f 4 -946 -549 946 -34
		f 4 -947 -544 947 -22
		f 4 -948 -537 -893 -7
		f 4 948 -662 949 950
		f 4 -950 -665 951 952
		f 4 -952 -664 953 -13
		f 4 -954 -670 954 -26
		f 4 -955 -675 955 -38
		f 4 -956 -680 956 -50
		f 4 -957 -685 957 -62
		f 4 -958 -690 958 -74
		f 4 -959 -695 959 -86
		f 4 -960 -700 960 -98
		f 4 -961 -705 961 -110
		f 4 -962 -710 962 -122
		f 4 -963 -715 963 -134
		f 4 -964 -720 964 -146
		f 4 -965 -725 965 -158
		f 4 -966 -730 966 -170
		f 4 -967 -735 967 -182
		f 4 -968 -740 968 -194
		f 4 -969 -745 969 -206
		f 4 -970 -750 970 -218
		f 4 -971 -755 971 -230
		f 4 -972 -760 972 -242
		f 4 -973 -765 973 -254
		f 4 -974 -770 974 -266
		f 4 -975 -775 975 -278
		f 4 -976 -780 976 -290
		f 4 -977 -779 977 978
		f 4 -978 -777 979 980
		f 4 -980 -776 981 -289
		f 4 -982 -771 982 -277
		f 4 -983 -766 983 -265
		f 4 -984 -761 984 -253
		f 4 -985 -756 985 -241
		f 4 -986 -751 986 -229
		f 4 -987 -746 987 -217
		f 4 -988 -741 988 -205
		f 4 -989 -736 989 -193
		f 4 -990 -731 990 -181
		f 4 -991 -726 991 -169
		f 4 -992 -721 992 -157
		f 4 -993 -716 993 -145
		f 4 -994 -711 994 -133
		f 4 -995 -706 995 -121
		f 4 -996 -701 996 -109
		f 4 -997 -696 997 -97
		f 4 -998 -691 998 -85
		f 4 -999 -686 999 -73
		f 4 -1000 -681 1000 -61
		f 4 -1001 -676 1001 -49
		f 4 -1002 -671 1002 -37
		f 4 -1003 -666 1003 -25
		f 4 -1004 -659 -949 -11
		f 4 1004 1005 1006 -813
		f 4 -1007 1007 1008 -811
		f 4 -1009 1009 1010 -282
		f 4 -1011 1011 1012 -869;
	setAttr ".fc[500:580]"
		f 4 -1013 1013 1014 -867
		f 4 -1015 1015 1016 -285
		f 4 -1017 1017 1018 -925
		f 4 -1019 1019 1020 -923
		f 4 -1021 1021 1022 -288
		f 4 -1023 1023 1024 -981
		f 4 -1025 1025 1026 -979
		f 4 -1027 1027 -1005 -291
		f 4 1028 1029 1030 -1006
		f 4 -1031 1031 1032 -1008
		f 4 -1033 1033 1034 -1010
		f 4 -1035 1035 1036 -1012
		f 4 -1037 1037 1038 -1014
		f 4 -1039 1039 1040 -1016
		f 4 -1041 1041 1042 -1018
		f 4 -1043 1043 1044 -1020
		f 4 -1045 1045 1046 -1022
		f 4 -1047 1047 1048 -1024
		f 4 -1049 1049 1050 -1026
		f 4 -1051 1051 -1029 -1028
		f 12 1052 1053 1054 1055 1056 1057 1058 1059 1060 1061 1062 1063
		f 4 1064 1065 1066 -1030
		f 4 -1067 1067 1068 -1032
		f 4 -1069 1069 1070 -1034
		f 4 -1071 1071 1072 -1036
		f 4 -1073 1073 1074 -1038
		f 4 -1075 1075 1076 -1040
		f 4 -1077 1077 1078 -1042
		f 4 -1079 1079 1080 -1044
		f 4 -1081 1081 1082 -1046
		f 4 -1083 1083 1084 -1048
		f 4 -1085 1085 1086 -1050
		f 4 -1087 1087 -1065 -1052
		f 4 1088 1089 1090 -1066
		f 4 -1091 1091 1092 -1068
		f 4 -1093 1093 1094 -1070
		f 4 -1095 1095 1096 -1072
		f 4 -1097 1097 1098 -1074
		f 4 -1099 1099 1100 -1076
		f 4 -1101 1101 1102 -1078
		f 4 -1103 1103 1104 -1080
		f 4 -1105 1105 1106 -1082
		f 4 -1107 1107 1108 -1084
		f 4 -1109 1109 1110 -1086
		f 4 -1111 1111 -1089 -1088
		f 4 1112 1113 1114 -1090
		f 4 -1115 1115 1116 -1092
		f 4 -1117 1117 1118 -1094
		f 4 -1119 1119 1120 -1096
		f 4 -1121 1121 1122 -1098
		f 4 -1123 1123 1124 -1100
		f 4 -1125 1125 1126 -1102
		f 4 -1127 1127 1128 -1104
		f 4 -1129 1129 1130 -1106
		f 4 -1131 1131 1132 -1108
		f 4 -1133 1133 1134 -1110
		f 4 -1135 1135 -1113 -1112
		f 4 1136 1137 1138 -1114
		f 4 -1139 1139 1140 -1116
		f 4 -1141 1141 1142 -1118
		f 4 -1143 1143 1144 -1120
		f 4 -1145 1145 1146 -1122
		f 4 -1147 1147 1148 -1124
		f 4 -1149 1149 1150 -1126
		f 4 -1151 1151 1152 -1128
		f 4 -1153 1153 1154 -1130
		f 4 -1155 1155 1156 -1132
		f 4 -1157 1157 1158 -1134
		f 4 -1159 1159 -1137 -1136
		f 4 1160 -1064 1161 -1138
		f 4 -1162 -1063 1162 -1140
		f 4 -1163 -1062 1163 -1142
		f 4 -1164 -1061 1164 -1144
		f 4 -1165 -1060 1165 -1146
		f 4 -1166 -1059 1166 -1148
		f 4 -1167 -1058 1167 -1150
		f 4 -1168 -1057 1168 -1152
		f 4 -1169 -1056 1169 -1154
		f 4 -1170 -1055 1170 -1156
		f 4 -1171 -1054 1171 -1158
		f 4 -1172 -1053 -1161 -1160;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "cake1";
	rename -uid "AD33AED3-423E-2A38-E43B-15BDB42285D4";
	setAttr ".v" no;
	setAttr ".rp" -type "double3" 0.00019395351409912109 0 0.0062313675880432129 ;
	setAttr ".sp" -type "double3" 0.00019395351409912109 0 0.0062313675880432129 ;
createNode mesh -n "cake1Shape" -p "cake1";
	rename -uid "59394AE9-4CC2-5C0A-62EB-9DA61F06BE74";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:380]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.13541921973228455 0.88929939270019531 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 539 ".uvst[0].uvsp";
	setAttr ".uvst[0].uvsp[0:249]" -type "float2" 0.64574647 0.8145321 0.64224011
		 0.82189536 0.62069118 0.80719149 0.63663107 0.82781708 0.62946188 0.83172619 0.62142038
		 0.83325171 0.61327839 0.83225858 0.60584456 0.8288222 0.59995353 0.82311672 0.59609431
		 0.81587952 0.59463698 0.80781966 0.595725 0.79971355 0.59925377 0.79234701 0.60488164
		 0.78643048 0.61205328 0.78254515 0.62007082 0.78106582 0.62815332 0.78213513 0.63551199
		 0.78564841 0.64142662 0.79126209 0.64531833 0.7984274 0.64680707 0.80644578 0.65807521
		 0.80617529 0.65807366 0.80611831 0.66079199 0.80881429 0.66079253 0.80881482 0.66085279
		 0.80894387 0.65654528 0.81775463 0.65656281 0.81769568 0.66128832 0.81679177 0.66138196
		 0.81677961 0.66138172 0.81677663 0.66016376 0.82309371 0.66016281 0.82309222 0.66015202
		 0.82323027 0.65151685 0.82828999 0.65155125 0.82824016 0.65587908 0.82735962 0.65597302
		 0.82739258 0.655972 0.82739359 0.6532743 0.83451372 0.65327448 0.83451444 0.65324605
		 0.83465087 0.64350629 0.83674455 0.6435467 0.83671051 0.64891517 0.83979368 0.64899284
		 0.83984733 0.64899421 0.83984566 0.64382267 0.84435505 0.64382255 0.84435302 0.64373159
		 0.84445429 0.63327956 0.84231937 0.63333809 0.84230149 0.63637334 0.84480613 0.63641632
		 0.84489334 0.63641554 0.8448934 0.62908185 0.8475756 0.62908077 0.84757698 0.62896514
		 0.84765685 0.62182677 0.84448737 0.6218757 0.8444857 0.62423813 0.84907502 0.62427431
		 0.8491624 0.62427688 0.84916157 0.61926186 0.84950787 0.61926234 0.84950686 0.61913675
		 0.84956521 0.61030561 0.84307665 0.61034137 0.84308636 0.61099517 0.847516 0.61099303
		 0.8476097 0.61099386 0.84760988 0.60665119 0.84841561 0.60665303 0.84841287 0.6065172
		 0.84843022 0.59902644 0.83801186 0.59975636 0.83848345 0.59978026 0.84213275 0.5997448
		 0.84222221 0.59974456 0.84222203 0.59466708 0.84098202 0.59466946 0.84098041 0.59453285
		 0.84096372 0.59087586 0.82980973 0.59090626 0.82983154 0.58895028 0.83429641 0.58889508
		 0.83437204 0.5888952 0.83437216 0.58652538 0.82898754 0.58652401 0.82898724 0.58640701
		 0.82891893 0.58543003 0.81946832 0.58544242 0.81955636 0.58155966 0.8236931 0.58148944
		 0.82375997 0.58149147 0.82376212 0.58036768 0.81847513 0.5803706 0.81847572 0.58027983
		 0.81837064 0.58337927 0.80798972 0.58338016 0.80804795 0.58016098 0.81157845 0.58007228
		 0.81161743 0.58007228 0.81161642 0.58067894 0.80530506 0.58067846 0.80530459 0.58062094
		 0.80517358 0.5849573 0.79640681 0.58493698 0.79646015 0.58046734 0.79764885 0.58037364
		 0.7976622 0.58037376 0.79766464 0.58088547 0.79304296 0.58088714 0.79304439 0.58085382
		 0.79291427 0.59000981 0.78590655 0.58997709 0.78595519 0.58352423 0.7871446 0.58342826
		 0.78713238 0.58342862 0.78713155 0.59150338 0.78185189 0.59150422 0.78184968 0.59155202
		 0.78170896 0.59808612 0.77743942 0.59805548 0.77746451 0.59371912 0.7749055 0.59363568
		 0.774863 0.59363455 0.77486688 0.5964343 0.77204907 0.59643513 0.77205181 0.59649551
		 0.7719276 0.60835785 0.77190077 0.60830379 0.77191776 0.60504842 0.76889938 0.60499591
		 0.76882166 0.60499555 0.76882178 0.60981035 0.7659905 0.60981029 0.76599061 0.60991919
		 0.76589572 0.61982644 0.76979458 0.61977559 0.76980221 0.61727941 0.76487994 0.61724854
		 0.76479268 0.6172477 0.76479286 0.62267029 0.76421583 0.62266934 0.76421762 0.62279874
		 0.76416737 0.63139379 0.77133793 0.63134563 0.77132428 0.62934792 0.76600176 0.62934053
		 0.76590937 0.62934095 0.76590949 0.63410711 0.76745433 0.63410532 0.76745677 0.63424033
		 0.76742429 0.641931 0.77636915 0.64188731 0.77634978 0.64145231 0.77157885 0.64147174
		 0.77148598 0.64147228 0.77148628 0.64786124 0.77448392 0.64786065 0.7744841 0.64798832
		 0.77451926 0.65039957 0.7844305 0.65035152 0.78438127 0.65121943 0.77895689 0.65127522
		 0.77887231 0.65127599 0.77887338 0.65650165 0.78299791 0.65649855 0.78299856 0.65661681
		 0.78307211 0.65595186 0.79469091 0.65593481 0.79463285 0.65799177 0.79000753 0.65807068
		 0.78994817 0.65807098 0.78994954 0.66146767 0.79520547 0.66146451 0.79520518 0.66155398
		 0.79531121 0.66082489 0.80161744 0.66091859 0.80157757 0.66091835 0.80157948 0.65454227
		 0.80623156 0.65316921 0.81671548 0.65621483 0.81757855 0.6486271 0.82626009 0.65128219
		 0.82810622 0.64137185 0.83392841 0.6433295 0.83639419 0.63210988 0.83898866 0.63328302
		 0.84201896 0.62172306 0.84096241 0.62185574 0.84409422 0.61122304 0.83968014 0.6104129
		 0.84271401 0.5999186 0.83812368 0.6013869 0.83531284 0.59926939 0.83770311 0.59376705
		 0.82775277 0.59083629 0.82970893 0.58878815 0.81838334 0.58581746 0.81939089 0.58691025
		 0.80796522 0.58364946 0.80801606 0.58832312 0.7974748 0.58532637 0.7965287 0.59289348
		 0.78794616 0.59015071 0.78608602 0.60019892 0.78027284 0.5983001 0.77774709 0.60948986
		 0.77524561 0.6084376 0.77228564 0.61987901 0.77333164 0.61979818 0.77021027 0.63035446
		 0.77471787 0.63131666 0.7717194 0.63989556 0.77927226 0.64172459 0.77663577 0.64756447
		 0.78654951 0.65011686 0.7846778 0.65260971 0.79583484 0.6556325 0.79483736 0.66076064
		 0.8089112 0.66009223 0.82315719 0.65319461 0.83457094 0.64372724 0.84436315 0.62897998
		 0.84755826 0.61917078 0.84947854 0.59984243 0.83852071 0.60657597 0.84835672 0.59096962
		 0.82989538 0.59460831 0.84090698 0.5864923 0.8288902 0.58037448 0.81837916 0.58071196
		 0.80520904 0.58093333 0.79296166 0.59158874 0.78179955 0.59652466 0.77201718 0.60990751
		 0.76599091 0.62276083 0.7642495 0.63418955 0.76750368 0.64790964 0.77456284 0.65652478
		 0.78309113 0.65783441 0.80617422 0.66146016 0.79530078 0.65807867 0.80614668 0.65807867
		 0.80614668 0.66085267 0.80894291 0.66129786 0.81688744 0.6612947 0.81688803 0.65655875
		 0.81772631;
	setAttr ".uvst[0].uvsp[250:499]" 0.65655875 0.81772631 0.66015005 0.82323217
		 0.65584624 0.82745832 0.65584755 0.82745802 0.65153819 0.82826746 0.65153819 0.82826746
		 0.65324664 0.83465022 0.6488595 0.83987129 0.64885759 0.83987015 0.64352822 0.83672988
		 0.64352822 0.83672994 0.64372909 0.84445715 0.63628328 0.84484822 0.63628364 0.84484857
		 0.63331085 0.84231335 0.63331085 0.84231341 0.62896681 0.84765631 0.62414885 0.84910923
		 0.62414759 0.84910667 0.62185133 0.84449011 0.62185133 0.84449011 0.61913574 0.84956497
		 0.61090052 0.84750676 0.6109004 0.84750563 0.61032277 0.84308392 0.61032277 0.84308392
		 0.60651493 0.84842807 0.59968984 0.84209287 0.59968978 0.84209299 0.5997355 0.83847415
		 0.59973556 0.83847421 0.59904265 0.83802789 0.59904265 0.83802789 0.59453106 0.84096169
		 0.58887565 0.83423632 0.58887577 0.83423603 0.5908953 0.82982045 0.5908953 0.82982045
		 0.58639932 0.82892078 0.58148861 0.82362461 0.58149266 0.82362044 0.58543736 0.81950909
		 0.58543736 0.81950909 0.58027977 0.81836796 0.58012342 0.81148493 0.58012271 0.81148565
		 0.58337533 0.80801886 0.58337533 0.80801886 0.580621 0.80517471 0.58045721 0.79755259
		 0.58045971 0.79755199 0.58494258 0.79643744 0.58494258 0.79643744 0.58085608 0.79290909
		 0.5835399 0.78704637 0.58353907 0.78704655 0.58999026 0.78592783 0.58999026 0.78592783
		 0.59155107 0.78171211 0.59375322 0.77482116 0.59375691 0.77482349 0.5980711 0.77744812
		 0.5980711 0.77744812 0.59649801 0.77192658 0.60513222 0.76885051 0.60513276 0.76885098
		 0.60832977 0.77190596 0.60832977 0.77190596 0.60991323 0.76589662 0.6173709 0.76485699
		 0.61737132 0.76485789 0.61980349 0.76979709 0.61980355 0.76979709 0.62279683 0.76416093
		 0.62944293 0.76600367 0.62944281 0.76600337 0.6313718 0.77133161 0.6313718 0.77133161
		 0.63424277 0.76742566 0.64154691 0.77160591 0.64154685 0.77160537 0.64190966 0.77636534
		 0.64190966 0.77636534 0.64799351 0.77452606 0.65130842 0.77900851 0.6513083 0.77900928
		 0.65037799 0.78440642 0.65037799 0.78440642 0.65661812 0.78307396 0.65805399 0.79008931
		 0.65805453 0.79008806 0.65594631 0.79466099 0.65594631 0.79466099 0.66155368 0.79531419
		 0.66087109 0.80171293 0.6608721 0.80171138 0.59095037 0.82979095 0.59094918 0.82978165
		 0.58651197 0.82898498 0.65126526 0.7788592 0.2952469 0.084551655 0.31983432 0.13280709
		 0.15520379 0.17937507 0.25695103 0.046255913 0.20869547 0.021668373 0.15520379 0.013196049
		 0.10171209 0.021668373 0.053456534 0.046255913 0.015160736 0.084551655 -0.0094266869
		 0.13280758 -0.017898951 0.18629891 -0.0094266869 0.23979072 0.015160736 0.28804615
		 0.053456534 0.3263419 0.10171209 0.35092944 0.15520379 0.35940176 0.20869535 0.35092944
		 0.25695103 0.3263419 0.29524678 0.28804615 0.31983432 0.23979072 0.32830653 0.18629891
		 0.15132767 0.89333409 0.1565074 0.89333409 0.1565074 0.95041591 0.15132767 0.95041591
		 0.16168714 0.89333409 0.16168714 0.95041591 0.16686687 0.89333409 0.16686687 0.95041591
		 0.1720466 0.89333409 0.1720466 0.95041591 0.17722633 0.89333409 0.17722633 0.95041591
		 0.18240607 0.89333409 0.18240607 0.95041591 0.1875858 0.89333409 0.1875858 0.95041591
		 0.19276553 0.89333409 0.19276553 0.95041591 0.19794527 0.89333409 0.19794527 0.95041591
		 0.203125 0.89333409 0.203125 0.95041591 0.20830473 0.89333409 0.20830473 0.95041591
		 0.21348447 0.89333409 0.21348447 0.95041591 0.2186642 0.89333409 0.2186642 0.95041591
		 0.22384393 0.89333409 0.22384393 0.95041591 0.22902367 0.89333409 0.22902367 0.95041591
		 0.2342034 0.89333409 0.2342034 0.95041591 0.23938313 0.89333409 0.23938313 0.95041591
		 0.24456286 0.89333409 0.24456286 0.95041591 0.2497426 0.89333409 0.2497426 0.95041591
		 0.25492233 0.89333409 0.25492233 0.95041591 0.08545953 0.81872576 0.09050855 0.81872576
		 0.09050855 0.83752424 0.08545953 0.83752424 0.08041054 0.81872576 0.08041054 0.83752424
		 0.07536152 0.81872576 0.07536152 0.83752424 0.0703125 0.81872576 0.0703125 0.83752424
		 0.06526348 0.81872576 0.06526348 0.83752424 0.06021446 0.81872576 0.06021446 0.83752424
		 0.05516547 0.81872576 0.05516547 0.83752424 0.05011645 0.81872576 0.05011645 0.83752424
		 0.04506743 0.81872576 0.04506743 0.83752424 0.040018409 0.81872576 0.040018409 0.83752424
		 0.034969389 0.81872576 0.034969389 0.83752424 0.029920369 0.81872576 0.029920369
		 0.83752424 0.024871349 0.81872576 0.024871349 0.83752424 0.019822359 0.81872576 0.019822359
		 0.83752424 0.11575365 0.81872576 0.12080264 0.81872576 0.12080264 0.83752424 0.11575365
		 0.83752424 0.1107046 0.81872576 0.1107046 0.83752424 0.10565561 0.81872576 0.10565561
		 0.83752424 0.10060659 0.81872576 0.10060659 0.83752424 0.09555757 0.81872576 0.09555757
		 0.83752424 0.22384393 0.89147007 0.22902367 0.89147007 0.22902367 0.94458759 0.22384393
		 0.94458759 0.2186642 0.89147007 0.2186642 0.94458759 0.21348447 0.89147007 0.21348447
		 0.94458759 0.20830473 0.89147007 0.20830473 0.94458759 0.203125 0.89147007 0.203125
		 0.94458759 0.19794527 0.89147007 0.19794527 0.94458759 0.19276553 0.89147007 0.19276553
		 0.94458759 0.1875858 0.89147007 0.1875858 0.94458759 0.18240607 0.89147007 0.18240607
		 0.94458759 0.17722633 0.89147007 0.17722633 0.94458759 0.1720466 0.89147007 0.1720466
		 0.94458759 0.16686687 0.89147007 0.16686687 0.94458759 0.16168714 0.89147007 0.16168714
		 0.94458759 0.1565074 0.89147007 0.1565074 0.94458759 0.15132767 0.89147007 0.15132767
		 0.94458759 0.2497426 0.89147007 0.25492233 0.89147007 0.25492233 0.94458759 0.2497426
		 0.94458759 0.24456286 0.89147007 0.24456286 0.94458759 0.23938313 0.89147007 0.23938313
		 0.94458759 0.2342034 0.89147007 0.2342034 0.94458759 0.08155328 0.94173789 0.0866023
		 0.94173789 0.0866023 0.95987302;
	setAttr ".uvst[0].uvsp[500:538]" 0.08155328 0.95987302 0.07650429 0.94173789
		 0.07650429 0.95987302 0.07145527 0.94173789 0.07145527 0.95987302 0.06640625 0.94173789
		 0.06640625 0.95987302 0.06135723 0.94173789 0.06135723 0.95987302 0.05630821 0.94173789
		 0.05630821 0.95987302 0.05125922 0.94173789 0.05125922 0.95987302 0.0462102 0.94173789
		 0.0462102 0.95987302 0.04116118 0.94173789 0.04116118 0.95987302 0.036112159 0.94173789
		 0.036112159 0.95987302 0.031063139 0.94173789 0.031063139 0.95987302 0.026014119
		 0.94173789 0.026014119 0.95987302 0.020965099 0.94173789 0.020965099 0.95987302 0.015916109
		 0.94173789 0.015916109 0.95987302 0.1118474 0.94173789 0.11689639 0.94173789 0.11689639
		 0.95987302 0.1118474 0.95987302 0.10679835 0.94173789 0.10679835 0.95987302 0.10174936
		 0.94173789 0.10174936 0.95987302 0.096700341 0.94173789 0.096700341 0.95987302 0.09165132
		 0.94173789 0.09165132 0.95987302;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 61 ".pt";
	setAttr ".pt[344]" -type "float3" 8.7724278e-10 0 0.0090041459 ;
	setAttr ".pt[345]" -type "float3" -0.0027824326 0 0.0085634515 ;
	setAttr ".pt[346]" -type "float3" -0.0052925008 0 0.0072845067 ;
	setAttr ".pt[347]" -type "float3" -0.0072845048 0 0.0052925078 ;
	setAttr ".pt[348]" -type "float3" -0.0085634496 0 0.0027824354 ;
	setAttr ".pt[349]" -type "float3" -0.0090041459 0 1.4920239e-09 ;
	setAttr ".pt[350]" -type "float3" -0.0085634496 0 -0.0027824317 ;
	setAttr ".pt[351]" -type "float3" -0.0072845053 0 -0.0052925008 ;
	setAttr ".pt[352]" -type "float3" -0.0052925032 0 -0.0072845053 ;
	setAttr ".pt[353]" -type "float3" -0.0027824333 0 -0.0085634496 ;
	setAttr ".pt[354]" -type "float3" 1.1455868e-09 0 -0.0090041459 ;
	setAttr ".pt[355]" -type "float3" 0.0027824352 0 -0.0085634515 ;
	setAttr ".pt[356]" -type "float3" 0.0052925083 0 -0.0072845067 ;
	setAttr ".pt[357]" -type "float3" 0.0072845137 0 -0.0052925032 ;
	setAttr ".pt[358]" -type "float3" 0.0085634561 0 -0.0027824328 ;
	setAttr ".pt[359]" -type "float3" 0.0090041459 0 1.4920239e-09 ;
	setAttr ".pt[360]" -type "float3" 0.0085634496 0 0.0027824361 ;
	setAttr ".pt[361]" -type "float3" 0.0072845053 0 0.0052925036 ;
	setAttr ".pt[362]" -type "float3" 0.0052925032 0 0.0072845067 ;
	setAttr ".pt[363]" -type "float3" 0.0027824335 0 0.0085634496 ;
	setAttr ".pt[364]" -type "float3" 0.0027824335 0 0.0085634496 ;
	setAttr ".pt[365]" -type "float3" 9.2517427e-10 0 0.0090041459 ;
	setAttr ".pt[366]" -type "float3" -0.0027824326 0 0.0085634496 ;
	setAttr ".pt[367]" -type "float3" -0.0052925008 0 0.0072845067 ;
	setAttr ".pt[368]" -type "float3" -0.0072845048 0 0.0052925078 ;
	setAttr ".pt[369]" -type "float3" -0.0085634496 0 0.0027824354 ;
	setAttr ".pt[370]" -type "float3" -0.0090041459 0 1.4136698e-09 ;
	setAttr ".pt[371]" -type "float3" -0.0085634496 0 -0.0027824317 ;
	setAttr ".pt[372]" -type "float3" -0.0072845053 0 -0.0052925008 ;
	setAttr ".pt[373]" -type "float3" -0.0052925032 0 -0.0072845053 ;
	setAttr ".pt[374]" -type "float3" -0.0027824333 0 -0.0085634496 ;
	setAttr ".pt[375]" -type "float3" 1.1935191e-09 0 -0.0090041459 ;
	setAttr ".pt[376]" -type "float3" 0.0027824352 0 -0.0085634515 ;
	setAttr ".pt[377]" -type "float3" 0.0052925083 0 -0.0072845067 ;
	setAttr ".pt[378]" -type "float3" 0.0072845137 0 -0.0052925032 ;
	setAttr ".pt[379]" -type "float3" 0.0085634561 0 -0.0027824328 ;
	setAttr ".pt[380]" -type "float3" 0.0090041459 0 1.4136698e-09 ;
	setAttr ".pt[381]" -type "float3" 0.0085634496 0 0.0027824361 ;
	setAttr ".pt[382]" -type "float3" 0.0072845053 0 0.0052925036 ;
	setAttr ".pt[383]" -type "float3" 0.0052925032 0 0.0072845067 ;
	setAttr ".pt[384]" -type "float3" 9.0163882e-10 0 0.0090041459 ;
	setAttr ".pt[385]" -type "float3" -0.0027824326 0 0.0085634496 ;
	setAttr ".pt[386]" -type "float3" -0.0052925008 0 0.0072845067 ;
	setAttr ".pt[387]" -type "float3" -0.0072845048 0 0.0052925078 ;
	setAttr ".pt[388]" -type "float3" -0.0085634496 0 0.0027824354 ;
	setAttr ".pt[389]" -type "float3" -0.0090041459 0 1.4521433e-09 ;
	setAttr ".pt[390]" -type "float3" -0.0085634496 0 -0.0027824317 ;
	setAttr ".pt[391]" -type "float3" -0.0072845053 0 -0.0052925008 ;
	setAttr ".pt[392]" -type "float3" -0.0052925032 0 -0.0072845053 ;
	setAttr ".pt[393]" -type "float3" -0.0027824333 0 -0.0085634496 ;
	setAttr ".pt[394]" -type "float3" 1.1532116e-09 0 -0.0090041459 ;
	setAttr ".pt[395]" -type "float3" 0.0027625598 0 -0.0085786805 ;
	setAttr ".pt[396]" -type "float3" 0.0052925083 0 -0.0072845067 ;
	setAttr ".pt[397]" -type "float3" 0.0072845137 0 -0.0052925032 ;
	setAttr ".pt[398]" -type "float3" 0.0085634561 0 -0.0027824328 ;
	setAttr ".pt[399]" -type "float3" 0.0090041459 0 1.4521433e-09 ;
	setAttr ".pt[400]" -type "float3" 0.0085634496 0 0.0027824361 ;
	setAttr ".pt[401]" -type "float3" 0.0072845053 0 0.0052925036 ;
	setAttr ".pt[402]" -type "float3" 0.0052925032 0 0.0072845067 ;
	setAttr ".pt[403]" -type "float3" 0.0027824335 0 0.0085634496 ;
	setAttr -s 404 ".vt";
	setAttr ".vt[0:165]"  0.9035092 0.76547593 -0.29356796 0.76857084 0.76547593 -0.55839938
		 0.55839938 0.76547593 -0.76857078 0.2935679 0.76547593 -0.90350908 4.703625e-09 0.76547593 -0.95000559
		 -0.2935679 0.76547593 -0.90350902 -0.55839926 0.76547593 -0.7685706 -0.76857054 0.76547593 -0.5583992
		 -0.90350884 0.76547593 -0.29356781 -0.95000541 0.76547593 1.3956231e-17 -0.90350884 0.76547593 0.29356781
		 -0.76857048 0.76547593 0.55839914 -0.55839914 0.76547593 0.76857042 -0.29356781 0.76547593 0.90350872
		 -3.487844e-08 0.76547593 0.95000523 0.29356772 0.76547593 0.90350866 0.55839902 0.76547593 0.76857036
		 0.7685703 0.76547593 0.55839908 0.9035086 0.76547593 0.29356775 0.95000517 0.76547593 -4.9271197e-08
		 0.59286594 0.7779268 -0.43074253 0.69695598 0.7779268 -0.22645478 -2.7252721e-08 0.7779268 -4.0867317e-08
		 0.43074238 0.7779268 -0.592866 0.22645462 0.7779268 -0.69695592 -2.3624391e-08 0.7779268 -0.73282254
		 -0.22645472 0.7779268 -0.69695592 -0.43074244 0.7779268 -0.59286594 -0.59286594 0.7779268 -0.43074238
		 -0.69695508 0.7779268 -0.22645465 -0.7328223 0.7779268 -4.0867317e-08 -0.69695508 0.7779268 0.22645456
		 -0.59286594 0.7779268 0.4307422 -0.43074232 0.7779268 0.59286565 -0.22645465 0.7779268 0.69695556
		 -5.4157503e-08 0.7779268 0.73282218 0.22645453 0.7779268 0.69695556 0.4307422 0.7779268 0.59286559
		 0.59286571 0.7779268 0.4307422 0.69695485 0.7779268 0.22645456 0.73282206 0.7779268 -7.8874479e-08
		 0.90456569 0.68474108 -0.29406324 0.9512068 0.68437183 -4.8656948e-06 0.76945943 0.68474108 -0.55922419
		 0.55896145 0.68479729 -0.76958293 0.29380041 0.68479723 -0.90468913 1.9485597e-05 0.68437177 -0.95119262
		 -0.29391378 0.68437177 -0.90463817 -0.5590747 0.68437171 -0.76953185 -0.76997244 0.68629318 -0.55809218
		 -0.90507865 0.6862933 -0.29293123 -0.95117152 0.68434811 -1.6103499e-05 -0.90445721 0.68334633 0.29441747
		 -0.7694298 0.68316227 0.55952746 -0.55915678 0.68416399 0.7694599 -0.29423895 0.68378156 0.90462244
		 -0.0011005597 0.68236279 0.95143896 0.29315782 0.682953 0.90489042 0.55984443 0.68300891 0.76897579
		 0.77018034 0.68329489 0.55869704 0.9045555 0.68465775 0.29408237 1.0077310801 0.69357359 -0.00061380537
		 1.0070736408 0.68798327 -4.8111779e-06 1.0047609806 0.60124213 -0.064336792 1.0073426962 0.60407996 -0.064189114
		 1.0051326752 0.60331142 -0.061145097 0.95662814 0.69626737 -0.30959135 0.95776469 0.68801272 -0.31120768
		 0.97412956 0.56010103 -0.27571368 0.97696966 0.56090415 -0.27358255 0.97474825 0.55819851 -0.2725836
		 0.92474228 0.53149974 -0.39707705 0.92732018 0.53400141 -0.39713499 0.92624998 0.53277534 -0.39393064
		 0.81426358 0.69485945 -0.592026 0.81454641 0.68799978 -0.59180945 0.85337847 0.58932942 -0.5349021
		 0.85702085 0.58990157 -0.53365874 0.85485595 0.58699787 -0.53224725 0.75806159 0.53107172 -0.66597396
		 0.76028937 0.53381705 -0.6673106 0.76025122 0.53308564 -0.66360247 0.59188515 0.69659561 -0.81245428
		 0.59223258 0.68804687 -0.81513548 0.62619364 0.51996034 -0.79916817 0.62975699 0.52049339 -0.79904675
		 0.62839478 0.51773453 -0.79716802 0.51226282 0.49606901 -0.8674466 0.5144397 0.49855056 -0.86916518
		 0.5153513 0.49729139 -0.8657831 0.31307715 0.69430965 -0.95700276 0.311129 0.68800426 -0.95754617
		 0.34742561 0.58637071 -0.94911993 0.35108456 0.58638328 -0.95029235 0.34977043 0.58353931 -0.94808078
		 0.17261565 0.56422007 -0.98998755 0.17391853 0.56701648 -0.99234778 0.17605007 0.56578696 -0.98934233
		 0.00052733935 0.69688934 -1.0050677061 1.9458463e-05 0.68802756 -1.0077449083 0.036770735 0.54972523 -1.012682438
		 0.039703637 0.5503816 -1.014680266 0.039827369 0.54764318 -1.012332916 -0.057300795 0.53820938 -1.0099767447
		 -0.057042908 0.54089218 -1.012541175 -0.054120108 0.54017776 -1.010353327 -0.31084156 0.69662297 -0.95606214
		 -0.31170994 0.68809462 -0.95940918 -0.28531674 0.56783533 -0.97193491 -0.28315651 0.56809235 -0.97497016
		 -0.28255773 0.56532604 -0.97253412 -0.35053599 0.50864792 -0.95292687 -0.35113895 0.51136738 -0.95562011
		 -0.34760907 0.51048779 -0.9542864 -0.59166926 0.69672155 -0.81249374 -0.5924983 0.68804771 -0.81553549
		 -0.56341904 0.59536475 -0.83840567 -0.56224412 0.59558094 -0.84202206 -0.56104589 0.59272617 -0.83980393
		 -0.61958814 0.54144198 -0.80373418 -0.62101316 0.54420686 -0.80560994 -0.61741441 0.54372299 -0.80570197
		 -0.81645715 0.68821156 -0.5931468 -0.82029611 0.68830585 -0.59181917 -0.81780058 0.68975359 -0.59418547
		 -0.81669807 0.68830585 -0.5969134 -0.78940171 0.56110191 -0.63190156 -0.78943771 0.56157982 -0.63561678
		 -0.78736502 0.55882919 -0.63414341 -0.84403354 0.58954597 -0.52100122 -0.8461535 0.59224755 -0.52270472
		 -0.84254533 0.5917033 -0.52378362 -0.9557637 0.69696152 -0.31081402 -0.95805639 0.68815035 -0.31121305
		 -0.94642478 0.53728694 -0.35981208 -0.94730234 0.53815156 -0.36323124 -0.94486612 0.53554416 -0.36269909
		 -0.97709429 0.55228829 -0.26076248 -0.97918606 0.55499411 -0.26175204 -0.97647488 0.55416745 -0.26390657
		 -1.0072137117 0.69428521 -4.1954365e-05 -1.0069217682 0.68797392 -5.7537286e-06 -1.0040968657 0.58158118 -0.076326564
		 -1.0063062906 0.58239412 -0.079338714 -1.0037124157 0.57959479 -0.079564653 -1.0047549009 0.60142851 0.065078154
		 -1.007343173 0.60424823 0.064878441 -1.0051348209 0.60343874 0.061851531 -0.95566154 0.696814 0.31126386
		 -0.95843691 0.68795931 0.31145427 -0.97484928 0.56819475 0.26827234 -0.97757638 0.56905746 0.26613358
		 -0.97547179 0.56636202 0.26510158 -0.95196563 0.54285377 0.34893322 -0.95406032 0.54565388 0.3496238
		 -0.95304018 0.54518688 0.34624952 -0.81615627 0.69301808 0.59169519 -0.81487429 0.68790245 0.59208894
		 -0.87876225 0.54001158 0.51030749 -0.88218868 0.5410971 0.50912976 -0.88040173 0.53829199 0.50732696
		 -0.75481826 0.62103349 0.66267037 -0.75702035 0.62411493 0.66401374 -0.75711882 0.62285745 0.66019267
		 -0.59089309 0.69651282 0.81345797 -0.59305876 0.68809849 0.81628859;
	setAttr ".vt[166:331]" -0.61921567 0.5502972 0.80279171 -0.62299049 0.55123538 0.80300939
		 -0.62160969 0.54851228 0.80058199 -0.56936067 0.53178829 0.84006053 -0.57084292 0.53453773 0.84200495
		 -0.57199669 0.53393549 0.83856356 -0.31116155 0.69682759 0.95570785 -0.31126192 0.687949 0.95794135
		 -0.34693357 0.57067823 0.95048964 -0.35047695 0.57098651 0.95167506 -0.34956294 0.5682106 0.94932675
		 -0.24503754 0.53167421 0.986224 -0.24600233 0.53444815 0.9885394 -0.24817534 0.53369361 0.98558646
		 -0.00036731418 0.69727039 1.0047723055 -6.2021158e-05 0.68787366 1.0076326132 -0.040271644 0.54023558 1.012559772
		 -0.043204714 0.54067236 1.014809847 -0.043217409 0.53790462 1.012313962 0.062278505 0.52290279 1.024765611
		 0.062107414 0.52575928 1.027143002 0.059098452 0.52488697 1.025130272 0.31219506 0.69655991 0.95543736
		 0.31137723 0.68792868 0.9584468 0.24465975 0.5477131 0.97977614 0.24264178 0.54833406 0.98288852
		 0.24166483 0.54553175 0.9805662 0.33623418 0.55532867 0.95724094 0.33704236 0.55809718 0.95946372
		 0.3335816 0.55764341 0.95842659 0.59154469 0.69545019 0.81407183 0.59192389 0.68785834 0.81455064
		 0.54031456 0.57260257 0.85182899 0.53920573 0.57330507 0.85536706 0.53751761 0.57056224 0.85340035
		 0.66024363 0.53429496 0.76393801 0.66123974 0.53692645 0.76637185 0.65765768 0.5359326 0.76611936
		 0.81436855 0.69623172 0.58965307 0.81468487 0.68788356 0.59181243 0.77349842 0.56230664 0.66493154
		 0.77325112 0.56322432 0.66864771 0.77133048 0.56019425 0.66729093 0.84773612 0.5174427 0.55608076
		 0.84966069 0.52012849 0.55783468 0.84619063 0.51925445 0.55893195 0.95705253 0.6958307 0.3091166
		 0.95763189 0.68799758 0.31115803 0.92772907 0.57543415 0.3856363 0.92889041 0.57608175 0.38925481
		 0.92643631 0.5732094 0.38846818 0.97627455 0.53765082 0.27042541 0.97862232 0.54034108 0.27152738
		 0.97565305 0.53945172 0.27361453 0.99945235 0.58890671 0.10281999 1.0016473532 0.58992577 0.10591434
		 0.99905545 0.58698052 0.10611212 0.94657153 0.59748554 -0.055094551 0.94694287 0.59961486 -0.052073099
		 0.91579753 0.55645204 -0.2663267 0.91638476 0.55444127 -0.26325867 0.87181532 0.52844626 -0.37048537
		 0.87332493 0.52980077 -0.36737299 0.80080283 0.58631396 -0.50829142 0.80218536 0.58395606 -0.50577557
		 0.71640748 0.52731073 -0.62428725 0.71852124 0.5293532 -0.62201554 0.58445877 0.51626712 -0.75726402
		 0.58660573 0.51396173 -0.7552951 0.48514569 0.49313995 -0.81500089 0.48821947 0.49443147 -0.81336254
		 0.32054833 0.58345598 -0.89666629 0.32271534 0.5806002 -0.89569205 0.16344737 0.56046444 -0.9317919
		 0.16675256 0.5620473 -0.93118322 0.027659133 0.54605603 -0.95425665 0.030645082 0.54387522 -0.95389771
		 -0.048103724 0.53444791 -0.95173568 -0.045019418 0.53648329 -0.95211619 -0.27593631 0.56413025 -0.9137606
		 -0.2733123 0.56155938 -0.91431379 -0.3239232 0.50492394 -0.90051436 -0.32104778 0.50684696 -0.90186882
		 -0.5365212 0.59165567 -0.78601098 -0.53430361 0.58896726 -0.78729784 -0.57784021 0.537673 -0.76188016
		 -0.57573307 0.54004705 -0.7638101 -0.74764073 0.55738819 -0.59032863 -0.74568301 0.55506539 -0.59246701
		 -0.7923702 0.58947009 -0.4923417 -0.79099047 0.59163964 -0.49502489 -0.89467537 0.5373199 -0.33120853
		 -0.89311844 0.53547871 -0.33403453 -0.91860271 0.54851758 -0.25142366 -0.91801959 0.55051452 -0.25450155
		 -0.94590348 0.57786536 -0.067229822 -0.94552094 0.57583725 -0.070318691 -0.94657153 0.59762543 0.055815529
		 -0.94695085 0.59969884 0.052756462 -0.91640967 0.56448209 0.25886801 -0.91700315 0.56254685 0.25575298
		 -0.89881599 0.53713995 0.32303509 -0.8998723 0.53956091 0.32042268 -0.82608163 0.53437817 0.48446161
		 -0.82765061 0.53262043 0.48158947 -0.71336806 0.61689609 0.62086868 -0.71557683 0.61874247 0.6185208
		 -0.57795739 0.54629666 0.76102144 -0.58029211 0.54440492 0.75883698 -0.54248822 0.5280295 0.78748417
		 -0.54507595 0.53026533 0.78603321 -0.32032946 0.56697094 0.89792252 -0.32281402 0.56444561 0.89680415
		 -0.23644385 0.52678454 0.92803127 -0.23946951 0.52885264 0.92742419 -0.031803947 0.53539777 0.95428932
		 -0.034635775 0.53300697 0.95403183 0.051572442 0.51643538 0.96711099 0.0484921 0.51848084 0.96746832
		 0.23379508 0.54126441 0.9219901 0.2309127 0.53904265 0.9227367 0.30947053 0.55156022 0.90454614
		 0.30689338 0.55396688 0.90571523 0.51347017 0.56887788 0.79938632 0.51077849 0.56680059 0.800883
		 0.61989784 0.52791446 0.72112542 0.61737269 0.5296132 0.72325569 0.73330086 0.5560022 0.62249213
		 0.73124415 0.55385607 0.62472034 0.79506415 0.51424968 0.52954513 0.7935639 0.51615298 0.53236067
		 0.87501472 0.57224858 0.35929263 0.87376893 0.57000571 0.36197937 0.91804814 0.53390986 0.26112249
		 0.91745448 0.53580648 0.26426113 0.94127125 0.58517569 0.09370669 0.94087791 0.58323359 0.096848994
		 0.94473547 0 -0.30696315 0.80364001 0 -0.58387858 0.58387858 0 -0.80363995 0.30696312 0 -0.94473535
		 -7.9238249e-10 0 -0.99335349 -0.30696312 0 -0.94473529 -0.58387846 0 -0.80363977
		 -0.80363971 0 -0.5838784 -0.94473511 0 -0.30696303 -0.99335325 0 -1.1885737e-09 -0.94473511 0 0.30696303
		 -0.80363965 0 0.58387834 -0.58387834 0 0.80363959 -0.30696303 0 0.94473499 -3.039661e-08 0 0.99335313
		 0.30696294 0 0.94473493 0.58387822 0 0.80363953 0.80363947 0 0.58387828 0.94473487 0 0.30696297
		 0.99335301 0 -1.1885737e-09 -7.9238249e-10 0 -1.1885737e-09 0.94473547 0.6961534 -0.30696315
		 0.80364001 0.6961534 -0.58387858 0.58387858 0.6961534 -0.80363995 0.30696312 0.6961534 -0.94473535
		 1.9874818e-08 0.6961534 -0.99335349 -0.30696312 0.6961534 -0.94473529 -0.58387846 0.6961534 -0.80363977
		 -0.80363971 0.6961534 -0.5838784;
	setAttr ".vt[332:403]" -0.94473511 0.6961534 -0.30696303 -0.99335325 0.6961534 -3.4973535e-08
		 -0.94473511 0.6961534 0.30696303 -0.80363965 0.6961534 0.58387834 -0.58387834 0.6961534 0.80363959
		 -0.30696303 0.6961534 0.94473499 -9.7294004e-09 0.6961534 0.99335313 0.30696294 0.6961534 0.94473493
		 0.58387822 0.6961534 0.80363953 0.80363947 0.6961534 0.58387828 0.94473487 0.6961534 0.30696297
		 0.99335301 0.6961534 -3.4973535e-08 -2.2430319e-08 0.24455187 0.99335313 -0.30696303 0.25998488 0.94473499
		 -0.58387834 0.26558027 0.80363959 -0.80363965 0.24455187 0.58387834 -0.94473505 0.24455187 0.30696303
		 -0.99335325 0.26299912 -1.4211174e-08 -0.94473505 0.24455187 -0.30696303 -0.80363971 0.24455187 -0.5838784
		 -0.58387846 0.2607668 -0.80363977 -0.30696312 0.24455187 -0.94473529 7.1739037e-09 0.25780132 -0.99335349
		 0.30696312 0.24455187 -0.94473535 0.58387858 0.26328725 -0.80363995 0.80364001 0.23657331 -0.58387858
		 0.94473547 0.25854698 -0.30696315 0.99335301 0.26314655 -1.4211174e-08 0.94473487 0.24455187 0.30696297
		 0.80363947 0.24455187 0.58387828 0.58387822 0.25790596 0.80363953 0.30696294 0.24717745 0.94473493
		 0.30696294 0.40590873 0.94473493 -1.7142453e-08 0.43283719 0.99335313 -0.30696303 0.40508214 0.94473493
		 -0.58387834 0.40328541 0.80363959 -0.80363965 0.42947397 0.58387834 -0.94473505 0.40590873 0.30696303
		 -0.99335325 0.41401818 -2.2855321e-08 -0.94473505 0.39799339 -0.30696303 -0.80363971 0.41379467 -0.5838784
		 -0.58387846 0.39536002 -0.80363977 -0.30696312 0.39278698 -0.94473529 1.2461769e-08 0.40590873 -0.99335349
		 0.30696312 0.40066746 -0.94473535 0.58387858 0.40590873 -0.80363995 0.80364001 0.40590873 -0.58387858
		 0.94473547 0.41391447 -0.30696315 0.99335301 0.39534655 -2.2855321e-08 0.94473487 0.40590873 0.30696297
		 0.80363947 0.42173836 0.58387828 0.58387822 0.40590873 0.80363953 -1.9738895e-08 0.3266795 0.99335313
		 -0.30696303 0.3266795 0.94473493 -0.58387834 0.33199471 0.80363959 -0.80363965 0.3266795 0.58387834
		 -0.94473505 0.3371911 0.30696303 -0.99335325 0.3266795 -1.8610882e-08 -0.94473505 0.30554235 -0.30696303
		 -0.80363971 0.34245846 -0.5838784 -0.58387846 0.3266795 -0.80363977 -0.30696312 0.3266795 -0.94473529
		 8.0150642e-09 0.31608215 -0.99335349 0.30477047 0.31095541 -0.94641536 0.58387858 0.3266795 -0.80363995
		 0.80364001 0.31607684 -0.58387858 0.94473547 0.3266795 -0.30696315 0.99335301 0.3266795 -1.8610882e-08
		 0.94473487 0.30549523 0.30696297 0.80363947 0.3266795 0.58387828 0.58387822 0.3266795 0.80363953
		 0.30696294 0.3266795 0.94473493;
	setAttr -s 783 ".ed";
	setAttr ".ed[0:165]"  0 19 1 1 0 1 2 1 1 3 2 1 4 3 1 5 4 1 6 5 1 7 6 1 8 7 1
		 9 8 1 10 9 1 11 10 1 12 11 1 13 12 1 14 13 1 15 14 1 16 15 1 17 16 1 18 17 1 19 18 1
		 1 20 1 0 21 1 20 21 1 20 22 1 22 21 1 2 23 1 23 20 1 23 22 1 3 24 1 24 23 1 24 22 1
		 4 25 1 25 24 1 25 22 1 5 26 1 26 25 1 26 22 1 6 27 1 27 26 1 27 22 1 7 28 1 28 27 1
		 28 22 1 8 29 1 29 28 1 29 22 1 9 30 1 30 29 1 30 22 1 10 31 1 31 30 1 31 22 1 11 32 1
		 32 31 1 32 22 1 12 33 1 33 32 1 33 22 1 13 34 1 34 33 1 34 22 1 14 35 1 35 34 1 35 22 1
		 15 36 1 36 35 1 36 22 1 16 37 1 37 36 1 37 22 1 17 38 1 38 37 1 38 22 1 18 39 1 39 38 1
		 39 22 1 19 40 1 40 39 1 40 22 1 21 40 1 42 224 0 41 225 0 41 228 0 43 229 0 43 232 0
		 44 233 0 44 236 0 45 237 0 45 240 0 46 241 0 46 244 0 47 245 0 47 248 0 48 249 0
		 48 252 0 49 253 0 49 256 0 50 257 0 50 260 0 51 261 0 51 264 0 52 265 0 52 268 0
		 53 269 0 53 272 0 54 273 0 54 276 0 55 277 0 55 280 0 56 281 0 56 284 0 57 285 0
		 57 288 0 58 289 0 58 292 0 59 293 0 59 296 0 60 297 0 60 300 0 42 301 0 122 49 1
		 124 7 1 124 123 1 125 124 1 223 226 0 227 230 0 231 234 0 235 238 0 239 242 0 243 246 0
		 247 250 0 251 254 0 255 258 0 259 262 0 263 266 0 267 270 0 271 274 0 275 278 0 279 282 0
		 283 286 0 287 290 0 291 294 0 295 298 0 299 302 0 61 62 1 62 65 1 65 64 1 64 61 1
		 61 221 1 221 220 1 220 62 1 63 65 1 65 224 1 224 223 0 223 63 1 64 63 1 63 70 1 70 69 1
		 69 64 1 66 67 1 67 73 1 73 72 1 72 66 1 66 69 1 69 68 1 68 67 1;
	setAttr ".ed[166:331]" 68 70 1 70 226 1 226 225 0 225 68 1 71 73 1 73 228 1
		 228 227 0 227 71 1 72 71 1 71 78 1 78 77 1 77 72 1 74 75 1 75 81 1 81 80 1 80 74 1
		 74 77 1 77 76 1 76 75 1 76 78 1 78 230 1 230 229 0 229 76 1 79 81 1 81 232 1 232 231 0
		 231 79 1 80 79 1 79 86 1 86 85 1 85 80 1 82 83 1 83 89 1 89 88 1 88 82 1 82 85 1
		 85 84 1 84 83 1 84 86 1 86 234 1 234 233 0 233 84 1 87 89 1 89 236 1 236 235 0 235 87 1
		 88 87 1 87 94 1 94 93 1 93 88 1 90 91 1 91 97 1 97 96 1 96 90 1 90 93 1 93 92 1 92 91 1
		 92 94 1 94 238 1 238 237 0 237 92 1 95 97 1 97 240 1 240 239 0 239 95 1 96 95 1 95 102 1
		 102 101 1 101 96 1 98 99 1 99 105 1 105 104 1 104 98 1 98 101 1 101 100 1 100 99 1
		 100 102 1 102 242 1 242 241 0 241 100 1 103 105 1 105 244 1 244 243 0 243 103 1 104 103 1
		 103 110 1 110 109 1 109 104 1 106 107 1 107 113 1 113 112 1 112 106 1 106 109 1 109 108 1
		 108 107 1 108 110 1 110 246 1 246 245 0 245 108 1 111 113 1 113 248 1 248 247 0 247 111 1
		 112 111 1 111 118 1 118 117 1 117 112 1 114 115 1 115 121 1 121 120 1 120 114 1 114 117 1
		 117 116 1 116 115 1 116 118 1 118 250 1 250 249 0 249 116 1 119 121 1 121 252 1 252 251 0
		 251 119 1 120 119 1 119 128 1 128 127 1 127 120 1 123 122 1 122 131 1 131 130 1 130 123 1
		 122 125 1 125 127 1 127 126 1 126 122 1 126 128 1 128 254 1 254 253 0 253 126 1 129 131 1
		 131 256 1 256 255 0 255 129 1 130 129 1 129 136 1 136 135 1 135 130 1 132 133 1 133 139 1
		 139 138 1 138 132 1 132 135 1 135 134 1 134 133 1 134 136 1 136 258 1 258 257 0 257 134 1
		 137 139 1 139 260 1 260 259 0 259 137 1 138 137 1 137 144 1 144 143 1 143 138 1 140 141 1;
	setAttr ".ed[332:497]" 141 147 1 147 146 1 146 140 1 140 143 1 143 142 1 142 141 1
		 142 144 1 144 262 1 262 261 0 261 142 1 145 147 1 147 264 1 264 263 0 263 145 1 146 145 1
		 145 152 1 152 151 1 151 146 1 148 149 1 149 155 1 155 154 1 154 148 1 148 151 1 151 150 1
		 150 149 1 150 152 1 152 266 1 266 265 0 265 150 1 153 155 1 155 268 1 268 267 0 267 153 1
		 154 153 1 153 160 1 160 159 1 159 154 1 156 157 1 157 163 1 163 162 1 162 156 1 156 159 1
		 159 158 1 158 157 1 158 160 1 160 270 1 270 269 0 269 158 1 161 163 1 163 272 1 272 271 0
		 271 161 1 162 161 1 161 168 1 168 167 1 167 162 1 164 165 1 165 171 1 171 170 1 170 164 1
		 164 167 1 167 166 1 166 165 1 166 168 1 168 274 1 274 273 0 273 166 1 169 171 1 171 276 1
		 276 275 0 275 169 1 170 169 1 169 176 1 176 175 1 175 170 1 172 173 1 173 179 1 179 178 1
		 178 172 1 172 175 1 175 174 1 174 173 1 174 176 1 176 278 1 278 277 0 277 174 1 177 179 1
		 179 280 1 280 279 0 279 177 1 178 177 1 177 184 1 184 183 1 183 178 1 180 181 1 181 187 1
		 187 186 1 186 180 1 180 183 1 183 182 1 182 181 1 182 184 1 184 282 1 282 281 0 281 182 1
		 185 187 1 187 284 1 284 283 0 283 185 1 186 185 1 185 192 1 192 191 1 191 186 1 188 189 1
		 189 195 1 195 194 1 194 188 1 188 191 1 191 190 1 190 189 1 190 192 1 192 286 1 286 285 0
		 285 190 1 193 195 1 195 288 1 288 287 0 287 193 1 194 193 1 193 200 1 200 199 1 199 194 1
		 196 197 1 197 203 1 203 202 1 202 196 1 196 199 1 199 198 1 198 197 1 198 200 1 200 290 1
		 290 289 0 289 198 1 201 203 1 203 292 1 292 291 0 291 201 1 202 201 1 201 208 1 208 207 1
		 207 202 1 204 205 1 205 211 1 211 210 1 210 204 1 204 207 1 207 206 1 206 205 1 206 208 1
		 208 294 1 294 293 0 293 206 1 209 211 1 211 296 1 296 295 0 295 209 1;
	setAttr ".ed[498:663]" 210 209 1 209 216 1 216 215 1 215 210 1 212 213 1 213 219 1
		 219 218 1 218 212 1 212 215 1 215 214 1 214 213 1 214 216 1 216 298 1 298 297 0 297 214 1
		 217 219 1 219 300 1 300 299 0 299 217 1 218 217 1 217 222 1 222 221 1 221 218 1 220 222 1
		 222 302 1 302 301 0 301 220 1 66 0 1 19 61 1 61 66 1 66 74 1 74 1 1 74 82 1 82 2 1
		 82 90 1 90 3 1 90 98 1 98 4 1 98 106 1 106 5 1 106 114 1 114 6 1 114 125 1 123 132 1
		 132 8 1 132 140 1 140 9 1 140 148 1 148 10 1 148 156 1 156 11 1 156 164 1 164 12 1
		 164 172 1 172 13 1 172 180 1 180 14 1 180 188 1 188 15 1 188 196 1 196 16 1 196 204 1
		 204 17 1 204 212 1 212 18 1 212 61 1 62 42 1 41 67 1 43 75 1 44 83 1 45 91 1 46 99 1
		 47 107 1 48 115 1 50 133 1 51 141 1 52 149 1 53 157 1 54 165 1 55 173 1 56 181 1
		 57 189 1 58 197 1 59 205 1 60 213 1 303 304 0 304 305 0 305 306 0 306 307 0 307 308 0
		 308 309 0 309 310 0 310 311 0 311 312 0 312 313 0 313 314 0 314 315 0 315 316 0 316 317 0
		 317 318 0 318 319 0 319 320 0 320 321 0 321 322 0 322 303 0 323 303 1 323 304 1 323 305 1
		 323 306 1 323 307 1 323 308 1 323 309 1 323 310 1 323 311 1 323 312 1 323 313 1 323 314 1
		 323 315 1 323 316 1 323 317 1 323 318 1 323 319 1 323 320 1 323 321 1 323 322 1 343 324 0
		 324 325 0 325 326 0 326 327 0 327 328 0 328 329 0 329 330 0 330 331 0 331 332 0 332 333 0
		 333 334 0 334 335 0 335 336 0 336 337 0 337 338 0 338 339 0 339 340 0 340 341 0 341 342 0
		 342 343 0 304 357 1 324 379 1 305 356 1 306 355 1 307 354 1 308 353 1 309 352 1 310 351 1
		 311 350 1 312 349 1 313 348 1 314 347 1 315 346 1 316 345 1 317 344 1 318 363 1 319 362 1
		 320 361 1 321 360 1 322 359 1 344 384 1;
	setAttr ".ed[664:782]" 345 385 1 344 345 1 346 386 1 345 346 1 347 387 1 346 347 1
		 348 388 1 347 348 1 349 389 1 348 349 1 350 390 1 349 350 1 351 391 1 350 351 1 352 392 1
		 351 352 1 353 393 1 352 353 1 354 394 1 353 354 1 355 395 1 354 355 1 356 396 1 355 356 1
		 357 397 1 356 357 1 358 303 1 357 358 1 359 399 1 358 359 1 360 400 1 359 360 1 361 401 1
		 360 361 1 362 402 1 361 362 1 363 403 1 362 363 1 363 344 1 364 339 1 365 338 1 364 365 1
		 366 337 1 365 366 1 367 336 1 366 367 1 368 335 1 367 368 1 369 334 1 368 369 1 370 333 1
		 369 370 1 371 332 1 370 371 1 372 331 1 371 372 1 373 330 1 372 373 1 374 329 1 373 374 1
		 375 328 1 374 375 1 376 327 1 375 376 1 377 326 1 376 377 1 378 325 1 377 378 1 379 398 1
		 378 379 1 380 343 1 379 380 1 381 342 1 380 381 1 382 341 1 381 382 1 383 340 1 382 383 1
		 383 364 1 384 365 1 385 366 1 384 385 1 386 367 1 385 386 1 387 368 1 386 387 1 388 369 1
		 387 388 1 389 370 1 388 389 1 390 371 1 389 390 1 391 372 1 390 391 1 392 373 1 391 392 1
		 393 374 1 392 393 1 394 375 1 393 394 1 395 376 1 394 395 1 396 377 1 395 396 1 397 378 1
		 396 397 1 398 358 1 397 398 1 399 380 1 398 399 1 400 381 1 399 400 1 401 382 1 400 401 1
		 402 383 1 401 402 1 403 364 1 402 403 1 403 384 1;
	setAttr -s 381 -ch 1446 ".fc[0:380]" -type "polyFaces" 
		f 3 -23 23 24
		mu 0 3 0 1 2
		f 3 -27 27 -24
		mu 0 3 1 3 2
		f 3 -30 30 -28
		mu 0 3 3 4 2
		f 3 -33 33 -31
		mu 0 3 4 5 2
		f 3 -36 36 -34
		mu 0 3 5 6 2
		f 3 -39 39 -37
		mu 0 3 6 7 2
		f 3 -42 42 -40
		mu 0 3 7 8 2
		f 3 -45 45 -43
		mu 0 3 8 9 2
		f 3 -48 48 -46
		mu 0 3 9 10 2
		f 3 -51 51 -49
		mu 0 3 10 11 2
		f 3 -54 54 -52
		mu 0 3 11 12 2
		f 3 -57 57 -55
		mu 0 3 12 13 2
		f 3 -60 60 -58
		mu 0 3 13 14 2
		f 3 -63 63 -61
		mu 0 3 14 15 2
		f 3 -66 66 -64
		mu 0 3 15 16 2
		f 3 -69 69 -67
		mu 0 3 16 17 2
		f 3 -72 72 -70
		mu 0 3 17 18 2
		f 3 -75 75 -73
		mu 0 3 18 19 2
		f 3 -78 78 -76
		mu 0 3 19 20 2
		f 3 -80 -25 -79
		mu 0 3 20 0 2
		f 4 -2 20 22 -22
		mu 0 4 182 184 1 0
		f 4 -3 25 26 -21
		mu 0 4 184 186 3 1
		f 4 -4 28 29 -26
		mu 0 4 186 188 4 3
		f 4 -5 31 32 -29
		mu 0 4 188 190 5 4
		f 4 -6 34 35 -32
		mu 0 4 190 192 6 5
		f 4 -7 37 38 -35
		mu 0 4 192 195 7 6
		f 4 -8 40 41 -38
		mu 0 4 195 197 8 7
		f 4 -9 43 44 -41
		mu 0 4 197 199 9 8
		f 4 -10 46 47 -44
		mu 0 4 199 201 10 9
		f 4 -11 49 50 -47
		mu 0 4 201 203 11 10
		f 4 -12 52 53 -50
		mu 0 4 203 205 12 11
		f 4 -13 55 56 -53
		mu 0 4 205 207 13 12
		f 4 -14 58 59 -56
		mu 0 4 207 209 14 13
		f 4 -15 61 62 -59
		mu 0 4 209 211 15 14
		f 4 -16 64 65 -62
		mu 0 4 211 213 16 15
		f 4 -17 67 68 -65
		mu 0 4 213 215 17 16
		f 4 -18 70 71 -68
		mu 0 4 215 217 18 17
		f 4 -19 73 74 -71
		mu 0 4 217 219 19 18
		f 4 -20 76 77 -74
		mu 0 4 219 181 20 19
		f 4 -1 21 79 -77
		mu 0 4 181 182 0 20
		f 4 144 145 146 147
		mu 0 4 242 21 23 221
		f 4 -145 148 149 150
		mu 0 4 22 242 178 344
		f 4 151 152 153 154
		mu 0 4 25 23 24 246
		f 4 155 156 157 158
		mu 0 4 221 25 29 28
		f 4 159 160 161 162
		mu 0 4 183 26 31 222
		f 4 -160 163 164 165
		mu 0 4 27 183 28 247
		f 4 166 167 168 169
		mu 0 4 247 29 30 248
		f 4 170 171 172 173
		mu 0 4 33 31 32 251
		f 4 174 175 176 177
		mu 0 4 222 33 37 36
		f 4 178 179 180 181
		mu 0 4 185 34 39 223
		f 4 -179 182 183 184
		mu 0 4 35 185 36 252
		f 4 185 186 187 188
		mu 0 4 252 37 38 253
		f 4 189 190 191 192
		mu 0 4 41 39 40 256
		f 4 193 194 195 196
		mu 0 4 223 41 45 44
		f 4 197 198 199 200
		mu 0 4 187 42 47 224
		f 4 -198 201 202 203
		mu 0 4 43 187 44 257
		f 4 204 205 206 207
		mu 0 4 257 45 46 258
		f 4 208 209 210 211
		mu 0 4 49 47 48 261
		f 4 212 213 214 215
		mu 0 4 224 49 53 52
		f 4 216 217 218 219
		mu 0 4 189 50 55 225
		f 4 -217 220 221 222
		mu 0 4 51 189 52 262
		f 4 223 224 225 226
		mu 0 4 262 53 54 263
		f 4 227 228 229 230
		mu 0 4 57 55 56 266
		f 4 231 232 233 234
		mu 0 4 225 57 61 60
		f 4 235 236 237 238
		mu 0 4 191 58 63 226
		f 4 -236 239 240 241
		mu 0 4 59 191 60 267
		f 4 242 243 244 245
		mu 0 4 267 61 62 268
		f 4 246 247 248 249
		mu 0 4 65 63 64 271
		f 4 250 251 252 253
		mu 0 4 226 65 69 68
		f 4 254 255 256 257
		mu 0 4 193 66 71 228
		f 4 -255 258 259 260
		mu 0 4 67 193 68 272
		f 4 261 262 263 264
		mu 0 4 272 69 70 273
		f 4 265 266 267 268
		mu 0 4 73 71 72 276
		f 4 269 270 271 272
		mu 0 4 228 73 77 76
		f 4 273 274 275 276
		mu 0 4 196 74 79 230
		f 4 -274 277 278 279
		mu 0 4 75 227 76 277
		f 4 280 281 282 283
		mu 0 4 277 77 78 278
		f 4 284 285 286 287
		mu 0 4 81 79 80 283
		f 4 288 289 290 291
		mu 0 4 230 81 85 84
		f 4 292 293 294 295
		mu 0 4 198 82 348 231
		f 4 296 297 298 299
		mu 0 4 83 229 84 284
		f 4 300 301 302 303
		mu 0 4 284 85 86 285
		f 4 304 305 306 307
		mu 0 4 89 87 88 288
		f 4 308 309 310 311
		mu 0 4 231 89 93 92
		f 4 312 313 314 315
		mu 0 4 200 90 95 232
		f 4 -313 316 317 318
		mu 0 4 91 200 92 289
		f 4 319 320 321 322
		mu 0 4 289 93 94 290
		f 4 323 324 325 326
		mu 0 4 97 95 96 293
		f 4 327 328 329 330
		mu 0 4 232 97 101 100
		f 4 331 332 333 334
		mu 0 4 202 98 103 233
		f 4 -332 335 336 337
		mu 0 4 99 202 100 294
		f 4 338 339 340 341
		mu 0 4 294 101 102 295
		f 4 342 343 344 345
		mu 0 4 105 103 104 298
		f 4 346 347 348 349
		mu 0 4 233 105 109 108
		f 4 350 351 352 353
		mu 0 4 204 106 111 234
		f 4 -351 354 355 356
		mu 0 4 107 204 108 299
		f 4 357 358 359 360
		mu 0 4 299 109 110 300
		f 4 361 362 363 364
		mu 0 4 113 111 112 303
		f 4 365 366 367 368
		mu 0 4 234 113 117 116
		f 4 369 370 371 372
		mu 0 4 206 114 119 235
		f 4 -370 373 374 375
		mu 0 4 115 206 116 304
		f 4 376 377 378 379
		mu 0 4 304 117 118 305
		f 4 380 381 382 383
		mu 0 4 121 119 120 308
		f 4 384 385 386 387
		mu 0 4 235 121 125 124
		f 4 388 389 390 391
		mu 0 4 208 122 127 236
		f 4 -389 392 393 394
		mu 0 4 123 208 124 309
		f 4 395 396 397 398
		mu 0 4 309 125 126 310
		f 4 399 400 401 402
		mu 0 4 129 127 128 313
		f 4 403 404 405 406
		mu 0 4 236 129 133 132
		f 4 407 408 409 410
		mu 0 4 210 130 135 237
		f 4 -408 411 412 413
		mu 0 4 131 210 132 314
		f 4 414 415 416 417
		mu 0 4 314 133 134 315
		f 4 418 419 420 421
		mu 0 4 137 135 136 318
		f 4 422 423 424 425
		mu 0 4 237 137 141 140
		f 4 426 427 428 429
		mu 0 4 212 138 143 238
		f 4 -427 430 431 432
		mu 0 4 139 212 140 319
		f 4 433 434 435 436
		mu 0 4 319 141 142 320
		f 4 437 438 439 440
		mu 0 4 145 143 144 323
		f 4 441 442 443 444
		mu 0 4 238 145 149 148
		f 4 445 446 447 448
		mu 0 4 214 146 151 239
		f 4 -446 449 450 451
		mu 0 4 147 214 148 324
		f 4 452 453 454 455
		mu 0 4 324 149 150 325
		f 4 456 457 458 459
		mu 0 4 153 151 152 328
		f 4 460 461 462 463
		mu 0 4 239 153 157 156
		f 4 464 465 466 467
		mu 0 4 216 154 159 240
		f 4 -465 468 469 470
		mu 0 4 155 216 156 329
		f 4 471 472 473 474
		mu 0 4 329 157 158 330
		f 4 475 476 477 478
		mu 0 4 161 159 160 333
		f 4 479 480 481 482
		mu 0 4 240 161 349 164
		f 4 483 484 485 486
		mu 0 4 218 162 167 241
		f 4 -484 487 488 489
		mu 0 4 163 218 164 334
		f 4 490 491 492 493
		mu 0 4 334 165 166 335
		f 4 494 495 496 497
		mu 0 4 169 167 168 338
		f 4 498 499 500 501
		mu 0 4 241 169 173 172
		f 4 502 503 504 505
		mu 0 4 220 170 175 243
		f 4 -503 506 507 508
		mu 0 4 171 220 172 339
		f 4 509 510 511 512
		mu 0 4 339 173 174 340
		f 4 513 514 515 516
		mu 0 4 177 175 176 343
		f 4 517 518 519 520
		mu 0 4 243 177 179 178
		f 4 521 522 523 524
		mu 0 4 344 179 180 345
		f 4 525 0 526 527
		mu 0 4 183 182 181 242
		f 4 -526 528 529 1
		mu 0 4 182 183 185 184
		f 4 -530 530 531 2
		mu 0 4 184 185 187 186
		f 4 -532 532 533 3
		mu 0 4 186 187 189 188
		f 4 -534 534 535 4
		mu 0 4 188 189 191 190
		f 4 -536 536 537 5
		mu 0 4 190 191 193 192
		f 4 -538 538 539 6
		mu 0 4 192 193 194 195
		f 5 -540 540 123 121 7
		mu 0 5 195 196 229 347 197
		f 5 -122 122 541 542 8
		mu 0 5 197 347 198 200 199
		f 4 -543 543 544 9
		mu 0 4 199 200 202 201
		f 4 -545 545 546 10
		mu 0 4 201 202 204 203
		f 4 -547 547 548 11
		mu 0 4 203 204 206 205
		f 4 -549 549 550 12
		mu 0 4 205 206 208 207
		f 4 -551 551 552 13
		mu 0 4 207 208 210 209
		f 4 -553 553 554 14
		mu 0 4 209 210 212 211
		f 4 -555 555 556 15
		mu 0 4 211 212 214 213
		f 4 -557 557 558 16
		mu 0 4 213 214 216 215
		f 4 -559 559 560 17
		mu 0 4 215 216 218 217
		f 4 -561 561 562 18
		mu 0 4 217 218 220 219
		f 4 -563 563 -527 19
		mu 0 4 219 220 242 181
		f 4 -528 -148 -159 -164
		mu 0 4 183 242 221 28
		f 4 -529 -163 -178 -183
		mu 0 4 185 183 222 36
		f 4 -531 -182 -197 -202
		mu 0 4 187 185 223 44
		f 4 -533 -201 -216 -221
		mu 0 4 189 187 224 52
		f 4 -535 -220 -235 -240
		mu 0 4 191 189 225 60
		f 4 -537 -239 -254 -259
		mu 0 4 193 191 226 68
		f 4 -539 -258 -273 -278
		mu 0 4 227 193 228 76
		f 4 -298 -541 -277 -292
		mu 0 4 84 229 196 230
		f 4 -542 -296 -312 -317
		mu 0 4 200 198 231 92
		f 4 -544 -316 -331 -336
		mu 0 4 202 200 232 100
		f 4 -546 -335 -350 -355
		mu 0 4 204 202 233 108
		f 4 -548 -354 -369 -374
		mu 0 4 206 204 234 116
		f 4 -550 -373 -388 -393
		mu 0 4 208 206 235 124
		f 4 -552 -392 -407 -412
		mu 0 4 210 208 236 132
		f 4 -554 -411 -426 -431
		mu 0 4 212 210 237 140
		f 4 -556 -430 -445 -450
		mu 0 4 214 212 238 148
		f 4 -558 -449 -464 -469
		mu 0 4 216 214 239 156
		f 4 -560 -468 -483 -488
		mu 0 4 218 216 240 164
		f 4 -562 -487 -502 -507
		mu 0 4 220 218 241 172
		f 4 -564 -506 -521 -149
		mu 0 4 242 220 243 178
		f 4 564 80 -153 -146
		mu 0 4 244 245 24 23
		f 4 -155 124 -168 -157
		mu 0 4 25 246 30 29
		f 4 -170 -82 565 -166
		mu 0 4 247 248 250 249
		f 4 -566 82 -172 -161
		mu 0 4 249 250 32 31
		f 4 -174 125 -187 -176
		mu 0 4 33 251 38 37
		f 4 -189 -84 566 -185
		mu 0 4 252 253 255 254
		f 4 -567 84 -191 -180
		mu 0 4 254 255 40 39
		f 4 -193 126 -206 -195
		mu 0 4 41 256 46 45
		f 4 -208 -86 567 -204
		mu 0 4 257 258 260 259
		f 4 -568 86 -210 -199
		mu 0 4 259 260 48 47
		f 4 -212 127 -225 -214
		mu 0 4 49 261 54 53
		f 4 -227 -88 568 -223
		mu 0 4 262 263 265 264
		f 4 -569 88 -229 -218
		mu 0 4 264 265 56 55
		f 4 -231 128 -244 -233
		mu 0 4 57 266 62 61
		f 4 -246 -90 569 -242
		mu 0 4 267 268 270 269
		f 4 -570 90 -248 -237
		mu 0 4 269 270 64 63
		f 4 -250 129 -263 -252
		mu 0 4 65 271 70 69
		f 4 -265 -92 570 -261
		mu 0 4 272 273 275 274
		f 4 -571 92 -267 -256
		mu 0 4 274 275 72 71
		f 4 -269 130 -282 -271
		mu 0 4 73 276 78 77
		f 4 -284 -94 571 -280
		mu 0 4 277 278 279 280
		f 4 -572 94 -286 -275
		mu 0 4 281 282 80 79
		f 4 -288 131 -302 -290
		mu 0 4 81 283 86 85
		f 4 -304 -96 -121 -300
		mu 0 4 284 285 287 286
		f 4 -294 120 96 -306
		mu 0 4 87 286 287 88
		f 4 -308 132 -321 -310
		mu 0 4 89 288 94 93
		f 4 -323 -98 572 -319
		mu 0 4 289 290 292 291
		f 4 -573 98 -325 -314
		mu 0 4 291 292 96 95
		f 4 -327 133 -340 -329
		mu 0 4 97 293 102 101
		f 4 -342 -100 573 -338
		mu 0 4 294 295 297 296
		f 4 -574 100 -344 -333
		mu 0 4 296 297 104 103
		f 4 -346 134 -359 -348
		mu 0 4 105 298 110 109
		f 4 -361 -102 574 -357
		mu 0 4 299 300 302 301
		f 4 -575 102 -363 -352
		mu 0 4 301 302 112 111
		f 4 -365 135 -378 -367
		mu 0 4 113 303 118 117
		f 4 -380 -104 575 -376
		mu 0 4 304 305 307 306
		f 4 -576 104 -382 -371
		mu 0 4 306 307 120 119
		f 4 -384 136 -397 -386
		mu 0 4 121 308 126 125
		f 4 -399 -106 576 -395
		mu 0 4 309 310 312 311
		f 4 -577 106 -401 -390
		mu 0 4 311 312 128 127
		f 4 -403 137 -416 -405
		mu 0 4 129 313 134 133
		f 4 -418 -108 577 -414
		mu 0 4 314 315 317 316
		f 4 -578 108 -420 -409
		mu 0 4 316 317 136 135
		f 4 -422 138 -435 -424
		mu 0 4 137 318 142 141
		f 4 -437 -110 578 -433
		mu 0 4 319 320 322 321
		f 4 -579 110 -439 -428
		mu 0 4 321 322 144 143
		f 4 -441 139 -454 -443
		mu 0 4 145 323 150 149
		f 4 -456 -112 579 -452
		mu 0 4 324 325 327 326
		f 4 -580 112 -458 -447
		mu 0 4 326 327 152 151
		f 4 -460 140 -473 -462
		mu 0 4 153 328 158 157
		f 4 -475 -114 580 -471
		mu 0 4 329 330 332 331
		f 4 -581 114 -477 -466
		mu 0 4 331 332 160 159
		f 4 -479 141 -492 -481
		mu 0 4 161 333 166 165
		f 4 -494 -116 581 -490
		mu 0 4 334 335 337 336
		f 4 -582 116 -496 -485
		mu 0 4 336 337 168 167
		f 4 -498 142 -511 -500
		mu 0 4 169 338 174 173
		f 4 -513 -118 582 -509
		mu 0 4 339 340 342 341
		f 4 -583 118 -515 -504
		mu 0 4 341 342 176 175
		f 4 -517 143 -523 -519
		mu 0 4 177 343 180 179
		f 4 -525 -120 -565 -151
		mu 0 4 344 345 245 244
		f 3 -156 -147 -152
		mu 0 3 25 221 23
		f 3 -165 -158 -167
		mu 0 3 247 28 29
		f 3 -175 -162 -171
		mu 0 3 33 222 31
		f 3 -184 -177 -186
		mu 0 3 252 36 37
		f 3 -194 -181 -190
		mu 0 3 41 223 39
		f 3 -203 -196 -205
		mu 0 3 257 44 45
		f 3 -213 -200 -209
		mu 0 3 49 224 47
		f 3 -222 -215 -224
		mu 0 3 262 52 53
		f 3 -232 -219 -228
		mu 0 3 57 225 55
		f 3 -241 -234 -243
		mu 0 3 267 60 61
		f 3 -251 -238 -247
		mu 0 3 65 226 63
		f 3 -260 -253 -262
		mu 0 3 272 68 69
		f 3 -270 -257 -266
		mu 0 3 73 228 71
		f 3 -279 -272 -281
		mu 0 3 277 76 77
		f 3 -289 -276 -285
		mu 0 3 81 230 79
		f 4 -293 -123 -124 -297
		mu 0 4 346 198 347 229
		f 3 -299 -291 -301
		mu 0 3 284 84 85
		f 3 -309 -295 -305
		mu 0 3 89 231 348
		f 3 -318 -311 -320
		mu 0 3 289 92 93
		f 3 -328 -315 -324
		mu 0 3 97 232 95
		f 3 -337 -330 -339
		mu 0 3 294 100 101
		f 3 -347 -334 -343
		mu 0 3 105 233 103
		f 3 -356 -349 -358
		mu 0 3 299 108 109
		f 3 -366 -353 -362
		mu 0 3 113 234 111
		f 3 -375 -368 -377
		mu 0 3 304 116 117
		f 3 -385 -372 -381
		mu 0 3 121 235 119
		f 3 -394 -387 -396
		mu 0 3 309 124 125
		f 3 -404 -391 -400
		mu 0 3 129 236 127
		f 3 -413 -406 -415
		mu 0 3 314 132 133
		f 3 -423 -410 -419
		mu 0 3 137 237 135
		f 3 -432 -425 -434
		mu 0 3 319 140 141
		f 3 -442 -429 -438
		mu 0 3 145 238 143
		f 3 -451 -444 -453
		mu 0 3 324 148 149
		f 3 -461 -448 -457
		mu 0 3 153 239 151
		f 3 -470 -463 -472
		mu 0 3 329 156 157
		f 3 -480 -467 -476
		mu 0 3 161 240 159
		f 3 -489 -482 -491
		mu 0 3 334 164 349
		f 3 -499 -486 -495
		mu 0 3 169 241 167
		f 3 -508 -501 -510
		mu 0 3 339 172 173
		f 3 -518 -505 -514
		mu 0 3 177 243 175
		f 3 -150 -520 -522
		mu 0 3 344 178 179
		f 3 -584 -604 604
		mu 0 3 350 351 352
		f 3 -585 -605 605
		mu 0 3 353 350 352
		f 3 -586 -606 606
		mu 0 3 354 353 352
		f 3 -587 -607 607
		mu 0 3 355 354 352
		f 3 -588 -608 608
		mu 0 3 356 355 352
		f 3 -589 -609 609
		mu 0 3 357 356 352
		f 3 -590 -610 610
		mu 0 3 358 357 352
		f 3 -591 -611 611
		mu 0 3 359 358 352
		f 3 -592 -612 612
		mu 0 3 360 359 352
		f 3 -593 -613 613
		mu 0 3 361 360 352
		f 3 -594 -614 614
		mu 0 3 362 361 352
		f 3 -595 -615 615
		mu 0 3 363 362 352
		f 3 -596 -616 616
		mu 0 3 364 363 352
		f 3 -597 -617 617
		mu 0 3 365 364 352
		f 3 -598 -618 618
		mu 0 3 366 365 352
		f 3 -599 -619 619
		mu 0 3 367 366 352
		f 3 -600 -620 620
		mu 0 3 368 367 352
		f 3 -601 -621 621
		mu 0 3 369 368 352
		f 3 -602 -622 622
		mu 0 3 370 369 352
		f 3 -603 -623 603
		mu 0 3 351 370 352
		f 4 583 643 691 690
		mu 0 4 371 372 373 374
		f 4 584 645 689 -644
		mu 0 4 372 375 376 373
		f 4 585 646 687 -646
		mu 0 4 375 377 378 376
		f 4 586 647 685 -647
		mu 0 4 377 379 380 378
		f 4 587 648 683 -648
		mu 0 4 379 381 382 380
		f 4 588 649 681 -649
		mu 0 4 381 383 384 382
		f 4 589 650 679 -650
		mu 0 4 383 385 386 384
		f 4 590 651 677 -651
		mu 0 4 385 387 388 386
		f 4 591 652 675 -652
		mu 0 4 387 389 390 388
		f 4 592 653 673 -653
		mu 0 4 389 391 392 390
		f 4 593 654 671 -654
		mu 0 4 391 393 394 392
		f 4 594 655 669 -655
		mu 0 4 393 395 396 394
		f 4 595 656 667 -656
		mu 0 4 395 397 398 396
		f 4 596 657 665 -657
		mu 0 4 397 399 400 398
		f 4 597 658 702 -658
		mu 0 4 399 401 402 400
		f 4 598 659 701 -659
		mu 0 4 401 403 404 402
		f 4 599 660 699 -660
		mu 0 4 403 405 406 404
		f 4 600 661 697 -661
		mu 0 4 405 407 408 406
		f 4 601 662 695 -662
		mu 0 4 407 409 410 408
		f 4 602 -691 693 -663
		mu 0 4 409 411 412 410
		f 4 -666 663 745 -665
		mu 0 4 413 414 415 416
		f 4 -668 664 747 -667
		mu 0 4 417 413 416 418
		f 4 -670 666 749 -669
		mu 0 4 419 417 418 420
		f 4 -672 668 751 -671
		mu 0 4 421 419 420 422
		f 4 -674 670 753 -673
		mu 0 4 423 421 422 424
		f 4 -676 672 755 -675
		mu 0 4 425 423 424 426
		f 4 -678 674 757 -677
		mu 0 4 427 425 426 428
		f 4 -680 676 759 -679
		mu 0 4 429 427 428 430
		f 4 -682 678 761 -681
		mu 0 4 431 429 430 432
		f 4 -684 680 763 -683
		mu 0 4 433 431 432 434
		f 4 -686 682 765 -685
		mu 0 4 435 433 434 436
		f 4 -688 684 767 -687
		mu 0 4 437 435 436 438
		f 4 -690 686 769 -689
		mu 0 4 439 437 438 440
		f 4 -692 688 771 770
		mu 0 4 441 439 440 442
		f 4 -694 -771 773 -693
		mu 0 4 443 444 445 446
		f 4 -696 692 775 -695
		mu 0 4 447 443 446 448
		f 4 -698 694 777 -697
		mu 0 4 449 447 448 450
		f 4 -700 696 779 -699
		mu 0 4 451 449 450 452
		f 4 -702 698 781 -701
		mu 0 4 453 451 452 454
		f 4 -703 700 782 -664
		mu 0 4 414 453 454 415
		f 4 -706 703 -639 -705
		mu 0 4 455 456 457 458
		f 4 -708 704 -638 -707
		mu 0 4 459 455 458 460
		f 4 -710 706 -637 -709
		mu 0 4 461 459 460 462
		f 4 -712 708 -636 -711
		mu 0 4 463 461 462 464
		f 4 -714 710 -635 -713
		mu 0 4 465 463 464 466
		f 4 -716 712 -634 -715
		mu 0 4 467 465 466 468
		f 4 -718 714 -633 -717
		mu 0 4 469 467 468 470
		f 4 -720 716 -632 -719
		mu 0 4 471 469 470 472
		f 4 -722 718 -631 -721
		mu 0 4 473 471 472 474
		f 4 -724 720 -630 -723
		mu 0 4 475 473 474 476
		f 4 -726 722 -629 -725
		mu 0 4 477 475 476 478
		f 4 -728 724 -628 -727
		mu 0 4 479 477 478 480
		f 4 -730 726 -627 -729
		mu 0 4 481 479 480 482
		f 4 -732 728 -626 -731
		mu 0 4 483 481 482 484
		f 4 -734 730 -625 644
		mu 0 4 485 483 484 486
		f 4 -736 -645 -624 -735
		mu 0 4 487 488 489 490
		f 4 -738 734 -643 -737
		mu 0 4 491 487 490 492
		f 4 -740 736 -642 -739
		mu 0 4 493 491 492 494
		f 4 -742 738 -641 -741
		mu 0 4 495 493 494 496
		f 4 -743 740 -640 -704
		mu 0 4 456 495 496 457
		f 4 -746 743 707 -745
		mu 0 4 497 498 499 500
		f 4 -748 744 709 -747
		mu 0 4 501 497 500 502
		f 4 -750 746 711 -749
		mu 0 4 503 501 502 504
		f 4 -752 748 713 -751
		mu 0 4 505 503 504 506
		f 4 -754 750 715 -753
		mu 0 4 507 505 506 508
		f 4 -756 752 717 -755
		mu 0 4 509 507 508 510
		f 4 -758 754 719 -757
		mu 0 4 511 509 510 512
		f 4 -760 756 721 -759
		mu 0 4 513 511 512 514
		f 4 -762 758 723 -761
		mu 0 4 515 513 514 516
		f 4 -764 760 725 -763
		mu 0 4 517 515 516 518
		f 4 -766 762 727 -765
		mu 0 4 519 517 518 520
		f 4 -768 764 729 -767
		mu 0 4 521 519 520 522
		f 4 -770 766 731 -769
		mu 0 4 523 521 522 524
		f 4 -772 768 733 732
		mu 0 4 525 523 524 526
		f 4 -774 -733 735 -773
		mu 0 4 527 528 529 530
		f 4 -776 772 737 -775
		mu 0 4 531 527 530 532
		f 4 -778 774 739 -777
		mu 0 4 533 531 532 534
		f 4 -780 776 741 -779
		mu 0 4 535 533 534 536
		f 4 -782 778 742 -781
		mu 0 4 537 535 536 538
		f 4 -783 780 705 -744
		mu 0 4 498 537 538 499;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode lightLinker -s -n "lightLinker1";
	rename -uid "E5BD1A15-4AB6-01BB-1204-74820BBED845";
	setAttr -s 3 ".lnk";
	setAttr -s 3 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "EBA7893C-4F16-34AC-7378-A1AA85BE11B6";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "588B8B2B-4B2F-5917-F5B8-67A9D366D9D0";
createNode displayLayerManager -n "layerManager";
	rename -uid "8D2C8DFF-478A-8896-10C5-3893F890DC37";
	setAttr -s 2 ".dli[1]"  1;
	setAttr -s 2 ".dli";
createNode displayLayer -n "defaultLayer";
	rename -uid "BB51DB53-4D9F-CE95-F3D3-5E87F2F0624E";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "E6473594-4E93-6D25-67BF-C7A845E14CE4";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "27138B91-4829-CD53-4278-B582110C4008";
	setAttr ".g" yes;
createNode displayLayer -n "layer1";
	rename -uid "22E2F78D-4E78-C614-F2D6-50A47152C916";
	setAttr ".do" 1;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "5B5E76E3-4567-49E8-301A-FA86AE26AF08";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 621\n            -height 346\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n"
		+ "            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n"
		+ "            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 621\n            -height 346\n"
		+ "            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n"
		+ "            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n"
		+ "            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n"
		+ "            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 621\n            -height 346\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n"
		+ "            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n"
		+ "            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n"
		+ "            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1253\n            -height 740\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n"
		+ "            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n"
		+ "            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n"
		+ "            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n"
		+ "            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n"
		+ "                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 1\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n"
		+ "                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 1\n                -autoFitTime 0\n                -snapTime \"integer\" \n"
		+ "                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -showCurveNames 0\n                -showActiveCurveNames 0\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                -valueLinesToggle 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 1\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n"
		+ "                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n"
		+ "                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -autoFitTime 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -autoFitTime 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -autoFitTime 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n"
		+ "                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif ($nodeEditorPanelVisible || $nodeEditorWorkspaceControlOpen) {\n"
		+ "\t\tif (\"\" == $panelName) {\n\t\t\tif ($useSceneConfig) {\n\t\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n"
		+ "                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\t}\n\t\t} else {\n\t\t\t$label = `panel -q -label $panelName`;\n\t\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n"
		+ "                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\tif (!$useSceneConfig) {\n\t\t\t\tpanel -e -l $label $panelName;\n\t\t\t}\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1253\\n    -height 740\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1253\\n    -height 740\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 10 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "B52ACEF8-476F-7390-EB55-51B3691F4DE5";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode lambert -n "cake";
	rename -uid "D5A5247C-4B5A-1A76-2192-5280496E0662";
createNode shadingEngine -n "lambert2SG";
	rename -uid "649AC802-4A8A-C12F-AA1D-24B256C9B92D";
	setAttr ".ihi" 0;
	setAttr -s 4 ".dsm";
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo1";
	rename -uid "B7A1A56E-47D5-7BC3-4C85-6E83FB50A1AA";
createNode nodeGraphEditorInfo -n "hyperShadePrimaryNodeEditorSavedTabsInfo";
	rename -uid "F138B219-40D4-C6D5-EF42-6F8E17809B95";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -363.09522366713026 -330.95236780151544 ;
	setAttr ".tgi[0].vh" -type "double2" 285.7142743610205 330.95236780151544 ;
	setAttr -s 2 ".tgi[0].ni";
	setAttr ".tgi[0].ni[0].x" -258.80950927734375;
	setAttr ".tgi[0].ni[0].y" 153.57142639160156;
	setAttr ".tgi[0].ni[0].nvs" 1923;
	setAttr ".tgi[0].ni[1].x" 54.285713195800781;
	setAttr ".tgi[0].ni[1].y" 150;
	setAttr ".tgi[0].ni[1].nvs" 1923;
createNode file -n "file1";
	rename -uid "1DD72BFB-4E9B-9053-919E-04B65DCAF8ED";
	setAttr ".ftn" -type "string" "E:/GIT//Personal-Projects/Unity Projects/Cake/Model/Texture.png";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture1";
	rename -uid "025CA7AD-4342-7710-7301-139FA27893DE";
createNode polyDelEdge -n "polyDelEdge1";
	rename -uid "2BC76360-4730-08CE-9222-31AE05744CD9";
	setAttr ".ics" -type "componentList" 112 "e[294]" "e[301]" "e[306]" "e[311]" "e[316]" "e[321]" "e[326]" "e[331]" "e[336]" "e[341]" "e[346]" "e[351]" "e[356]" "e[361]" "e[366]" "e[371]" "e[376]" "e[381]" "e[386]" "e[391]" "e[396]" "e[401]" "e[406]" "e[411]" "e[416]" "e[423]" "e[428]" "e[433]" "e[438]" "e[443]" "e[448]" "e[453]" "e[458]" "e[463]" "e[468]" "e[473]" "e[478]" "e[483]" "e[488]" "e[493]" "e[498]" "e[503]" "e[508]" "e[513]" "e[518]" "e[523]" "e[528]" "e[533]" "e[538]" "e[545]" "e[550]" "e[555]" "e[560]" "e[565]" "e[570]" "e[575]" "e[580]" "e[585]" "e[590]" "e[595]" "e[600]" "e[605]" "e[610]" "e[615]" "e[620]" "e[625]" "e[630]" "e[635]" "e[640]" "e[645]" "e[650]" "e[655]" "e[660]" "e[667]" "e[672]" "e[677]" "e[682]" "e[687]" "e[692]" "e[697]" "e[702]" "e[707]" "e[712]" "e[717]" "e[722]" "e[727]" "e[732]" "e[737]" "e[742]" "e[747]" "e[752]" "e[757]" "e[762]" "e[767]" "e[772]" "e[777]" "e[781]" "e[809]" "e[837]" "e[865]" "e[893]" "e[921]" "e[949]" "e[977]" "e[1006]" "e[1012]" "e[1018]" "e[1024]" "e[1030]" "e[1036]" "e[1042]" "e[1048]";
	setAttr ".cv" yes;
createNode polyPlanarProj -n "polyPlanarProj1";
	rename -uid "429533E5-4165-1BCA-DD39-09B8ADCB40D7";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[408:468]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0.71229573529559476 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -0.0038581946864724159 2.8162961006164551 -0.0046463171020150185 ;
	setAttr ".ro" -type "double3" 0 90 0 ;
	setAttr ".ps" -type "double2" 0.033295692875981331 0.17199993133544922 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyTweakUV -n "polyTweakUV1";
	rename -uid "F2C651B5-4838-7D0E-241A-8D9D7E888D50";
	setAttr ".uopa" yes;
	setAttr -s 72 ".uvtk[0:71]" -type "float2" 0.25580096 -0.0018239988
		 0.43482161 -0.0018239988 0.56587398 -0.0018239988 0.61384237 -0.0018239988 0.56587398
		 -0.0018239988 0.43482196 -0.0018239988 0.25580078 -0.0018239988 0.076780215 -0.0018239988
		 -0.054271623 -0.0018239988 -0.10224025 -0.0018239988 -0.0542721 -0.0018239988 0.076780692
		 -0.0018239988 0.25580096 0.84557402 0.045717016 0.68689537 -0.13204269 0.68997765
		 0.076780692 0.84557402 -0.26289409 0.69046897 -0.0542721 0.84557402 -0.31177408 0.68824005
		 -0.10224025 0.84557402 -0.26558602 0.68388742 -0.054271623 0.84557402 -0.13670646
		 0.67857641 0.076780215 0.84557402 0.040332273 0.67373073 0.25580078 0.84557402 0.21809296
		 0.67065001 0.43482196 0.84557402 0.34894365 0.67015868 0.56587398 0.84557402 0.39782375
		 0.67238593 0.61384237 0.84557402 0.35163593 0.67674023 0.56587398 0.84557402 0.22275586
		 0.68204975 0.43482161 0.84557402 -0.021434888 0.50987029 -0.20043509 0.51026148 -0.33148456
		 0.51032448 -0.37946737 0.51004159 -0.33152717 0.50948727 -0.20051025 0.50881326 -0.021521434
		 0.50819588 0.15747957 0.50780475 0.28852832 0.5077433 0.33651137 0.50802612 0.28857154
		 0.50857896 0.15755402 0.50925446 0.0081687719 0.33428052 -0.17060111 0.33290181 -0.30161375
		 0.33268198 -0.34976327 0.33367923 -0.30214852 0.33562526 -0.17152838 0.33800122 0.007098332
		 0.34016696 0.18586902 0.34154561 0.31688106 0.34176549 0.36503065 0.34076825 0.31741607
		 0.33882234 0.18679546 0.33644626 0.10538705 0.16064003 -0.072634324 0.15789393 -0.20352738
		 0.15745583 -0.25221807 0.15944067 -0.20566069 0.16331986 -0.076330647 0.16805223
		 0.10111915 0.17236772 0.27914125 0.17511538 0.41003358 0.17555347 0.45872462 0.17356709
		 0.41216743 0.1696879 0.28283685 0.16495708;
createNode polyPlanarProj -n "polyPlanarProj2";
	rename -uid "7C159C87-43E1-4F5D-69B5-09BB183AC374";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[96:391]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0.71229573529559476 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" 0 1.7122958600521088 0 ;
	setAttr ".ro" -type "double3" 0 90 0 ;
	setAttr ".ps" -type "double2" 0.21601460874080658 2.0000002980232239 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyTweakUV -n "polyTweakUV2";
	rename -uid "2C439AAB-4651-10C6-4952-C7BD7742E7EF";
	setAttr ".uopa" yes;
	setAttr -s 401 ".uvtk";
	setAttr ".uvtk[72]" -type "float2" -0.11200292 0.87035525 ;
	setAttr ".uvtk[73]" -type "float2" -0.16788231 0.83728033 ;
	setAttr ".uvtk[74]" -type "float2" 0.19411644 0.83869743 ;
	setAttr ".uvtk[75]" -type "float2" 0.22798577 0.87036204 ;
	setAttr ".uvtk[76]" -type "float2" -0.23094806 0.80047286 ;
	setAttr ".uvtk[77]" -type "float2" 0.1436865 0.80191189 ;
	setAttr ".uvtk[78]" -type "float2" -0.29175478 0.76368189 ;
	setAttr ".uvtk[79]" -type "float2" 0.0888035 0.76510978 ;
	setAttr ".uvtk[80]" -type "float2" -0.34934103 0.72689092 ;
	setAttr ".uvtk[81]" -type "float2" 0.030494103 0.7283076 ;
	setAttr ".uvtk[82]" -type "float2" -0.4027819 0.69010001 ;
	setAttr ".uvtk[83]" -type "float2" -0.03016863 0.69150555 ;
	setAttr ".uvtk[84]" -type "float2" -0.45123854 0.65330911 ;
	setAttr ".uvtk[85]" -type "float2" -0.092086479 0.65470344 ;
	setAttr ".uvtk[86]" -type "float2" -0.49397129 0.61651814 ;
	setAttr ".uvtk[87]" -type "float2" -0.15415592 0.61790127 ;
	setAttr ".uvtk[88]" -type "float2" -0.53035134 0.57972711 ;
	setAttr ".uvtk[89]" -type "float2" -0.21528837 0.58109921 ;
	setAttr ".uvtk[90]" -type "float2" -0.55986881 0.54293621 ;
	setAttr ".uvtk[91]" -type "float2" -0.27442837 0.5442971 ;
	setAttr ".uvtk[92]" -type "float2" -0.5821408 0.50614536 ;
	setAttr ".uvtk[93]" -type "float2" -0.33057314 0.50749499 ;
	setAttr ".uvtk[94]" -type "float2" -0.59691435 0.46935442 ;
	setAttr ".uvtk[95]" -type "float2" -0.3827875 0.47069284 ;
	setAttr ".uvtk[96]" -type "float2" -0.60407007 0.43256363 ;
	setAttr ".uvtk[97]" -type "float2" -0.43022197 0.43389073 ;
	setAttr ".uvtk[98]" -type "float2" -0.60362041 0.39577267 ;
	setAttr ".uvtk[99]" -type "float2" -0.47212446 0.39708862 ;
	setAttr ".uvtk[100]" -type "float2" -0.59570885 0.35898158 ;
	setAttr ".uvtk[101]" -type "float2" -0.50785339 0.36028644 ;
	setAttr ".uvtk[102]" -type "float2" -0.58060354 0.32219073 ;
	setAttr ".uvtk[103]" -type "float2" -0.53688669 0.32348427 ;
	setAttr ".uvtk[104]" -type "float2" -0.55869132 0.28539988 ;
	setAttr ".uvtk[105]" -type "float2" -0.55882907 0.2866821 ;
	setAttr ".uvtk[106]" -type "float2" -0.53046858 0.24860904 ;
	setAttr ".uvtk[107]" -type "float2" -0.5734182 0.24988005 ;
	setAttr ".uvtk[108]" -type "float2" -0.49653083 0.21181807 ;
	setAttr ".uvtk[109]" -type "float2" -0.58052599 0.21307787 ;
	setAttr ".uvtk[110]" -type "float2" -0.45756066 0.1750271 ;
	setAttr ".uvtk[111]" -type "float2" -0.58015907 0.1762757 ;
	setAttr ".uvtk[112]" -type "float2" -0.41431403 0.13823625 ;
	setAttr ".uvtk[113]" -type "float2" -0.57245684 0.13947353 ;
	setAttr ".uvtk[114]" -type "float2" -0.3676061 0.10144526 ;
	setAttr ".uvtk[115]" -type "float2" -0.55768669 0.10267133 ;
	setAttr ".uvtk[116]" -type "float2" -0.31829587 0.064654417 ;
	setAttr ".uvtk[117]" -type "float2" -0.53623664 0.065869272 ;
	setAttr ".uvtk[118]" -type "float2" -0.26731774 0.02788013 ;
	setAttr ".uvtk[119]" -type "float2" -0.50869846 0.02905017 ;
	setAttr ".uvtk[120]" -type "float2" -0.22365168 -0.0039259847 ;
	setAttr ".uvtk[121]" -type "float2" -0.48351067 -0.0039303955 ;
	setAttr ".uvtk[122]" -type "float2" 0.33723319 0.87035525 ;
	setAttr ".uvtk[123]" -type "float2" 0.33201119 0.83728033 ;
	setAttr ".uvtk[124]" -type "float2" 0.18217364 0.83869743 ;
	setAttr ".uvtk[125]" -type "float2" 0.14001706 0.87036204 ;
	setAttr ".uvtk[126]" -type "float2" 0.32277215 0.80047286 ;
	setAttr ".uvtk[127]" -type "float2" 0.22254452 0.80191189 ;
	setAttr ".uvtk[128]" -type "float2" 0.30565107 0.76368189 ;
	setAttr ".uvtk[129]" -type "float2" 0.25570023 0.76510978 ;
	setAttr ".uvtk[130]" -type "float2" 0.28097054 0.72689092 ;
	setAttr ".uvtk[131]" -type "float2" 0.28111884 0.7283076 ;
	setAttr ".uvtk[132]" -type "float2" 0.24927399 0.69010001 ;
	setAttr ".uvtk[133]" -type "float2" 0.29847813 0.69150555 ;
	setAttr ".uvtk[134]" -type "float2" 0.2112166 0.65330911 ;
	setAttr ".uvtk[135]" -type "float2" 0.30760285 0.65470344 ;
	setAttr ".uvtk[136]" -type "float2" 0.16755125 0.61651814 ;
	setAttr ".uvtk[137]" -type "float2" 0.30846497 0.61790127 ;
	setAttr ".uvtk[138]" -type "float2" 0.11911413 0.57972711 ;
	setAttr ".uvtk[139]" -type "float2" 0.30118302 0.58109921 ;
	setAttr ".uvtk[140]" -type "float2" 0.066809446 0.54293621 ;
	setAttr ".uvtk[141]" -type "float2" 0.28601688 0.5442971 ;
	setAttr ".uvtk[142]" -type "float2" 0.011591492 0.50614536 ;
	setAttr ".uvtk[143]" -type "float2" 0.26336157 0.50749499 ;
	setAttr ".uvtk[144]" -type "float2" -0.045551147 0.46935442 ;
	setAttr ".uvtk[145]" -type "float2" 0.2337379 0.47069284 ;
	setAttr ".uvtk[146]" -type "float2" -0.10361473 0.43256363 ;
	setAttr ".uvtk[147]" -type "float2" 0.19778112 0.43389073 ;
	setAttr ".uvtk[148]" -type "float2" -0.16159724 0.39577267 ;
	setAttr ".uvtk[149]" -type "float2" 0.15622857 0.39708862 ;
	setAttr ".uvtk[150]" -type "float2" -0.21851578 0.35898158 ;
	setAttr ".uvtk[151]" -type "float2" 0.10990414 0.36028644 ;
	setAttr ".uvtk[152]" -type "float2" -0.27342305 0.32219073 ;
	setAttr ".uvtk[153]" -type "float2" 0.059702542 0.32348427 ;
	setAttr ".uvtk[154]" -type "float2" -0.3254233 0.28539988 ;
	setAttr ".uvtk[155]" -type "float2" 0.0065726317 0.2866821 ;
	setAttr ".uvtk[156]" -type "float2" -0.37368712 0.24860904 ;
	setAttr ".uvtk[157]" -type "float2" -0.0485011 0.24988005 ;
	setAttr ".uvtk[158]" -type "float2" -0.41746402 0.21181807 ;
	setAttr ".uvtk[159]" -type "float2" -0.10451595 0.21307787 ;
	setAttr ".uvtk[160]" -type "float2" -0.45609489 0.1750271 ;
	setAttr ".uvtk[161]" -type "float2" -0.16046949 0.1762757 ;
	setAttr ".uvtk[162]" -type "float2" -0.48902076 0.13823625 ;
	setAttr ".uvtk[163]" -type "float2" -0.21537802 0.13947353 ;
	setAttr ".uvtk[164]" -type "float2" -0.51579118 0.10144526 ;
	setAttr ".uvtk[165]" -type "float2" -0.26829264 0.10267133 ;
	setAttr ".uvtk[166]" -type "float2" -0.53606951 0.064654417 ;
	setAttr ".uvtk[167]" -type "float2" -0.31831637 0.065869272 ;
	setAttr ".uvtk[168]" -type "float2" -0.54967988 0.02788013 ;
	setAttr ".uvtk[169]" -type "float2" -0.36471167 0.02905017 ;
	setAttr ".uvtk[170]" -type "float2" -0.55094051 -0.0039259847 ;
	setAttr ".uvtk[171]" -type "float2" -0.40266255 -0.0039303955 ;
	setAttr ".uvtk[172]" -type "float2" -0.20695278 0.87035525 ;
	setAttr ".uvtk[173]" -type "float2" -0.15107332 0.83728033 ;
	setAttr ".uvtk[174]" -type "float2" -0.51307207 0.83869743 ;
	setAttr ".uvtk[175]" -type "float2" -0.54694128 0.87036204 ;
	setAttr ".uvtk[176]" -type "float2" -0.088007614 0.80047286 ;
	setAttr ".uvtk[177]" -type "float2" -0.46264216 0.80191189 ;
	setAttr ".uvtk[178]" -type "float2" -0.027200915 0.76368189 ;
	setAttr ".uvtk[179]" -type "float2" -0.40775919 0.76510978 ;
	setAttr ".uvtk[180]" -type "float2" 0.030385384 0.72689092 ;
	setAttr ".uvtk[181]" -type "float2" -0.34944975 0.7283076 ;
	setAttr ".uvtk[182]" -type "float2" 0.083826274 0.69010001 ;
	setAttr ".uvtk[183]" -type "float2" -0.28878695 0.69150555 ;
	setAttr ".uvtk[184]" -type "float2" 0.13228294 0.65330911 ;
	setAttr ".uvtk[185]" -type "float2" -0.2268692 0.65470344 ;
	setAttr ".uvtk[186]" -type "float2" 0.1750156 0.61651814 ;
	setAttr ".uvtk[187]" -type "float2" -0.16479968 0.61790127 ;
	setAttr ".uvtk[188]" -type "float2" 0.21139559 0.57972711 ;
	setAttr ".uvtk[189]" -type "float2" -0.10366733 0.58109921 ;
	setAttr ".uvtk[190]" -type "float2" 0.24091312 0.54293621 ;
	setAttr ".uvtk[191]" -type "float2" -0.044527229 0.5442971 ;
	setAttr ".uvtk[192]" -type "float2" 0.26318511 0.50614536 ;
	setAttr ".uvtk[193]" -type "float2" 0.011617569 0.50749499 ;
	setAttr ".uvtk[194]" -type "float2" 0.27795866 0.46935442 ;
	setAttr ".uvtk[195]" -type "float2" 0.063831896 0.47069284 ;
	setAttr ".uvtk[196]" -type "float2" 0.28511426 0.43256363 ;
	setAttr ".uvtk[197]" -type "float2" 0.11126629 0.43389073 ;
	setAttr ".uvtk[198]" -type "float2" 0.28466472 0.39577267 ;
	setAttr ".uvtk[199]" -type "float2" 0.15316883 0.39708862 ;
	setAttr ".uvtk[200]" -type "float2" 0.27675322 0.35898158 ;
	setAttr ".uvtk[201]" -type "float2" 0.18889776 0.36028644 ;
	setAttr ".uvtk[202]" -type "float2" 0.26164785 0.32219073 ;
	setAttr ".uvtk[203]" -type "float2" 0.21793094 0.32348427 ;
	setAttr ".uvtk[204]" -type "float2" 0.23973563 0.28539988 ;
	setAttr ".uvtk[205]" -type "float2" 0.23987338 0.2866821 ;
	setAttr ".uvtk[206]" -type "float2" 0.21151277 0.24860904 ;
	setAttr ".uvtk[207]" -type "float2" 0.25446263 0.24988005 ;
	setAttr ".uvtk[208]" -type "float2" 0.17757508 0.21181807 ;
	setAttr ".uvtk[209]" -type "float2" 0.26157027 0.21307787 ;
	setAttr ".uvtk[210]" -type "float2" 0.13860497 0.1750271 ;
	setAttr ".uvtk[211]" -type "float2" 0.26120326 0.1762757 ;
	setAttr ".uvtk[212]" -type "float2" 0.095358282 0.13823625 ;
	setAttr ".uvtk[213]" -type "float2" 0.25350124 0.13947353 ;
	setAttr ".uvtk[214]" -type "float2" 0.048650268 0.10144526 ;
	setAttr ".uvtk[215]" -type "float2" 0.23873106 0.10267133 ;
	setAttr ".uvtk[216]" -type "float2" -0.00065994624 0.064654417 ;
	setAttr ".uvtk[217]" -type "float2" 0.21728095 0.065869272 ;
	setAttr ".uvtk[218]" -type "float2" -0.051637944 0.02788013 ;
	setAttr ".uvtk[219]" -type "float2" 0.18974271 0.02905017 ;
	setAttr ".uvtk[220]" -type "float2" -0.095304027 -0.0039259847 ;
	setAttr ".uvtk[221]" -type "float2" 0.16455486 -0.0039303955 ;
	setAttr ".uvtk[222]" -type "float2" -0.65618885 0.87035525 ;
	setAttr ".uvtk[223]" -type "float2" -0.65096688 0.83728033 ;
	setAttr ".uvtk[224]" -type "float2" -0.50112927 0.83869743 ;
	setAttr ".uvtk[225]" -type "float2" -0.45897263 0.87036204 ;
	setAttr ".uvtk[226]" -type "float2" -0.64172781 0.80047286 ;
	setAttr ".uvtk[227]" -type "float2" -0.54150021 0.80191189 ;
	setAttr ".uvtk[228]" -type "float2" -0.62460661 0.76368189 ;
	setAttr ".uvtk[229]" -type "float2" -0.57465589 0.76510978 ;
	setAttr ".uvtk[230]" -type "float2" -0.59992611 0.72689092 ;
	setAttr ".uvtk[231]" -type "float2" -0.60007441 0.7283076 ;
	setAttr ".uvtk[232]" -type "float2" -0.56822968 0.69010001 ;
	setAttr ".uvtk[233]" -type "float2" -0.61743379 0.69150555 ;
	setAttr ".uvtk[234]" -type "float2" -0.53017229 0.65330911 ;
	setAttr ".uvtk[235]" -type "float2" -0.62655854 0.65470344 ;
	setAttr ".uvtk[236]" -type "float2" -0.48650685 0.61651814 ;
	setAttr ".uvtk[237]" -type "float2" -0.62742066 0.61790127 ;
	setAttr ".uvtk[238]" -type "float2" -0.43806988 0.57972711 ;
	setAttr ".uvtk[239]" -type "float2" -0.6201387 0.58109921 ;
	setAttr ".uvtk[240]" -type "float2" -0.38576517 0.54293621 ;
	setAttr ".uvtk[241]" -type "float2" -0.6049726 0.5442971 ;
	setAttr ".uvtk[242]" -type "float2" -0.33054706 0.50614536 ;
	setAttr ".uvtk[243]" -type "float2" -0.58231723 0.50749499 ;
	setAttr ".uvtk[244]" -type "float2" -0.27340457 0.46935442 ;
	setAttr ".uvtk[245]" -type "float2" -0.55269355 0.47069284 ;
	setAttr ".uvtk[246]" -type "float2" -0.21534094 0.43256363 ;
	setAttr ".uvtk[247]" -type "float2" -0.51673698 0.43389073 ;
	setAttr ".uvtk[248]" -type "float2" -0.15735839 0.39577267 ;
	setAttr ".uvtk[249]" -type "float2" -0.47518432 0.39708862 ;
	setAttr ".uvtk[250]" -type "float2" -0.10043983 0.35898158 ;
	setAttr ".uvtk[251]" -type "float2" -0.42885998 0.36028644 ;
	setAttr ".uvtk[252]" -type "float2" -0.045532551 0.32219073 ;
	setAttr ".uvtk[253]" -type "float2" -0.37865835 0.32348427 ;
	setAttr ".uvtk[254]" -type "float2" 0.0064676083 0.28539988 ;
	setAttr ".uvtk[255]" -type "float2" -0.32552844 0.2866821 ;
	setAttr ".uvtk[256]" -type "float2" 0.054731462 0.24860904 ;
	setAttr ".uvtk[257]" -type "float2" -0.27045473 0.24988005 ;
	setAttr ".uvtk[258]" -type "float2" 0.098508447 0.21181807 ;
	setAttr ".uvtk[259]" -type "float2" -0.2144399 0.21307787 ;
	setAttr ".uvtk[260]" -type "float2" 0.13713917 0.1750271 ;
	setAttr ".uvtk[261]" -type "float2" -0.15848626 0.1762757 ;
	setAttr ".uvtk[262]" -type "float2" 0.17006519 0.13823625 ;
	setAttr ".uvtk[263]" -type "float2" -0.10357781 0.13947353 ;
	setAttr ".uvtk[264]" -type "float2" 0.19683549 0.10144526 ;
	setAttr ".uvtk[265]" -type "float2" -0.050663199 0.10267133 ;
	setAttr ".uvtk[266]" -type "float2" 0.21711382 0.064654417 ;
	setAttr ".uvtk[267]" -type "float2" -0.00063944224 0.065869272 ;
	setAttr ".uvtk[268]" -type "float2" 0.23072419 0.02788013 ;
	setAttr ".uvtk[269]" -type "float2" 0.045755897 0.02905017 ;
	setAttr ".uvtk[270]" -type "float2" 0.23198484 -0.0039259847 ;
	setAttr ".uvtk[271]" -type "float2" 0.083706707 -0.0039303955 ;
	setAttr ".uvtk[272]" -type "float2" 0.23879561 0.87481785 ;
	setAttr ".uvtk[273]" -type "float2" -0.15947784 0.87481785 ;
	setAttr ".uvtk[274]" -type "float2" 0.20222691 0.8380214 ;
	setAttr ".uvtk[275]" -type "float2" 0.16010013 0.80122483 ;
	setAttr ".uvtk[276]" -type "float2" 0.11323747 0.76442826 ;
	setAttr ".uvtk[277]" -type "float2" 0.062530428 0.72763175 ;
	setAttr ".uvtk[278]" -type "float2" 0.0089215934 0.69083524 ;
	setAttr ".uvtk[279]" -type "float2" -0.046611693 0.65403867 ;
	setAttr ".uvtk[280]" -type "float2" -0.10307561 0.6172421 ;
	setAttr ".uvtk[281]" -type "float2" -0.15947779 0.58044553 ;
	setAttr ".uvtk[282]" -type "float2" -0.2148442 0.54364902 ;
	setAttr ".uvtk[283]" -type "float2" -0.26823649 0.50685251 ;
	setAttr ".uvtk[284]" -type "float2" -0.31876722 0.47005597 ;
	setAttr ".uvtk[285]" -type "float2" -0.36561561 0.43325952 ;
	setAttr ".uvtk[286]" -type "float2" -0.40803987 0.39646301 ;
	setAttr ".uvtk[287]" -type "float2" -0.44538975 0.35966644 ;
	setAttr ".uvtk[288]" -type "float2" -0.47711501 0.32286987 ;
	setAttr ".uvtk[289]" -type "float2" -0.50277483 0.28607342 ;
	setAttr ".uvtk[290]" -type "float2" -0.52204299 0.24927686 ;
	setAttr ".uvtk[291]" -type "float2" -0.53471118 0.21248028 ;
	setAttr ".uvtk[292]" -type "float2" -0.5406909 0.17568371 ;
	setAttr ".uvtk[293]" -type "float2" -0.54001284 0.13888726 ;
	setAttr ".uvtk[294]" -type "float2" -0.53282368 0.10209054 ;
	setAttr ".uvtk[295]" -type "float2" -0.51938164 0.065294087 ;
	setAttr ".uvtk[296]" -type "float2" -0.50004971 0.028497515 ;
	setAttr ".uvtk[297]" -type "float2" -0.47528678 -0.0082989382 ;
	setAttr ".uvtk[298]" -type "float2" -0.15947784 -0.0082989382 ;
	setAttr ".uvtk[299]" -type "float2" -0.20759395 0.028497515 ;
	setAttr ".uvtk[300]" -type "float2" -0.25591376 0.065294087 ;
	setAttr ".uvtk[301]" -type "float2" -0.30358392 0.10209054 ;
	setAttr ".uvtk[302]" -type "float2" -0.34974545 0.13888726 ;
	setAttr ".uvtk[303]" -type "float2" -0.39354831 0.17568371 ;
	setAttr ".uvtk[304]" -type "float2" -0.43416777 0.21248028 ;
	setAttr ".uvtk[305]" -type "float2" -0.47081965 0.24927686 ;
	setAttr ".uvtk[306]" -type "float2" -0.50277483 0.28607342 ;
	setAttr ".uvtk[307]" -type "float2" -0.52937412 0.32286987 ;
	setAttr ".uvtk[308]" -type "float2" -0.55004072 0.35966644 ;
	setAttr ".uvtk[309]" -type "float2" -0.56429267 0.39646301 ;
	setAttr ".uvtk[310]" -type "float2" -0.5717535 0.43325952 ;
	setAttr ".uvtk[311]" -type "float2" -0.57216007 0.47005597 ;
	setAttr ".uvtk[312]" -type "float2" -0.56537038 0.50685251 ;
	setAttr ".uvtk[313]" -type "float2" -0.55136752 0.54364902 ;
	setAttr ".uvtk[314]" -type "float2" -0.53026313 0.58044553 ;
	setAttr ".uvtk[315]" -type "float2" -0.50229645 0.6172421 ;
	setAttr ".uvtk[316]" -type "float2" -0.46783379 0.65403867 ;
	setAttr ".uvtk[317]" -type "float2" -0.42736247 0.69083524 ;
	setAttr ".uvtk[318]" -type "float2" -0.38148588 0.72763175 ;
	setAttr ".uvtk[319]" -type "float2" -0.33091384 0.76442826 ;
	setAttr ".uvtk[320]" -type "float2" -0.27645153 0.80122483 ;
	setAttr ".uvtk[321]" -type "float2" -0.21898738 0.8380214 ;
	setAttr ".uvtk[322]" -type "float2" 0.070465475 0.87481785 ;
	setAttr ".uvtk[323]" -type "float2" 0.30040869 0.87481785 ;
	setAttr ".uvtk[324]" -type "float2" 0.11806825 0.8380214 ;
	setAttr ".uvtk[325]" -type "float2" 0.16010019 0.80122483 ;
	setAttr ".uvtk[326]" -type "float2" 0.1959317 0.76442826 ;
	setAttr ".uvtk[327]" -type "float2" 0.22505149 0.72763175 ;
	setAttr ".uvtk[328]" -type "float2" 0.24707411 0.69083524 ;
	setAttr ".uvtk[329]" -type "float2" 0.26174423 0.65403867 ;
	setAttr ".uvtk[330]" -type "float2" 0.26893887 0.6172421 ;
	setAttr ".uvtk[331]" -type "float2" 0.26866809 0.58044553 ;
	setAttr ".uvtk[332]" -type "float2" 0.26107159 0.54364902 ;
	setAttr ".uvtk[333]" -type "float2" 0.24641459 0.50685251 ;
	setAttr ".uvtk[334]" -type "float2" 0.2250807 0.47005597 ;
	setAttr ".uvtk[335]" -type "float2" 0.19756332 0.43325952 ;
	setAttr ".uvtk[336]" -type "float2" 0.16445467 0.39646301 ;
	setAttr ".uvtk[337]" -type "float2" 0.12643406 0.35966644 ;
	setAttr ".uvtk[338]" -type "float2" 0.084253699 0.32286987 ;
	setAttr ".uvtk[339]" -type "float2" 0.038724821 0.28607342 ;
	setAttr ".uvtk[340]" -type "float2" -0.0092984466 0.24927686 ;
	setAttr ".uvtk[341]" -type "float2" -0.058934417 0.21248028 ;
	setAttr ".uvtk[342]" -type "float2" -0.10929017 0.17568371 ;
	setAttr ".uvtk[343]" -type "float2" -0.15947784 0.13888726 ;
	setAttr ".uvtk[344]" -type "float2" -0.20862994 0.10209054 ;
	setAttr ".uvtk[345]" -type "float2" -0.25591376 0.065294087 ;
	setAttr ".uvtk[346]" -type "float2" -0.30054739 0.028497515 ;
	setAttr ".uvtk[347]" -type "float2" -0.34181026 -0.0082989382 ;
	setAttr ".uvtk[348]" -type "float2" -0.52414244 -0.0082989382 ;
	setAttr ".uvtk[349]" -type "float2" -0.52495635 0.028497515 ;
	setAttr ".uvtk[350]" -type "float2" -0.51938152 0.065294087 ;
	setAttr ".uvtk[351]" -type "float2" -0.50738078 0.10209054 ;
	setAttr ".uvtk[352]" -type "float2" -0.48903084 0.13888726 ;
	setAttr ".uvtk[353]" -type "float2" -0.46452418 0.17568371 ;
	setAttr ".uvtk[354]" -type "float2" -0.43416765 0.21248028 ;
	setAttr ".uvtk[355]" -type "float2" -0.39837888 0.24927686 ;
	setAttr ".uvtk[356]" -type "float2" -0.35768041 0.28607342 ;
	setAttr ".uvtk[357]" -type "float2" -0.31269401 0.32286987 ;
	setAttr ".uvtk[358]" -type "float2" -0.2641288 0.35966644 ;
	setAttr ".uvtk[359]" -type "float2" -0.21277264 0.39646301 ;
	setAttr ".uvtk[360]" -type "float2" -0.15947784 0.43325952 ;
	setAttr ".uvtk[361]" -type "float2" -0.10514729 0.47005597 ;
	setAttr ".uvtk[362]" -type "float2" -0.050719436 0.50685251 ;
	setAttr ".uvtk[363]" -type "float2" 0.0028482336 0.54364902 ;
	setAttr ".uvtk[364]" -type "float2" 0.054595087 0.58044553 ;
	setAttr ".uvtk[365]" -type "float2" 0.10357627 0.6172421 ;
	setAttr ".uvtk[366]" -type "float2" 0.14887807 0.65403867 ;
	setAttr ".uvtk[367]" -type "float2" 0.18963626 0.69083524 ;
	setAttr ".uvtk[368]" -type "float2" 0.22505155 0.72763175 ;
	setAttr ".uvtk[369]" -type "float2" 0.2544052 0.76442826 ;
	setAttr ".uvtk[370]" -type "float2" 0.27707377 0.80122483 ;
	setAttr ".uvtk[371]" -type "float2" 0.2925407 0.8380214 ;
	setAttr ".uvtk[372]" -type "float2" -0.5577513 0.87481785 ;
	setAttr ".uvtk[373]" -type "float2" -0.15947784 0.87481785 ;
	setAttr ".uvtk[374]" -type "float2" -0.52118254 0.8380214 ;
	setAttr ".uvtk[375]" -type "float2" -0.47905576 0.80122483 ;
	setAttr ".uvtk[376]" -type "float2" -0.43219316 0.76442826 ;
	setAttr ".uvtk[377]" -type "float2" -0.381486 0.72763175 ;
	setAttr ".uvtk[378]" -type "float2" -0.32787716 0.69083524 ;
	setAttr ".uvtk[379]" -type "float2" -0.27234396 0.65403867 ;
	setAttr ".uvtk[380]" -type "float2" -0.21588001 0.6172421 ;
	setAttr ".uvtk[381]" -type "float2" -0.15947784 0.58044553 ;
	setAttr ".uvtk[382]" -type "float2" -0.10411142 0.54364902 ;
	setAttr ".uvtk[383]" -type "float2" -0.050719108 0.50685251 ;
	setAttr ".uvtk[384]" -type "float2" -0.00018835382 0.47005597 ;
	setAttr ".uvtk[385]" -type "float2" 0.04666001 0.43325952 ;
	setAttr ".uvtk[386]" -type "float2" 0.089084297 0.39646301 ;
	setAttr ".uvtk[387]" -type "float2" 0.12643406 0.35966644 ;
	setAttr ".uvtk[388]" -type "float2" 0.1581594 0.32286987 ;
	setAttr ".uvtk[389]" -type "float2" 0.18381914 0.28607342 ;
	setAttr ".uvtk[390]" -type "float2" 0.20308742 0.24927686 ;
	setAttr ".uvtk[391]" -type "float2" 0.21575549 0.21248028 ;
	setAttr ".uvtk[392]" -type "float2" 0.22173521 0.17568371 ;
	setAttr ".uvtk[393]" -type "float2" 0.22105715 0.13888726 ;
	setAttr ".uvtk[394]" -type "float2" 0.21386799 0.10209054 ;
	setAttr ".uvtk[395]" -type "float2" 0.20042595 0.065294087 ;
	setAttr ".uvtk[396]" -type "float2" 0.1810939 0.028497515 ;
	setAttr ".uvtk[397]" -type "float2" 0.15633103 -0.0082989382 ;
	setAttr ".uvtk[398]" -type "float2" -0.1594779 -0.0082989382 ;
	setAttr ".uvtk[399]" -type "float2" -0.11136176 0.028497515 ;
	setAttr ".uvtk[400]" -type "float2" -0.063041948 0.065294087 ;
	setAttr ".uvtk[401]" -type "float2" -0.01537177 0.10209054 ;
	setAttr ".uvtk[402]" -type "float2" 0.030789623 0.13888726 ;
	setAttr ".uvtk[403]" -type "float2" 0.074592561 0.17568371 ;
	setAttr ".uvtk[404]" -type "float2" 0.11521193 0.21248028 ;
	setAttr ".uvtk[405]" -type "float2" 0.1518639 0.24927686 ;
	setAttr ".uvtk[406]" -type "float2" 0.18381914 0.28607342 ;
	setAttr ".uvtk[407]" -type "float2" 0.21041843 0.32286987 ;
	setAttr ".uvtk[408]" -type "float2" 0.23108503 0.35966644 ;
	setAttr ".uvtk[409]" -type "float2" 0.24533705 0.39646301 ;
	setAttr ".uvtk[410]" -type "float2" 0.25279781 0.43325952 ;
	setAttr ".uvtk[411]" -type "float2" 0.25320438 0.47005597 ;
	setAttr ".uvtk[412]" -type "float2" 0.24641471 0.50685251 ;
	setAttr ".uvtk[413]" -type "float2" 0.23241188 0.54364902 ;
	setAttr ".uvtk[414]" -type "float2" 0.21130744 0.58044553 ;
	setAttr ".uvtk[415]" -type "float2" 0.18334088 0.6172421 ;
	setAttr ".uvtk[416]" -type "float2" 0.14887807 0.65403867 ;
	setAttr ".uvtk[417]" -type "float2" 0.10840675 0.69083524 ;
	setAttr ".uvtk[418]" -type "float2" 0.062530249 0.72763175 ;
	setAttr ".uvtk[419]" -type "float2" 0.01195815 0.76442826 ;
	setAttr ".uvtk[420]" -type "float2" -0.042504188 0.80122483 ;
	setAttr ".uvtk[421]" -type "float2" -0.099968269 0.8380214 ;
	setAttr ".uvtk[422]" -type "float2" -0.38942108 0.87481785 ;
	setAttr ".uvtk[423]" -type "float2" -0.61936444 0.87481785 ;
	setAttr ".uvtk[424]" -type "float2" -0.43702385 0.8380214 ;
	setAttr ".uvtk[425]" -type "float2" -0.47905576 0.80122483 ;
	setAttr ".uvtk[426]" -type "float2" -0.51488727 0.76442826 ;
	setAttr ".uvtk[427]" -type "float2" -0.54400718 0.72763175 ;
	setAttr ".uvtk[428]" -type "float2" -0.56602979 0.69083524 ;
	setAttr ".uvtk[429]" -type "float2" -0.5806998 0.65403867 ;
	setAttr ".uvtk[430]" -type "float2" -0.58789462 0.6172421 ;
	setAttr ".uvtk[431]" -type "float2" -0.58762378 0.58044553 ;
	setAttr ".uvtk[432]" -type "float2" -0.58002728 0.54364902 ;
	setAttr ".uvtk[433]" -type "float2" -0.56537026 0.50685251 ;
	setAttr ".uvtk[434]" -type "float2" -0.54403633 0.47005597 ;
	setAttr ".uvtk[435]" -type "float2" -0.51651907 0.43325952 ;
	setAttr ".uvtk[436]" -type "float2" -0.48341039 0.39646301 ;
	setAttr ".uvtk[437]" -type "float2" -0.44538975 0.35966644 ;
	setAttr ".uvtk[438]" -type "float2" -0.40320945 0.32286987 ;
	setAttr ".uvtk[439]" -type "float2" -0.35768053 0.28607342 ;
	setAttr ".uvtk[440]" -type "float2" -0.30965725 0.24927686 ;
	setAttr ".uvtk[441]" -type "float2" -0.26002136 0.21248028 ;
	setAttr ".uvtk[442]" -type "float2" -0.20966569 0.17568371 ;
	setAttr ".uvtk[443]" -type "float2" -0.1594779 0.13888726 ;
	setAttr ".uvtk[444]" -type "float2" -0.11032589 0.10209054 ;
	setAttr ".uvtk[445]" -type "float2" -0.063042007 0.065294087 ;
	setAttr ".uvtk[446]" -type "float2" -0.018408302 0.028497515 ;
	setAttr ".uvtk[447]" -type "float2" 0.0228545 -0.0082989382 ;
	setAttr ".uvtk[448]" -type "float2" 0.20518675 -0.0082989382 ;
	setAttr ".uvtk[449]" -type "float2" 0.20600072 0.028497515 ;
	setAttr ".uvtk[450]" -type "float2" 0.20042589 0.065294087 ;
	setAttr ".uvtk[451]" -type "float2" 0.18842521 0.10209054 ;
	setAttr ".uvtk[452]" -type "float2" 0.17007509 0.13888726 ;
	setAttr ".uvtk[453]" -type "float2" 0.14556846 0.17568371 ;
	setAttr ".uvtk[454]" -type "float2" 0.11521205 0.21248028 ;
	setAttr ".uvtk[455]" -type "float2" 0.079423159 0.24927686 ;
	setAttr ".uvtk[456]" -type "float2" 0.038724821 0.28607342 ;
	setAttr ".uvtk[457]" -type "float2" -0.0062616807 0.32286987 ;
	setAttr ".uvtk[458]" -type "float2" -0.054826852 0.35966644 ;
	setAttr ".uvtk[459]" -type "float2" -0.10618304 0.39646301 ;
	setAttr ".uvtk[460]" -type "float2" -0.15947784 0.43325952 ;
	setAttr ".uvtk[461]" -type "float2" -0.21380839 0.47005597 ;
	setAttr ".uvtk[462]" -type "float2" -0.26823625 0.50685251 ;
	setAttr ".uvtk[463]" -type "float2" -0.32180387 0.54364902 ;
	setAttr ".uvtk[464]" -type "float2" -0.3735508 0.58044553 ;
	setAttr ".uvtk[465]" -type "float2" -0.4225319 0.6172421 ;
	setAttr ".uvtk[466]" -type "float2" -0.46783379 0.65403867 ;
	setAttr ".uvtk[467]" -type "float2" -0.50859189 0.69083524 ;
	setAttr ".uvtk[468]" -type "float2" -0.54400718 0.72763175 ;
	setAttr ".uvtk[469]" -type "float2" -0.57336092 0.76442826 ;
	setAttr ".uvtk[470]" -type "float2" -0.59602946 0.80122483 ;
	setAttr ".uvtk[471]" -type "float2" -0.61149639 0.8380214 ;
createNode polyPlanarProj -n "polyPlanarProj3";
	rename -uid "8E8934B0-4CC3-124E-279C-06B500032E06";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "f[0:95]" "f[392:407]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0.71229573529559476 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -2.9802322387695313e-08 1.7212959229946136 0 ;
	setAttr ".ro" -type "double3" 0 90 0 ;
	setAttr ".ps" -type "double2" 0.20000000298023224 2.0180004239082336 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyTweakUV -n "polyTweakUV3";
	rename -uid "A53DFD2F-4AC5-AD5A-7265-27B15024BF13";
	setAttr ".uopa" yes;
	setAttr -s 221 ".uvtk";
	setAttr ".uvtk[472]" -type "float2" 0.66480136 0.88381755 ;
	setAttr ".uvtk[473]" -type "float2" 0.62536168 0.84701955 ;
	setAttr ".uvtk[474]" -type "float2" 0.7227661 0.84701955 ;
	setAttr ".uvtk[475]" -type "float2" 0.73125154 0.88381755 ;
	setAttr ".uvtk[476]" -type "float2" 0.48325554 0.88381755 ;
	setAttr ".uvtk[477]" -type "float2" 0.53459549 0.84701955 ;
	setAttr ".uvtk[478]" -type "float2" 0.29944071 0.84701955 ;
	setAttr ".uvtk[479]" -type "float2" 0.23525897 0.88381755 ;
	setAttr ".uvtk[480]" -type "float2" -0.19428347 0.88381755 ;
	setAttr ".uvtk[481]" -type "float2" -0.15484372 0.84701955 ;
	setAttr ".uvtk[482]" -type "float2" -0.25224814 0.84701955 ;
	setAttr ".uvtk[483]" -type "float2" -0.26073381 0.88381755 ;
	setAttr ".uvtk[484]" -type "float2" -0.01273734 0.88381755 ;
	setAttr ".uvtk[485]" -type "float2" -0.064077422 0.84701955 ;
	setAttr ".uvtk[486]" -type "float2" 0.17107727 0.84701955 ;
	setAttr ".uvtk[487]" -type "float2" 0.23525897 0.88381755 ;
	setAttr ".uvtk[488]" -type "float2" 0.57992744 0.81022155 ;
	setAttr ".uvtk[489]" -type "float2" 0.70608479 0.81022155 ;
	setAttr ".uvtk[490]" -type "float2" 0.57992744 0.81022155 ;
	setAttr ".uvtk[491]" -type "float2" 0.36141643 0.81022155 ;
	setAttr ".uvtk[492]" -type "float2" -0.10940954 0.81022155 ;
	setAttr ".uvtk[493]" -type "float2" -0.23556696 0.81022155 ;
	setAttr ".uvtk[494]" -type "float2" -0.10940942 0.81022155 ;
	setAttr ".uvtk[495]" -type "float2" 0.10910171 0.81022155 ;
	setAttr ".uvtk[496]" -type "float2" 0.52938551 0.77342355 ;
	setAttr ".uvtk[497]" -type "float2" 0.68163651 0.77342355 ;
	setAttr ".uvtk[498]" -type "float2" 0.61857218 0.77342355 ;
	setAttr ".uvtk[499]" -type "float2" 0.42015466 0.77342355 ;
	setAttr ".uvtk[500]" -type "float2" -0.058867514 0.77342355 ;
	setAttr ".uvtk[501]" -type "float2" -0.21111856 0.77342355 ;
	setAttr ".uvtk[502]" -type "float2" -0.14805427 0.77342355 ;
	setAttr ".uvtk[503]" -type "float2" 0.050363474 0.77342355 ;
	setAttr ".uvtk[504]" -type "float2" 0.47469744 0.73662561 ;
	setAttr ".uvtk[505]" -type "float2" 0.64997828 0.73662561 ;
	setAttr ".uvtk[506]" -type "float2" 0.64997822 0.73662561 ;
	setAttr ".uvtk[507]" -type "float2" 0.47469726 0.73662561 ;
	setAttr ".uvtk[508]" -type "float2" -0.0041793636 0.73662561 ;
	setAttr ".uvtk[509]" -type "float2" -0.17946027 0.73662561 ;
	setAttr ".uvtk[510]" -type "float2" -0.17946015 0.73662561 ;
	setAttr ".uvtk[511]" -type "float2" -0.0041792444 0.73662561 ;
	setAttr ".uvtk[512]" -type "float2" 0.41687968 0.69982761 ;
	setAttr ".uvtk[513]" -type "float2" 0.61178243 0.69982761 ;
	setAttr ".uvtk[514]" -type "float2" 0.6737299 0.69982761 ;
	setAttr ".uvtk[515]" -type "float2" 0.52417552 0.69982761 ;
	setAttr ".uvtk[516]" -type "float2" 0.053638384 0.69982761 ;
	setAttr ".uvtk[517]" -type "float2" -0.14126447 0.69982761 ;
	setAttr ".uvtk[518]" -type "float2" -0.20321189 0.69982761 ;
	setAttr ".uvtk[519]" -type "float2" -0.053657465 0.69982761 ;
	setAttr ".uvtk[520]" -type "float2" 0.35698643 0.66302955 ;
	setAttr ".uvtk[521]" -type "float2" 0.5678243 0.66302955 ;
	setAttr ".uvtk[522]" -type "float2" 0.68955165 0.66302955 ;
	setAttr ".uvtk[523]" -type "float2" 0.56782436 0.66302955 ;
	setAttr ".uvtk[524]" -type "float2" 0.11353177 0.66302955 ;
	setAttr ".uvtk[525]" -type "float2" -0.097306401 0.66302955 ;
	setAttr ".uvtk[526]" -type "float2" -0.2190337 0.66302955 ;
	setAttr ".uvtk[527]" -type "float2" -0.097306401 0.66302955 ;
	setAttr ".uvtk[528]" -type "float2" 0.29608938 0.62623161 ;
	setAttr ".uvtk[529]" -type "float2" 0.51896578 0.62623161 ;
	setAttr ".uvtk[530]" -type "float2" 0.69731128 0.62623161 ;
	setAttr ".uvtk[531]" -type "float2" 0.60499275 0.62623161 ;
	setAttr ".uvtk[532]" -type "float2" 0.1744286 0.62623161 ;
	setAttr ".uvtk[533]" -type "float2" -0.048447885 0.62623161 ;
	setAttr ".uvtk[534]" -type "float2" -0.22679327 0.62623161 ;
	setAttr ".uvtk[535]" -type "float2" -0.13447486 0.62623161 ;
	setAttr ".uvtk[536]" -type "float2" 0.23525903 0.58943355 ;
	setAttr ".uvtk[537]" -type "float2" 0.46613899 0.58943355 ;
	setAttr ".uvtk[538]" -type "float2" 0.69701922 0.58943355 ;
	setAttr ".uvtk[539]" -type "float2" 0.63515502 0.58943355 ;
	setAttr ".uvtk[540]" -type "float2" 0.23525897 0.58943355 ;
	setAttr ".uvtk[541]" -type "float2" 0.004378967 0.58943355 ;
	setAttr ".uvtk[542]" -type "float2" -0.22650121 0.58943355 ;
	setAttr ".uvtk[543]" -type "float2" -0.16463712 0.58943355 ;
	setAttr ".uvtk[544]" -type "float2" 0.17554571 0.55263567 ;
	setAttr ".uvtk[545]" -type "float2" 0.41032949 0.55263567 ;
	setAttr ".uvtk[546]" -type "float2" 0.68882632 0.55263567 ;
	setAttr ".uvtk[547]" -type "float2" 0.65791649 0.55263567 ;
	setAttr ".uvtk[548]" -type "float2" 0.29497233 0.55263567 ;
	setAttr ".uvtk[549]" -type "float2" 0.060188577 0.55263567 ;
	setAttr ".uvtk[550]" -type "float2" -0.21830831 0.55263567 ;
	setAttr ".uvtk[551]" -type "float2" -0.18739842 0.55263567 ;
	setAttr ".uvtk[552]" -type "float2" 0.1179615 0.51583767 ;
	setAttr ".uvtk[553]" -type "float2" 0.35255614 0.51583767 ;
	setAttr ".uvtk[554]" -type "float2" 0.67301852 0.51583767 ;
	setAttr ".uvtk[555]" -type "float2" 0.67301869 0.51583767 ;
	setAttr ".uvtk[556]" -type "float2" 0.3525565 0.51583767 ;
	setAttr ".uvtk[557]" -type "float2" 0.11796173 0.51583767 ;
	setAttr ".uvtk[558]" -type "float2" -0.20250057 0.51583767 ;
	setAttr ".uvtk[559]" -type "float2" -0.20250069 0.51583767 ;
	setAttr ".uvtk[560]" -type "float2" 0.063463628 0.47903967 ;
	setAttr ".uvtk[561]" -type "float2" 0.2938551 0.47903967 ;
	setAttr ".uvtk[562]" -type "float2" 0.65000963 0.47903967 ;
	setAttr ".uvtk[563]" -type "float2" 0.68034142 0.47903967 ;
	setAttr ".uvtk[564]" -type "float2" 0.40705451 0.47903967 ;
	setAttr ".uvtk[565]" -type "float2" 0.17666282 0.47903967 ;
	setAttr ".uvtk[566]" -type "float2" -0.17949174 0.47903967 ;
	setAttr ".uvtk[567]" -type "float2" -0.20982347 0.47903967 ;
	setAttr ".uvtk[568]" -type "float2" 0.012937064 0.44224173 ;
	setAttr ".uvtk[569]" -type "float2" 0.23525897 0.44224173 ;
	setAttr ".uvtk[570]" -type "float2" 0.62033182 0.44224173 ;
	setAttr ".uvtk[571]" -type "float2" 0.67990285 0.44224173 ;
	setAttr ".uvtk[572]" -type "float2" 0.45758101 0.44224173 ;
	setAttr ".uvtk[573]" -type "float2" 0.23525897 0.44224173 ;
	setAttr ".uvtk[574]" -type "float2" -0.14981392 0.44224173 ;
	setAttr ".uvtk[575]" -type "float2" -0.20938502 0.44224173 ;
	setAttr ".uvtk[576]" -type "float2" -0.032817975 0.40544373 ;
	setAttr ".uvtk[577]" -type "float2" 0.17777993 0.40544373 ;
	setAttr ".uvtk[578]" -type "float2" 0.58462375 0.40544373 ;
	setAttr ".uvtk[579]" -type "float2" 0.6718564 0.40544373 ;
	setAttr ".uvtk[580]" -type "float2" 0.50333601 0.40544373 ;
	setAttr ".uvtk[581]" -type "float2" 0.29273805 0.40544373 ;
	setAttr ".uvtk[582]" -type "float2" -0.11410597 0.40544373 ;
	setAttr ".uvtk[583]" -type "float2" -0.2013384 0.40544373 ;
	setAttr ".uvtk[584]" -type "float2" -0.073100299 0.36864585 ;
	setAttr ".uvtk[585]" -type "float2" 0.12239176 0.36864585 ;
	setAttr ".uvtk[586]" -type "float2" 0.54361808 0.36864585 ;
	setAttr ".uvtk[587]" -type "float2" 0.65648544 0.36864585 ;
	setAttr ".uvtk[588]" -type "float2" 0.54361814 0.36864585 ;
	setAttr ".uvtk[589]" -type "float2" 0.34812632 0.36864585 ;
	setAttr ".uvtk[590]" -type "float2" -0.073100299 0.36864585 ;
	setAttr ".uvtk[591]" -type "float2" -0.18596743 0.36864585 ;
	setAttr ".uvtk[592]" -type "float2" -0.10731634 0.33184773 ;
	setAttr ".uvtk[593]" -type "float2" 0.070013821 0.33184773 ;
	setAttr ".uvtk[594]" -type "float2" 0.49812615 0.33184773 ;
	setAttr ".uvtk[595]" -type "float2" 0.63419622 0.33184773 ;
	setAttr ".uvtk[596]" -type "float2" 0.57783437 0.33184773 ;
	setAttr ".uvtk[597]" -type "float2" 0.40050438 0.33184773 ;
	setAttr ".uvtk[598]" -type "float2" -0.02760829 0.33184773 ;
	setAttr ".uvtk[599]" -type "float2" -0.16367832 0.33184773 ;
	setAttr ".uvtk[600]" -type "float2" -0.13499072 0.29504973 ;
	setAttr ".uvtk[601]" -type "float2" 0.021495216 0.29504973 ;
	setAttr ".uvtk[602]" -type "float2" 0.4490228 0.29504973 ;
	setAttr ".uvtk[603]" -type "float2" 0.60550874 0.29504973 ;
	setAttr ".uvtk[604]" -type "float2" 0.60550874 0.29504973 ;
	setAttr ".uvtk[605]" -type "float2" 0.4490228 0.29504973 ;
	setAttr ".uvtk[606]" -type "float2" 0.021495096 0.29504973 ;
	setAttr ".uvtk[607]" -type "float2" -0.13499072 0.29504973 ;
	setAttr ".uvtk[608]" -type "float2" -0.15577176 0.25825185 ;
	setAttr ".uvtk[609]" -type "float2" -0.02239836 0.25825185 ;
	setAttr ".uvtk[610]" -type "float2" 0.39722911 0.25825185 ;
	setAttr ".uvtk[611]" -type "float2" 0.57104456 0.25825185 ;
	setAttr ".uvtk[612]" -type "float2" 0.62628973 0.25825185 ;
	setAttr ".uvtk[613]" -type "float2" 0.49291646 0.25825185 ;
	setAttr ".uvtk[614]" -type "float2" 0.073288858 0.25825185 ;
	setAttr ".uvtk[615]" -type "float2" -0.10052666 0.25825185 ;
	setAttr ".uvtk[616]" -type "float2" -0.16943434 0.2214538 ;
	setAttr ".uvtk[617]" -type "float2" -0.060997128 0.2214538 ;
	setAttr ".uvtk[618]" -type "float2" 0.34369621 0.2214538 ;
	setAttr ".uvtk[619]" -type "float2" 0.531515 0.2214538 ;
	setAttr ".uvtk[620]" -type "float2" 0.63995242 0.2214538 ;
	setAttr ".uvtk[621]" -type "float2" 0.53151512 0.2214538 ;
	setAttr ".uvtk[622]" -type "float2" 0.1268217 0.2214538 ;
	setAttr ".uvtk[623]" -type "float2" -0.060997128 0.2214538 ;
	setAttr ".uvtk[624]" -type "float2" -0.17588376 0.1846558 ;
	setAttr ".uvtk[625]" -type "float2" -0.093736976 0.1846558 ;
	setAttr ".uvtk[626]" -type "float2" 0.28938708 0.1846558 ;
	setAttr ".uvtk[627]" -type "float2" 0.48770657 0.1846558 ;
	setAttr ".uvtk[628]" -type "float2" 0.64640158 0.1846558 ;
	setAttr ".uvtk[629]" -type "float2" 0.56425488 0.1846558 ;
	setAttr ".uvtk[630]" -type "float2" 0.1811309 0.1846558 ;
	setAttr ".uvtk[631]" -type "float2" -0.01718856 0.1846558 ;
	setAttr ".uvtk[632]" -type "float2" -0.17515233 0.1478578 ;
	setAttr ".uvtk[633]" -type "float2" -0.12016761 0.1478578 ;
	setAttr ".uvtk[634]" -type "float2" 0.23525897 0.1478578 ;
	setAttr ".uvtk[635]" -type "float2" 0.44046459 0.1478578 ;
	setAttr ".uvtk[636]" -type "float2" 0.64567024 0.1478578 ;
	setAttr ".uvtk[637]" -type "float2" 0.59068561 0.1478578 ;
	setAttr ".uvtk[638]" -type "float2" 0.23525891 0.1478578 ;
	setAttr ".uvtk[639]" -type "float2" 0.030053377 0.1478578 ;
	setAttr ".uvtk[640]" -type "float2" -0.16739872 0.11105973 ;
	setAttr ".uvtk[641]" -type "float2" -0.13995829 0.11105973 ;
	setAttr ".uvtk[642]" -type "float2" 0.18224789 0.11105973 ;
	setAttr ".uvtk[643]" -type "float2" 0.39067903 0.11105973 ;
	setAttr ".uvtk[644]" -type "float2" 0.63791668 0.11105973 ;
	setAttr ".uvtk[645]" -type "float2" 0.61047632 0.11105973 ;
	setAttr ".uvtk[646]" -type "float2" 0.28826991 0.11105973 ;
	setAttr ".uvtk[647]" -type "float2" 0.079839051 0.11105973 ;
	setAttr ".uvtk[648]" -type "float2" -0.15290132 0.074261785 ;
	setAttr ".uvtk[649]" -type "float2" -0.15290132 0.074261785 ;
	setAttr ".uvtk[650]" -type "float2" 0.13125171 0.074261785 ;
	setAttr ".uvtk[651]" -type "float2" 0.33926621 0.074261785 ;
	setAttr ".uvtk[652]" -type "float2" 0.62341923 0.074261785 ;
	setAttr ".uvtk[653]" -type "float2" 0.62341923 0.074261785 ;
	setAttr ".uvtk[654]" -type "float2" 0.33926615 0.074261785 ;
	setAttr ".uvtk[655]" -type "float2" 0.13125171 0.074261785 ;
	setAttr ".uvtk[656]" -type "float2" -0.1320516 0.037463795 ;
	setAttr ".uvtk[657]" -type "float2" -0.15891376 0.037463795 ;
	setAttr ".uvtk[658]" -type "float2" 0.083113968 0.037463795 ;
	setAttr ".uvtk[659]" -type "float2" 0.28715262 0.037463795 ;
	setAttr ".uvtk[660]" -type "float2" 0.60256952 0.037463795 ;
	setAttr ".uvtk[661]" -type "float2" 0.62943172 0.037463795 ;
	setAttr ".uvtk[662]" -type "float2" 0.38740405 0.037463795 ;
	setAttr ".uvtk[663]" -type "float2" 0.18336512 0.037463795 ;
	setAttr ".uvtk[664]" -type "float2" -0.10534456 0.0006658081 ;
	setAttr ".uvtk[665]" -type "float2" -0.1580359 0.0006658081 ;
	setAttr ".uvtk[666]" -type "float2" 0.038611464 0.0006658081 ;
	setAttr ".uvtk[667]" -type "float2" 0.23525891 0.0006658081 ;
	setAttr ".uvtk[668]" -type "float2" 0.57586235 0.0006658081 ;
	setAttr ".uvtk[669]" -type "float2" 0.62855393 0.0006658081 ;
	setAttr ".uvtk[670]" -type "float2" 0.43190649 0.0006658081 ;
	setAttr ".uvtk[671]" -type "float2" 0.23525897 0.0006658081 ;
	setAttr ".uvtk[672]" -type "float2" 0.23525897 -0.0046331631 ;
	setAttr ".uvtk[673]" -type "float2" 0.0013823449 -0.0046331631 ;
	setAttr ".uvtk[674]" -type "float2" -0.034798518 -0.0046331631 ;
	setAttr ".uvtk[675]" -type "float2" 0.10023028 -0.0046331631 ;
	setAttr ".uvtk[676]" -type "float2" 0.23525891 -0.0046331631 ;
	setAttr ".uvtk[677]" -type "float2" 0.46913567 -0.0046331631 ;
	setAttr ".uvtk[678]" -type "float2" 0.50531644 -0.0046331631 ;
	setAttr ".uvtk[679]" -type "float2" 0.37028775 -0.0046331631 ;
	setAttr ".uvtk[680]" -type "float2" 0.23525897 -0.0072826492 ;
	setAttr ".uvtk[681]" -type "float2" 0.20549573 -0.0072826492 ;
	setAttr ".uvtk[682]" -type "float2" 0.18370725 -0.0072826492 ;
	setAttr ".uvtk[683]" -type "float2" 0.17573227 -0.0072826492 ;
	setAttr ".uvtk[684]" -type "float2" 0.18370737 -0.0072826492 ;
	setAttr ".uvtk[685]" -type "float2" 0.20549561 -0.0072826492 ;
	setAttr ".uvtk[686]" -type "float2" 0.23525891 -0.0072826492 ;
	setAttr ".uvtk[687]" -type "float2" 0.26502243 -0.0072826492 ;
	setAttr ".uvtk[688]" -type "float2" 0.28681067 -0.0072826492 ;
	setAttr ".uvtk[689]" -type "float2" 0.29478565 -0.0072826492 ;
	setAttr ".uvtk[690]" -type "float2" 0.28681067 -0.0072826492 ;
	setAttr ".uvtk[691]" -type "float2" 0.26502237 -0.0072826492 ;
createNode groupId -n "groupId1";
	rename -uid "3D3BD000-4237-687C-8B0E-C79F5862A4B7";
	setAttr ".ihi" 0;
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
select -ne :renderPartition;
	setAttr -s 3 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 5 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
select -ne :defaultRenderingList1;
select -ne :defaultTextureList1;
select -ne :initialShadingGroup;
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	setAttr ".ren" -type "string" "arnold";
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :ikSystem;
	setAttr -s 4 ".sol";
connectAttr "polyTweakUV3.out" "Candle_BlueShape.i";
connectAttr "polyTweakUV3.uvtk[0]" "Candle_BlueShape.uvst[0].uvtw";
connectAttr "groupId1.id" "cake1Shape.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "cake1Shape.iog.og[0].gco";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "layerManager.dli[1]" "layer1.id";
connectAttr "file1.oc" "cake.c";
connectAttr "cake.oc" "lambert2SG.ss";
connectAttr "Candle_BlueShape.iog" "lambert2SG.dsm" -na;
connectAttr "Candle_GreenShape.iog" "lambert2SG.dsm" -na;
connectAttr "CandleRedShape.iog" "lambert2SG.dsm" -na;
connectAttr "cake1Shape.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "groupId1.msg" "lambert2SG.gn" -na;
connectAttr "lambert2SG.msg" "materialInfo1.sg";
connectAttr "cake.msg" "materialInfo1.m";
connectAttr "file1.msg" "materialInfo1.t" -na;
connectAttr "cake.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[0].dn"
		;
connectAttr "lambert2SG.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[1].dn"
		;
connectAttr ":defaultColorMgtGlobals.cme" "file1.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file1.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file1.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file1.ws";
connectAttr "place2dTexture1.c" "file1.c";
connectAttr "place2dTexture1.tf" "file1.tf";
connectAttr "place2dTexture1.rf" "file1.rf";
connectAttr "place2dTexture1.mu" "file1.mu";
connectAttr "place2dTexture1.mv" "file1.mv";
connectAttr "place2dTexture1.s" "file1.s";
connectAttr "place2dTexture1.wu" "file1.wu";
connectAttr "place2dTexture1.wv" "file1.wv";
connectAttr "place2dTexture1.re" "file1.re";
connectAttr "place2dTexture1.of" "file1.of";
connectAttr "place2dTexture1.r" "file1.ro";
connectAttr "place2dTexture1.n" "file1.n";
connectAttr "place2dTexture1.vt1" "file1.vt1";
connectAttr "place2dTexture1.vt2" "file1.vt2";
connectAttr "place2dTexture1.vt3" "file1.vt3";
connectAttr "place2dTexture1.vc1" "file1.vc1";
connectAttr "place2dTexture1.o" "file1.uv";
connectAttr "place2dTexture1.ofs" "file1.fs";
connectAttr "|Candle_Blue|polySurfaceShape1.o" "polyDelEdge1.ip";
connectAttr "polyDelEdge1.out" "polyPlanarProj1.ip";
connectAttr "Candle_BlueShape.wm" "polyPlanarProj1.mp";
connectAttr "polyPlanarProj1.out" "polyTweakUV1.ip";
connectAttr "polyTweakUV1.out" "polyPlanarProj2.ip";
connectAttr "Candle_BlueShape.wm" "polyPlanarProj2.mp";
connectAttr "polyPlanarProj2.out" "polyTweakUV2.ip";
connectAttr "polyTweakUV2.out" "polyPlanarProj3.ip";
connectAttr "Candle_BlueShape.wm" "polyPlanarProj3.mp";
connectAttr "polyPlanarProj3.out" "polyTweakUV3.ip";
connectAttr "lambert2SG.pa" ":renderPartition.st" -na;
connectAttr "cake.msg" ":defaultShaderList1.s" -na;
connectAttr "place2dTexture1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "file1.msg" ":defaultTextureList1.tx" -na;
// End of Cake.ma
