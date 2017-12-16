//Maya ASCII 2017ff05 scene
//Name: Town Blocking.ma
//Last modified: Fri, Dec 15, 2017 11:25:05 PM
//Codeset: 1252
requires maya "2017ff05";
requires "stereoCamera" "10.0";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2017";
fileInfo "version" "2017";
fileInfo "cutIdentifier" "201706020738-1017329";
fileInfo "osv" "Microsoft Windows 8 Business Edition, 64-bit  (Build 9200)\n";
fileInfo "license" "student";
createNode transform -s -n "persp";
	rename -uid "EE9EBC0E-43B9-FDF0-6082-3181C5428ED7";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 97.725065810140876 27.537468767002622 -2.1172620351091909 ;
	setAttr ".r" -type "double3" -22.139060019116858 -264.60059191267521 -0.00071352021991523634 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "5BD1F834-48FC-7E03-F4A9-939F69FBA36F";
	setAttr -k off ".v" no;
	setAttr ".pze" yes;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 27.80783968146212;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 72.333469390869098 16.371017932891846 0 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "B3D9215B-4DE7-8FDE-F927-96A352E80134";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 71.635449324382591 1002.2446253101591 -1.441977942404979 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "836666C9-4E09-C64D-15C2-F88996ADF75F";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 985.8777497931377;
	setAttr ".ow" 0.32413047319642979;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".tp" -type "double3" 71.635449324382591 16.366875517021214 -1.4419779424051979 ;
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	rename -uid "A1242B8B-41BB-BF17-741E-3BBDB56F160B";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 72.966298515896653 16.224246717223167 1002.8838242748523 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "B142DB05-4414-B890-265F-669E599A7EEC";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1002.8838242748523;
	setAttr ".ow" 4.3713619687422725;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".tp" -type "double3" 72.909782277813804 16.033304122434068 0 ;
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	rename -uid "3D5DF9DC-4DA4-EA6B-EE9C-AAB528A87734";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.3816999269327 16.546279907497897 -1.5018904207467314 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "4F1BEDB4-4541-8E91-7EA4-9C9F4C7A8A6A";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 928.74625060254982;
	setAttr ".ow" 0.45347600342651501;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".tp" -type "double3" 71.635449324382591 16.366875517021214 -1.4399740023986085 ;
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "mainDirLight";
	rename -uid "0CE62897-4B16-A9D1-53B7-1CB326325FA4";
	addAttr -ci true -sn "expandedState" -ln "expandedState" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0 43.916291142621631 6.345814789927358 ;
	setAttr ".r" -type "double3" -36.655905485157909 48.164599956205898 4.7684983190068852e-015 ;
createNode directionalLight -n "mainDirLightShape" -p "mainDirLight";
	rename -uid "39B80415-42FE-C67C-96CA-3CAC2BFC521B";
	addAttr -ci true -sn "isolate" -ln "isolate" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "wasEnabled" -ln "wasEnabled" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "childIndex" -ln "childIndex" -dv -1 -at "long";
	setAttr -k off ".v";
	setAttr ".childIndex" 1;
createNode transform -n "fillLight";
	rename -uid "816122DF-41E2-E7FD-217B-1BB1CDDA6934";
	addAttr -ci true -sn "expandedState" -ln "expandedState" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0 43.916291142621631 6.345814789927358 ;
	setAttr ".r" -type "double3" -162.34487073591393 37.857459508858248 -66.759599946462771 ;
createNode directionalLight -n "fillLightShape" -p "fillLight";
	rename -uid "E6128C6D-4C09-A2B9-43B7-B18F1076FE34";
	addAttr -ci true -sn "isolate" -ln "isolate" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "wasEnabled" -ln "wasEnabled" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "childIndex" -ln "childIndex" -dv -1 -at "long";
	setAttr -k off ".v";
	setAttr ".in" 0.20000000298023224;
	setAttr ".urs" no;
	setAttr ".childIndex" 1;
createNode transform -n "ambientLight1";
	rename -uid "ADF2E870-4DD4-305E-F96F-AA8C45BC99C4";
	addAttr -ci true -sn "expandedState" -ln "expandedState" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0 44.114464708319275 6.345814789927358 ;
createNode ambientLight -n "ambientLightShape1" -p "ambientLight1";
	rename -uid "A010DBAD-44F1-53A7-0DBF-F495F126226B";
	addAttr -ci true -sn "isolate" -ln "isolate" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "wasEnabled" -ln "wasEnabled" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "childIndex" -ln "childIndex" -dv -1 -at "long";
	setAttr -k off ".v";
	setAttr ".in" 0.10000000149011612;
	setAttr ".urs" no;
	setAttr ".childIndex" 0;
createNode transform -n "pillarStickOut4";
	rename -uid "9B1DEAE0-4FFB-0849-9FFC-A98A08BC5194";
	setAttr ".t" -type "double3" 66.027103961419684 21.507257325880484 -11.623373984437142 ;
	setAttr ".r" -type "double3" 90.000000000000384 0 0 ;
	setAttr ".s" -type "double3" 0.63704485224014606 0.63704485224014606 0.63704485224014629 ;
createNode mesh -n "pillarStickOut4Shape" -p "pillarStickOut4";
	rename -uid "E57F46F2-4428-BC7E-E47D-C9B039D0704E";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 36 ".uvst[0].uvsp[0:35]" -type "float2" 0.61048543 0.04576458
		 0.5 1.4901161e-008 0.38951457 0.04576458 0.34375 0.15625 0.38951457 0.26673543 0.5
		 0.3125 0.61048543 0.26673543 0.65625 0.15625 0.375 0.3125 0.40625 0.3125 0.4375 0.3125
		 0.46875 0.3125 0.5 0.3125 0.53125 0.3125 0.5625 0.3125 0.59375 0.3125 0.625 0.3125
		 0.375 0.68843985 0.40625 0.68843985 0.4375 0.68843985 0.46875 0.68843985 0.5 0.68843985
		 0.53125 0.68843985 0.5625 0.68843985 0.59375 0.68843985 0.625 0.68843985 0.61048543
		 0.73326457 0.5 0.6875 0.38951457 0.73326457 0.34375 0.84375 0.38951457 0.95423543
		 0.5 1 0.61048543 0.95423543 0.65625 0.84375 0.5 0.15000001 0.5 0.83749998;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 18 ".pt[0:17]" -type "float3"  0 -6.8262987 2.220446e-016 
		0 -6.8262987 2.220446e-016 0 -6.8262987 2.220446e-016 0 -6.8262987 -1.5157428e-015 
		0 -6.8262987 2.220446e-016 0 -6.8262987 2.220446e-016 0 -6.8262987 2.220446e-016 
		0 -6.8262987 -1.5157428e-015 0 6.8262987 -2.220446e-016 0 6.8262987 -2.220446e-016 
		0 6.8262987 -2.220446e-016 0 6.8262987 1.5157428e-015 0 6.8262987 -2.220446e-016 
		0 6.8262987 -2.220446e-016 0 6.8262987 -2.220446e-016 0 6.8262987 1.5157428e-015 
		0 -6.8262987 -1.5157428e-015 0 6.8262987 1.5157428e-015;
	setAttr -s 18 ".vt[0:17]"  0.70710671 -1 -0.70710671 0 -1 -0.99999988
		 -0.70710671 -1 -0.70710671 -0.99999988 -1 0 -0.70710671 -1 0.70710671 0 -1 0.99999994
		 0.70710677 -1 0.70710677 1 -1 0 0.70710671 1 -0.70710671 0 1 -0.99999988 -0.70710671 1 -0.70710671
		 -0.99999988 1 0 -0.70710671 1 0.70710671 0 1 0.99999994 0.70710677 1 0.70710677 1 1 0
		 0 -1 0 0 1 0;
	setAttr -s 40 ".ed[0:39]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 0 0 8 9 0 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 8 0 0 8 0 1 9 0 2 10 0
		 3 11 0 4 12 0 5 13 0 6 14 0 7 15 0 16 0 1 16 1 1 16 2 1 16 3 1 16 4 1 16 5 1 16 6 1
		 16 7 1 8 17 1 9 17 1 10 17 1 11 17 1 12 17 1 13 17 1 14 17 1 15 17 1;
	setAttr -s 24 -ch 80 ".fc[0:23]" -type "polyFaces" 
		f 4 0 17 -9 -17
		mu 0 4 8 9 18 17
		f 4 1 18 -10 -18
		mu 0 4 9 10 19 18
		f 4 2 19 -11 -19
		mu 0 4 10 11 20 19
		f 4 3 20 -12 -20
		mu 0 4 11 12 21 20
		f 4 4 21 -13 -21
		mu 0 4 12 13 22 21
		f 4 5 22 -14 -22
		mu 0 4 13 14 23 22
		f 4 6 23 -15 -23
		mu 0 4 14 15 24 23
		f 4 7 16 -16 -24
		mu 0 4 15 16 25 24
		f 3 -1 -25 25
		mu 0 3 1 0 34
		f 3 -2 -26 26
		mu 0 3 2 1 34
		f 3 -3 -27 27
		mu 0 3 3 2 34
		f 3 -4 -28 28
		mu 0 3 4 3 34
		f 3 -5 -29 29
		mu 0 3 5 4 34
		f 3 -6 -30 30
		mu 0 3 6 5 34
		f 3 -7 -31 31
		mu 0 3 7 6 34
		f 3 -8 -32 24
		mu 0 3 0 7 34
		f 3 8 33 -33
		mu 0 3 32 31 35
		f 3 9 34 -34
		mu 0 3 31 30 35
		f 3 10 35 -35
		mu 0 3 30 29 35
		f 3 11 36 -36
		mu 0 3 29 28 35
		f 3 12 37 -37
		mu 0 3 28 27 35
		f 3 13 38 -38
		mu 0 3 27 26 35
		f 3 14 39 -39
		mu 0 3 26 33 35
		f 3 15 32 -40
		mu 0 3 33 32 35;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pillarStickOut3";
	rename -uid "D18D4C99-4069-B535-4ADE-F9B4EE995114";
	setAttr ".t" -type "double3" 57.701070778184182 21.507257325880484 -11.623373984437144 ;
	setAttr ".r" -type "double3" 90.000000000000384 0 0 ;
	setAttr ".s" -type "double3" 0.63704485224014606 0.63704485224014606 0.63704485224014629 ;
createNode mesh -n "pillarStickOut3Shape" -p "pillarStickOut3";
	rename -uid "A1A509B8-433C-FD88-67E2-FA808FE118DF";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 36 ".uvst[0].uvsp[0:35]" -type "float2" 0.61048543 0.04576458
		 0.5 1.4901161e-008 0.38951457 0.04576458 0.34375 0.15625 0.38951457 0.26673543 0.5
		 0.3125 0.61048543 0.26673543 0.65625 0.15625 0.375 0.3125 0.40625 0.3125 0.4375 0.3125
		 0.46875 0.3125 0.5 0.3125 0.53125 0.3125 0.5625 0.3125 0.59375 0.3125 0.625 0.3125
		 0.375 0.68843985 0.40625 0.68843985 0.4375 0.68843985 0.46875 0.68843985 0.5 0.68843985
		 0.53125 0.68843985 0.5625 0.68843985 0.59375 0.68843985 0.625 0.68843985 0.61048543
		 0.73326457 0.5 0.6875 0.38951457 0.73326457 0.34375 0.84375 0.38951457 0.95423543
		 0.5 1 0.61048543 0.95423543 0.65625 0.84375 0.5 0.15000001 0.5 0.83749998;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 18 ".pt[0:17]" -type "float3"  5.2402527e-014 -6.8262987 
		-1.7288393e-012 0 -6.8262987 -1.6766588e-012 -5.2402527e-014 -6.8262987 -1.6244783e-012 
		-1.0480505e-013 -6.8262987 -1.6143098e-012 -5.2402527e-014 -6.8262987 -1.6244783e-012 
		0 -6.8262987 -1.6766588e-012 5.2402527e-014 -6.8262987 -1.7288393e-012 1.0480505e-013 
		-6.8262987 -1.7424807e-012 5.2402527e-014 6.8262987 -1.7292834e-012 0 6.8262987 -1.6771029e-012 
		-5.2402527e-014 6.8262987 -1.6249224e-012 -1.0480505e-013 6.8262987 -1.6112812e-012 
		-5.2402527e-014 6.8262987 -1.6249224e-012 0 6.8262987 -1.6771029e-012 5.2402527e-014 
		6.8262987 -1.7292834e-012 1.0480505e-013 6.8262987 -1.7394523e-012 0 -6.8262987 -1.6784016e-012 
		0 6.8262987 -1.6753603e-012;
	setAttr -s 18 ".vt[0:17]"  0.70710671 -1 -0.70710671 0 -1 -0.99999988
		 -0.70710671 -1 -0.70710671 -0.99999988 -1 0 -0.70710671 -1 0.70710671 0 -1 0.99999994
		 0.70710677 -1 0.70710677 1 -1 0 0.70710671 1 -0.70710671 0 1 -0.99999988 -0.70710671 1 -0.70710671
		 -0.99999988 1 0 -0.70710671 1 0.70710671 0 1 0.99999994 0.70710677 1 0.70710677 1 1 0
		 0 -1 0 0 1 0;
	setAttr -s 40 ".ed[0:39]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 0 0 8 9 0 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 8 0 0 8 0 1 9 0 2 10 0
		 3 11 0 4 12 0 5 13 0 6 14 0 7 15 0 16 0 1 16 1 1 16 2 1 16 3 1 16 4 1 16 5 1 16 6 1
		 16 7 1 8 17 1 9 17 1 10 17 1 11 17 1 12 17 1 13 17 1 14 17 1 15 17 1;
	setAttr -s 24 -ch 80 ".fc[0:23]" -type "polyFaces" 
		f 4 0 17 -9 -17
		mu 0 4 8 9 18 17
		f 4 1 18 -10 -18
		mu 0 4 9 10 19 18
		f 4 2 19 -11 -19
		mu 0 4 10 11 20 19
		f 4 3 20 -12 -20
		mu 0 4 11 12 21 20
		f 4 4 21 -13 -21
		mu 0 4 12 13 22 21
		f 4 5 22 -14 -22
		mu 0 4 13 14 23 22
		f 4 6 23 -15 -23
		mu 0 4 14 15 24 23
		f 4 7 16 -16 -24
		mu 0 4 15 16 25 24
		f 3 -1 -25 25
		mu 0 3 1 0 34
		f 3 -2 -26 26
		mu 0 3 2 1 34
		f 3 -3 -27 27
		mu 0 3 3 2 34
		f 3 -4 -28 28
		mu 0 3 4 3 34
		f 3 -5 -29 29
		mu 0 3 5 4 34
		f 3 -6 -30 30
		mu 0 3 6 5 34
		f 3 -7 -31 31
		mu 0 3 7 6 34
		f 3 -8 -32 24
		mu 0 3 0 7 34
		f 3 8 33 -33
		mu 0 3 32 31 35
		f 3 9 34 -34
		mu 0 3 31 30 35
		f 3 10 35 -35
		mu 0 3 30 29 35
		f 3 11 36 -36
		mu 0 3 29 28 35
		f 3 12 37 -37
		mu 0 3 28 27 35
		f 3 13 38 -38
		mu 0 3 27 26 35
		f 3 14 39 -39
		mu 0 3 26 33 35
		f 3 15 32 -40
		mu 0 3 33 32 35;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pillarStickOut2";
	rename -uid "93EA8E10-4B71-4754-1B4D-389B7EC2115B";
	setAttr ".t" -type "double3" 61.860509766631651 21.507257325880484 -11.623373984437142 ;
	setAttr ".r" -type "double3" 90.000000000000384 0 0 ;
	setAttr ".s" -type "double3" 0.63704485224014606 0.63704485224014606 0.63704485224014629 ;
createNode mesh -n "pillarStickOut2Shape" -p "pillarStickOut2";
	rename -uid "47610EBA-4579-FD50-4726-B28F349E479F";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 36 ".uvst[0].uvsp[0:35]" -type "float2" 0.61048543 0.04576458
		 0.5 1.4901161e-008 0.38951457 0.04576458 0.34375 0.15625 0.38951457 0.26673543 0.5
		 0.3125 0.61048543 0.26673543 0.65625 0.15625 0.375 0.3125 0.40625 0.3125 0.4375 0.3125
		 0.46875 0.3125 0.5 0.3125 0.53125 0.3125 0.5625 0.3125 0.59375 0.3125 0.625 0.3125
		 0.375 0.68843985 0.40625 0.68843985 0.4375 0.68843985 0.46875 0.68843985 0.5 0.68843985
		 0.53125 0.68843985 0.5625 0.68843985 0.59375 0.68843985 0.625 0.68843985 0.61048543
		 0.73326457 0.5 0.6875 0.38951457 0.73326457 0.34375 0.84375 0.38951457 0.95423543
		 0.5 1 0.61048543 0.95423543 0.65625 0.84375 0.5 0.15000001 0.5 0.83749998;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 18 ".pt[0:17]" -type "float3"  5.2402527e-014 -6.8262987 
		-1.6863178e-012 0 -6.8262987 -1.6766588e-012 -5.2402527e-014 -6.8262987 -1.6702195e-012 
		-1.0480505e-013 -6.8262987 -1.6463569e-012 -5.2402527e-014 -6.8262987 -1.6702195e-012 
		0 -6.8262987 -1.6766588e-012 5.2402527e-014 -6.8262987 -1.6863178e-012 1.0480505e-013 
		-6.8262987 -1.7104397e-012 5.2402527e-014 6.8262987 -1.6835422e-012 0 6.8262987 -1.6771029e-012 
		-5.2402527e-014 6.8262987 -1.667444e-012 -1.0480505e-013 6.8262987 -1.6433222e-012 
		-5.2402527e-014 6.8262987 -1.667444e-012 0 6.8262987 -1.6771029e-012 5.2402527e-014 
		6.8262987 -1.6835422e-012 1.0480505e-013 6.8262987 -1.7074048e-012 0 -6.8262987 -1.6784016e-012 
		0 6.8262987 -1.6753603e-012;
	setAttr -s 18 ".vt[0:17]"  0.70710671 -1 -0.70710671 0 -1 -0.99999988
		 -0.70710671 -1 -0.70710671 -0.99999988 -1 0 -0.70710671 -1 0.70710671 0 -1 0.99999994
		 0.70710677 -1 0.70710677 1 -1 0 0.70710671 1 -0.70710671 0 1 -0.99999988 -0.70710671 1 -0.70710671
		 -0.99999988 1 0 -0.70710671 1 0.70710671 0 1 0.99999994 0.70710677 1 0.70710677 1 1 0
		 0 -1 0 0 1 0;
	setAttr -s 40 ".ed[0:39]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 0 0 8 9 0 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 8 0 0 8 0 1 9 0 2 10 0
		 3 11 0 4 12 0 5 13 0 6 14 0 7 15 0 16 0 1 16 1 1 16 2 1 16 3 1 16 4 1 16 5 1 16 6 1
		 16 7 1 8 17 1 9 17 1 10 17 1 11 17 1 12 17 1 13 17 1 14 17 1 15 17 1;
	setAttr -s 24 -ch 80 ".fc[0:23]" -type "polyFaces" 
		f 4 0 17 -9 -17
		mu 0 4 8 9 18 17
		f 4 1 18 -10 -18
		mu 0 4 9 10 19 18
		f 4 2 19 -11 -19
		mu 0 4 10 11 20 19
		f 4 3 20 -12 -20
		mu 0 4 11 12 21 20
		f 4 4 21 -13 -21
		mu 0 4 12 13 22 21
		f 4 5 22 -14 -22
		mu 0 4 13 14 23 22
		f 4 6 23 -15 -23
		mu 0 4 14 15 24 23
		f 4 7 16 -16 -24
		mu 0 4 15 16 25 24
		f 3 -1 -25 25
		mu 0 3 1 0 34
		f 3 -2 -26 26
		mu 0 3 2 1 34
		f 3 -3 -27 27
		mu 0 3 3 2 34
		f 3 -4 -28 28
		mu 0 3 4 3 34
		f 3 -5 -29 29
		mu 0 3 5 4 34
		f 3 -6 -30 30
		mu 0 3 6 5 34
		f 3 -7 -31 31
		mu 0 3 7 6 34
		f 3 -8 -32 24
		mu 0 3 0 7 34
		f 3 8 33 -33
		mu 0 3 32 31 35
		f 3 9 34 -34
		mu 0 3 31 30 35
		f 3 10 35 -35
		mu 0 3 30 29 35
		f 3 11 36 -36
		mu 0 3 29 28 35
		f 3 12 37 -37
		mu 0 3 28 27 35
		f 3 13 38 -38
		mu 0 3 27 26 35
		f 3 14 39 -39
		mu 0 3 26 33 35
		f 3 15 32 -40
		mu 0 3 33 32 35;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pillarStickOut1";
	rename -uid "F9965A9B-4AB3-8201-7BD0-B198EAC36452";
	setAttr ".t" -type "double3" 53.971573290821055 21.507257325880484 -11.623373984437144 ;
	setAttr ".r" -type "double3" 90.000000000000384 0 0 ;
	setAttr ".s" -type "double3" 0.63704485224014606 0.63704485224014606 0.63704485224014629 ;
createNode mesh -n "pillarStickOut1Shape" -p "pillarStickOut1";
	rename -uid "9BBE3478-4165-293D-AD48-EABBD45F5C5D";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 36 ".uvst[0].uvsp[0:35]" -type "float2" 0.61048543 0.04576458
		 0.5 1.4901161e-008 0.38951457 0.04576458 0.34375 0.15625 0.38951457 0.26673543 0.5
		 0.3125 0.61048543 0.26673543 0.65625 0.15625 0.375 0.3125 0.40625 0.3125 0.4375 0.3125
		 0.46875 0.3125 0.5 0.3125 0.53125 0.3125 0.5625 0.3125 0.59375 0.3125 0.625 0.3125
		 0.375 0.68843985 0.40625 0.68843985 0.4375 0.68843985 0.46875 0.68843985 0.5 0.68843985
		 0.53125 0.68843985 0.5625 0.68843985 0.59375 0.68843985 0.625 0.68843985 0.61048543
		 0.73326457 0.5 0.6875 0.38951457 0.73326457 0.34375 0.84375 0.38951457 0.95423543
		 0.5 1 0.61048543 0.95423543 0.65625 0.84375 0.5 0.15000001 0.5 0.83749998;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 18 ".pt[0:17]" -type "float3"  0 -6.8262987 2.220446e-016 
		0 -6.8262987 2.220446e-016 0 -6.8262987 2.220446e-016 0 -6.8262987 -1.5157428e-015 
		0 -6.8262987 2.220446e-016 0 -6.8262987 2.220446e-016 0 -6.8262987 2.220446e-016 
		0 -6.8262987 -1.5157428e-015 0 6.8262987 -2.220446e-016 0 6.8262987 -2.220446e-016 
		0 6.8262987 -2.220446e-016 0 6.8262987 1.5157428e-015 0 6.8262987 -2.220446e-016 
		0 6.8262987 -2.220446e-016 0 6.8262987 -2.220446e-016 0 6.8262987 1.5157428e-015 
		0 -6.8262987 -1.5157428e-015 0 6.8262987 1.5157428e-015;
	setAttr -s 18 ".vt[0:17]"  0.70710671 -1 -0.70710671 0 -1 -0.99999988
		 -0.70710671 -1 -0.70710671 -0.99999988 -1 0 -0.70710671 -1 0.70710671 0 -1 0.99999994
		 0.70710677 -1 0.70710677 1 -1 0 0.70710671 1 -0.70710671 0 1 -0.99999988 -0.70710671 1 -0.70710671
		 -0.99999988 1 0 -0.70710671 1 0.70710671 0 1 0.99999994 0.70710677 1 0.70710677 1 1 0
		 0 -1 0 0 1 0;
	setAttr -s 40 ".ed[0:39]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 0 0 8 9 0 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 8 0 0 8 0 1 9 0 2 10 0
		 3 11 0 4 12 0 5 13 0 6 14 0 7 15 0 16 0 1 16 1 1 16 2 1 16 3 1 16 4 1 16 5 1 16 6 1
		 16 7 1 8 17 1 9 17 1 10 17 1 11 17 1 12 17 1 13 17 1 14 17 1 15 17 1;
	setAttr -s 24 -ch 80 ".fc[0:23]" -type "polyFaces" 
		f 4 0 17 -9 -17
		mu 0 4 8 9 18 17
		f 4 1 18 -10 -18
		mu 0 4 9 10 19 18
		f 4 2 19 -11 -19
		mu 0 4 10 11 20 19
		f 4 3 20 -12 -20
		mu 0 4 11 12 21 20
		f 4 4 21 -13 -21
		mu 0 4 12 13 22 21
		f 4 5 22 -14 -22
		mu 0 4 13 14 23 22
		f 4 6 23 -15 -23
		mu 0 4 14 15 24 23
		f 4 7 16 -16 -24
		mu 0 4 15 16 25 24
		f 3 -1 -25 25
		mu 0 3 1 0 34
		f 3 -2 -26 26
		mu 0 3 2 1 34
		f 3 -3 -27 27
		mu 0 3 3 2 34
		f 3 -4 -28 28
		mu 0 3 4 3 34
		f 3 -5 -29 29
		mu 0 3 5 4 34
		f 3 -6 -30 30
		mu 0 3 6 5 34
		f 3 -7 -31 31
		mu 0 3 7 6 34
		f 3 -8 -32 24
		mu 0 3 0 7 34
		f 3 8 33 -33
		mu 0 3 32 31 35
		f 3 9 34 -34
		mu 0 3 31 30 35
		f 3 10 35 -35
		mu 0 3 30 29 35
		f 3 11 36 -36
		mu 0 3 29 28 35
		f 3 12 37 -37
		mu 0 3 28 27 35
		f 3 13 38 -38
		mu 0 3 27 26 35
		f 3 14 39 -39
		mu 0 3 26 33 35
		f 3 15 32 -40
		mu 0 3 33 32 35;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pillarStickOut";
	rename -uid "698BE828-40A2-ED24-6316-26B2A9685015";
	setAttr ".t" -type "double3" 69.728733911168902 21.507257325880484 -11.623373984437144 ;
	setAttr ".r" -type "double3" 90.000000000000384 0 0 ;
	setAttr ".s" -type "double3" 0.63704485224014606 0.63704485224014606 0.63704485224014629 ;
createNode mesh -n "pillarStickOutShape" -p "pillarStickOut";
	rename -uid "1DE35E60-42B9-EE04-E736-248285654BA8";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 36 ".uvst[0].uvsp[0:35]" -type "float2" 0.61048543 0.04576458
		 0.5 1.4901161e-008 0.38951457 0.04576458 0.34375 0.15625 0.38951457 0.26673543 0.5
		 0.3125 0.61048543 0.26673543 0.65625 0.15625 0.375 0.3125 0.40625 0.3125 0.4375 0.3125
		 0.46875 0.3125 0.5 0.3125 0.53125 0.3125 0.5625 0.3125 0.59375 0.3125 0.625 0.3125
		 0.375 0.68843985 0.40625 0.68843985 0.4375 0.68843985 0.46875 0.68843985 0.5 0.68843985
		 0.53125 0.68843985 0.5625 0.68843985 0.59375 0.68843985 0.625 0.68843985 0.61048543
		 0.73326457 0.5 0.6875 0.38951457 0.73326457 0.34375 0.84375 0.38951457 0.95423543
		 0.5 1 0.61048543 0.95423543 0.65625 0.84375 0.5 0.15000001 0.5 0.83749998;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 18 ".pt[0:17]" -type "float3"  5.2402527e-014 -6.8262987 
		0 0 -6.8262987 2.220446e-016 -5.2402527e-014 -6.8262987 4.4408921e-016 -1.0480505e-013 
		-6.8262987 1.4506208e-014 -5.2402527e-014 -6.8262987 4.4408921e-016 0 -6.8262987 
		2.220446e-016 5.2402527e-014 -6.8262987 0 1.0480505e-013 -6.8262987 -1.7537721e-014 
		5.2402527e-014 6.8262987 -4.4408921e-016 0 6.8262987 -2.220446e-016 -5.2402527e-014 
		6.8262987 0 -1.0480505e-013 6.8262987 1.7537721e-014 -5.2402527e-014 6.8262987 0 
		0 6.8262987 -2.220446e-016 5.2402527e-014 6.8262987 -4.4408921e-016 1.0480505e-013 
		6.8262987 -1.4506208e-014 0 -6.8262987 -1.5157428e-015 0 6.8262987 1.5157428e-015;
	setAttr -s 18 ".vt[0:17]"  0.70710671 -1 -0.70710671 0 -1 -0.99999988
		 -0.70710671 -1 -0.70710671 -0.99999988 -1 0 -0.70710671 -1 0.70710671 0 -1 0.99999994
		 0.70710677 -1 0.70710677 1 -1 0 0.70710671 1 -0.70710671 0 1 -0.99999988 -0.70710671 1 -0.70710671
		 -0.99999988 1 0 -0.70710671 1 0.70710671 0 1 0.99999994 0.70710677 1 0.70710677 1 1 0
		 0 -1 0 0 1 0;
	setAttr -s 40 ".ed[0:39]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 0 0 8 9 0 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 8 0 0 8 0 1 9 0 2 10 0
		 3 11 0 4 12 0 5 13 0 6 14 0 7 15 0 16 0 1 16 1 1 16 2 1 16 3 1 16 4 1 16 5 1 16 6 1
		 16 7 1 8 17 1 9 17 1 10 17 1 11 17 1 12 17 1 13 17 1 14 17 1 15 17 1;
	setAttr -s 24 -ch 80 ".fc[0:23]" -type "polyFaces" 
		f 4 0 17 -9 -17
		mu 0 4 8 9 18 17
		f 4 1 18 -10 -18
		mu 0 4 9 10 19 18
		f 4 2 19 -11 -19
		mu 0 4 10 11 20 19
		f 4 3 20 -12 -20
		mu 0 4 11 12 21 20
		f 4 4 21 -13 -21
		mu 0 4 12 13 22 21
		f 4 5 22 -14 -22
		mu 0 4 13 14 23 22
		f 4 6 23 -15 -23
		mu 0 4 14 15 24 23
		f 4 7 16 -16 -24
		mu 0 4 15 16 25 24
		f 3 -1 -25 25
		mu 0 3 1 0 34
		f 3 -2 -26 26
		mu 0 3 2 1 34
		f 3 -3 -27 27
		mu 0 3 3 2 34
		f 3 -4 -28 28
		mu 0 3 4 3 34
		f 3 -5 -29 29
		mu 0 3 5 4 34
		f 3 -6 -30 30
		mu 0 3 6 5 34
		f 3 -7 -31 31
		mu 0 3 7 6 34
		f 3 -8 -32 24
		mu 0 3 0 7 34
		f 3 8 33 -33
		mu 0 3 32 31 35
		f 3 9 34 -34
		mu 0 3 31 30 35
		f 3 10 35 -35
		mu 0 3 30 29 35
		f 3 11 36 -36
		mu 0 3 29 28 35
		f 3 12 37 -37
		mu 0 3 28 27 35
		f 3 13 38 -38
		mu 0 3 27 26 35
		f 3 14 39 -39
		mu 0 3 26 33 35
		f 3 15 32 -40
		mu 0 3 33 32 35;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "door";
	rename -uid "393E2C89-4FDC-E2D3-9226-14A91D9E1CC0";
	setAttr ".t" -type "double3" 66.435523103191017 16.241132047593958 -7.9291484263593235 ;
	setAttr ".s" -type "double3" 8.3342564306172058 8.3342564306172058 8.3342564306172058 ;
createNode mesh -n "doorShape" -p "door";
	rename -uid "E662C779-45BC-D574-BCB1-D199A30610A5";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.625 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  0.45213059 0.35676062 -0.43635833 
		-0.12155648 0.35676062 -0.43635833 0.45213059 -0.041061014 -0.43635833 -0.12155648 
		-0.041061014 -0.43635833 0.45213059 -0.041061014 0.52002066 -0.12155648 -0.041061014 
		0.52002066 0.45213059 0.35676062 0.52002066 -0.12155648 0.35676062 0.52002066;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "doorframe";
	rename -uid "1CDD04C4-4417-01B1-9607-62BEA5023A87";
	setAttr ".t" -type "double3" 67.093916623394577 19.992707546702466 -7.4302978543955271 ;
	setAttr ".s" -type "double3" 0.96498650747511427 0.96498650747511427 0.96498650747511427 ;
createNode mesh -n "doorframeShape" -p "doorframe";
	rename -uid "64DA97E0-4E79-ABD2-78E2-FABBADA1C2AB";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.125 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 30 ".uvst[0].uvsp[0:29]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.625 0 0.875 0 0.875 0.25 0.625 0.25 0.125 0 0.375
		 0 0.375 0.25 0.125 0.25 0.625 0 0.875 0 0.875 0 0.625 0 0.125 0 0.375 0 0.375 0 0.125
		 0;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 24 ".vt[0:23]"  -1.17425537 0.10241413 0.1355052 2.63916016 0.10241413 0.1355052
		 -1.17425537 0.5 0.1355052 2.63916016 0.5 0.1355052 -1.17425537 0.5 -0.17981815 2.63916016 0.5 -0.17981815
		 -1.17425537 0.10241413 -0.17981815 2.63916016 0.10241413 -0.17981815 3.024299622 0.10241413 -0.17981815
		 3.024299622 0.10241413 0.1355052 3.024299622 0.5 -0.17981815 3.024299622 0.5 0.1355052
		 -1.55940247 0.10241413 -0.17981815 -1.55940247 0.10241413 0.1355052 -1.55940247 0.5 0.1355052
		 -1.55940247 0.5 -0.17981815 2.63916016 -5.26429558 -0.17981815 2.63916016 -5.26429558 0.1355052
		 3.024299622 -5.26429558 -0.17981815 3.024299622 -5.26429558 0.1355052 -1.17425537 -5.26429558 -0.17981815
		 -1.17425537 -5.26429558 0.1355052 -1.55940247 -5.26429558 0.1355052 -1.55940247 -5.26429558 -0.17981815;
	setAttr -s 44 ".ed[0:43]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 1 1 3 1 2 4 1
		 3 5 1 4 6 1 5 7 1 6 0 0 7 1 0 7 8 1 1 9 1 8 9 1 5 10 0 10 8 0 3 11 0 11 10 0 9 11 0
		 6 12 1 0 13 1 12 13 1 2 14 0 13 14 0 4 15 0 14 15 0 15 12 0 7 16 0 1 17 0 16 17 0
		 8 18 0 16 18 0 9 19 0 18 19 0 17 19 0 6 20 0 0 21 0 20 21 0 13 22 0 21 22 0 12 23 0
		 23 22 0 20 23 0;
	setAttr -s 22 -ch 88 ".fc[0:21]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -15 -17 -19 -20
		mu 0 4 14 15 16 17
		f 4 22 24 26 27
		mu 0 4 18 19 20 21
		f 4 -31 32 34 -36
		mu 0 4 22 23 24 25
		f 4 -10 15 16 -13
		mu 0 4 10 11 16 15
		f 4 -8 17 18 -16
		mu 0 4 11 3 17 16
		f 4 -6 13 19 -18
		mu 0 4 3 1 14 17
		f 4 38 40 -43 -44
		mu 0 4 26 27 28 29
		f 4 4 23 -25 -22
		mu 0 4 0 2 20 19
		f 4 6 25 -27 -24
		mu 0 4 2 13 21 20
		f 4 8 20 -28 -26
		mu 0 4 13 12 18 21
		f 4 -12 28 30 -30
		mu 0 4 1 10 23 22
		f 4 12 31 -33 -29
		mu 0 4 10 15 24 23
		f 4 14 33 -35 -32
		mu 0 4 15 14 25 24
		f 4 -14 29 35 -34
		mu 0 4 14 1 22 25
		f 4 10 37 -39 -37
		mu 0 4 12 0 27 26
		f 4 21 39 -41 -38
		mu 0 4 0 19 28 27
		f 4 -23 41 42 -40
		mu 0 4 19 18 29 28
		f 4 -21 36 43 -42
		mu 0 4 18 12 26 29;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "person_scale1";
	rename -uid "33F3E1FC-4727-71B0-4DB1-438250876C88";
	setAttr ".t" -type "double3" 67.104577375576184 16.903854934939638 -6.8199369650891404 ;
	setAttr ".r" -type "double3" 0 90.474637333897391 0 ;
	setAttr ".s" -type "double3" 1.0001107716740645 2 1.0001107716740645 ;
	setAttr ".rp" -type "double3" 0 -2.0002215220216302 0 ;
	setAttr ".sp" -type "double3" 0 -0.999999989337925 0 ;
	setAttr ".spt" -type "double3" 0 -1.0002215326836921 0 ;
createNode mesh -n "person_scale1Shape" -p "person_scale1";
	rename -uid "5F3D8BF7-4EA0-CB40-92A2-B58C724593FF";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 36 ".uvst[0].uvsp[0:35]" -type "float2" 0.61048543 0.04576458
		 0.5 1.4901161e-008 0.38951457 0.04576458 0.34375 0.15625 0.38951457 0.26673543 0.5
		 0.3125 0.61048543 0.26673543 0.65625 0.15625 0.375 0.3125 0.40625 0.3125 0.4375 0.3125
		 0.46875 0.3125 0.5 0.3125 0.53125 0.3125 0.5625 0.3125 0.59375 0.3125 0.625 0.3125
		 0.375 0.68843985 0.40625 0.68843985 0.4375 0.68843985 0.46875 0.68843985 0.5 0.68843985
		 0.53125 0.68843985 0.5625 0.68843985 0.59375 0.68843985 0.625 0.68843985 0.61048543
		 0.73326457 0.5 0.6875 0.38951457 0.73326457 0.34375 0.84375 0.38951457 0.95423543
		 0.5 1 0.61048543 0.95423543 0.65625 0.84375 0.5 0.15000001 0.5 0.83749998;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 18 ".vt[0:17]"  0.70710671 -1 -0.70710671 0 -1 -0.99999988
		 -0.70710671 -1 -0.70710671 -0.99999988 -1 0 -0.70710671 -1 0.70710671 0 -1 0.99999994
		 0.70710677 -1 0.70710677 1 -1 0 0.70710671 1 -0.70710671 0 1 -0.99999988 -0.70710671 1 -0.70710671
		 -0.99999988 1 0 -0.70710671 1 0.70710671 0 1 0.99999994 0.70710677 1 0.70710677 1 1 0
		 0 -1 0 0 1 0;
	setAttr -s 40 ".ed[0:39]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 0 0 8 9 0 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 8 0 0 8 0 1 9 0 2 10 0
		 3 11 0 4 12 0 5 13 0 6 14 0 7 15 0 16 0 1 16 1 1 16 2 1 16 3 1 16 4 1 16 5 1 16 6 1
		 16 7 1 8 17 1 9 17 1 10 17 1 11 17 1 12 17 1 13 17 1 14 17 1 15 17 1;
	setAttr -s 24 -ch 80 ".fc[0:23]" -type "polyFaces" 
		f 4 0 17 -9 -17
		mu 0 4 8 9 18 17
		f 4 1 18 -10 -18
		mu 0 4 9 10 19 18
		f 4 2 19 -11 -19
		mu 0 4 10 11 20 19
		f 4 3 20 -12 -20
		mu 0 4 11 12 21 20
		f 4 4 21 -13 -21
		mu 0 4 12 13 22 21
		f 4 5 22 -14 -22
		mu 0 4 13 14 23 22
		f 4 6 23 -15 -23
		mu 0 4 14 15 24 23
		f 4 7 16 -16 -24
		mu 0 4 15 16 25 24
		f 3 -1 -25 25
		mu 0 3 1 0 34
		f 3 -2 -26 26
		mu 0 3 2 1 34
		f 3 -3 -27 27
		mu 0 3 3 2 34
		f 3 -4 -28 28
		mu 0 3 4 3 34
		f 3 -5 -29 29
		mu 0 3 5 4 34
		f 3 -6 -30 30
		mu 0 3 6 5 34
		f 3 -7 -31 31
		mu 0 3 7 6 34
		f 3 -8 -32 24
		mu 0 3 0 7 34
		f 3 8 33 -33
		mu 0 3 32 31 35
		f 3 9 34 -34
		mu 0 3 31 30 35
		f 3 10 35 -35
		mu 0 3 30 29 35
		f 3 11 36 -36
		mu 0 3 29 28 35
		f 3 12 37 -37
		mu 0 3 28 27 35
		f 3 13 38 -38
		mu 0 3 27 26 35
		f 3 14 39 -39
		mu 0 3 26 33 35
		f 3 15 32 -40
		mu 0 3 33 32 35;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "person_scale";
	rename -uid "A77794D4-467C-A18D-C087-789DC1077351";
	setAttr ".t" -type "double3" 88.247676341221094 16.903854934939638 -0.14907814722118651 ;
	setAttr ".r" -type "double3" 0 90.474637333897391 0 ;
	setAttr ".s" -type "double3" 1.0001107716740645 1 1.0001107716740645 ;
	setAttr ".rp" -type "double3" 0 -2.0002215220216302 0 ;
	setAttr ".sp" -type "double3" 0 -0.999999989337925 0 ;
	setAttr ".spt" -type "double3" 0 -1.0002215326836921 0 ;
createNode mesh -n "person_scaleShape" -p "person_scale";
	rename -uid "3F47F66B-4402-EF21-D818-EC8633935470";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.84375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 44 ".uvst[0].uvsp[0:43]" -type "float2" 0.61048543 0.04576458
		 0.5 1.4901161e-008 0.38951457 0.04576458 0.34375 0.15625 0.38951457 0.26673543 0.5
		 0.3125 0.61048543 0.26673543 0.65625 0.15625 0.375 0.3125 0.40625 0.3125 0.4375 0.3125
		 0.46875 0.3125 0.5 0.3125 0.53125 0.3125 0.5625 0.3125 0.59375 0.3125 0.625 0.3125
		 0.375 0.68843985 0.40625 0.68843985 0.4375 0.68843985 0.46875 0.68843985 0.5 0.68843985
		 0.53125 0.68843985 0.5625 0.68843985 0.59375 0.68843985 0.625 0.68843985 0.61048543
		 0.73326457 0.5 0.6875 0.38951457 0.73326457 0.34375 0.84375 0.38951457 0.95423543
		 0.5 1 0.61048543 0.95423543 0.65625 0.84375 0.5 0.15000001 0.5 0.83749998 0.61048543
		 0.95423543 0.5 1 0.38951457 0.95423543 0.34375 0.84375 0.38951457 0.73326457 0.5
		 0.6875 0.61048543 0.73326457 0.65625 0.84375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 9 ".pt[17:25]" -type "float3"  0 -1.1920929e-007 0 0 -1.1920929e-007 
		0 0 -1.1920929e-007 0 0 -1.1920929e-007 0 0 -1.1920929e-007 0 0 -1.1920929e-007 0 
		0 -1.1920929e-007 0 0 -1.1920929e-007 0 0 -1.1920929e-007 0;
	setAttr -s 26 ".vt[0:25]"  0.70710671 -1 -0.70711517 5.9604645e-008 -1 -1
		 -0.70710665 -1 -0.70710754 -0.99999982 -1 0 -0.70710665 -1 0.70709991 0 -1 1 0.70710683 -1 0.70710754
		 0.99999994 -1 0 0.70710671 1 -0.70711517 5.9604645e-008 1 -1 -0.70710665 1 -0.70710754
		 -0.99999982 1 0 -0.70710665 1 0.70709991 0 1 1 0.70710683 1 0.70710754 0.99999994 1 0
		 5.9604645e-008 -1 0 0.70710468 3 -0.70711517 -2.682209e-006 3 -1 5.9604645e-008 3 0
		 -0.70710665 3 -0.70710754 -1.000000476837 3 0 -0.70710474 3 0.70709991 2.682209e-006 3 1
		 0.70710683 3 0.70710754 1.000000476837 3 0;
	setAttr -s 56 ".ed[0:55]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 0 0 8 9 1 9 10 1 10 11 1 11 12 1 12 13 1 13 14 1 14 15 1 15 8 1 0 8 0 1 9 0 2 10 0
		 3 11 0 4 12 0 5 13 0 6 14 0 7 15 0 16 0 1 16 1 1 16 2 1 16 3 1 16 4 1 16 5 1 16 6 1
		 16 7 1 8 17 0 9 18 0 17 18 0 18 19 1 17 19 1 10 20 0 18 20 0 20 19 1 11 21 0 20 21 0
		 21 19 1 12 22 0 21 22 0 22 19 1 13 23 0 22 23 0 23 19 1 14 24 0 23 24 0 24 19 1 15 25 0
		 24 25 0 25 19 1 25 17 0;
	setAttr -s 32 -ch 112 ".fc[0:31]" -type "polyFaces" 
		f 4 0 17 -9 -17
		mu 0 4 8 9 18 17
		f 4 1 18 -10 -18
		mu 0 4 9 10 19 18
		f 4 2 19 -11 -19
		mu 0 4 10 11 20 19
		f 4 3 20 -12 -20
		mu 0 4 11 12 21 20
		f 4 4 21 -13 -21
		mu 0 4 12 13 22 21
		f 4 5 22 -14 -22
		mu 0 4 13 14 23 22
		f 4 6 23 -15 -23
		mu 0 4 14 15 24 23
		f 4 7 16 -16 -24
		mu 0 4 15 16 25 24
		f 3 -1 -25 25
		mu 0 3 1 0 34
		f 3 -2 -26 26
		mu 0 3 2 1 34
		f 3 -3 -27 27
		mu 0 3 3 2 34
		f 3 -4 -28 28
		mu 0 3 4 3 34
		f 3 -5 -29 29
		mu 0 3 5 4 34
		f 3 -6 -30 30
		mu 0 3 6 5 34
		f 3 -7 -31 31
		mu 0 3 7 6 34
		f 3 -8 -32 24
		mu 0 3 0 7 34
		f 3 34 35 -37
		mu 0 3 36 37 35
		f 3 38 39 -36
		mu 0 3 37 38 35
		f 3 41 42 -40
		mu 0 3 38 39 35
		f 3 44 45 -43
		mu 0 3 39 40 35
		f 3 47 48 -46
		mu 0 3 40 41 35
		f 3 50 51 -49
		mu 0 3 41 42 35
		f 3 53 54 -52
		mu 0 3 42 43 35
		f 3 55 36 -55
		mu 0 3 43 36 35
		f 4 8 33 -35 -33
		mu 0 4 32 31 37 36
		f 4 9 37 -39 -34
		mu 0 4 31 30 38 37
		f 4 10 40 -42 -38
		mu 0 4 30 29 39 38
		f 4 11 43 -45 -41
		mu 0 4 29 28 40 39
		f 4 12 46 -48 -44
		mu 0 4 28 27 41 40
		f 4 13 49 -51 -47
		mu 0 4 27 26 42 41
		f 4 14 52 -54 -50
		mu 0 4 26 33 43 42
		f 4 15 32 -56 -53
		mu 0 4 33 32 36 43;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".dr" 1;
createNode transform -n "personcam" -p "person_scale";
	rename -uid "26795E96-4094-07C3-170F-4BADE32A27CE";
	setAttr ".t" -type "double3" 0 3 -1 ;
	setAttr ".s" -type "double3" 0.99988924059494011 0.99999999999999967 0.99988924059494011 ;
createNode camera -n "personcamShape" -p "personcam";
	rename -uid "8EE42E31-4FA7-90DB-EDDE-1DB1B8090A68";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".cap" -type "double2" 1.41732 0.94488 ;
	setAttr ".ff" 0;
	setAttr ".ovr" 1.3;
	setAttr ".coi" 3.1070443226340703;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "camera1";
	setAttr ".den" -type "string" "camera1_depth";
	setAttr ".man" -type "string" "camera1_mask";
	setAttr ".dr" yes;
createNode transform -n "pCube20";
	rename -uid "6912EB8A-442A-3CE0-F0B2-8ABF2A9B1A78";
	setAttr ".t" -type "double3" -118.03679586006095 9.153672322929495 0.85120686188458594 ;
	setAttr ".s" -type "double3" 8.3342564306172058 8.3342564306172058 8.3342564306172058 ;
createNode mesh -n "pCubeShape20" -p "pCube20";
	rename -uid "A78CB7EE-499F-3E39-B2CA-9D8E93B9E46F";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 36 ".uvst[0].uvsp[0:35]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.625 0.33111835 0.70611835 0.25 0.29388168 0.25 0.375
		 0.33111835 0.33444083 0.45944083 0.66555917 0.45944083 0.625 0.43153638 0.80653632
		 0.25 0.19346365 0.25 0.375 0.43153638 0.28423184 0.40923181 0.71576816 0.40923181
		 0.70611835 0.11202224 0.625 0.11202224 0.375 0.11202224 0.29388168 0.11202224 0.19346365
		 0.11202224 0.125 0.11202224 0.375 0.63797772 0.625 0.63797772 0.875 0.11202224 0.80653632
		 0.11202224;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 24 ".vt[0:23]"  -0.5 -0.5 2.26746631 0.5 -0.5 2.26746631
		 -0.5 1.85443306 2.26746631 0.5 1.85443306 2.26746631 -0.5 1.85443306 -2.26746631
		 0.5 1.85443306 -2.26746631 -0.5 -0.5 -2.26746631 0.5 -0.5 -2.26746631 0.5 1.85443306 0.79600167
		 -0.5 1.85443306 0.79600167 -0.5 -0.5 0.79600167 0.5 -0.5 0.79600167 0.5 1.85443306 -1.025554299
		 -0.5 1.85443306 -1.025554299 -0.5 -0.5 -1.025554299 0.5 -0.5 -1.025554299 0.5 0.55499542 0.79600167
		 0.5 0.55499542 2.26746631 -0.5 0.55499542 2.26746631 -0.5 0.55499542 0.79600167 -0.5 0.55499542 -1.025554299
		 -0.5 0.55499542 -2.26746631 0.5 0.55499542 -2.26746631 0.5 0.55499542 -1.025554299;
	setAttr -s 44 ".ed[0:43]"  0 1 0 2 3 0 4 5 0 6 7 0 0 18 0 1 17 0 2 9 0
		 3 8 0 4 21 0 5 22 0 6 14 0 7 15 0 8 12 0 9 13 0 8 9 1 10 0 0 9 19 1 11 1 0 10 11 0
		 11 16 0 12 5 0 13 4 0 12 13 1 13 20 1 14 15 0 15 23 0 16 8 1 17 3 0 16 17 1 18 2 0
		 17 18 1 19 10 0 18 19 1 20 14 0 19 20 0 21 6 0 20 21 1 22 7 0 21 22 1 23 12 1 22 23 1
		 23 16 0 23 20 0 19 16 0;
	setAttr -s 22 -ch 88 ".fc[0:21]" -type "polyFaces" 
		f 4 0 5 30 -5
		mu 0 4 0 1 27 28
		f 4 1 7 14 -7
		mu 0 4 2 3 14 17
		f 4 38 37 -4 -36
		mu 0 4 32 33 7 6
		f 4 18 17 -1 -16
		mu 0 4 18 19 9 8
		f 4 -18 19 28 -6
		mu 0 4 1 19 26 27
		f 4 15 4 32 31
		mu 0 4 18 0 28 29
		f 4 -15 12 22 -14
		mu 0 4 17 14 20 23
		f 4 -23 20 -3 -22
		mu 0 4 23 20 5 4
		f 4 10 -34 36 35
		mu 0 4 12 24 30 31
		f 4 3 11 -25 -11
		mu 0 4 6 7 25 24
		f 4 -26 -12 -38 40
		mu 0 4 35 25 10 34
		f 4 -29 26 -8 -28
		mu 0 4 27 26 15 3
		f 4 -31 27 -2 -30
		mu 0 4 28 27 3 2
		f 4 -33 29 6 16
		mu 0 4 29 28 2 16
		f 4 -35 -17 13 23
		mu 0 4 30 29 16 22
		f 4 -37 -24 21 8
		mu 0 4 31 30 22 13
		f 4 2 9 -39 -9
		mu 0 4 4 5 33 32
		f 4 -40 -41 -10 -21
		mu 0 4 21 35 34 11
		f 4 -27 -42 39 -13
		mu 0 4 15 26 35 21
		f 4 25 42 33 24
		mu 0 4 25 35 30 24
		f 4 34 -43 41 -44
		mu 0 4 29 30 35 26
		f 4 -20 -19 -32 43
		mu 0 4 26 19 18 29;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube19";
	rename -uid "EBEBF90C-4A83-493A-2AA3-26B4E17130F0";
	setAttr ".t" -type "double3" 41.243900540410465 16.83623020466397 -11.671995940257235 ;
	setAttr ".s" -type "double3" 8.3342564306172058 8.3342564306172058 8.3342564306172058 ;
createNode mesh -n "pCubeShape19" -p "pCube19";
	rename -uid "9CA92AE7-439D-3F33-0412-80806B8B1CF0";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.25 0.125 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -0.43826795 0 0 0.83916771 
		0 0 -0.43826795 0 0 0.83916771 0 0 -0.43826795 0 0 0.83916771 0 0 -0.43826795 0 0 
		0.83916771 0 0;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube18";
	rename -uid "0A533C99-409D-0712-C0C3-23B30421A55D";
	setAttr ".t" -type "double3" -45.420620186120068 12.942048828928513 -11.671995940257236 ;
	setAttr ".s" -type "double3" 8.3342564306172058 8.3342564306172058 8.3342564306172058 ;
createNode mesh -n "pCubeShape18" -p "pCube18";
	rename -uid "6000E70F-49CC-5931-DF6E-2FBABAE3E931";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -0.63148111 1.9428903e-015 
		0 0.63148111 0 0 -0.63148111 1.035966 0 0.63148111 1.035966 0 -0.63148111 1.035966 
		0 0.63148111 1.035966 0 -0.63148111 1.9428903e-015 0 0.63148111 0 0;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube17";
	rename -uid "8E8D2591-424C-83FA-DA57-5E907E3C5E7E";
	setAttr ".t" -type "double3" -58.865699497154964 13.03198524776696 -11.671995940257236 ;
	setAttr ".s" -type "double3" 8.3342564306172058 8.3342564306172058 8.3342564306172058 ;
createNode mesh -n "pCubeShape17" -p "pCube17";
	rename -uid "090347DA-4909-C75E-C7B7-D0BDF36522E9";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube16";
	rename -uid "17CD36E6-4780-C212-F601-3DA3EF7058EA";
	setAttr ".t" -type "double3" -75.219936925883289 11.104563759836614 -11.671995940257236 ;
	setAttr ".s" -type "double3" 8.3342564306172058 8.3342564306172058 8.3342564306172058 ;
createNode mesh -n "pCubeShape16" -p "pCube16";
	rename -uid "66C570C3-4E7F-9ED8-9984-5887175E093C";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube15";
	rename -uid "5AE75E3F-432A-D481-87BF-018A134005C0";
	setAttr ".t" -type "double3" -93.793691420606223 9.153672322929495 -11.671995940257236 ;
	setAttr ".s" -type "double3" 8.3342564306172058 8.3342564306172058 8.3342564306172058 ;
createNode mesh -n "pCubeShape15" -p "pCube15";
	rename -uid "7E372001-4488-EFF3-736C-D6A8BD8D5409";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.75 0.125 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt";
	setAttr ".pt[1]" -type "float3" 1.2652351 0 0 ;
	setAttr ".pt[3]" -type "float3" 1.2652351 0 0 ;
	setAttr ".pt[5]" -type "float3" 1.2652351 0 0 ;
	setAttr ".pt[7]" -type "float3" 1.2652351 0 0 ;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube13";
	rename -uid "057BB1B9-4754-6F5A-C1BA-7E992F41F736";
	setAttr ".t" -type "double3" 22.913692819178308 15.536622478350285 -11.671995940257235 ;
	setAttr ".s" -type "double3" 8.3342564306172058 8.3342564306172058 8.3342564306172058 ;
createNode mesh -n "pCubeShape13" -p "pCube13";
	rename -uid "4F386CD1-46A6-3461-BC2D-72B02501FE69";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.75 0.125 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -0.78358579 0 0 0.35031682 
		0 0 -0.78358579 0 0 0.35031682 0 0 -0.78358579 0 0 0.35031682 0 0 -0.78358579 0 0 
		0.35031682 0 0;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "house_placeholder3";
	rename -uid "24EC1667-42C2-4D71-E35C-9C910B2FA208";
	setAttr ".t" -type "double3" 67.28763797944643 18.913412403759025 -11.671995940257236 ;
	setAttr ".s" -type "double3" 8.3342564306172058 8.3342564306172058 8.3342564306172058 ;
createNode mesh -n "house_placeholder3Shape" -p "house_placeholder3";
	rename -uid "5A3BD39F-4EF2-2BC7-5423-9AAC77E917F6";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 50 ".uvst[0].uvsp[0:49]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.375 0.25 0.625 0.25 0.625 0.5 0.375 0.5 0.375 0.25
		 0.625 0.25 0.625 0.5 0.375 0.5 0.60513705 0.25 0.60513705 0.25 0.60513705 0.25 0.60513705
		 0.5 0.60513705 0.5 0.60513705 0.5 0.60513705 0.75 0.60513705 0 0.60513705 1 0.5450815
		 0.25 0.5450815 0.25 0.5450815 0.25 0.5450815 0.5 0.5450815 0.5 0.5450815 0.5 0.5450815
		 0.75 0.5450815 0 0.5450815 1 0.5450815 0.16788964 0.375 0.16788964 0.125 0.16788964
		 0.375 0.58211035 0.5450815 0.58211035 0.60513705 0.58211035 0.625 0.58211035 0.875
		 0.16788964 0.625 0.16788964 0.60513705 0.16788964;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 28 ".pt";
	setAttr ".pt[2]" -type "float3" 0 0.07487829 0 ;
	setAttr ".pt[3]" -type "float3" 0 0.07487829 0 ;
	setAttr ".pt[4]" -type "float3" 0 0.07487829 0 ;
	setAttr ".pt[5]" -type "float3" 0 0.07487829 0 ;
	setAttr ".pt[8]" -type "float3" 0 0.07487829 0 ;
	setAttr ".pt[9]" -type "float3" 0 0.07487829 0 ;
	setAttr ".pt[10]" -type "float3" 0 0.07487829 0 ;
	setAttr ".pt[11]" -type "float3" 0 0.07487829 0 ;
	setAttr ".pt[16]" -type "float3" -0.037721042 0.07487829 0 ;
	setAttr ".pt[17]" -type "float3" 0.037721064 0.07487829 0 ;
	setAttr ".pt[18]" -type "float3" 0.037721064 0 0 ;
	setAttr ".pt[19]" -type "float3" 0.037721064 0 0 ;
	setAttr ".pt[20]" -type "float3" 0.037721064 0.07487829 0 ;
	setAttr ".pt[21]" -type "float3" -0.037721042 0.07487829 0 ;
	setAttr ".pt[22]" -type "float3" -0.037721042 0 0 ;
	setAttr ".pt[23]" -type "float3" -0.037721042 0 -2.9802322e-008 ;
	setAttr ".pt[24]" -type "float3" 0.074950837 0.07487829 0 ;
	setAttr ".pt[25]" -type "float3" 0.10729931 0.07487829 0 ;
	setAttr ".pt[26]" -type "float3" 0.10729931 0 0 ;
	setAttr ".pt[27]" -type "float3" 0.10729931 0 0 ;
	setAttr ".pt[28]" -type "float3" 0.10729931 0.07487829 0 ;
	setAttr ".pt[29]" -type "float3" 0.074950837 0.07487829 0 ;
	setAttr ".pt[30]" -type "float3" 0.074950837 0 0 ;
	setAttr ".pt[31]" -type "float3" 0.074950837 0 -2.9802322e-008 ;
	setAttr ".pt[32]" -type "float3" 0.074950837 0 -2.9802322e-008 ;
	setAttr ".pt[35]" -type "float3" 0.074950837 0 0 ;
	setAttr ".pt[36]" -type "float3" -0.037721042 0 0 ;
	setAttr ".pt[39]" -type "float3" -0.037721042 0 -2.9802322e-008 ;
	setAttr -s 40 ".vt[0:39]"  -1.79559946 -0.5901978 0.5 0.5 -0.5901978 0.5
		 -1.79559946 0.5 0.5 0.5 0.5 0.5 -1.79559946 0.5 -0.5 0.5 0.5 -0.5 -1.79559946 -0.5901978 -0.5
		 0.5 -0.5901978 -0.5 -1.70590305 0.5 0.40531498 0.41030407 0.5 0.40531498 0.41030407 0.5 -0.40531492
		 -1.70590305 0.5 -0.40531492 -1.70590305 0.43952659 0.40531498 0.41030407 0.43952659 0.40531498
		 0.41030407 0.43952659 -0.40531492 -1.70590305 0.43952659 -0.40531492 0.31761009 0.5 0.5
		 0.24216722 0.5 0.40531498 0.24216722 0.43952659 0.40531498 0.24216722 0.43952659 -0.40531492
		 0.24216722 0.5 -0.40531492 0.31761009 0.5 -0.5 0.31761009 -0.5901978 -0.5 0.31761009 -0.5901978 0.5
		 -0.23384398 0.5 0.5 -0.26619279 0.5 0.40531498 -0.26619279 0.43952662 0.40531498
		 -0.26619279 0.43952662 -0.40531492 -0.26619279 0.5 -0.40531492 -0.23384398 0.5 -0.5
		 -0.23384398 -0.5901978 -0.5 -0.23384398 -0.5901978 0.5 -0.23384398 0.14193386 0.5
		 -1.79559946 0.14193386 0.5 -1.79559946 0.14193386 -0.5 -0.23384398 0.14193386 -0.5
		 0.31761009 0.14193386 -0.5 0.5 0.14193386 -0.5 0.5 0.14193386 0.5 0.31761009 0.14193386 0.5;
	setAttr -s 76 ".ed[0:75]"  0 31 0 2 24 0 4 29 0 6 30 0 0 33 0 1 38 0
		 2 4 0 3 5 0 4 34 0 5 37 0 6 0 0 7 1 0 2 8 0 3 9 0 8 25 0 5 10 0 9 10 0 4 11 0 11 28 0
		 8 11 0 8 12 0 9 13 0 12 26 0 10 14 0 13 14 0 11 15 0 15 27 0 12 15 0 16 3 0 17 9 0
		 16 17 1 18 13 0 17 18 1 19 14 0 18 19 1 20 10 0 19 20 1 21 5 0 20 21 1 22 7 0 21 36 1
		 23 1 0 22 23 1 23 39 1 24 16 0 25 17 0 24 25 1 26 18 0 25 26 1 27 19 0 26 27 1 28 20 0
		 27 28 1 29 21 0 28 29 1 30 22 0 29 35 1 31 23 0 30 31 1 31 32 1 32 24 1 33 2 0 32 33 1
		 34 6 0 33 34 1 35 30 1 34 35 1 36 22 1 35 36 1 37 7 0 36 37 1 38 3 0 37 38 1 39 16 1
		 38 39 1 39 32 1;
	setAttr -s 38 -ch 152 ".fc[0:37]" -type "polyFaces" 
		f 4 0 59 62 -5
		mu 0 4 0 38 40 41
		f 4 22 50 -27 -28
		mu 0 4 18 33 34 21
		f 4 66 65 -4 -64
		mu 0 4 43 44 37 6
		f 4 3 58 -1 -11
		mu 0 4 6 37 39 8
		f 4 -12 -70 72 -6
		mu 0 4 1 10 47 48
		f 4 10 4 64 63
		mu 0 4 12 0 41 42
		f 4 1 46 -15 -13
		mu 0 4 2 31 32 14
		f 4 7 15 -17 -14
		mu 0 4 3 5 16 15
		f 4 -3 17 18 54
		mu 0 4 36 4 17 35
		f 4 -7 12 19 -18
		mu 0 4 4 2 14 17
		f 4 14 48 -23 -21
		mu 0 4 14 32 33 18
		f 4 16 23 -25 -22
		mu 0 4 15 16 20 19
		f 4 -19 25 26 52
		mu 0 4 35 17 21 34
		f 4 -20 20 27 -26
		mu 0 4 17 14 18 21
		f 4 28 13 -30 -31
		mu 0 4 22 3 15 23
		f 4 -33 29 21 -32
		mu 0 4 24 23 15 19
		f 4 -35 31 24 -34
		mu 0 4 25 24 19 20
		f 4 -36 -37 33 -24
		mu 0 4 16 26 25 20
		f 4 -38 -39 35 -16
		mu 0 4 5 27 26 16
		f 4 -68 70 69 -40
		mu 0 4 28 45 46 7
		f 4 -43 39 11 -42
		mu 0 4 30 28 7 9
		f 4 -44 41 5 74
		mu 0 4 49 29 1 48
		f 4 44 30 -46 -47
		mu 0 4 31 22 23 32
		f 4 -49 45 32 -48
		mu 0 4 33 32 23 24
		f 4 -51 47 34 -50
		mu 0 4 34 33 24 25
		f 4 -52 -53 49 36
		mu 0 4 26 35 34 25
		f 4 -54 -55 51 38
		mu 0 4 27 36 35 26
		f 4 -66 68 67 -56
		mu 0 4 37 44 45 28
		f 4 -59 55 42 -58
		mu 0 4 39 37 28 30
		f 4 75 -60 57 43
		mu 0 4 49 40 38 29
		f 4 -63 60 -2 -62
		mu 0 4 41 40 31 2
		f 4 -65 61 6 8
		mu 0 4 42 41 2 13
		f 4 2 56 -67 -9
		mu 0 4 4 36 44 43
		f 4 -69 -57 53 40
		mu 0 4 45 44 36 27
		f 4 -71 -41 37 9
		mu 0 4 46 45 27 5
		f 4 -73 -10 -8 -72
		mu 0 4 48 47 11 3
		f 4 -74 -75 71 -29
		mu 0 4 22 49 48 3
		f 4 -61 -76 73 -45
		mu 0 4 31 40 49 22;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "house_placeholder2";
	rename -uid "01D6DB7A-4F75-CB0E-C3BA-8BA707E4A316";
	setAttr ".t" -type "double3" 85.798278182994778 18.913412403759025 -11.671995940257236 ;
	setAttr ".s" -type "double3" 8.3342564306172058 8.3342564306172058 8.3342564306172058 ;
createNode mesh -n "house_placeholder2Shape" -p "house_placeholder2";
	rename -uid "5C8A49F9-4EDF-C172-C2AF-FAA9C6952547";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.25 0.125 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt";
	setAttr ".pt[0]" -type "float3" -0.45055848 0 0 ;
	setAttr ".pt[2]" -type "float3" -0.45055848 0 0 ;
	setAttr ".pt[4]" -type "float3" -0.45055848 0 0 ;
	setAttr ".pt[6]" -type "float3" -0.45055848 0 0 ;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube12";
	rename -uid "69329F85-42A4-14E0-C8AB-3D8A90AE64A0";
	setAttr ".t" -type "double3" -31.848358549715208 13.349375252401815 -11.671995940257235 ;
	setAttr ".s" -type "double3" 8.3342564306172058 8.3342564306172058 8.3342564306172058 ;
createNode mesh -n "pCubeShape12" -p "pCube12";
	rename -uid "FC4731A6-4E53-F9C1-8E0F-B9B6EED553A2";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube10";
	rename -uid "93DE224E-44C6-8FA6-80C8-C49053A09EB5";
	setAttr ".t" -type "double3" 0.36468690049274305 13.184681348266093 -11.671995940257236 ;
	setAttr ".s" -type "double3" 8.3342564306172058 8.3342564306172058 8.3342564306172058 ;
createNode mesh -n "pCubeShape10" -p "pCube10";
	rename -uid "378A0288-4BFA-6FCE-466B-8EBB5D5A7BF5";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -0.9405331 0 0 0.9405331 
		0 0 -0.9405331 -1.0269563e-014 0 0.9405331 -1.0269563e-014 0 -0.9405331 -1.0269563e-014 
		0 0.9405331 -1.0269563e-014 0 -0.9405331 0 0 0.9405331 0 0;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "house_placeholder1";
	rename -uid "707E1F37-442E-1647-88CA-41B4610615E0";
	setAttr ".t" -type "double3" 66.993541700478531 18.913412403759025 11.559462992226754 ;
	setAttr ".s" -type "double3" 8.3342564306172058 8.3342564306172058 8.3342564306172058 ;
createNode mesh -n "house_placeholder1Shape" -p "house_placeholder1";
	rename -uid "EC0B7B7A-4E56-4792-7AD1-3E8882942C17";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.75 0.125 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt";
	setAttr ".pt[1]" -type "float3" 2.4556432 0 0 ;
	setAttr ".pt[3]" -type "float3" 2.4556432 0 0 ;
	setAttr ".pt[5]" -type "float3" 2.4556432 0 0 ;
	setAttr ".pt[7]" -type "float3" 2.4556432 0 0 ;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "house_placeholder";
	rename -uid "1871381E-420C-8BEA-6620-C08115826699";
	setAttr ".t" -type "double3" 48.478506633215424 17.771174300361405 11.559462992226752 ;
	setAttr ".s" -type "double3" 8.3342564306172058 8.3342564306172058 8.3342564306172058 ;
createNode mesh -n "house_placeholderShape" -p "house_placeholder";
	rename -uid "CFC0B124-4762-91CF-C1E9-EEBA4DCF9760";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.75 0.125 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt";
	setAttr ".pt[1]" -type "float3" 1.2248408 0 0 ;
	setAttr ".pt[3]" -type "float3" 1.2248408 0 0 ;
	setAttr ".pt[5]" -type "float3" 1.2248408 0 0 ;
	setAttr ".pt[7]" -type "float3" 1.2248408 0 0 ;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube9";
	rename -uid "A9288290-4AB9-12C2-E8B6-859085713208";
	setAttr ".t" -type "double3" 17.219242956476815 15.536622478350285 11.559462992226752 ;
	setAttr ".s" -type "double3" 8.3342564306172058 8.3342564306172058 8.3342564306172058 ;
createNode mesh -n "pCubeShape9" -p "pCube9";
	rename -uid "C7AD3DEC-4D23-B0D9-B15A-B68CD5D28E57";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.875 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 6 ".pt";
	setAttr ".pt[0]" -type "float3" -1.0747919 -0.13891548 0 ;
	setAttr ".pt[1]" -type "float3" 0 -0.13891548 0 ;
	setAttr ".pt[2]" -type "float3" -1.0747919 0 0 ;
	setAttr ".pt[4]" -type "float3" -1.0747919 0 0 ;
	setAttr ".pt[6]" -type "float3" -1.0747919 -0.13891548 0 ;
	setAttr ".pt[7]" -type "float3" 0 -0.13891548 0 ;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube8";
	rename -uid "9A97089F-4CC3-15BC-A638-638F4587BD60";
	setAttr ".t" -type "double3" 30.452369723936712 16.311405248957115 11.559462992226752 ;
	setAttr ".s" -type "double3" 8.3342564306172058 8.3342564306172058 8.3342564306172058 ;
createNode mesh -n "pCubeShape8" -p "pCube8";
	rename -uid "580A8EF7-4BA1-3317-7FB0-BDBB8DF71A4B";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.75 0.125 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 22 ".uvst[0].uvsp[0:21]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.625 0 0.875 0 0.875 0.25 0.625 0.25 0.875 0.25 0.625
		 0.25 0.625 0.25 0.875 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 16 ".vt[0:15]"  -1.11223245 -0.5 0.5 0.53981686 -0.5 0.5
		 -1.11223245 0.5 0.5 0.53981686 0.5 0.5 -1.11223245 0.5 -0.5 0.53981686 0.5 -0.5 -1.11223245 -0.5 -0.5
		 0.53981686 -0.5 -0.5 1.70349789 -0.5 -0.5 1.70349789 -0.5 0.5 1.70349789 0.5 -0.5
		 1.70349789 0.5 0.5 0.53981686 1.75915241 0.5 0.53981686 1.75915241 -0.5 1.70349789 1.75915241 0.5
		 1.70349789 1.75915241 -0.5;
	setAttr -s 28 ".ed[0:27]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 1 2 4 0
		 3 5 0 4 6 0 5 7 1 6 0 0 7 1 1 7 8 0 1 9 0 8 9 0 5 10 1 10 8 0 3 11 1 11 10 1 9 11 0
		 3 12 0 5 13 0 12 13 0 11 14 0 12 14 0 10 15 0 14 15 0 13 15 0;
	setAttr -s 14 -ch 56 ".fc[0:13]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -15 -17 -19 -20
		mu 0 4 14 15 16 17
		f 4 10 4 6 8
		mu 0 4 12 0 2 13
		f 4 -12 12 14 -14
		mu 0 4 1 10 15 14
		f 4 -10 15 16 -13
		mu 0 4 10 11 16 15
		f 4 -23 24 26 -28
		mu 0 4 18 19 20 21
		f 4 -6 13 19 -18
		mu 0 4 3 1 14 17
		f 4 -8 20 22 -22
		mu 0 4 11 3 19 18
		f 4 17 23 -25 -21
		mu 0 4 3 17 20 19
		f 4 18 25 -27 -24
		mu 0 4 17 16 21 20
		f 4 -16 21 27 -26
		mu 0 4 16 11 18 21;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube7";
	rename -uid "6BF0A3D3-47B4-4FD8-A9CD-48A4C9C0EBE7";
	setAttr ".t" -type "double3" -93.813279387102682 9.153672322929495 11.559462992226752 ;
	setAttr ".s" -type "double3" 8.3342564306172058 8.3342564306172058 8.3342564306172058 ;
createNode mesh -n "pCubeShape7" -p "pCube7";
	rename -uid "54DC9A6D-4763-C3CE-86E8-4389B4E901AA";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.75 0.125 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt";
	setAttr ".pt[1]" -type "float3" 0.59739518 0 0 ;
	setAttr ".pt[3]" -type "float3" 0.59739518 0 0 ;
	setAttr ".pt[5]" -type "float3" 0.59739518 0 0 ;
	setAttr ".pt[7]" -type "float3" 0.59739518 0 0 ;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube6";
	rename -uid "87339692-450B-9FA2-BE46-1B9F9E25BBF3";
	setAttr ".t" -type "double3" -80.914386788584778 10.585542066347855 11.559462992226754 ;
	setAttr ".s" -type "double3" 8.3342564306172058 8.3342564306172058 8.3342564306172058 ;
createNode mesh -n "pCubeShape6" -p "pCube6";
	rename -uid "06A7D0FD-48E0-C6BB-2270-E59388F93B61";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.75 0.125 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt";
	setAttr ".pt[1]" -type "float3" 0.88072616 0 0 ;
	setAttr ".pt[3]" -type "float3" 0.88072616 0 0 ;
	setAttr ".pt[5]" -type "float3" 0.88072616 0 0 ;
	setAttr ".pt[7]" -type "float3" 0.88072616 0 0 ;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube5";
	rename -uid "C4170288-45E4-CFD9-98BC-D68404AD908F";
	setAttr ".t" -type "double3" -65.425255169057522 9.153672322929495 11.559462992226752 ;
	setAttr ".s" -type "double3" 8.3342564306172058 8.3342564306172058 8.3342564306172058 ;
createNode mesh -n "pCubeShape5" -p "pCube5";
	rename -uid "EF632448-4668-58CE-EC3E-269654C112B8";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[2:5]" -type "float3"  0 0.56419677 0 0 0.56419677 
		0 0 0.56419677 0 0 0.56419677 0;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube4";
	rename -uid "64183140-4FC0-2776-E63D-4E898AA94ED8";
	setAttr ".t" -type "double3" -47.255405776829264 13.283880107260748 11.559462992226752 ;
	setAttr ".s" -type "double3" 8.3342564306172058 8.3342564306172058 8.3342564306172058 ;
createNode mesh -n "pCubeShape4" -p "pCube4";
	rename -uid "A6442625-46EE-E405-2BF2-278C32F78EF5";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -1.2018254 6.9388939e-015 
		0 1.2018254 6.9388939e-015 0 -1.2018254 0 0 1.2018254 0 0 -1.2018254 0 0 1.2018254 
		0 0 -1.2018254 6.9388939e-015 0 1.2018254 6.9388939e-015 0;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube2";
	rename -uid "9BC896BA-4C50-1DFD-826E-318878A2886A";
	setAttr ".t" -type "double3" -13.233126767459897 12.985262481535182 11.559462992226752 ;
	setAttr ".s" -type "double3" 8.3342564306172058 8.3342564306172058 8.3342564306172058 ;
createNode mesh -n "pCubeShape2" -p "pCube2";
	rename -uid "320A8CA4-4943-65DB-2AB7-A39F40367CF5";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt";
	setAttr ".pt[1]" -type "float3" 1.5912135 0 0 ;
	setAttr ".pt[3]" -type "float3" 1.5912135 0 0 ;
	setAttr ".pt[5]" -type "float3" 1.5912135 0 0 ;
	setAttr ".pt[7]" -type "float3" 1.5912135 0 0 ;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pPlane1";
	rename -uid "5ED4AC26-4AEF-D127-E938-F1A8B9D32597";
	setAttr ".t" -type "double3" 0 5.0914820825010096 0 ;
	setAttr ".s" -type "double3" 8.3342564306172058 8.3342564306172058 8.3342564306172058 ;
createNode mesh -n "pPlaneShape1" -p "pPlane1";
	rename -uid "01BD89EE-4DE2-BD42-9108-14935F285427";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 80 ".uvst[0].uvsp[0:79]" -type "float2" 0 0 0.1 0 0.2 0 0.30000001
		 0 0.40000001 0 0.5 0 0.60000002 0 0.90000004 0 1 0 0 1 0.1 1 0.2 1 0.30000001 1 0.40000001
		 1 0.5 1 0.60000002 1 0.90000004 1 1 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1
		 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0.19184801 1
		 0.19184801 0 0.1703814 1 0.1703814 0 0.79284251 1 0.79284251 0 0.77720261 1 0.77720261
		 0 0.94599289 1 0.94599289 0 0.93126899 1 0.93126899 0 0 0 1 0 1 1 0 1 0.97546875
		 1 0.97546875 0 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 54 ".vt[0:53]"  -13.68554401 -1.110223e-016 0.90246725 -11.73895454 -1.110223e-016 0.90246725
		 -7.18550634 0.52574754 0.90246725 -3.94733691 0.52574754 0.90246725 -3.37766027 0.52574754 0.90246725
		 -2.10366178 0.52574754 0.90246725 -1.39630103 0.52574754 0.90246725 7.037757874 1.19340646 0.90246725
		 11.97583675 1.19340646 0.90246725 -13.68554401 1.110223e-016 -0.90246725 -11.73895454 1.110223e-016 -0.90246725
		 -7.18550634 0.52574754 -0.90246725 -3.94733691 0.52574754 -0.90246725 -3.37766027 0.52574754 -0.90246725
		 -2.10366178 0.52574754 -0.90246725 -1.39630103 0.52574754 -0.90246725 7.037757874 1.19340646 -0.90246725
		 11.97583675 1.19340646 -0.90246749 -3.94733691 0.52574754 2.011876345 -3.37766027 0.52574754 2.011876345
		 -2.10366178 0.52574754 2.011876345 -3.37766027 0.52574754 -2.10482979 -2.10366178 0.52574754 -2.10482979
		 -1.39630103 0.52574754 -2.10482979 -13.68554401 -1.110223e-016 2.52795744 -11.73895454 -1.110223e-016 2.52795744
		 -13.68554401 1.110223e-016 -2.56551838 -11.73895454 1.110223e-016 -2.56551838 -23.65854263 2.1034282e-015 0.90246725
		 -23.65854263 2.3254728e-015 -0.90246725 -7.55670357 0.48288858 -0.90246725 -7.55670357 0.48288858 0.90246725
		 -8.53417397 0.37002844 -0.90246725 -8.53417397 0.37002844 0.90246725 4.02518177 0.95492429 -0.90246725
		 4.02518177 0.95492429 0.90246725 3.58548784 0.92011714 -0.90246725 3.58548784 0.92011714 0.90246725
		 9.36699867 1.19340658 -0.90246725 9.36699867 1.19340658 0.90246725 8.58184242 1.19340658 -0.90246725
		 8.58184242 1.19340658 0.90246725 8.58184242 1.19340658 -1.95761168 9.36699867 1.19340658 -1.95761168
		 10.79084587 1.19340658 -0.90246749 10.79084587 1.19340658 0.90246725 10.79084587 1.19340658 2.7092123
		 11.97583675 1.19340646 2.7092123 10.79084587 1.19340658 -2.074388504 11.97583675 1.19340646 -2.074388504
		 3.58548784 0.92011714 -2.14937377 4.02518177 0.95492429 -2.14937377 -8.53417397 0.37002844 -3.39297009
		 -7.55670357 0.48288858 -3.39297009;
	setAttr -s 80 ".ed[0:79]"  0 1 0 0 9 0 1 33 0 2 3 0 3 4 0 4 5 0 5 6 0
		 6 37 0 7 41 0 1 10 0 2 11 0 3 12 0 4 13 0 5 14 0 6 15 0 7 16 0 8 17 0 9 10 0 10 32 0
		 11 12 0 12 13 0 13 14 0 14 15 0 15 36 0 16 40 0 3 18 0 4 19 0 18 19 0 5 20 0 19 20 0
		 13 21 0 14 22 0 21 22 0 15 23 0 22 23 0 0 24 0 1 25 0 24 25 0 9 26 0 10 27 0 26 27 0
		 0 28 0 9 29 0 28 29 0 30 11 0 31 2 0 30 31 0 32 30 0 33 31 0 32 33 0 34 16 0 35 7 0
		 34 35 0 36 34 0 37 35 0 36 37 0 38 44 0 39 45 0 38 39 0 40 38 0 41 39 0 40 41 0 40 42 0
		 38 43 0 42 43 0 44 17 0 45 8 0 44 45 0 45 46 0 8 47 0 46 47 0 44 48 0 17 49 0 48 49 0
		 36 50 0 34 51 0 50 51 0 32 52 0 30 53 0 52 53 0;
	setAttr -s 27 -ch 108 ".fc[0:26]" -type "polyFaces" 
		f 4 9 -18 -2 0
		mu 0 4 1 10 9 0
		f 4 10 -45 46 45
		mu 0 4 2 11 46 47
		f 4 11 -20 -11 3
		mu 0 4 3 12 11 2
		f 4 12 -21 -12 4
		mu 0 4 4 13 12 3
		f 4 13 -22 -13 5
		mu 0 4 5 14 13 4
		f 4 14 -23 -14 6
		mu 0 4 6 15 14 5
		f 4 -51 52 51 15
		mu 0 4 16 50 51 7
		f 4 16 -66 67 66
		mu 0 4 8 17 62 63
		f 4 -5 25 27 -27
		mu 0 4 18 19 20 21
		f 4 -6 26 29 -29
		mu 0 4 22 23 24 25
		f 4 21 31 -33 -31
		mu 0 4 26 27 28 29
		f 4 22 33 -35 -32
		mu 0 4 30 31 32 33
		f 4 -1 35 37 -37
		mu 0 4 34 35 36 37
		f 4 17 39 -41 -39
		mu 0 4 38 39 40 41
		f 4 1 42 -44 -42
		mu 0 4 42 43 44 45
		f 4 -47 -48 49 48
		mu 0 4 47 46 48 49
		f 4 -50 -19 -10 2
		mu 0 4 49 48 10 1
		f 4 -54 55 54 -53
		mu 0 4 50 52 53 51
		f 4 -24 -15 7 -56
		mu 0 4 52 15 6 53
		f 4 -59 -60 61 60
		mu 0 4 55 54 56 57
		f 4 -62 -25 -16 8
		mu 0 4 57 56 16 7
		f 4 59 63 -65 -63
		mu 0 4 58 59 60 61
		f 4 -68 -57 58 57
		mu 0 4 63 62 54 55
		f 4 -67 68 70 -70
		mu 0 4 64 65 66 67
		f 4 65 72 -74 -72
		mu 0 4 68 69 70 71
		f 4 53 75 -77 -75
		mu 0 4 72 73 74 75
		f 4 47 78 -80 -78
		mu 0 4 76 77 78 79;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "marketStall1";
	rename -uid "FB0801DF-444C-F165-B22C-FE90595125A6";
	setAttr ".t" -type "double3" 71.228911121147704 16.012515228653978 4.1665269985814781 ;
	setAttr ".s" -type "double3" 6 2 2 ;
createNode mesh -n "marketStallShape1" -p "marketStall1";
	rename -uid "5F1B8A5B-46DA-B2EE-7C5D-3A9E4BB9C891";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 26 ".uvst[0].uvsp[0:25]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.375 0.25 0.625 0.25 0.625 0.5 0.375 0.5 0.375 0.25
		 0.625 0.25 0.625 0.25 0.375 0.25 0.625 0.5 0.625 0.5 0.375 0.5 0.375 0.5;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 20 ".vt[0:19]"  -0.49999809 -0.5 0.5 0.50000191 -0.5 0.5
		 -0.49999809 0.5 0.5 0.50000191 0.5 0.5 -0.49999809 0.5 -0.5 0.50000191 0.5 -0.5 -0.49999809 -0.5 -0.5
		 0.50000191 -0.5 -0.5 -0.49999809 0.61128426 0.5 0.50000191 0.61128426 0.5 0.50000191 0.61128426 -0.5
		 -0.49999809 0.61128426 -0.5 -0.54042244 0.5 0.62127471 0.54042625 0.5 0.62127471
		 0.54042625 0.61128426 0.62127471 -0.54042244 0.61128426 0.62127471 0.54042625 0.5 -0.62127471
		 0.54042625 0.61128426 -0.62127471 -0.54042244 0.5 -0.62127471 -0.54042244 0.61128426 -0.62127471;
	setAttr -s 36 ".ed[0:35]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0 8 9 1 9 10 1 11 10 1 8 11 1 2 12 1 3 13 1 12 13 0 9 14 1
		 13 14 0 8 15 1 15 14 0 12 15 0 5 16 1 13 16 0 10 17 1 16 17 0 14 17 0 4 18 1 18 16 0
		 11 19 1 18 19 0 19 17 0 12 18 0 15 19 0;
	setAttr -s 18 -ch 72 ".fc[0:17]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 12 13 -15 -16
		mu 0 4 14 15 16 17
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13
		f 4 18 20 -23 -24
		mu 0 4 18 19 20 21
		f 4 25 27 -29 -21
		mu 0 4 19 22 23 20
		f 4 -31 32 33 -28
		mu 0 4 22 24 25 23
		f 4 -35 23 35 -33
		mu 0 4 24 18 21 25
		f 4 1 17 -19 -17
		mu 0 4 2 3 19 18
		f 4 -13 21 22 -20
		mu 0 4 15 14 21 20
		f 4 7 24 -26 -18
		mu 0 4 3 5 22 19
		f 4 -14 19 28 -27
		mu 0 4 16 15 20 23
		f 4 -3 29 30 -25
		mu 0 4 5 4 24 22
		f 4 14 26 -34 -32
		mu 0 4 17 16 23 25
		f 4 -7 16 34 -30
		mu 0 4 4 2 18 24
		f 4 15 31 -36 -22
		mu 0 4 14 17 25 21;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCylinder2" -p "marketStall1";
	rename -uid "9B3C3656-4B26-AEE8-A346-258D60CE467B";
	setAttr ".t" -type "double3" -0.6111561443497795 1.0095629453267119 -0.70257360115011469 ;
	setAttr ".s" -type "double3" 0.16666666666666666 1.5 0.5 ;
	setAttr ".rp" -type "double3" -1.1387861320599768e-007 -1.4999991027445194 -3.8750365582984614e-008 ;
	setAttr ".sp" -type "double3" -6.8327167923598608e-007 -0.99999940182967961 -7.7500731165969228e-008 ;
	setAttr ".spt" -type "double3" 5.693930660299884e-007 -0.49999970091483992 3.8750365582984614e-008 ;
createNode mesh -n "pCylinderShape2" -p "pCylinder2";
	rename -uid "039CA4A1-408D-72D5-6A93-13BD3E226CF7";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 36 ".uvst[0].uvsp[0:35]" -type "float2" 0.61048543 0.04576458
		 0.5 1.4901161e-008 0.38951457 0.04576458 0.34375 0.15625 0.38951457 0.26673543 0.5
		 0.3125 0.61048543 0.26673543 0.65625 0.15625 0.375 0.3125 0.40625 0.3125 0.4375 0.3125
		 0.46875 0.3125 0.5 0.3125 0.53125 0.3125 0.5625 0.3125 0.59375 0.3125 0.625 0.3125
		 0.375 0.68843985 0.40625 0.68843985 0.4375 0.68843985 0.46875 0.68843985 0.5 0.68843985
		 0.53125 0.68843985 0.5625 0.68843985 0.59375 0.68843985 0.625 0.68843985 0.61048543
		 0.73326457 0.5 0.6875 0.38951457 0.73326457 0.34375 0.84375 0.38951457 0.95423543
		 0.5 1 0.61048543 0.95423543 0.65625 0.84375 0.5 0.15000001 0.5 0.83749998;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 18 ".vt[0:17]"  0.17677668 -1 -0.17677668 0 -1 -0.24999997
		 -0.17677668 -1 -0.17677668 -0.24999997 -1 0 -0.17677668 -1 0.17677668 0 -1 0.24999999
		 0.17677669 -1 0.17677669 0.25 -1 0 0.17677668 1 -0.17677668 0 1 -0.24999997 -0.17677668 1 -0.17677668
		 -0.24999997 1 0 -0.17677668 1 0.17677668 0 1 0.24999999 0.17677669 1 0.17677669 0.25 1 0
		 0 -1 0 0 1 0;
	setAttr -s 40 ".ed[0:39]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 0 0 8 9 0 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 8 0 0 8 0 1 9 0 2 10 0
		 3 11 0 4 12 0 5 13 0 6 14 0 7 15 0 16 0 1 16 1 1 16 2 1 16 3 1 16 4 1 16 5 1 16 6 1
		 16 7 1 8 17 1 9 17 1 10 17 1 11 17 1 12 17 1 13 17 1 14 17 1 15 17 1;
	setAttr -s 24 -ch 80 ".fc[0:23]" -type "polyFaces" 
		f 4 0 17 -9 -17
		mu 0 4 8 9 18 17
		f 4 1 18 -10 -18
		mu 0 4 9 10 19 18
		f 4 2 19 -11 -19
		mu 0 4 10 11 20 19
		f 4 3 20 -12 -20
		mu 0 4 11 12 21 20
		f 4 4 21 -13 -21
		mu 0 4 12 13 22 21
		f 4 5 22 -14 -22
		mu 0 4 13 14 23 22
		f 4 6 23 -15 -23
		mu 0 4 14 15 24 23
		f 4 7 16 -16 -24
		mu 0 4 15 16 25 24
		f 3 -1 -25 25
		mu 0 3 1 0 34
		f 3 -2 -26 26
		mu 0 3 2 1 34
		f 3 -3 -27 27
		mu 0 3 3 2 34
		f 3 -4 -28 28
		mu 0 3 4 3 34
		f 3 -5 -29 29
		mu 0 3 5 4 34
		f 3 -6 -30 30
		mu 0 3 6 5 34
		f 3 -7 -31 31
		mu 0 3 7 6 34
		f 3 -8 -32 24
		mu 0 3 0 7 34
		f 3 8 33 -33
		mu 0 3 32 31 35
		f 3 9 34 -34
		mu 0 3 31 30 35
		f 3 10 35 -35
		mu 0 3 30 29 35
		f 3 11 36 -36
		mu 0 3 29 28 35
		f 3 12 37 -37
		mu 0 3 28 27 35
		f 3 13 38 -38
		mu 0 3 27 26 35
		f 3 14 39 -39
		mu 0 3 26 33 35
		f 3 15 32 -40
		mu 0 3 33 32 35;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".dr" 1;
createNode transform -n "pCylinder3" -p "marketStall1";
	rename -uid "70AF2DFE-4937-E362-147B-ED8BA54F51A6";
	setAttr ".t" -type "double3" -0.6111561443497795 1.0095629453267119 1.4171840872226888 ;
	setAttr ".s" -type "double3" 0.16666666666666666 1.5 0.5 ;
	setAttr ".rp" -type "double3" -1.1387861320599768e-007 -1.4999991027445194 -3.8750365582984614e-008 ;
	setAttr ".sp" -type "double3" -6.8327167923598608e-007 -0.99999940182967961 -7.7500731165969228e-008 ;
	setAttr ".spt" -type "double3" 5.693930660299884e-007 -0.49999970091483992 3.8750365582984614e-008 ;
createNode mesh -n "pCylinderShape3" -p "pCylinder3";
	rename -uid "33F9877C-4422-F66C-CFDC-669CFEC0DBDD";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 36 ".uvst[0].uvsp[0:35]" -type "float2" 0.61048543 0.04576458
		 0.5 1.4901161e-008 0.38951457 0.04576458 0.34375 0.15625 0.38951457 0.26673543 0.5
		 0.3125 0.61048543 0.26673543 0.65625 0.15625 0.375 0.3125 0.40625 0.3125 0.4375 0.3125
		 0.46875 0.3125 0.5 0.3125 0.53125 0.3125 0.5625 0.3125 0.59375 0.3125 0.625 0.3125
		 0.375 0.68843985 0.40625 0.68843985 0.4375 0.68843985 0.46875 0.68843985 0.5 0.68843985
		 0.53125 0.68843985 0.5625 0.68843985 0.59375 0.68843985 0.625 0.68843985 0.61048543
		 0.73326457 0.5 0.6875 0.38951457 0.73326457 0.34375 0.84375 0.38951457 0.95423543
		 0.5 1 0.61048543 0.95423543 0.65625 0.84375 0.5 0.15000001 0.5 0.83749998;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 18 ".vt[0:17]"  0.17677668 -1 -0.17677668 0 -1 -0.24999997
		 -0.17677668 -1 -0.17677668 -0.24999997 -1 0 -0.17677668 -1 0.17677668 0 -1 0.24999999
		 0.17677669 -1 0.17677669 0.25 -1 0 0.17677668 1 -0.17677668 0 1 -0.24999997 -0.17677668 1 -0.17677668
		 -0.24999997 1 0 -0.17677668 1 0.17677668 0 1 0.24999999 0.17677669 1 0.17677669 0.25 1 0
		 0 -1 0 0 1 0;
	setAttr -s 40 ".ed[0:39]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 0 0 8 9 0 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 8 0 0 8 0 1 9 0 2 10 0
		 3 11 0 4 12 0 5 13 0 6 14 0 7 15 0 16 0 1 16 1 1 16 2 1 16 3 1 16 4 1 16 5 1 16 6 1
		 16 7 1 8 17 1 9 17 1 10 17 1 11 17 1 12 17 1 13 17 1 14 17 1 15 17 1;
	setAttr -s 24 -ch 80 ".fc[0:23]" -type "polyFaces" 
		f 4 0 17 -9 -17
		mu 0 4 8 9 18 17
		f 4 1 18 -10 -18
		mu 0 4 9 10 19 18
		f 4 2 19 -11 -19
		mu 0 4 10 11 20 19
		f 4 3 20 -12 -20
		mu 0 4 11 12 21 20
		f 4 4 21 -13 -21
		mu 0 4 12 13 22 21
		f 4 5 22 -14 -22
		mu 0 4 13 14 23 22
		f 4 6 23 -15 -23
		mu 0 4 14 15 24 23
		f 4 7 16 -16 -24
		mu 0 4 15 16 25 24
		f 3 -1 -25 25
		mu 0 3 1 0 34
		f 3 -2 -26 26
		mu 0 3 2 1 34
		f 3 -3 -27 27
		mu 0 3 3 2 34
		f 3 -4 -28 28
		mu 0 3 4 3 34
		f 3 -5 -29 29
		mu 0 3 5 4 34
		f 3 -6 -30 30
		mu 0 3 6 5 34
		f 3 -7 -31 31
		mu 0 3 7 6 34
		f 3 -8 -32 24
		mu 0 3 0 7 34
		f 3 8 33 -33
		mu 0 3 32 31 35
		f 3 9 34 -34
		mu 0 3 31 30 35
		f 3 10 35 -35
		mu 0 3 30 29 35
		f 3 11 36 -36
		mu 0 3 29 28 35
		f 3 12 37 -37
		mu 0 3 28 27 35
		f 3 13 38 -38
		mu 0 3 27 26 35
		f 3 14 39 -39
		mu 0 3 26 33 35
		f 3 15 32 -40
		mu 0 3 33 32 35;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".dr" 1;
createNode transform -n "pCylinder4" -p "marketStall1";
	rename -uid "135A22BA-494D-2A90-F6A8-B58EF48E6497";
	setAttr ".t" -type "double3" 0.61364580896741749 1.0095629453267119 1.4171840872226888 ;
	setAttr ".s" -type "double3" 0.16666666666666666 1.5 0.5 ;
	setAttr ".rp" -type "double3" -1.1387861320599768e-007 -1.4999991027445194 -3.8750365582984614e-008 ;
	setAttr ".sp" -type "double3" -6.8327167923598608e-007 -0.99999940182967961 -7.7500731165969228e-008 ;
	setAttr ".spt" -type "double3" 5.693930660299884e-007 -0.49999970091483992 3.8750365582984614e-008 ;
createNode mesh -n "pCylinderShape4" -p "pCylinder4";
	rename -uid "CB30A794-465F-607D-7851-8CB1E8A89FD1";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 36 ".uvst[0].uvsp[0:35]" -type "float2" 0.61048543 0.04576458
		 0.5 1.4901161e-008 0.38951457 0.04576458 0.34375 0.15625 0.38951457 0.26673543 0.5
		 0.3125 0.61048543 0.26673543 0.65625 0.15625 0.375 0.3125 0.40625 0.3125 0.4375 0.3125
		 0.46875 0.3125 0.5 0.3125 0.53125 0.3125 0.5625 0.3125 0.59375 0.3125 0.625 0.3125
		 0.375 0.68843985 0.40625 0.68843985 0.4375 0.68843985 0.46875 0.68843985 0.5 0.68843985
		 0.53125 0.68843985 0.5625 0.68843985 0.59375 0.68843985 0.625 0.68843985 0.61048543
		 0.73326457 0.5 0.6875 0.38951457 0.73326457 0.34375 0.84375 0.38951457 0.95423543
		 0.5 1 0.61048543 0.95423543 0.65625 0.84375 0.5 0.15000001 0.5 0.83749998;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 18 ".vt[0:17]"  0.17677668 -1 -0.17677668 0 -1 -0.24999997
		 -0.17677668 -1 -0.17677668 -0.24999997 -1 0 -0.17677668 -1 0.17677668 0 -1 0.24999999
		 0.17677669 -1 0.17677669 0.25 -1 0 0.17677668 1 -0.17677668 0 1 -0.24999997 -0.17677668 1 -0.17677668
		 -0.24999997 1 0 -0.17677668 1 0.17677668 0 1 0.24999999 0.17677669 1 0.17677669 0.25 1 0
		 0 -1 0 0 1 0;
	setAttr -s 40 ".ed[0:39]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 0 0 8 9 0 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 8 0 0 8 0 1 9 0 2 10 0
		 3 11 0 4 12 0 5 13 0 6 14 0 7 15 0 16 0 1 16 1 1 16 2 1 16 3 1 16 4 1 16 5 1 16 6 1
		 16 7 1 8 17 1 9 17 1 10 17 1 11 17 1 12 17 1 13 17 1 14 17 1 15 17 1;
	setAttr -s 24 -ch 80 ".fc[0:23]" -type "polyFaces" 
		f 4 0 17 -9 -17
		mu 0 4 8 9 18 17
		f 4 1 18 -10 -18
		mu 0 4 9 10 19 18
		f 4 2 19 -11 -19
		mu 0 4 10 11 20 19
		f 4 3 20 -12 -20
		mu 0 4 11 12 21 20
		f 4 4 21 -13 -21
		mu 0 4 12 13 22 21
		f 4 5 22 -14 -22
		mu 0 4 13 14 23 22
		f 4 6 23 -15 -23
		mu 0 4 14 15 24 23
		f 4 7 16 -16 -24
		mu 0 4 15 16 25 24
		f 3 -1 -25 25
		mu 0 3 1 0 34
		f 3 -2 -26 26
		mu 0 3 2 1 34
		f 3 -3 -27 27
		mu 0 3 3 2 34
		f 3 -4 -28 28
		mu 0 3 4 3 34
		f 3 -5 -29 29
		mu 0 3 5 4 34
		f 3 -6 -30 30
		mu 0 3 6 5 34
		f 3 -7 -31 31
		mu 0 3 7 6 34
		f 3 -8 -32 24
		mu 0 3 0 7 34
		f 3 8 33 -33
		mu 0 3 32 31 35
		f 3 9 34 -34
		mu 0 3 31 30 35
		f 3 10 35 -35
		mu 0 3 30 29 35
		f 3 11 36 -36
		mu 0 3 29 28 35
		f 3 12 37 -37
		mu 0 3 28 27 35
		f 3 13 38 -38
		mu 0 3 27 26 35
		f 3 14 39 -39
		mu 0 3 26 33 35
		f 3 15 32 -40
		mu 0 3 33 32 35;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".dr" 1;
createNode transform -n "pCylinder5" -p "marketStall1";
	rename -uid "94BE4E8B-4FEC-A854-906A-08AA660970A5";
	setAttr ".t" -type "double3" 0.61364580896741749 1.0095629453267119 -0.70257360115011469 ;
	setAttr ".s" -type "double3" 0.16666666666666666 1.5 0.5 ;
	setAttr ".rp" -type "double3" -1.1387861320599768e-007 -1.4999991027445194 -3.8750365582984614e-008 ;
	setAttr ".sp" -type "double3" -6.8327167923598608e-007 -0.99999940182967961 -7.7500731165969228e-008 ;
	setAttr ".spt" -type "double3" 5.693930660299884e-007 -0.49999970091483992 3.8750365582984614e-008 ;
createNode mesh -n "pCylinderShape5" -p "pCylinder5";
	rename -uid "D6AD058D-4F2B-44B4-EC5C-F99710B93FC6";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 36 ".uvst[0].uvsp[0:35]" -type "float2" 0.61048543 0.04576458
		 0.5 1.4901161e-008 0.38951457 0.04576458 0.34375 0.15625 0.38951457 0.26673543 0.5
		 0.3125 0.61048543 0.26673543 0.65625 0.15625 0.375 0.3125 0.40625 0.3125 0.4375 0.3125
		 0.46875 0.3125 0.5 0.3125 0.53125 0.3125 0.5625 0.3125 0.59375 0.3125 0.625 0.3125
		 0.375 0.68843985 0.40625 0.68843985 0.4375 0.68843985 0.46875 0.68843985 0.5 0.68843985
		 0.53125 0.68843985 0.5625 0.68843985 0.59375 0.68843985 0.625 0.68843985 0.61048543
		 0.73326457 0.5 0.6875 0.38951457 0.73326457 0.34375 0.84375 0.38951457 0.95423543
		 0.5 1 0.61048543 0.95423543 0.65625 0.84375 0.5 0.15000001 0.5 0.83749998;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 18 ".vt[0:17]"  0.17677668 -1 -0.17677668 0 -1 -0.24999997
		 -0.17677668 -1 -0.17677668 -0.24999997 -1 0 -0.17677668 -1 0.17677668 0 -1 0.24999999
		 0.17677669 -1 0.17677669 0.25 -1 0 0.17677668 1 -0.17677668 0 1 -0.24999997 -0.17677668 1 -0.17677668
		 -0.24999997 1 0 -0.17677668 1 0.17677668 0 1 0.24999999 0.17677669 1 0.17677669 0.25 1 0
		 0 -1 0 0 1 0;
	setAttr -s 40 ".ed[0:39]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 0 0 8 9 0 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 8 0 0 8 0 1 9 0 2 10 0
		 3 11 0 4 12 0 5 13 0 6 14 0 7 15 0 16 0 1 16 1 1 16 2 1 16 3 1 16 4 1 16 5 1 16 6 1
		 16 7 1 8 17 1 9 17 1 10 17 1 11 17 1 12 17 1 13 17 1 14 17 1 15 17 1;
	setAttr -s 24 -ch 80 ".fc[0:23]" -type "polyFaces" 
		f 4 0 17 -9 -17
		mu 0 4 8 9 18 17
		f 4 1 18 -10 -18
		mu 0 4 9 10 19 18
		f 4 2 19 -11 -19
		mu 0 4 10 11 20 19
		f 4 3 20 -12 -20
		mu 0 4 11 12 21 20
		f 4 4 21 -13 -21
		mu 0 4 12 13 22 21
		f 4 5 22 -14 -22
		mu 0 4 13 14 23 22
		f 4 6 23 -15 -23
		mu 0 4 14 15 24 23
		f 4 7 16 -16 -24
		mu 0 4 15 16 25 24
		f 3 -1 -25 25
		mu 0 3 1 0 34
		f 3 -2 -26 26
		mu 0 3 2 1 34
		f 3 -3 -27 27
		mu 0 3 3 2 34
		f 3 -4 -28 28
		mu 0 3 4 3 34
		f 3 -5 -29 29
		mu 0 3 5 4 34
		f 3 -6 -30 30
		mu 0 3 6 5 34
		f 3 -7 -31 31
		mu 0 3 7 6 34
		f 3 -8 -32 24
		mu 0 3 0 7 34
		f 3 8 33 -33
		mu 0 3 32 31 35
		f 3 9 34 -34
		mu 0 3 31 30 35
		f 3 10 35 -35
		mu 0 3 30 29 35
		f 3 11 36 -36
		mu 0 3 29 28 35
		f 3 12 37 -37
		mu 0 3 28 27 35
		f 3 13 38 -38
		mu 0 3 27 26 35
		f 3 14 39 -39
		mu 0 3 26 33 35
		f 3 15 32 -40
		mu 0 3 33 32 35;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".dr" 1;
createNode transform -n "pCylinder6" -p "marketStall1";
	rename -uid "21EC6062-4A3E-60D6-FA0D-89B7E95A0383";
	setAttr ".t" -type "double3" 0.61458800710402883 2.3238119373161332 0.36782252783200509 ;
	setAttr ".r" -type "double3" 89.999999999999986 0 0 ;
	setAttr ".s" -type "double3" 0.16666666666666666 1.2319498781838523 0.5 ;
	setAttr ".rp" -type "double3" 2.4835268656412776e-009 0 3.7252902984619141e-009 ;
	setAttr ".rpt" -type "double3" 0 -3.7252911866400666e-009 -3.7252902984619165e-009 ;
	setAttr ".sp" -type "double3" 1.4901161193847656e-008 0 7.4505805969238281e-009 ;
	setAttr ".spt" -type "double3" -1.2417634328206379e-008 0 -3.7252902984619141e-009 ;
createNode mesh -n "pCylinderShape6" -p "pCylinder6";
	rename -uid "E2953097-4F92-2B8E-5790-8EB1C19C6C54";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 36 ".uvst[0].uvsp[0:35]" -type "float2" 0.61048543 0.04576458
		 0.5 1.4901161e-008 0.38951457 0.04576458 0.34375 0.15625 0.38951457 0.26673543 0.5
		 0.3125 0.61048543 0.26673543 0.65625 0.15625 0.375 0.3125 0.40625 0.3125 0.4375 0.3125
		 0.46875 0.3125 0.5 0.3125 0.53125 0.3125 0.5625 0.3125 0.59375 0.3125 0.625 0.3125
		 0.375 0.68843985 0.40625 0.68843985 0.4375 0.68843985 0.46875 0.68843985 0.5 0.68843985
		 0.53125 0.68843985 0.5625 0.68843985 0.59375 0.68843985 0.625 0.68843985 0.61048543
		 0.73326457 0.5 0.6875 0.38951457 0.73326457 0.34375 0.84375 0.38951457 0.95423543
		 0.5 1 0.61048543 0.95423543 0.65625 0.84375 0.5 0.15000001 0.5 0.83749998;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 18 ".vt[0:17]"  0.17677668 -1 -0.17677668 0 -1 -0.24999997
		 -0.17677668 -1 -0.17677668 -0.24999997 -1 0 -0.17677668 -1 0.17677668 0 -1 0.24999999
		 0.17677669 -1 0.17677669 0.25 -1 0 0.17677668 1 -0.17677668 0 1 -0.24999997 -0.17677668 1 -0.17677668
		 -0.24999997 1 0 -0.17677668 1 0.17677668 0 1 0.24999999 0.17677669 1 0.17677669 0.25 1 0
		 0 -1 0 0 1 0;
	setAttr -s 40 ".ed[0:39]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 0 0 8 9 0 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 8 0 0 8 0 1 9 0 2 10 0
		 3 11 0 4 12 0 5 13 0 6 14 0 7 15 0 16 0 1 16 1 1 16 2 1 16 3 1 16 4 1 16 5 1 16 6 1
		 16 7 1 8 17 1 9 17 1 10 17 1 11 17 1 12 17 1 13 17 1 14 17 1 15 17 1;
	setAttr -s 24 -ch 80 ".fc[0:23]" -type "polyFaces" 
		f 4 0 17 -9 -17
		mu 0 4 8 9 18 17
		f 4 1 18 -10 -18
		mu 0 4 9 10 19 18
		f 4 2 19 -11 -19
		mu 0 4 10 11 20 19
		f 4 3 20 -12 -20
		mu 0 4 11 12 21 20
		f 4 4 21 -13 -21
		mu 0 4 12 13 22 21
		f 4 5 22 -14 -22
		mu 0 4 13 14 23 22
		f 4 6 23 -15 -23
		mu 0 4 14 15 24 23
		f 4 7 16 -16 -24
		mu 0 4 15 16 25 24
		f 3 -1 -25 25
		mu 0 3 1 0 34
		f 3 -2 -26 26
		mu 0 3 2 1 34
		f 3 -3 -27 27
		mu 0 3 3 2 34
		f 3 -4 -28 28
		mu 0 3 4 3 34
		f 3 -5 -29 29
		mu 0 3 5 4 34
		f 3 -6 -30 30
		mu 0 3 6 5 34
		f 3 -7 -31 31
		mu 0 3 7 6 34
		f 3 -8 -32 24
		mu 0 3 0 7 34
		f 3 8 33 -33
		mu 0 3 32 31 35
		f 3 9 34 -34
		mu 0 3 31 30 35
		f 3 10 35 -35
		mu 0 3 30 29 35
		f 3 11 36 -36
		mu 0 3 29 28 35
		f 3 12 37 -37
		mu 0 3 28 27 35
		f 3 13 38 -38
		mu 0 3 27 26 35
		f 3 14 39 -39
		mu 0 3 26 33 35
		f 3 15 32 -40
		mu 0 3 33 32 35;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".dr" 1;
createNode transform -n "pCylinder7" -p "marketStall1";
	rename -uid "E6365798-4EDB-751A-9A87-9580FEC08ABB";
	setAttr ".t" -type "double3" -0.60970157576461226 2.3238119373161332 0.36782252783200509 ;
	setAttr ".r" -type "double3" 89.999999999999986 0 0 ;
	setAttr ".s" -type "double3" 0.16666666666666666 1.2319498781838523 0.5 ;
	setAttr ".rp" -type "double3" 2.4835268656412776e-009 0 3.7252902984619141e-009 ;
	setAttr ".rpt" -type "double3" 0 -3.7252911866400666e-009 -3.7252902984619165e-009 ;
	setAttr ".sp" -type "double3" 1.4901161193847656e-008 0 7.4505805969238281e-009 ;
	setAttr ".spt" -type "double3" -1.2417634328206379e-008 0 -3.7252902984619141e-009 ;
createNode mesh -n "pCylinderShape7" -p "pCylinder7";
	rename -uid "422AE4F8-4D4B-9C93-D1AD-EB95AC4FE569";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 36 ".uvst[0].uvsp[0:35]" -type "float2" 0.61048543 0.04576458
		 0.5 1.4901161e-008 0.38951457 0.04576458 0.34375 0.15625 0.38951457 0.26673543 0.5
		 0.3125 0.61048543 0.26673543 0.65625 0.15625 0.375 0.3125 0.40625 0.3125 0.4375 0.3125
		 0.46875 0.3125 0.5 0.3125 0.53125 0.3125 0.5625 0.3125 0.59375 0.3125 0.625 0.3125
		 0.375 0.68843985 0.40625 0.68843985 0.4375 0.68843985 0.46875 0.68843985 0.5 0.68843985
		 0.53125 0.68843985 0.5625 0.68843985 0.59375 0.68843985 0.625 0.68843985 0.61048543
		 0.73326457 0.5 0.6875 0.38951457 0.73326457 0.34375 0.84375 0.38951457 0.95423543
		 0.5 1 0.61048543 0.95423543 0.65625 0.84375 0.5 0.15000001 0.5 0.83749998;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 18 ".vt[0:17]"  0.17677668 -1 -0.17677668 0 -1 -0.24999997
		 -0.17677668 -1 -0.17677668 -0.24999997 -1 0 -0.17677668 -1 0.17677668 0 -1 0.24999999
		 0.17677669 -1 0.17677669 0.25 -1 0 0.17677668 1 -0.17677668 0 1 -0.24999997 -0.17677668 1 -0.17677668
		 -0.24999997 1 0 -0.17677668 1 0.17677668 0 1 0.24999999 0.17677669 1 0.17677669 0.25 1 0
		 0 -1 0 0 1 0;
	setAttr -s 40 ".ed[0:39]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 0 0 8 9 0 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 8 0 0 8 0 1 9 0 2 10 0
		 3 11 0 4 12 0 5 13 0 6 14 0 7 15 0 16 0 1 16 1 1 16 2 1 16 3 1 16 4 1 16 5 1 16 6 1
		 16 7 1 8 17 1 9 17 1 10 17 1 11 17 1 12 17 1 13 17 1 14 17 1 15 17 1;
	setAttr -s 24 -ch 80 ".fc[0:23]" -type "polyFaces" 
		f 4 0 17 -9 -17
		mu 0 4 8 9 18 17
		f 4 1 18 -10 -18
		mu 0 4 9 10 19 18
		f 4 2 19 -11 -19
		mu 0 4 10 11 20 19
		f 4 3 20 -12 -20
		mu 0 4 11 12 21 20
		f 4 4 21 -13 -21
		mu 0 4 12 13 22 21
		f 4 5 22 -14 -22
		mu 0 4 13 14 23 22
		f 4 6 23 -15 -23
		mu 0 4 14 15 24 23
		f 4 7 16 -16 -24
		mu 0 4 15 16 25 24
		f 3 -1 -25 25
		mu 0 3 1 0 34
		f 3 -2 -26 26
		mu 0 3 2 1 34
		f 3 -3 -27 27
		mu 0 3 3 2 34
		f 3 -4 -28 28
		mu 0 3 4 3 34
		f 3 -5 -29 29
		mu 0 3 5 4 34
		f 3 -6 -30 30
		mu 0 3 6 5 34
		f 3 -7 -31 31
		mu 0 3 7 6 34
		f 3 -8 -32 24
		mu 0 3 0 7 34
		f 3 8 33 -33
		mu 0 3 32 31 35
		f 3 9 34 -34
		mu 0 3 31 30 35
		f 3 10 35 -35
		mu 0 3 30 29 35
		f 3 11 36 -36
		mu 0 3 29 28 35
		f 3 12 37 -37
		mu 0 3 28 27 35
		f 3 13 38 -38
		mu 0 3 27 26 35
		f 3 14 39 -39
		mu 0 3 26 33 35
		f 3 15 32 -40
		mu 0 3 33 32 35;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".dr" 1;
createNode transform -n "tarp" -p "marketStall1";
	rename -uid "24F1A429-402F-1EE6-75BE-CEACCF022905";
	setAttr ".t" -type "double3" 0.0040893117188414152 2.3993862839101094 0.23835625556796325 ;
	setAttr ".s" -type "double3" 1.1883411126514059 0.5 0.5 ;
createNode mesh -n "tarpShape" -p "tarp";
	rename -uid "D1AE88D6-4B4C-4A2D-B23D-75ABDC42178A";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 10 ".uvst[0].uvsp[0:9]" -type "float2" 0 0 1 0 0 1 1 1 0.5
		 1 0.5 0 0.75 1 0.75 0 0.25 1 0.25 0;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[6:9]" -type "float3"  0 -0.083277762 0 0 -0.083277762 
		0 0 -0.083277762 0 0 -0.083277762 0;
	setAttr -s 10 ".vt[0:9]"  -0.49160692 -1.110223e-016 2.078360081 0.49055779 -1.110223e-016 2.078360081
		 -0.49160692 1.110223e-016 -1.56969416 0.49055779 1.110223e-016 -1.56969416 -0.00052456558 -0.36300644 -1.56969416
		 -0.00052456558 -0.36300644 2.078360081 0.2450166 -0.18150322 -1.56969416 0.2450166 -0.18150322 2.078360081
		 -0.24606574 -0.18150322 -1.56969416 -0.24606574 -0.18150322 2.078360081;
	setAttr -s 13 ".ed[0:12]"  0 9 0 0 2 0 1 3 0 2 8 0 4 6 0 5 7 0 4 5 1
		 6 3 0 7 1 0 6 7 1 8 4 0 9 5 0 8 9 1;
	setAttr -s 4 -ch 16 ".fc[0:3]" -type "polyFaces" 
		f 4 8 2 -8 9
		mu 0 4 7 1 3 6
		f 4 11 -7 -11 12
		mu 0 4 9 5 4 8
		f 4 5 -10 -5 6
		mu 0 4 5 7 6 4
		f 4 0 -13 -4 -2
		mu 0 4 0 9 8 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "backing" -p "marketStall1";
	rename -uid "BEF5DE26-4F01-0030-71C8-FC8FC8FD87C8";
	setAttr ".t" -type "double3" 0 0.78573594030005012 1.431735922695065 ;
	setAttr ".s" -type "double3" 1.1800236986946895 2.588848659552168 0.10609165784614688 ;
createNode mesh -n "backingShape" -p "backing";
	rename -uid "70E88CDB-45B4-A781-47AF-6E90068435C3";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "cart";
	rename -uid "D22D9637-4445-3305-9700-80AB40713674";
	setAttr ".t" -type "double3" 72.918681587945414 16.742697980839978 0 ;
	setAttr ".s" -type "double3" 5 0.25 3 ;
createNode mesh -n "cartShape" -p "cart";
	rename -uid "26C903B4-454F-2F23-8D18-28BB7EF966EE";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 64 ".uvst[0].uvsp[0:63]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.29166666 0 0.375 0.91666663 0.29166666 0.25 0.375
		 0.33333334 0.625 0.33333334 0.70833331 0.25 0.625 0.91666663 0.70833331 0 0.20833333
		 0 0.375 0.83333331 0.20833333 0.25 0.375 0.41666669 0.625 0.41666669 0.79166663 0.25
		 0.625 0.83333331 0.79166663 0 0.54166663 0.75 0.54166663 0.83333331 0.54166663 0.91666663
		 0.54166663 0 0.54166663 1 0.54166663 0.25 0.54166663 0.33333334 0.54166663 0.41666669
		 0.54166663 0.5 0.45833331 0.75 0.45833331 0.83333331 0.45833331 0.91666663 0.45833331
		 0 0.45833331 1 0.45833331 0.25 0.45833331 0.33333334 0.45833331 0.41666669 0.45833331
		 0.5 0.125 0 0.20833333 0 0.20833333 0.25 0.125 0.25 0.29166666 0 0.375 0 0.375 0.25
		 0.29166666 0.25 0.125 0 0.20833333 0 0.20833333 0.25 0.125 0.25 0.29166666 0 0.375
		 0 0.375 0.25 0.29166666 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 48 ".pt[0:47]" -type "float3"  0 0 0.0097852852 0 0 0.0097852852 
		0 0 0.0097852852 0 0 0.0097852852 0 0 -0.0097852852 0 0 -0.0097852852 0 0 -0.0097852852 
		0 0 -0.0097852852 0 0 0.0097852852 0 0 0.0097852852 0 0 0.0097852852 0 0 0.0097852852 
		0 0 -0.0097852852 0 0 -0.0097852852 0 0 -0.0097852852 0 0 -0.0097852852 0 0 -0.0097852852 
		0 0 -0.0097852852 0 0 0.0097852852 0 0 0.0097852852 0 0 0.0097852852 0 0 0.0097852852 
		0 0 -0.0097852852 0 0 -0.0097852852 0 0 -0.0097852852 0 0 -0.0097852852 0 0 0.0097852852 
		0 0 0.0097852852 0 0 0.0097852852 0 0 0.0097852852 0 0 -0.0097852852 0 0 -0.0097852852 
		0 0 -0.0097852852 0 0 -0.0097852852 0 0 -0.0097852852 0 0 -0.0097852852 0 0 0.0097852852 
		0 0 0.0097852852 0 0 0.0097852852 0 0 0.0097852852 0 0 -0.0097852852 0 0 -0.0097852852 
		0 0 -0.0097852852 0 0 -0.0097852852 0 0 0.0097852852 0 0 0.0097852852 0 0 0.0097852852 
		0 0 0.0097852852;
	setAttr -s 48 ".vt[0:47]"  -0.86300105 -0.5 0.44581652 0.47393054 -0.5 0.44581652
		 -0.86300105 0.5 0.44581652 0.47393054 0.5 0.44581652 -0.86300105 0.5 -0.44581652
		 0.47393054 0.5 -0.44581652 -0.86300105 -0.5 -0.44581652 0.47393054 -0.5 -0.44581652
		 -0.86300105 -0.5 0.40838706 -0.86300105 0.5 0.40838706 0.47393054 0.5 0.40838706
		 0.47393054 -0.5 0.40838706 -0.86300105 -0.5 -0.40838709 -0.86300105 0.5 -0.40838709
		 0.47393054 0.5 -0.40838709 0.47393054 -0.5 -0.40838709 0.45234698 -0.5 -0.44581652
		 0.45234698 -0.5 -0.40838709 0.45234698 -0.5 0.40838706 0.45234698 -0.5 0.44581652
		 0.45234698 0.5 0.44581652 0.45234698 0.5 0.40838706 0.45234698 0.5 -0.40838709 0.45234698 0.5 -0.44581652
		 -0.84141463 -0.5 -0.44581652 -0.84141463 -0.5 -0.40838709 -0.84141463 -0.5 0.40838706
		 -0.84141463 -0.5 0.44581652 -0.84141463 0.5 0.44581652 -0.84141463 0.5 0.40838706
		 -0.84141463 0.5 -0.40838709 -0.84141463 0.5 -0.44581652 -0.8990345 -0.5 -0.44581652
		 -0.8990345 -0.5 -0.40838709 -0.8990345 0.5 -0.40838709 -0.8990345 0.5 -0.44581652
		 -0.8990345 -0.5 0.40838706 -0.8990345 -0.5 0.44581652 -0.8990345 0.5 0.44581652 -0.8990345 0.5 0.40838706
		 -0.91975307 0.034456551 -0.44581652 -0.91975307 0.034456551 -0.40838709 -0.91975307 0.5 -0.40838709
		 -0.91975307 0.5 -0.44581652 -0.91975307 0.034456551 0.40838706 -0.91975307 0.034456551 0.44581652
		 -0.91975307 0.5 0.44581652 -0.91975307 0.5 0.40838706;
	setAttr -s 96 ".ed[0:95]"  0 27 0 2 28 0 4 31 0 6 24 0 0 2 0 1 3 0 2 9 0
		 3 10 0 4 6 0 5 7 0 6 12 0 7 15 0 8 0 0 9 13 0 8 9 0 10 14 0 9 29 0 11 1 0 10 11 0
		 11 18 0 12 8 0 13 4 0 12 13 0 14 5 0 13 30 0 15 11 0 14 15 0 15 17 0 16 7 0 17 25 0
		 16 17 0 18 26 0 17 18 0 19 1 0 18 19 0 20 3 0 19 20 0 21 10 0 20 21 0 22 14 0 21 22 0
		 23 5 0 22 23 0 23 16 0 24 16 0 25 12 0 24 25 0 26 8 0 25 26 0 27 19 0 26 27 0 28 20 0
		 27 28 0 29 21 0 28 29 0 30 22 0 29 30 0 31 23 0 30 31 0 31 24 0 18 21 0 17 22 0 26 29 0
		 25 30 0 6 32 0 12 33 0 32 33 0 13 34 0 33 34 0 4 35 0 34 35 0 35 32 0 8 36 0 0 37 0
		 36 37 0 2 38 0 37 38 0 9 39 0 38 39 0 36 39 0 32 40 0 33 41 0 40 41 0 34 42 0 41 42 0
		 35 43 0 42 43 0 43 40 0 36 44 0 37 45 0 44 45 0 38 46 0 45 46 0 39 47 0 46 47 0 44 47 0;
	setAttr -s 48 -ch 192 ".fc[0:47]" -type "polyFaces" 
		f 4 0 52 -2 -5
		mu 0 4 0 42 44 2
		f 4 24 58 -3 -22
		mu 0 4 25 46 47 4
		f 4 2 59 -4 -9
		mu 0 4 4 47 39 6
		f 4 3 46 45 -11
		mu 0 4 6 39 40 23
		f 4 -12 -10 -24 26
		mu 0 4 29 10 11 27
		f 4 82 84 86 87
		mu 0 4 56 57 58 59
		f 4 90 92 94 -96
		mu 0 4 60 61 62 63
		f 4 1 54 -17 -7
		mu 0 4 2 44 45 17
		f 4 -18 -19 -8 -6
		mu 0 4 1 21 19 3
		f 4 -48 50 -1 -13
		mu 0 4 15 41 43 8
		f 4 20 14 13 -23
		mu 0 4 22 14 16 24
		f 4 16 56 -25 -14
		mu 0 4 17 45 46 25
		f 4 -26 -27 -16 18
		mu 0 4 21 29 27 19
		f 4 -46 48 47 -21
		mu 0 4 23 40 41 15
		f 4 28 11 27 -31
		mu 0 4 30 7 28 31
		f 4 -33 -28 25 19
		mu 0 4 32 31 28 20
		f 4 -35 -20 17 -34
		mu 0 4 34 32 20 9
		f 4 -37 33 5 -36
		mu 0 4 35 33 1 3
		f 4 -39 35 7 -38
		mu 0 4 36 35 3 18
		f 4 -41 37 15 -40
		mu 0 4 37 36 18 26
		f 4 -43 39 23 -42
		mu 0 4 38 37 26 5
		f 4 -44 41 9 -29
		mu 0 4 30 38 5 7
		f 4 44 30 29 -47
		mu 0 4 39 30 31 40
		f 4 -51 -32 34 -50
		mu 0 4 43 41 32 34
		f 4 -53 49 36 -52
		mu 0 4 44 42 33 35
		f 4 -55 51 38 -54
		mu 0 4 45 44 35 36
		f 4 -59 55 42 -58
		mu 0 4 47 46 37 38
		f 4 -60 57 43 -45
		mu 0 4 39 47 38 30
		f 4 32 60 40 -62
		mu 0 4 31 32 36 37
		f 4 31 62 53 -61
		mu 0 4 32 41 45 36
		f 4 -49 63 -57 -63
		mu 0 4 41 40 46 45
		f 4 -30 61 -56 -64
		mu 0 4 40 31 37 46
		f 4 10 65 -67 -65
		mu 0 4 12 22 49 48
		f 4 22 67 -69 -66
		mu 0 4 22 24 50 49
		f 4 21 69 -71 -68
		mu 0 4 24 13 51 50
		f 4 8 64 -72 -70
		mu 0 4 13 12 48 51
		f 4 12 73 -75 -73
		mu 0 4 14 0 53 52
		f 4 4 75 -77 -74
		mu 0 4 0 2 54 53
		f 4 6 77 -79 -76
		mu 0 4 2 16 55 54
		f 4 -15 72 79 -78
		mu 0 4 16 14 52 55
		f 4 66 81 -83 -81
		mu 0 4 48 49 57 56
		f 4 68 83 -85 -82
		mu 0 4 49 50 58 57
		f 4 70 85 -87 -84
		mu 0 4 50 51 59 58
		f 4 71 80 -88 -86
		mu 0 4 51 48 56 59
		f 4 74 89 -91 -89
		mu 0 4 52 53 61 60
		f 4 76 91 -93 -90
		mu 0 4 53 54 62 61
		f 4 78 93 -95 -92
		mu 0 4 54 55 63 62
		f 4 -80 88 95 -94
		mu 0 4 55 52 60 63;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "wheel2" -p "cart";
	rename -uid "10B2E6CB-4C4E-D78B-04FD-EDB22BE7C7C4";
	setAttr ".t" -type "double3" -0.0017798753285376279 -3.1408005321539605 -0.56666666666666665 ;
	setAttr ".r" -type "double3" 89.999999999999986 3.1805546814635168e-015 83.117089139465207 ;
	setAttr ".s" -type "double3" 1.5418456103421483 0.33333333333333331 0.51885869417397357 ;
	setAttr ".sh" -type "double3" 0 -7.0533901423358101 0 ;
createNode mesh -n "wheelShape2" -p "wheel2";
	rename -uid "2A2598AA-4670-B22B-03CB-64895AF517E1";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 36 ".uvst[0].uvsp[0:35]" -type "float2" 0.61048543 0.04576458
		 0.5 1.4901161e-008 0.38951457 0.04576458 0.34375 0.15625 0.38951457 0.26673543 0.5
		 0.3125 0.61048543 0.26673543 0.65625 0.15625 0.375 0.3125 0.40625 0.3125 0.4375 0.3125
		 0.46875 0.3125 0.5 0.3125 0.53125 0.3125 0.5625 0.3125 0.59375 0.3125 0.625 0.3125
		 0.375 0.68843985 0.40625 0.68843985 0.4375 0.68843985 0.46875 0.68843985 0.5 0.68843985
		 0.53125 0.68843985 0.5625 0.68843985 0.59375 0.68843985 0.625 0.68843985 0.61048543
		 0.73326457 0.5 0.6875 0.38951457 0.73326457 0.34375 0.84375 0.38951457 0.95423543
		 0.5 1 0.61048543 0.95423543 0.65625 0.84375 0.5 0.15000001 0.5 0.83749998;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 18 ".vt[0:17]"  0.70710671 -0.125 -0.70710671 0 -0.125 -0.99999988
		 -0.70710671 -0.125 -0.70710671 -0.99999988 -0.125 0 -0.70710671 -0.125 0.70710671
		 0 -0.125 0.99999994 0.70710677 -0.125 0.70710677 1 -0.125 0 0.70710671 0.125 -0.70710671
		 0 0.125 -0.99999988 -0.70710671 0.125 -0.70710671 -0.99999988 0.125 0 -0.70710671 0.125 0.70710671
		 0 0.125 0.99999994 0.70710677 0.125 0.70710677 1 0.125 0 0 -0.125 0 0 0.125 0;
	setAttr -s 40 ".ed[0:39]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 0 0 8 9 0 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 8 0 0 8 0 1 9 0 2 10 0
		 3 11 0 4 12 0 5 13 0 6 14 0 7 15 0 16 0 1 16 1 1 16 2 1 16 3 1 16 4 1 16 5 1 16 6 1
		 16 7 1 8 17 1 9 17 1 10 17 1 11 17 1 12 17 1 13 17 1 14 17 1 15 17 1;
	setAttr -s 24 -ch 80 ".fc[0:23]" -type "polyFaces" 
		f 4 0 17 -9 -17
		mu 0 4 8 9 18 17
		f 4 1 18 -10 -18
		mu 0 4 9 10 19 18
		f 4 2 19 -11 -19
		mu 0 4 10 11 20 19
		f 4 3 20 -12 -20
		mu 0 4 11 12 21 20
		f 4 4 21 -13 -21
		mu 0 4 12 13 22 21
		f 4 5 22 -14 -22
		mu 0 4 13 14 23 22
		f 4 6 23 -15 -23
		mu 0 4 14 15 24 23
		f 4 7 16 -16 -24
		mu 0 4 15 16 25 24
		f 3 -1 -25 25
		mu 0 3 1 0 34
		f 3 -2 -26 26
		mu 0 3 2 1 34
		f 3 -3 -27 27
		mu 0 3 3 2 34
		f 3 -4 -28 28
		mu 0 3 4 3 34
		f 3 -5 -29 29
		mu 0 3 5 4 34
		f 3 -6 -30 30
		mu 0 3 6 5 34
		f 3 -7 -31 31
		mu 0 3 7 6 34
		f 3 -8 -32 24
		mu 0 3 0 7 34
		f 3 8 33 -33
		mu 0 3 32 31 35
		f 3 9 34 -34
		mu 0 3 31 30 35
		f 3 10 35 -35
		mu 0 3 30 29 35
		f 3 11 36 -36
		mu 0 3 29 28 35
		f 3 12 37 -37
		mu 0 3 28 27 35
		f 3 13 38 -38
		mu 0 3 27 26 35
		f 3 14 39 -39
		mu 0 3 26 33 35
		f 3 15 32 -40
		mu 0 3 33 32 35;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "wheel1" -p "cart";
	rename -uid "74AA5D29-41D8-C4CE-190F-31919DF3881F";
	setAttr ".t" -type "double3" -0.0017798753285376279 -3.1408005321539605 0.56666666666666665 ;
	setAttr ".r" -type "double3" 89.999999999999986 3.1805546814635168e-015 83.117089139465207 ;
	setAttr ".s" -type "double3" 1.5418456103421483 0.33333333333333331 0.51885869417397357 ;
	setAttr ".sh" -type "double3" 0 -7.0533901423358101 0 ;
createNode mesh -n "wheelShape1" -p "wheel1";
	rename -uid "21A388F8-45FA-8B53-F974-688F826412EB";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 36 ".uvst[0].uvsp[0:35]" -type "float2" 0.61048543 0.04576458
		 0.5 1.4901161e-008 0.38951457 0.04576458 0.34375 0.15625 0.38951457 0.26673543 0.5
		 0.3125 0.61048543 0.26673543 0.65625 0.15625 0.375 0.3125 0.40625 0.3125 0.4375 0.3125
		 0.46875 0.3125 0.5 0.3125 0.53125 0.3125 0.5625 0.3125 0.59375 0.3125 0.625 0.3125
		 0.375 0.68843985 0.40625 0.68843985 0.4375 0.68843985 0.46875 0.68843985 0.5 0.68843985
		 0.53125 0.68843985 0.5625 0.68843985 0.59375 0.68843985 0.625 0.68843985 0.61048543
		 0.73326457 0.5 0.6875 0.38951457 0.73326457 0.34375 0.84375 0.38951457 0.95423543
		 0.5 1 0.61048543 0.95423543 0.65625 0.84375 0.5 0.15000001 0.5 0.83749998;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 18 ".vt[0:17]"  0.70710671 -0.125 -0.70710671 0 -0.125 -0.99999988
		 -0.70710671 -0.125 -0.70710671 -0.99999988 -0.125 0 -0.70710671 -0.125 0.70710671
		 0 -0.125 0.99999994 0.70710677 -0.125 0.70710677 1 -0.125 0 0.70710671 0.125 -0.70710671
		 0 0.125 -0.99999988 -0.70710671 0.125 -0.70710671 -0.99999988 0.125 0 -0.70710671 0.125 0.70710671
		 0 0.125 0.99999994 0.70710677 0.125 0.70710677 1 0.125 0 0 -0.125 0 0 0.125 0;
	setAttr -s 40 ".ed[0:39]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 0 0 8 9 0 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 8 0 0 8 0 1 9 0 2 10 0
		 3 11 0 4 12 0 5 13 0 6 14 0 7 15 0 16 0 1 16 1 1 16 2 1 16 3 1 16 4 1 16 5 1 16 6 1
		 16 7 1 8 17 1 9 17 1 10 17 1 11 17 1 12 17 1 13 17 1 14 17 1 15 17 1;
	setAttr -s 24 -ch 80 ".fc[0:23]" -type "polyFaces" 
		f 4 0 17 -9 -17
		mu 0 4 8 9 18 17
		f 4 1 18 -10 -18
		mu 0 4 9 10 19 18
		f 4 2 19 -11 -19
		mu 0 4 10 11 20 19
		f 4 3 20 -12 -20
		mu 0 4 11 12 21 20
		f 4 4 21 -13 -21
		mu 0 4 12 13 22 21
		f 4 5 22 -14 -22
		mu 0 4 13 14 23 22
		f 4 6 23 -15 -23
		mu 0 4 14 15 24 23
		f 4 7 16 -16 -24
		mu 0 4 15 16 25 24
		f 3 -1 -25 25
		mu 0 3 1 0 34
		f 3 -2 -26 26
		mu 0 3 2 1 34
		f 3 -3 -27 27
		mu 0 3 3 2 34
		f 3 -4 -28 28
		mu 0 3 4 3 34
		f 3 -5 -29 29
		mu 0 3 5 4 34
		f 3 -6 -30 30
		mu 0 3 6 5 34
		f 3 -7 -31 31
		mu 0 3 7 6 34
		f 3 -8 -32 24
		mu 0 3 0 7 34
		f 3 8 33 -33
		mu 0 3 32 31 35
		f 3 9 34 -34
		mu 0 3 31 30 35
		f 3 10 35 -35
		mu 0 3 30 29 35
		f 3 11 36 -36
		mu 0 3 29 28 35
		f 3 12 37 -37
		mu 0 3 28 27 35
		f 3 13 38 -38
		mu 0 3 27 26 35
		f 3 14 39 -39
		mu 0 3 26 33 35
		f 3 15 32 -40
		mu 0 3 33 32 35;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "cartTop" -p "cart";
	rename -uid "C4C0126C-4B63-B8F5-FB1B-188FE2E41979";
	setAttr ".t" -type "double3" -14.583736317589084 -66.970791923359911 0 ;
	setAttr ".s" -type "double3" 0.2 4 0.33333333333333331 ;
	setAttr ".rp" -type "double3" 14.466694252922329 65.48407335366889 0 ;
	setAttr ".sp" -type "double3" 72.333471264611674 16.371018338417223 0 ;
	setAttr ".spt" -type "double3" -57.866777011689344 49.113055015251668 0 ;
createNode mesh -n "cartTopShape" -p "cartTop";
	rename -uid "A2149F09-4057-AE97-C33D-439A8B2D6DA4";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 13 "f[1]" "f[61:65]" "f[67]" "f[75:80]" "f[82]" "f[92:247]" "f[249]" "f[251:256]" "f[259]" "f[263]" "f[269]" "f[271]" "f[277]";
	setAttr ".iog[0].og[5].gcl" -type "componentList" 14 "f[0]" "f[2:60]" "f[66]" "f[68:74]" "f[81]" "f[83:91]" "f[248]" "f[250]" "f[257:258]" "f[260:262]" "f[264:268]" "f[270]" "f[272:276]" "f[278:373]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.515625 0.50046992301940918 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 439 ".uvst[0].uvsp";
	setAttr ".uvst[0].uvsp[0:249]" -type "float2" 0.61048543 0.04576458 0.49999669
		 0.0019397225 0.39034632 0.047793247 0.34375 0.15625 0.38951457 0.26673543 0.5 0.3125
		 0.61048543 0.26673543 0.65625 0.15625 0.375 0.3125 0.40625018 0.3130337 0.4375 0.31314924
		 0.46875 0.3125 0.5 0.3125 0.53125 0.3125 0.5625 0.3125 0.59375 0.3125 0.625 0.3125
		 0.375 0.68843985 0.40625015 0.6877501 0.4375 0.68759578 0.46875 0.68843985 0.5 0.68843985
		 0.53125 0.68843985 0.5625 0.68843985 0.59375 0.68843985 0.625 0.68843985 0.61048543
		 0.73326457 0.5 0.6875 0.38951457 0.73326457 0.34375 0.84375 0.39034632 0.95407784
		 0.49999669 0.99959165 0.61048543 0.95423543 0.65625 0.84375 0.5 0.15000001 0.5 0.83749998
		 0.375 0.3125 0.40625015 0.3130337 0.40625012 0.6877501 0.375 0.68843985 0.4375 0.31314924
		 0.4375 0.68759578 0.46875 0.3125 0.46875 0.68843985 0.5 0.3125 0.5 0.68843985 0.53125
		 0.3125 0.53125 0.68843985 0.5625 0.3125 0.5625 0.68843985 0.59375 0.3125 0.59375
		 0.68843985 0.625 0.3125 0.625 0.68843985 0.49999669 0.0019397225 0.61048543 0.04576458
		 0.5 0.15000001 0.39034632 0.047793247 0.34375 0.15625 0.38951457 0.26673543 0.5 0.3125
		 0.61048543 0.26673543 0.65625 0.15625 0.61048543 0.95423543 0.49999669 0.99959165
		 0.5 0.83749998 0.39034632 0.95407784 0.34375 0.84375 0.38951457 0.73326457 0.5 0.6875
		 0.61048543 0.73326457 0.65625 0.84375 0.37560388 0.31353903 0.40625 0.3125 0.40625
		 0.68843985 0.37548542 0.68706536 0.4375 0.3125 0.4375 0.68843985 0.46875 0.3125 0.46875
		 0.68843985 0.5 0.3125 0.5 0.68843985 0.53125 0.3125 0.53125 0.68843985 0.5625 0.3125
		 0.5625 0.68843985 0.59372211 0.31326121 0.59375131 0.68744534 0.62439597 0.313539
		 0.62451446 0.68706536 0.5 1.4901161e-008 0.60965765 0.047362763 0.5 0.15000001 0.38951457
		 0.04576458 0.34375 0.15625 0.38951457 0.26673543 0.5 0.3125 0.61048543 0.26673543
		 0.65488893 0.15737036 0.60965765 0.95416862 0.5 1 0.5 0.83749998 0.38951457 0.95423543
		 0.34375 0.84375 0.38951457 0.73326457 0.5 0.6875 0.61048543 0.73326457 0.65488893
		 0.84450072 0.37560388 0.31353903 0.40625 0.3125 0.40625 0.68843985 0.37548542 0.68706536
		 0.4375 0.3125 0.4375 0.68843985 0.46875 0.3125 0.46875 0.68843985 0.5 0.3125 0.5
		 0.68843985 0.53125 0.3125 0.53125 0.68843985 0.5625 0.3125 0.5625 0.68843985 0.59372211
		 0.31326121 0.59375131 0.68744534 0.62439597 0.31353903 0.62451446 0.68706536 0.5
		 1.4901161e-008 0.60965765 0.047362763 0.5 0.15000001 0.38951457 0.04576458 0.34375
		 0.15625 0.38951457 0.26673543 0.5 0.3125 0.61048543 0.26673543 0.65488893 0.15737036
		 0.60965765 0.95416862 0.5 1 0.5 0.83749998 0.38951457 0.95423543 0.34375 0.84375
		 0.38951457 0.73326457 0.5 0.6875 0.61048543 0.73326457 0.65488893 0.84450072 0.375
		 0 0.38066202 0 0.38066202 0.25 0.375 0.25 0.375 0.25 0.38066202 0.25 0.38066202 0.33333331
		 0.375 0.33333331 0.375 0.5 0.38066202 0.5 0.38066202 0.75 0.375 0.75 0.375 0.91666669
		 0.38066202 0.91666669 0.38066202 1 0.375 1 0.625 0 0.70833337 0 0.70833337 0.25 0.625
		 0.25 0.29166669 0 0.29166669 0.25 0.39545617 0.5 0.39545617 0.75 0.38066202 1 0.38066202
		 0.91666669 0.39545617 0.91666669 0.39545617 1 0.39545617 0 0.39545617 0.25 0.38066202
		 0.33333331 0.39545619 0.33333331 0.6187163 0.5 0.625 0.5 0.625 0.75 0.6187163 0.75
		 0.6187163 1 0.6187163 0.91666669 0.625 0.91666669 0.625 1 0.6187163 0.25 0.6187163
		 0 0.6187163 0.33333331 0.6187163 0.25 0.625 0.25 0.625 0.33333331 0.375 0.5 0.38066202
		 0.5 0.375 0.33333331 0.6187163 0.33333331 0.625 0.33333331 0.6187163 0.5 0.625 0.5
		 0.375 0.41666666 0.375 0.41666666 0.125 0 0.20833334 0 0.20833334 0.25 0.125 0.25
		 0.38066202 0.83333337 0.375 0.83333337 0.39545617 0.83333337 0.38066202 0.83333337
		 0.38066202 0.75 0.39545617 0.75 0.625 0.83333337 0.6187163 0.83333337 0.79166669
		 0.25 0.79166669 0 0.875 0 0.875 0.25 0.625 0.41666666 0.625 0.41666666 0.6187163
		 0.41666666 0.6187163 0.41666666 0.38066202 0.41666666 0.39545619 0.41666666 0.38066202
		 0.41666666 0.39545617 0.91666669 0.39545617 0.83333337 0.38066202 0.41666666 0.38066202
		 0.33333331 0.39545619 0.33333331 0.39545619 0.41666666 0.6187163 0.41666666 0.6187163
		 0.33333331 0.46987623 0.5 0.46987623 0.75 0.46987623 0.83333337 0.46987623 0.91666675
		 0.39545617 1 0.46987623 1 0.46987623 0 0.46987623 0.25 0.46987623 0.33333331 0.46987623
		 0.33333331 0.46987623 0.41666666 0.46987623 0.41666666 0.38066202 0.91666669 0.38066202
		 1 0.39545617 0.91666669 0.39545617 1 0.38066202 0.83333337 0.39545617 0.83333337
		 0.38066202 0.75 0.39545617 0.75;
	setAttr ".uvst[0].uvsp[250:438]" 0.38066202 1 0.38066202 0.91666669 0.38066202
		 0.91666669 0.38066202 1 0.39545617 0.91666669 0.38066202 0.91666669 0.39545617 1
		 0.38066202 1 0.38066202 0.83333337 0.39545617 0.83333337 0.38066202 0.83333337 0.38066202
		 0.75 0.38066202 0.75 0.38066202 0.83333337 0.39545617 0.75 0.38066202 0.75 0.38066202
		 0.91666669 0.38066202 1 0.39545617 1 0.39545617 0.91666669 0.38066202 0.75 0.38066202
		 0.83333337 0.39545617 0.75 0.39545617 0.83333337 0.54429626 0.5 0.54429626 0.75 0.54429626
		 0.83333337 0.54429626 0.91666675 0.54429626 1 0.54429626 0.25 0.54429626 0 0.54429626
		 0.33333331 0.54429626 0.33333331 0.54429626 0.41666666 0.54429626 0.41666666 0.51948959
		 0.5 0.51948959 0.75 0.54429626 0.83333337 0.51948959 0.83333337 0.51948959 0.75 0.54429626
		 0.75 0.54429626 0.91666675 0.51948959 0.91666675 0.51948959 1 0.54429626 1 0.51948959
		 0.25 0.51948959 0 0.51948959 0.33333331 0.51948959 0.33333331 0.51948959 0.41666666
		 0.51948959 0.41666666 0.46987623 0.75 0.46987623 0.83333337 0.46987623 0.91666675
		 0.46987623 1 0.51948959 1 0.39545617 0.91666669 0.38066202 0.91666669 0.39545617
		 0.91666669 0.38066202 0.91666669 0.38066202 0.83333337 0.39545617 0.83333337 0.38066202
		 0.83333337 0.39545617 0.83333337 0.49468291 0.41666666 0.49468291 0.41666666 0.49468291
		 0.33333331 0.49468291 0.33333331 0.49468291 0.25 0.49468291 0 0.49468291 1 0.49468291
		 1 0.49468291 0.91666675 0.49468291 0.83333337 0.49468291 0.75 0.49468291 0.75 0.49468291
		 0.5 0.49468291 1 0.49468291 0.91666675 0.51948959 0.91666675 0.51948959 1 0.51948959
		 0.75 0.51948959 0.83333337 0.49468291 0.83333337 0.49468291 0.75 0.49468291 0.99938762
		 0.49468291 0.91686893 0.49468291 0.91689593 0.49468291 0.99935043 0.51948959 0.91468847
		 0.51948959 0.9993698 0.51948959 0.99932212 0.51948959 0.91473156 0.51948959 0.75063372
		 0.51948959 0.83531696 0.51948959 0.83526778 0.51948959 0.75067377 0.49468291 0.83313477
		 0.49468291 0.75061595 0.49468291 0.7506426 0.49468291 0.83309734 0.46875 0.3125 0.5
		 0.3125 0.5 0.68843985 0.46875 0.68843985 0.46875 0.3125 0.5 0.3125 0.5 0.68843985
		 0.46875 0.68843985 0.53125 0.3125 0.5625 0.3125 0.5625 0.68843985 0.53125 0.68843985
		 0.53125 0.3125 0.5625 0.3125 0.5625 0.68843985 0.53125 0.68843985 0.46875 0.3125
		 0.5 0.3125 0.5 0.68843985 0.46875 0.68843985 0.46875 0.3125 0.5 0.3125 0.5 0.68843985
		 0.46875 0.68843985 0.53125 0.3125 0.5625 0.3125 0.5625 0.68843985 0.53125 0.68843985
		 0.53125 0.3125 0.5625 0.3125 0.5625 0.68843985 0.53125 0.68843985 0.54496914 0.68843985
		 0.52540636 0.68843985 0.52540636 0.3125 0.54496914 0.3125 0.54496914 0.3125 0.54496914
		 0.68843985 0.52540636 0.68843985 0.52540636 0.3125 0.48691261 0.68843985 0.50605422
		 0.68843985 0.50605422 0.3125 0.48691261 0.3125 0.48691261 0.3125 0.48691261 0.68843985
		 0.50605422 0.68843985 0.50605422 0.3125 0.51552004 0.68843985 0.51559001 0.68843985
		 0.51559001 0.3125 0.51552004 0.3125 0.51552004 0.3125 0.51552004 0.68843985 0.51559001
		 0.68843985 0.51559001 0.3125 0.51948959 0.75030732 0.51948959 0.75032675 0.51948959
		 0.83427131 0.51948959 0.83429515 0.51948959 0.99969447 0.51948959 0.91570759 0.51948959
		 0.91572845 0.51948959 0.99967134 0.49468291 0.75036705 0.49468291 0.833215 0.49468291
		 0.83319271 0.49468291 0.7503829 0.49468291 0.9996351 0.49468291 0.99961293 0.49468291
		 0.9168033 0.49468291 0.91678721 0.5 0.68843985 0.5 0.3125 0.46875 0.3125 0.46875
		 0.68843985 0.5 0.3125 0.46875 0.3125 0.46875 0.68843985 0.5 0.68843985 0.53125 0.68843985
		 0.5625 0.68843985 0.5625 0.3125 0.53125 0.3125 0.53125 0.3125 0.53125 0.68843985
		 0.5625 0.68843985 0.5625 0.3125;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 40 ".pt";
	setAttr ".pt[258]" -type "float3" 0 0.0066680387 0 ;
	setAttr ".pt[261]" -type "float3" 0 0.0066680387 0 ;
	setAttr ".pt[262]" -type "float3" 0 0.0066680387 0 ;
	setAttr ".pt[265]" -type "float3" 0 0.0066680387 0 ;
	setAttr ".pt[267]" -type "float3" 0 0.0066680387 0 ;
	setAttr ".pt[268]" -type "float3" 0 0.0066680387 0 ;
	setAttr ".pt[271]" -type "float3" 0 0.0066680387 0 ;
	setAttr ".pt[272]" -type "float3" 0 0.0066680387 0 ;
	setAttr ".pt[274]" -type "float3" 0 0.0066680387 0 ;
	setAttr ".pt[277]" -type "float3" 0 0.0066680387 0 ;
	setAttr ".pt[278]" -type "float3" 0 0.0066680387 0 ;
	setAttr ".pt[279]" -type "float3" 0 0.0066680387 0 ;
	setAttr ".pt[282]" -type "float3" 0 0.0066680387 0 ;
	setAttr ".pt[285]" -type "float3" 0 0.0066680387 0 ;
	setAttr ".pt[286]" -type "float3" 0 0.0066680387 0 ;
	setAttr ".pt[287]" -type "float3" 0 0.0066680387 0 ;
	setAttr ".pt[290]" -type "float3" 0 0.0066680387 0 ;
	setAttr ".pt[293]" -type "float3" 0 0.0066680387 0 ;
	setAttr ".pt[294]" -type "float3" 0 0.0066680387 0 ;
	setAttr ".pt[295]" -type "float3" 0 0.0066680387 0 ;
	setAttr ".pt[314]" -type "float3" 0.023242647 -0.043198429 0 ;
	setAttr ".pt[315]" -type "float3" 0.023242647 -0.043198429 0 ;
	setAttr ".pt[316]" -type "float3" 0.023242647 -0.043198429 0 ;
	setAttr ".pt[317]" -type "float3" 0.023242647 -0.043198429 0 ;
	setAttr ".pt[318]" -type "float3" 0.023242647 -0.043198429 0 ;
	setAttr ".pt[319]" -type "float3" 0.023242647 -0.043198429 0 ;
	setAttr ".pt[320]" -type "float3" 0.023242647 -0.043198429 0 ;
	setAttr ".pt[321]" -type "float3" 0.023242647 -0.043198429 0 ;
	setAttr ".pt[322]" -type "float3" -0.028541997 -0.057480104 0 ;
	setAttr ".pt[323]" -type "float3" -0.028541997 -0.057480104 0 ;
	setAttr ".pt[324]" -type "float3" -0.028541997 -0.057480104 0 ;
	setAttr ".pt[325]" -type "float3" -0.028541997 -0.057480104 0 ;
	setAttr ".pt[326]" -type "float3" -0.028541997 -0.057480104 0 ;
	setAttr ".pt[327]" -type "float3" -0.028541997 -0.057480104 0 ;
	setAttr ".pt[328]" -type "float3" -0.028541997 -0.057480104 0 ;
	setAttr ".pt[329]" -type "float3" -0.028541997 -0.057480104 0 ;
	setAttr -s 330 ".vt";
	setAttr ".vt[0:165]"  74.15478516 16.44732666 1.3827424 74.098937988 16.44732666 1.3827424
		 74.059455872 16.40784073 1.3827424 74.059455872 16.35200119 1.3827424 74.098937988 16.31251526 1.3827424
		 74.15478516 16.31251526 1.3827424 74.19426727 16.35200119 1.3827424 74.19426727 16.40784073 1.3827424
		 74.15478516 16.44732666 1.49925756 74.098937988 16.44732666 1.49925756 74.059455872 16.40784073 1.49925756
		 74.059455872 16.35200119 1.49925756 74.098937988 16.31251526 1.49925756 74.15478516 16.31251526 1.49925756
		 74.19426727 16.35200119 1.49925756 74.19426727 16.40784073 1.49925756 74.12686157 16.37992096 1.3827424
		 74.12686157 16.37992096 1.49925756 74.15478516 16.44732666 -1.49924433 74.098937988 16.44732666 -1.49924433
		 74.059455872 16.40784073 -1.49924433 74.059455872 16.35200119 -1.49924433 74.098937988 16.31251526 -1.49924433
		 74.15478516 16.31251526 -1.49924433 74.19426727 16.35200119 -1.49924433 74.19426727 16.40784073 -1.49924433
		 74.15478516 16.44732666 -1.38272917 74.098937988 16.44732666 -1.38272917 74.059455872 16.40784073 -1.38272917
		 74.059455872 16.35200119 -1.38272917 74.098937988 16.31251526 -1.38272917 74.15478516 16.31251526 -1.38272917
		 74.19426727 16.35200119 -1.38272917 74.19426727 16.40784073 -1.38272917 74.12686157 16.37992096 -1.49924433
		 74.12686157 16.37992096 -1.38272917 71.68011475 16.44732666 -1.49924433 71.62426758 16.44732666 -1.49924433
		 71.58478546 16.40784073 -1.49924433 71.58478546 16.35200119 -1.49924433 71.62426758 16.31251526 -1.49924433
		 71.68011475 16.31251526 -1.49924433 71.71959686 16.35200119 -1.49924433 71.71959686 16.40784073 -1.49924433
		 71.68011475 16.44732666 -1.38272917 71.62426758 16.44732666 -1.38272917 71.58478546 16.40784073 -1.38272917
		 71.58478546 16.35200119 -1.38272917 71.62426758 16.31251526 -1.38272917 71.68011475 16.31251526 -1.38272917
		 71.71959686 16.35200119 -1.38272917 71.71959686 16.40784073 -1.38272917 71.65219116 16.37992096 -1.49924433
		 71.65219116 16.37992096 -1.38272917 71.68011475 16.44732666 1.3827424 71.62426758 16.44732666 1.3827424
		 71.58478546 16.40784073 1.3827424 71.58478546 16.35200119 1.3827424 71.62426758 16.31251526 1.3827424
		 71.68011475 16.31251526 1.3827424 71.71959686 16.35200119 1.3827424 71.71959686 16.40784073 1.3827424
		 71.68011475 16.44732666 1.49925756 71.62426758 16.44732666 1.49925756 71.58478546 16.40784073 1.49925756
		 71.58478546 16.35200119 1.49925756 71.62426758 16.31251526 1.49925756 71.68011475 16.31251526 1.49925756
		 71.71959686 16.35200119 1.49925756 71.71959686 16.40784073 1.49925756 71.65219116 16.37992096 1.3827424
		 71.65219116 16.37992096 1.49925756 70.41867065 16.95339966 1.5 75.41867065 16.95339966 1.5
		 70.41867065 17.22964859 1.5 75.41867065 17.22964859 1.5 70.41867065 17.22964859 -1.5
		 75.41867065 17.22964859 -1.5 70.41867065 16.95339966 -1.5 75.41867065 16.95339966 -1.5
		 70.53192139 17.22964859 -1.5 70.53192139 16.95339966 -1.5 70.53192139 16.95339966 1.5
		 70.53192139 17.22964859 1.5 75.29299927 17.22964859 -1.5 75.29299927 16.95339966 -1.5
		 75.29299927 16.95339966 1.5 75.29299927 17.22964859 1.5 70.41867065 17.47121429 1.5
		 70.53192139 17.47121429 1.5 70.53192139 17.47121429 -1.5 70.41867065 17.47121429 -1.5
		 75.29299927 17.71452332 1.5 75.29299927 17.71452332 -1.5 75.41867065 17.71452332 1.5
		 75.41867065 17.71452332 -1.5 70.41867065 17.47121429 -1.39764464 70.41867065 17.22964859 -1.39764464
		 70.41867065 16.95339966 -1.39764464 70.53192139 16.95339966 -1.3705132 75.29299927 16.95339966 -1.39764464
		 75.41867065 16.95339966 -1.39764464 75.41867065 17.22964859 -1.39764464 75.41867065 17.71452332 -1.39764464
		 75.29299927 17.71452332 -1.39764464 75.29299927 17.22964859 -1.39764464 70.53192139 17.22964859 -1.39764464
		 70.53192139 17.47121429 -1.39764464 70.41867065 17.47121429 1.397645 70.41867065 17.22964859 1.397645
		 70.41867065 16.95339966 1.397645 70.53192139 16.95339966 1.37051344 75.29299927 16.95339966 1.397645
		 75.41867065 16.95339966 1.397645 75.41867065 17.22964859 1.397645 75.41867065 17.71452332 1.397645
		 75.29299927 17.71452332 1.397645 75.29299927 17.22964859 1.397645 70.53192139 17.22964859 1.397645
		 70.53192139 17.47121429 1.397645 70.53192139 17.036930084 1.397645 70.53192139 17.036930084 -1.39764464
		 75.29299927 17.052196503 1.397645 75.29299927 17.052196503 -1.39764464 70.82779694 17.22964859 -1.5
		 70.82779694 16.95339966 -1.5 70.82779694 16.95339966 -1.3705132 70.82779694 16.95339966 1.37051344
		 70.82779694 16.95339966 1.5 70.82779694 17.22964859 1.5 70.82779694 17.22964859 1.397645
		 70.82779694 17.052196503 1.397645 70.82779694 17.052196503 -1.39764464 70.82779694 17.22964859 -1.39764464
		 70.53192139 15.97394085 1.37051344 70.53192139 15.97394085 1.5 70.82779694 15.97394085 1.37051344
		 70.82779694 15.97394085 1.5 70.53192139 15.97394085 -1.3705132 70.82779694 15.97394085 -1.3705132
		 70.53192139 15.97394085 -1.5 70.82779694 15.97394085 -1.5 70.53192139 15.59614849 1.37051344
		 70.53192139 15.59614849 1.5 70.82779694 15.59614849 1.37051344 70.82779694 15.59614849 1.5
		 70.53192139 15.59614849 -1.3705132 70.82779694 15.59614849 -1.3705132 70.53192139 15.59614849 -1.5
		 70.82779694 15.59614849 -1.5 70.53192139 15.02751255 1.37051344 70.53192139 15.02751255 1.5
		 70.82779694 15.02751255 1.37051344 70.82779694 15.02751255 1.5 70.53192139 15.02751255 -1.3705132
		 70.82779694 15.02751255 -1.3705132 70.53192139 15.02751255 -1.5 70.82779694 15.02751255 -1.5
		 69.6260376 16.8665657 1.37051344 69.6260376 16.8665657 1.5 69.24826813 16.86656761 1.37051344
		 69.24826813 16.86656761 1.5 69.6260376 16.8665657 -1.5 69.6260376 16.8665657 -1.3705132
		 69.24826813 16.86656761 -1.5 69.24826813 16.86656761 -1.3705132;
	setAttr ".vt[166:329]" 73.2923584 17.22964859 -1.5 73.2923584 16.95339966 -1.5
		 73.2923584 16.95339966 -1.38860071 73.2923584 16.95339966 1.3886013 73.2923584 16.95339966 1.5
		 73.2923584 17.22964859 1.5 73.2923584 17.22964859 1.397645 73.2923584 17.052196503 1.397645
		 73.2923584 17.052196503 -1.39764452 73.2923584 17.22964859 -1.39764452 72.48997498 17.22964859 -1.5
		 72.48997498 16.95339966 -1.5 72.48997498 16.95339966 -1.37955689 72.48997498 16.95339966 1.37955737
		 72.48997498 16.95339966 1.5 72.48997498 17.22964859 1.5 72.48997498 17.22964859 1.397645
		 72.48997498 17.052196503 1.397645 72.48997498 17.052196503 -1.39764452 72.48997498 17.22964859 -1.39764452
		 72.48997498 16.86346817 -1.37955689 73.2923584 16.86346817 -1.38860071 72.48997498 16.86346817 -1.5
		 73.2923584 16.86346817 -1.5 72.48997498 16.86346817 1.37955737 73.2923584 16.86346817 1.3886013
		 72.48997498 16.86346817 1.5 73.2923584 16.86346817 1.5 70.82779694 15.30385017 -1.5
		 70.53192139 15.30385017 -1.5 70.53192139 15.30385017 -1.3705132 70.82779694 15.30385017 -1.3705132
		 70.82779694 15.30385017 1.5 70.82779694 15.30385017 1.37051344 70.53192139 15.30385017 1.37051344
		 70.53192139 15.30385017 1.5 70.57543945 15.55314732 1.37051344 70.78427124 15.55314732 1.37051344
		 70.78427124 15.34685135 1.37051344 70.57543945 15.34685135 1.37051344 70.57543945 15.55314732 -1.3705132
		 70.78427124 15.55314732 -1.3705132 70.57543945 15.34685135 -1.3705132 70.78427124 15.34685135 -1.3705132
		 72.63392639 17.22964859 -1.39764452 72.63392639 17.052196503 -1.39764452 72.63392639 17.052196503 1.397645
		 72.63392639 17.22964859 1.397645 72.63392639 17.22964859 1.5 72.63392639 16.95339966 1.5
		 72.63392639 16.86346817 1.5 72.63392639 16.86346817 1.38257194 72.63392639 16.86346817 -1.38257146
		 72.63392639 16.86346817 -1.5 72.63392639 16.95339966 -1.5 72.63392639 17.22964859 -1.5
		 73.14839172 17.22964859 -1.39764452 73.14839172 17.052196503 -1.39764452 73.14839172 17.052196503 1.397645
		 73.14839172 17.22964859 1.397645 73.14839172 17.22964859 1.5 73.14839172 16.95339966 1.5
		 73.14839172 16.86346817 1.5 73.14839172 16.86346817 1.38558662 73.14839172 16.86346817 -1.38558602
		 73.14839172 16.86346817 -1.5 73.14839172 16.95339966 -1.5 73.14839172 17.22964859 -1.5
		 72.63392639 16.76028824 1.5 72.63392639 16.76028824 1.38257194 73.14839172 16.76028824 1.38558662
		 73.14839172 16.76028824 1.5 73.14839172 16.76028824 -1.38558602 73.14839172 16.76028824 -1.5
		 72.63392639 16.76028824 -1.38257146 72.63392639 16.76028824 -1.5 73.11667633 16.061510086 1.3827424
		 73.13694 15.95234013 1.3827424 73.13694 15.95234013 1.49925756 73.11667633 16.061510086 1.49925756
		 73.11667633 16.061510086 -1.49924433 73.13694 15.95234013 -1.49924433 73.13694 15.95234013 -1.38272917
		 73.11667633 16.061510086 -1.38272917 72.69087982 15.96310616 -1.49924433 72.70399475 16.051170349 -1.49924433
		 72.70399475 16.051170349 -1.38272917 72.69087982 15.96310616 -1.38272917 72.69087982 15.96310616 1.3827424
		 72.70399475 16.051170349 1.3827424 72.70399475 16.051170349 1.49925756 72.69087982 15.96310616 1.49925756
		 73.069007874 16.055971146 1.3827424 73.077903748 15.89760971 1.3827424 73.077903748 15.89760971 1.49925756
		 73.069007874 16.055971146 1.49925756 73.069007874 16.055971146 -1.49924433 73.077903748 15.89760971 -1.49924433
		 73.077903748 15.89760971 -1.38272917 73.069007874 16.055971146 -1.38272917 72.73854828 15.89287949 -1.49924433
		 72.75166321 16.061302185 -1.49924433 72.75166321 16.061302185 -1.38272917 72.73854828 15.89287949 -1.38272917
		 72.73854828 15.89287949 1.3827424 72.75166321 16.061302185 1.3827424 72.75166321 16.061302185 1.49925756
		 72.73854828 15.89287949 1.49925756 72.81100464 16.074636459 -1.38272917 72.80279541 15.84052086 -1.38272917
		 72.80279541 15.84052086 -1.49924433 72.81100464 16.074636459 -1.49924433 72.81100464 16.074636459 1.3827424
		 72.81100464 16.074636459 1.49925756 72.80279541 15.84052086 1.49925756 72.80279541 15.84052086 1.3827424
		 73.0075302124 16.074663162 -1.38272917 73.015563965 15.84054947 -1.38272917 73.015563965 15.84054947 -1.49924445
		 73.0075302124 16.074663162 -1.49924445 73.0075302124 16.074663162 1.3827424 73.0075302124 16.074663162 1.49925756
		 73.015563965 15.84054947 1.49925756 73.015563965 15.84054947 1.3827424 72.91069031 16.083848953 -1.38272905
		 72.91072083 15.82519627 -1.38272905 72.91072083 15.82519627 -1.49924433 72.91069031 16.083848953 -1.49924433
		 72.91069031 16.083848953 1.3827424 72.91069031 16.083848953 1.49925756 72.91072083 15.82519627 1.49925756
		 72.91072083 15.82519627 1.3827424 73.64678192 16.68657684 -1.49963367 73.62763214 16.6142807 -1.49963367
		 73.62763214 16.6142807 -1.38420081 73.64678192 16.68657684 -1.38420081 73.64678192 16.68657684 1.49963999
		 73.64678192 16.68657684 1.38420761 73.62763214 16.6142807 1.38420761 73.62763214 16.6142807 1.49963999
		 72.044769287 16.67589188 -1.49954975 72.044769287 16.67589188 -1.3826654 72.06829071 16.61066437 -1.3826654
		 72.06829071 16.61066437 -1.49954975 72.044769287 16.67589188 1.49955761 72.06829071 16.61066437 1.49955761
		 72.06829071 16.61066437 1.3826735 72.044769287 16.67589188 1.3826735 73.6287384 16.13647079 -1.38272917
		 73.6287384 16.13647079 -1.49924433 73.59864807 16.21001625 -1.49924433 73.59864807 16.21001625 -1.38272917
		 73.6287384 16.13647079 1.3827424 73.59864807 16.21001625 1.3827424 73.59864807 16.21001625 1.49925756
		 73.6287384 16.13647079 1.49925756 72.15009308 16.15004921 -1.38272905 72.17730713 16.21212196 -1.38272905
		 72.17730713 16.21212196 -1.49924421 72.15009308 16.15004921 -1.49924421 72.15009308 16.15004921 1.3827424
		 72.15009308 16.15004921 1.49925756 72.17730713 16.21212196 1.49925756 72.17730713 16.21212196 1.3827424;
	setAttr -s 700 ".ed";
	setAttr ".ed[0:165]"  0 1 0 1 2 0 2 3 0 3 4 1 4 5 0 5 6 0 6 7 0 7 0 0 8 9 0
		 9 10 0 10 11 0 11 12 1 12 13 0 13 14 0 14 15 0 15 8 0 0 8 0 1 9 0 2 10 0 3 11 0 4 12 0
		 5 13 0 6 14 0 7 15 0 16 0 1 16 1 1 16 2 1 16 3 1 16 4 1 16 5 1 16 6 1 16 7 1 8 17 1
		 9 17 1 10 17 1 11 17 1 12 17 1 13 17 1 14 17 1 15 17 1 18 19 0 19 20 0 20 21 0 21 22 1
		 22 23 0 23 24 0 24 25 0 25 18 0 26 27 0 27 28 0 28 29 0 29 30 1 30 31 0 31 32 0 32 33 0
		 33 26 0 18 26 0 19 27 0 20 28 0 21 29 0 22 30 0 23 31 0 24 32 0 25 33 0 34 18 1 34 19 1
		 34 20 1 34 21 1 34 22 1 34 23 1 34 24 1 34 25 1 26 35 1 27 35 1 28 35 1 29 35 1 30 35 1
		 31 35 1 32 35 1 33 35 1 36 37 0 37 38 0 38 39 0 39 40 0 40 41 0 41 42 1 42 43 0 43 36 0
		 44 45 0 45 46 0 46 47 0 47 48 0 48 49 0 49 50 1 50 51 0 51 44 0 36 44 0 37 45 0 38 46 0
		 39 47 0 40 48 0 41 49 0 42 50 0 43 51 0 52 36 1 52 37 1 52 38 1 52 39 1 52 40 1 52 41 1
		 52 42 1 52 43 1 44 53 1 45 53 1 46 53 1 47 53 1 48 53 1 49 53 1 50 53 1 51 53 1 54 55 0
		 55 56 0 56 57 0 57 58 0 58 59 0 59 60 1 60 61 0 61 54 0 62 63 0 63 64 0 64 65 0 65 66 0
		 66 67 0 67 68 1 68 69 0 69 62 0 54 62 0 55 63 0 56 64 0 57 65 0 58 66 0 59 67 0 60 68 0
		 61 69 0 70 54 1 70 55 1 70 56 1 70 57 1 70 58 1 70 59 1 70 60 1 70 61 1 62 71 1 63 71 1
		 64 71 1 65 71 1 66 71 1 67 71 1 68 71 1 69 71 1 72 82 0 74 83 0 76 80 0 78 81 0 72 74 0
		 73 75 0;
	setAttr ".ed[166:331]" 74 109 0 75 114 0 76 78 0 77 79 0 78 98 0 79 101 0 80 124 0
		 81 125 0 80 81 0 82 128 0 81 99 0 83 129 0 82 83 0 83 118 0 84 77 0 85 79 0 84 85 0
		 86 73 0 85 100 0 87 75 0 86 87 0 87 117 0 74 88 0 83 89 0 88 89 0 80 90 0 89 119 0
		 76 91 0 91 90 0 88 108 0 87 92 0 84 93 0 92 116 0 75 94 0 92 94 0 77 95 0 94 115 0
		 93 95 0 96 91 0 97 76 0 96 97 0 98 110 0 97 98 0 99 111 0 98 99 0 100 112 0 99 126 0
		 101 113 0 100 101 0 102 77 0 101 102 0 103 95 0 102 103 0 104 93 0 103 104 0 105 84 0
		 104 105 0 106 80 0 105 175 0 107 90 0 106 107 0 107 96 0 108 96 0 109 97 0 108 109 0
		 110 72 0 109 110 0 111 82 0 110 111 0 112 86 0 111 127 0 113 73 0 112 113 0 114 102 0
		 113 114 0 115 103 0 114 115 0 116 104 0 115 116 0 117 105 0 116 117 0 118 106 0 117 172 0
		 119 107 0 118 119 0 119 108 0 118 120 0 106 121 0 120 121 0 117 122 0 122 173 0 105 123 0
		 122 123 0 123 174 0 124 176 0 125 177 0 124 125 0 126 178 0 125 126 0 127 179 0 126 127 0
		 128 180 0 127 128 0 129 181 0 128 129 0 130 118 0 129 130 0 131 120 0 130 131 0 132 121 0
		 131 132 0 133 106 0 132 133 0 133 124 0 111 134 0 82 135 0 134 135 0 127 136 0 134 136 0
		 128 137 0 136 137 0 135 137 0 99 138 0 126 139 0 138 139 0 81 140 0 140 138 0 125 141 0
		 140 141 0 141 139 0 134 142 0 135 143 0 142 143 0 136 144 0 142 144 0 137 145 0 144 145 0
		 143 145 0 138 146 0 139 147 0 146 147 0 140 148 0 148 146 0 141 149 0 148 149 0 149 147 0
		 142 200 0 143 201 0 150 151 0 144 199 0 150 152 0 145 198 0 152 153 0 151 153 0 146 196 0
		 147 197 0 154 155 0 148 195 0 156 154 0 149 194 0 156 157 0 157 155 0 134 158 0 135 159 0
		 158 159 0 142 160 0;
	setAttr ".ed[332:497]" 158 160 0 143 161 0 160 161 0 159 161 0 140 162 0 138 163 0
		 162 163 0 148 164 0 162 164 0 146 165 0 164 165 0 163 165 0 166 84 0 167 85 0 166 167 0
		 168 100 0 167 168 0 169 112 0 168 169 0 170 86 0 169 170 0 171 87 0 170 171 0 172 225 0
		 171 172 0 173 224 0 172 173 0 174 223 0 173 174 0 175 222 0 174 175 0 175 166 0 176 221 0
		 177 220 0 176 177 0 177 178 0 178 179 0 180 215 0 179 180 0 181 214 0 180 181 0 182 130 0
		 181 182 0 183 131 0 182 183 0 184 132 0 183 184 0 185 133 0 184 185 0 185 176 0 178 186 0
		 168 187 0 186 218 0 177 188 0 188 186 0 167 189 0 188 219 0 189 187 0 179 190 0 169 191 0
		 190 217 0 186 190 0 187 191 0 180 192 0 190 192 0 170 193 0 191 193 0 192 216 0 194 157 0
		 195 156 0 194 195 0 196 154 0 195 196 0 197 155 0 196 197 0 197 194 0 198 153 0 199 152 0
		 198 199 0 200 150 0 199 200 0 201 151 0 200 201 0 201 198 0 142 202 0 144 203 0 202 203 0
		 199 204 0 203 204 0 200 205 0 204 205 0 202 205 0 146 206 0 147 207 0 206 207 0 196 208 0
		 206 208 0 197 209 0 208 209 0 207 209 0 203 207 0 204 209 0 205 208 0 202 206 0 210 185 0
		 211 184 0 210 211 1 212 183 0 211 212 1 213 182 0 212 213 1 214 226 0 213 214 1 215 227 0
		 214 215 1 216 228 1 215 216 1 217 229 0 216 217 0 218 230 0 217 218 1 219 231 1 218 219 0
		 220 232 0 219 220 1 221 233 0 220 221 1 221 210 1 222 210 0 223 211 0 222 223 1 224 212 0
		 223 224 1 225 213 0 224 225 1 226 171 0 225 226 1 227 170 0 226 227 1 228 193 0 227 228 1
		 229 191 0 228 229 0 230 187 0 229 230 1 231 189 0 230 231 0 232 167 0 231 232 1 233 166 0
		 232 233 1 233 222 1 216 234 1 217 235 1 234 235 1 229 236 1 235 236 0 228 237 1 237 236 1
		 234 237 0 230 238 1 231 239 1 238 239 1 218 240 1 240 238 0 219 241 1;
	setAttr ".ed[498:663]" 240 241 1 241 239 0 216 310 0 217 313 0 235 312 0 234 311 0
		 228 302 0 229 303 0 237 305 0 236 304 0 230 301 0 231 298 0 238 300 0 239 299 0 218 307 0
		 219 306 0 241 309 0 240 308 0 3 319 0 4 318 0 242 243 1 12 321 0 243 244 1 11 320 0
		 245 244 1 242 245 1 21 316 0 22 315 0 246 247 1 30 314 0 247 248 1 29 317 0 249 248 1
		 246 249 1 41 325 0 42 324 0 250 251 1 50 323 0 251 252 1 49 322 0 253 252 1 250 253 1
		 59 326 0 60 329 0 254 255 1 68 328 0 255 256 1 67 327 0 257 256 1 254 257 1 242 258 0
		 243 259 0 258 259 0 244 260 0 259 260 0 245 261 0 261 260 0 258 261 0 246 262 0 247 263 0
		 262 263 0 248 264 0 263 264 0 249 265 0 265 264 0 262 265 0 250 266 0 251 267 0 266 267 0
		 252 268 0 267 268 0 253 269 0 269 268 0 266 269 0 254 270 0 255 271 0 270 271 0 256 272 0
		 271 272 0 257 273 0 273 272 0 270 273 0 259 289 0 260 288 0 261 287 0 258 286 0 263 284 0
		 264 283 0 265 282 0 262 285 0 274 268 0 275 269 0 274 275 1 276 266 0 275 276 1 277 267 0
		 276 277 1 277 274 1 278 271 0 279 272 0 278 279 1 280 273 0 279 280 1 281 270 0 280 281 1
		 281 278 1 282 290 0 283 291 0 282 283 1 284 292 0 283 284 1 285 293 0 284 285 1 285 282 1
		 286 294 0 287 295 0 286 287 1 288 296 0 287 288 1 289 297 0 288 289 1 289 286 1 290 274 0
		 291 275 0 290 291 1 292 276 0 291 292 1 293 277 0 292 293 1 293 290 1 294 278 0 295 279 0
		 294 295 1 296 280 0 295 296 1 297 281 0 296 297 1 297 294 1 298 19 0 299 20 0 298 299 1
		 300 28 0 299 300 1 301 27 0 300 301 1 301 298 1 302 9 0 303 1 0 302 303 1 304 2 0
		 303 304 1 305 10 0 304 305 1 305 302 1 306 36 0 307 44 0 306 307 1 308 51 0 307 308 1
		 309 43 0 308 309 1 309 306 1 310 62 0 311 69 0 310 311 1 312 61 0;
	setAttr ".ed[664:699]" 311 312 1 313 54 0 312 313 1 313 310 1 314 248 0 315 247 0
		 314 315 1 316 246 0 315 316 1 317 249 0 316 317 1 317 314 1 318 243 0 319 242 0 318 319 1
		 320 245 0 319 320 1 321 244 0 320 321 1 321 318 1 322 253 0 323 252 0 322 323 1 324 251 0
		 323 324 1 325 250 0 324 325 1 325 322 1 326 254 0 327 257 0 326 327 1 328 256 0 327 328 1
		 329 255 0 328 329 1 329 326 1;
	setAttr -s 374 -ch 1432 ".fc[0:373]" -type "polyFaces" 
		f 4 0 17 -9 -17
		mu 0 4 8 9 18 17
		f 4 1 18 -10 -18
		mu 0 4 9 10 19 18
		f 4 2 19 -11 -19
		mu 0 4 10 11 20 19
		f 4 4 21 -13 -21
		mu 0 4 12 13 22 21
		f 4 5 22 -14 -22
		mu 0 4 13 14 23 22
		f 4 6 23 -15 -23
		mu 0 4 14 15 24 23
		f 4 7 16 -16 -24
		mu 0 4 15 16 25 24
		f 3 -1 -25 25
		mu 0 3 1 0 34
		f 3 -2 -26 26
		mu 0 3 2 1 34
		f 3 -3 -27 27
		mu 0 3 3 2 34
		f 3 -4 -28 28
		mu 0 3 4 3 34
		f 3 -5 -29 29
		mu 0 3 5 4 34
		f 3 -6 -30 30
		mu 0 3 6 5 34
		f 3 -7 -31 31
		mu 0 3 7 6 34
		f 3 -8 -32 24
		mu 0 3 0 7 34
		f 3 8 33 -33
		mu 0 3 32 31 35
		f 3 9 34 -34
		mu 0 3 31 30 35
		f 3 10 35 -35
		mu 0 3 30 29 35
		f 3 11 36 -36
		mu 0 3 29 28 35
		f 3 12 37 -37
		mu 0 3 28 27 35
		f 3 13 38 -38
		mu 0 3 27 26 35
		f 3 14 39 -39
		mu 0 3 26 33 35
		f 3 15 32 -40
		mu 0 3 33 32 35
		f 4 40 57 -49 -57
		mu 0 4 36 37 38 39
		f 4 41 58 -50 -58
		mu 0 4 37 40 41 38
		f 4 42 59 -51 -59
		mu 0 4 40 42 43 41
		f 4 44 61 -53 -61
		mu 0 4 44 46 47 45
		f 4 45 62 -54 -62
		mu 0 4 46 48 49 47
		f 4 46 63 -55 -63
		mu 0 4 48 50 51 49
		f 4 47 56 -56 -64
		mu 0 4 50 52 53 51
		f 3 -41 -65 65
		mu 0 3 54 55 56
		f 3 -42 -66 66
		mu 0 3 57 54 56
		f 3 -43 -67 67
		mu 0 3 58 57 56
		f 3 -44 -68 68
		mu 0 3 59 58 56
		f 3 -45 -69 69
		mu 0 3 60 59 56
		f 3 -46 -70 70
		mu 0 3 61 60 56
		f 3 -47 -71 71
		mu 0 3 62 61 56
		f 3 -48 -72 64
		mu 0 3 55 62 56
		f 3 48 73 -73
		mu 0 3 63 64 65
		f 3 49 74 -74
		mu 0 3 64 66 65
		f 3 50 75 -75
		mu 0 3 66 67 65
		f 3 51 76 -76
		mu 0 3 67 68 65
		f 3 52 77 -77
		mu 0 3 68 69 65
		f 3 53 78 -78
		mu 0 3 69 70 65
		f 3 54 79 -79
		mu 0 3 70 71 65
		f 3 55 72 -80
		mu 0 3 71 63 65
		f 4 80 97 -89 -97
		mu 0 4 72 73 74 75
		f 4 81 98 -90 -98
		mu 0 4 73 76 77 74
		f 4 82 99 -91 -99
		mu 0 4 76 78 79 77
		f 4 83 100 -92 -100
		mu 0 4 78 80 81 79
		f 4 84 101 -93 -101
		mu 0 4 80 82 83 81
		f 4 86 103 -95 -103
		mu 0 4 84 86 87 85
		f 4 87 96 -96 -104
		mu 0 4 86 88 89 87
		f 3 -81 -105 105
		mu 0 3 90 91 92
		f 3 -82 -106 106
		mu 0 3 93 90 92
		f 3 -83 -107 107
		mu 0 3 94 93 92
		f 3 -84 -108 108
		mu 0 3 95 94 92
		f 3 -85 -109 109
		mu 0 3 96 95 92
		f 3 -86 -110 110
		mu 0 3 97 96 92
		f 3 -87 -111 111
		mu 0 3 98 97 92
		f 3 -88 -112 104
		mu 0 3 91 98 92
		f 3 88 113 -113
		mu 0 3 99 100 101
		f 3 89 114 -114
		mu 0 3 100 102 101
		f 3 90 115 -115
		mu 0 3 102 103 101
		f 3 91 116 -116
		mu 0 3 103 104 101
		f 3 92 117 -117
		mu 0 3 104 105 101
		f 3 93 118 -118
		mu 0 3 105 106 101
		f 3 94 119 -119
		mu 0 3 106 107 101
		f 3 95 112 -120
		mu 0 3 107 99 101
		f 4 120 137 -129 -137
		mu 0 4 108 109 110 111
		f 4 121 138 -130 -138
		mu 0 4 109 112 113 110
		f 4 122 139 -131 -139
		mu 0 4 112 114 115 113
		f 4 123 140 -132 -140
		mu 0 4 114 116 117 115
		f 4 124 141 -133 -141
		mu 0 4 116 118 119 117
		f 4 126 143 -135 -143
		mu 0 4 120 122 123 121
		f 4 127 136 -136 -144
		mu 0 4 122 124 125 123
		f 3 -121 -145 145
		mu 0 3 126 127 128
		f 3 -122 -146 146
		mu 0 3 129 126 128
		f 3 -123 -147 147
		mu 0 3 130 129 128
		f 3 -124 -148 148
		mu 0 3 131 130 128
		f 3 -125 -149 149
		mu 0 3 132 131 128
		f 3 -126 -150 150
		mu 0 3 133 132 128
		f 3 -127 -151 151
		mu 0 3 134 133 128
		f 3 -128 -152 144
		mu 0 3 127 134 128
		f 3 128 153 -153
		mu 0 3 135 136 137
		f 3 129 154 -154
		mu 0 3 136 138 137
		f 3 130 155 -155
		mu 0 3 138 139 137
		f 3 131 156 -156
		mu 0 3 139 140 137
		f 3 132 157 -157
		mu 0 3 140 141 137
		f 3 133 158 -158
		mu 0 3 141 142 137
		f 3 134 159 -159
		mu 0 3 142 143 137
		f 3 135 152 -160
		mu 0 3 143 135 137
		f 4 160 178 -162 -165
		mu 0 4 144 145 146 147
		f 4 190 192 251 -196
		mu 0 4 148 149 150 151
		f 4 162 174 -164 -169
		mu 0 4 152 153 154 155
		f 4 234 233 -161 -232
		mu 0 4 156 157 158 159
		f 4 -238 240 -168 -166
		mu 0 4 160 161 162 163
		f 4 231 164 166 232
		mu 0 4 164 144 147 165
		f 4 172 262 -174 -175
		mu 0 4 153 166 167 154
		f 4 -315 316 318 -320
		mu 0 4 168 169 170 171
		f 4 -179 175 270 -178
		mu 0 4 146 145 172 173
		f 4 -180 177 272 271
		mu 0 4 174 146 173 175
		f 4 180 169 -182 -183
		mu 0 4 176 177 178 179
		f 4 -236 238 237 -184
		mu 0 4 180 181 182 183
		f 4 -187 183 165 -186
		mu 0 4 184 185 160 163
		f 4 -199 200 202 244
		mu 0 4 186 187 188 189
		f 4 161 189 -191 -189
		mu 0 4 147 146 149 148
		f 4 179 250 -193 -190
		mu 0 4 146 174 150 149
		f 4 -163 193 194 -192
		mu 0 4 153 152 190 191
		f 4 -167 188 195 230
		mu 0 4 192 147 148 151
		f 4 -188 196 198 246
		mu 0 4 193 184 187 186
		f 4 185 199 -201 -197
		mu 0 4 184 163 188 187
		f 4 167 242 -203 -200
		mu 0 4 163 194 189 188
		f 4 -181 197 203 -202
		mu 0 4 177 176 195 196
		f 4 -206 -207 204 -194
		mu 0 4 152 197 198 190
		f 4 170 -209 205 168
		mu 0 4 199 200 201 202
		f 4 163 176 -211 -171
		mu 0 4 155 154 203 204
		f 4 -323 -325 326 327
		mu 0 4 205 206 207 208
		f 4 -215 -185 181 171
		mu 0 4 209 210 179 178
		f 4 -217 -172 -170 -216
		mu 0 4 211 212 213 214
		f 4 -219 215 201 -218
		mu 0 4 215 216 177 196
		f 4 -220 -221 217 -204
		mu 0 4 195 217 215 196
		f 4 -222 -223 219 -198
		mu 0 4 176 218 217 195
		f 4 -224 -278 279 -173
		mu 0 4 153 219 220 166
		f 4 -227 223 191 -226
		mu 0 4 221 219 153 191
		f 4 -228 225 -195 -205
		mu 0 4 198 221 191 190
		f 4 -230 -231 228 206
		mu 0 4 197 192 151 198
		f 4 207 -233 229 208
		mu 0 4 200 164 165 201
		f 4 210 209 -235 -208
		mu 0 4 204 203 157 156
		f 4 -237 -210 212 266
		mu 0 4 222 157 203 223
		f 4 -239 -212 214 213
		mu 0 4 182 181 210 209
		f 4 -241 -214 216 -240
		mu 0 4 162 161 212 211
		f 4 -243 239 218 -242
		mu 0 4 189 194 216 215
		f 4 -244 -245 241 220
		mu 0 4 217 186 189 215
		f 4 -246 -247 243 222
		mu 0 4 218 193 186 217
		f 4 -255 -274 276 275
		mu 0 4 224 225 226 227
		f 4 -251 247 226 -250
		mu 0 4 150 174 219 221
		f 4 -252 249 227 -229
		mu 0 4 151 150 221 198
		f 4 -248 252 254 -254
		mu 0 4 219 174 225 224
		f 4 -272 274 273 -253
		mu 0 4 174 175 226 225
		f 4 245 257 -259 -256
		mu 0 4 193 218 228 229
		f 4 277 253 -276 278
		mu 0 4 220 219 224 227
		f 4 260 366 -262 -263
		mu 0 4 166 230 231 167
		f 4 -264 -265 261 367
		mu 0 4 232 223 167 231
		f 4 -266 -267 263 368
		mu 0 4 233 222 223 232
		f 4 -269 265 370 -268
		mu 0 4 234 222 233 235
		f 4 -271 267 372 -270
		mu 0 4 173 172 236 237
		f 4 -273 269 374 373
		mu 0 4 175 173 237 238
		f 4 -275 -374 376 375
		mu 0 4 226 175 238 239
		f 4 -277 -376 378 377
		mu 0 4 227 226 239 240
		f 4 379 -279 -378 380
		mu 0 4 241 220 227 240
		f 4 -280 -380 381 -261
		mu 0 4 166 220 241 230
		f 4 -234 280 282 -282
		mu 0 4 158 157 242 243
		f 4 236 283 -285 -281
		mu 0 4 157 222 244 242
		f 4 268 285 -287 -284
		mu 0 4 222 234 245 244
		f 4 -176 281 287 -286
		mu 0 4 234 158 243 245
		f 4 -213 288 290 -290
		mu 0 4 223 203 246 247
		f 4 -177 291 292 -289
		mu 0 4 203 154 248 246
		f 4 173 293 -295 -292
		mu 0 4 154 167 249 248
		f 4 264 289 -296 -294
		mu 0 4 167 223 247 249
		f 4 -331 332 334 -336
		mu 0 4 250 251 252 253
		f 4 284 299 -301 -297
		mu 0 4 242 244 254 255
		f 4 286 301 -303 -300
		mu 0 4 244 245 256 254
		f 4 -288 297 303 -302
		mu 0 4 245 243 257 256
		f 4 -291 304 306 -306
		mu 0 4 247 246 258 259
		f 4 -339 340 342 -344
		mu 0 4 260 261 262 263
		f 4 294 309 -311 -308
		mu 0 4 248 249 264 265
		f 4 295 305 -312 -310
		mu 0 4 249 247 259 264
		f 4 -299 312 414 -314
		mu 0 4 257 255 266 267
		f 4 302 317 410 -316
		mu 0 4 254 256 268 269
		f 4 -304 313 415 -318
		mu 0 4 256 257 267 268
		f 4 -309 323 404 -321
		mu 0 4 258 265 270 271
		f 4 310 325 402 -324
		mu 0 4 265 264 272 270
		f 4 311 321 407 -326
		mu 0 4 264 259 273 272
		f 4 -283 328 330 -330
		mu 0 4 243 242 251 250
		f 4 296 331 -333 -329
		mu 0 4 242 255 252 251
		f 4 298 333 -335 -332
		mu 0 4 255 257 253 252
		f 4 -298 329 335 -334
		mu 0 4 257 243 250 253
		f 4 -293 336 338 -338
		mu 0 4 246 248 261 260
		f 4 307 339 -341 -337
		mu 0 4 248 265 262 261
		f 4 308 341 -343 -340
		mu 0 4 265 258 263 262
		f 4 -305 337 343 -342
		mu 0 4 258 246 260 263
		f 4 344 182 -346 -347
		mu 0 4 274 176 179 275
		f 4 -348 -349 345 184
		mu 0 4 210 276 275 179
		f 4 -350 -351 347 211
		mu 0 4 181 277 276 210
		f 4 -353 349 235 -352
		mu 0 4 278 277 181 180
		f 4 -355 351 186 -354
		mu 0 4 279 280 185 184
		f 4 -357 353 187 248
		mu 0 4 281 279 184 193
		f 4 -359 -249 255 256
		mu 0 4 282 281 193 229
		f 4 -361 -257 258 259
		mu 0 4 283 282 229 228
		f 4 224 -363 -260 -258
		mu 0 4 218 284 283 228
		f 4 -364 -225 221 -345
		mu 0 4 274 284 218 176
		f 4 481 346 -480 482
		mu 0 4 285 274 275 286
		f 4 -476 478 477 389
		mu 0 4 287 288 289 290
		f 4 -474 476 475 394
		mu 0 4 291 292 288 287
		f 4 474 473 398 -472
		mu 0 4 293 292 291 294
		f 4 470 469 354 -468
		mu 0 4 295 296 280 279
		f 4 468 467 356 355
		mu 0 4 297 295 279 281
		f 4 466 -356 358 357
		mu 0 4 298 297 281 282
		f 4 464 -358 360 359
		mu 0 4 299 298 282 283
		f 4 361 462 -360 362
		mu 0 4 284 300 299 283
		f 4 483 -362 363 -482
		mu 0 4 285 300 284 274
		f 4 -368 385 386 -383
		mu 0 4 232 231 301 302
		f 4 479 387 -478 480
		mu 0 4 286 275 290 289
		f 4 348 383 -390 -388
		mu 0 4 275 276 287 290
		f 4 -369 382 393 -391
		mu 0 4 233 232 302 303
		f 4 350 391 -395 -384
		mu 0 4 276 277 291 287
		f 4 -371 390 396 -396
		mu 0 4 235 233 303 304
		f 4 352 397 -399 -392
		mu 0 4 277 278 294 291
		f 4 -470 472 471 -398
		mu 0 4 278 305 293 294
		f 4 -403 400 -327 -402
		mu 0 4 270 272 208 207
		f 4 -405 401 324 -404
		mu 0 4 271 270 207 206
		f 4 -407 403 322 -406
		mu 0 4 273 271 206 205
		f 4 -408 405 -328 -401
		mu 0 4 272 273 205 208
		f 4 -411 408 -319 -410
		mu 0 4 269 268 171 170
		f 4 -413 409 -317 -412
		mu 0 4 266 269 170 169
		f 4 -415 411 314 -414
		mu 0 4 267 266 169 168
		f 4 -416 413 319 -409
		mu 0 4 268 267 168 171
		f 4 300 417 -419 -417
		mu 0 4 255 254 306 307
		f 4 315 419 -421 -418
		mu 0 4 254 269 308 306
		f 4 412 421 -423 -420
		mu 0 4 269 266 309 308
		f 4 -313 416 423 -422
		mu 0 4 266 255 307 309
		f 4 -307 424 426 -426
		mu 0 4 259 258 310 311
		f 4 320 427 -429 -425
		mu 0 4 258 271 312 310
		f 4 406 429 -431 -428
		mu 0 4 271 273 313 312
		f 4 -322 425 431 -430
		mu 0 4 273 259 311 313
		f 4 420 433 -432 -433
		mu 0 4 306 308 313 311
		f 4 422 434 430 -434
		mu 0 4 308 309 312 313
		f 4 -424 435 428 -435
		mu 0 4 309 307 310 312
		f 4 418 432 -427 -436
		mu 0 4 307 306 311 310
		f 4 436 -381 -438 -439
		mu 0 4 314 241 240 315
		f 4 -379 -440 -441 437
		mu 0 4 240 239 316 315
		f 4 -377 -442 -443 439
		mu 0 4 239 238 317 316
		f 4 -375 371 -445 441
		mu 0 4 238 237 318 317
		f 4 -373 369 -447 -372
		mu 0 4 237 236 319 318
		f 4 -449 -370 395 399
		mu 0 4 320 321 235 304
		f 4 -397 392 -451 -400
		mu 0 4 304 303 322 320
		f 4 -453 -393 -394 384
		mu 0 4 323 322 303 302
		f 4 -455 -385 -387 388
		mu 0 4 324 323 302 301
		f 4 365 -457 -389 -386
		mu 0 4 231 325 324 301
		f 4 364 -459 -366 -367
		mu 0 4 230 326 325 231
		f 4 -382 -437 -460 -365
		mu 0 4 230 241 314 326
		f 4 460 438 -462 -463
		mu 0 4 300 314 315 299
		f 4 440 -464 -465 461
		mu 0 4 315 316 298 299
		f 4 442 -466 -467 463
		mu 0 4 316 317 297 298
		f 4 444 443 -469 465
		mu 0 4 317 318 295 297
		f 4 446 445 -471 -444
		mu 0 4 318 319 296 295
		f 4 -473 -446 448 447
		mu 0 4 293 305 321 320
		f 4 486 488 -491 -492
		mu 0 4 327 328 329 330
		f 4 -477 -450 452 451
		mu 0 4 288 292 322 323
		f 4 -495 -497 498 499
		mu 0 4 331 332 333 334
		f 4 455 -481 -454 456
		mu 0 4 325 286 289 324
		f 4 457 -483 -456 458
		mu 0 4 326 285 286 325
		f 4 459 -461 -484 -458
		mu 0 4 326 314 300 285
		f 4 -137 -128 143 135
		mu 0 4 335 336 337 338
		f 4 449 487 -489 -486
		mu 0 4 322 292 329 328
		f 4 17 9 -19 -2
		mu 0 4 339 340 341 342
		f 4 -448 484 491 -490
		mu 0 4 293 320 327 330
		f 4 57 49 -59 -42
		mu 0 4 343 344 345 346
		f 4 -452 495 496 -493
		mu 0 4 288 323 333 332
		f 4 -97 -88 103 95
		mu 0 4 347 348 349 350
		f 4 453 493 -500 -498
		mu 0 4 324 289 331 334
		f 4 450 501 667 -501
		mu 0 4 320 322 422 419
		f 4 485 502 666 -502
		mu 0 4 322 328 421 422
		f 4 -487 503 664 -503
		mu 0 4 328 327 420 421
		f 4 -485 500 662 -504
		mu 0 4 327 320 419 420
		f 4 -475 504 646 -506
		mu 0 4 292 293 411 412
		f 4 489 506 651 -505
		mu 0 4 293 330 414 411
		f 4 490 507 650 -507
		mu 0 4 330 329 413 414
		f 4 -488 505 648 -508
		mu 0 4 329 292 412 413
		f 4 -479 508 643 -510
		mu 0 4 289 288 410 407
		f 4 492 510 642 -509
		mu 0 4 288 332 409 410
		f 4 494 511 640 -511
		mu 0 4 332 331 408 409
		f 4 -494 509 638 -512
		mu 0 4 331 289 407 408
		f 4 454 513 654 -513
		mu 0 4 323 324 415 416
		f 4 497 514 659 -514
		mu 0 4 324 334 418 415
		f 4 -499 515 658 -515
		mu 0 4 334 333 417 418
		f 4 -496 512 656 -516
		mu 0 4 333 323 416 417
		f 4 3 517 678 -517
		mu 0 4 11 12 427 428
		f 4 20 519 683 -518
		mu 0 4 12 21 430 427
		f 4 -12 521 682 -520
		mu 0 4 21 20 429 430
		f 4 -20 516 680 -522
		mu 0 4 20 11 428 429
		f 4 43 525 672 -525
		mu 0 4 42 44 424 425
		f 4 60 527 670 -526
		mu 0 4 44 45 423 424
		f 4 -52 529 675 -528
		mu 0 4 45 43 426 423
		f 4 -60 524 674 -530
		mu 0 4 43 42 425 426
		f 4 85 533 690 -533
		mu 0 4 82 84 433 434
		f 4 102 535 688 -534
		mu 0 4 84 85 432 433
		f 4 -94 537 686 -536
		mu 0 4 85 83 431 432
		f 4 -102 532 691 -538
		mu 0 4 83 82 434 431
		f 4 125 541 699 -541
		mu 0 4 118 120 438 435
		f 4 142 543 698 -542
		mu 0 4 120 121 437 438
		f 4 -134 545 696 -544
		mu 0 4 121 119 436 437
		f 4 -142 540 694 -546
		mu 0 4 119 118 435 436
		f 4 518 549 -551 -549
		mu 0 4 351 352 368 367
		f 4 520 551 -553 -550
		mu 0 4 352 353 369 368
		f 4 -523 553 554 -552
		mu 0 4 353 354 370 369
		f 4 -524 548 555 -554
		mu 0 4 354 351 367 370
		f 4 526 557 -559 -557
		mu 0 4 355 356 372 371
		f 4 528 559 -561 -558
		mu 0 4 356 357 373 372
		f 4 -531 561 562 -560
		mu 0 4 357 358 374 373
		f 4 -532 556 563 -562
		mu 0 4 358 355 371 374
		f 4 534 565 -567 -565
		mu 0 4 359 360 376 375
		f 4 536 567 -569 -566
		mu 0 4 360 361 377 376
		f 4 -539 569 570 -568
		mu 0 4 361 362 378 377
		f 4 -540 564 571 -570
		mu 0 4 362 359 375 378
		f 4 542 573 -575 -573
		mu 0 4 363 364 380 379
		f 4 544 575 -577 -574
		mu 0 4 364 365 381 380
		f 4 -547 577 578 -576
		mu 0 4 365 366 382 381
		f 4 -548 572 579 -578
		mu 0 4 366 363 379 382
		f 4 552 581 618 -581
		mu 0 4 368 369 397 398
		f 4 -555 582 616 -582
		mu 0 4 369 370 396 397
		f 4 -556 583 614 -583
		mu 0 4 370 367 395 396
		f 4 550 580 619 -584
		mu 0 4 367 368 398 395
		f 4 560 585 608 -585
		mu 0 4 372 373 392 393
		f 4 -563 586 606 -586
		mu 0 4 373 374 391 392
		f 4 -564 587 611 -587
		mu 0 4 374 371 394 391
		f 4 558 584 610 -588
		mu 0 4 371 372 393 394
		f 4 -591 588 -571 -590
		mu 0 4 384 383 377 378
		f 4 -593 589 -572 -592
		mu 0 4 385 384 378 375
		f 4 -595 591 566 -594
		mu 0 4 386 385 375 376
		f 4 -596 593 568 -589
		mu 0 4 383 386 376 377
		f 4 -599 596 576 -598
		mu 0 4 388 387 380 381
		f 4 -601 597 -579 -600
		mu 0 4 389 388 381 382
		f 4 -603 599 -580 -602
		mu 0 4 390 389 382 379
		f 4 -604 601 574 -597
		mu 0 4 387 390 379 380
		f 4 -607 604 622 -606
		mu 0 4 392 391 399 400
		f 4 -609 605 624 -608
		mu 0 4 393 392 400 401
		f 4 -611 607 626 -610
		mu 0 4 394 393 401 402
		f 4 -612 609 627 -605
		mu 0 4 391 394 402 399
		f 4 -615 612 630 -614
		mu 0 4 396 395 403 404
		f 4 -617 613 632 -616
		mu 0 4 397 396 404 405
		f 4 -619 615 634 -618
		mu 0 4 398 397 405 406
		f 4 -620 617 635 -613
		mu 0 4 395 398 406 403
		f 4 -623 620 590 -622
		mu 0 4 400 399 383 384
		f 4 -625 621 592 -624
		mu 0 4 401 400 384 385
		f 4 -627 623 594 -626
		mu 0 4 402 401 385 386
		f 4 -628 625 595 -621
		mu 0 4 399 402 386 383
		f 4 -631 628 598 -630
		mu 0 4 404 403 387 388
		f 4 -633 629 600 -632
		mu 0 4 405 404 388 389
		f 4 -635 631 602 -634
		mu 0 4 406 405 389 390
		f 4 -636 633 603 -629
		mu 0 4 403 406 390 387
		f 4 -639 636 41 -638
		mu 0 4 408 407 343 346
		f 4 -641 637 58 -640
		mu 0 4 409 408 346 345
		f 4 -643 639 -50 -642
		mu 0 4 410 409 345 344
		f 4 -644 641 -58 -637
		mu 0 4 407 410 344 343
		f 4 -647 644 -18 -646
		mu 0 4 412 411 340 339
		f 4 -649 645 1 -648
		mu 0 4 413 412 339 342
		f 4 -651 647 18 -650
		mu 0 4 414 413 342 341
		f 4 -652 649 -10 -645
		mu 0 4 411 414 341 340
		f 4 -655 652 96 -654
		mu 0 4 416 415 348 347
		f 4 -657 653 -96 -656
		mu 0 4 417 416 347 350
		f 4 -659 655 -104 -658
		mu 0 4 418 417 350 349
		f 4 -660 657 87 -653
		mu 0 4 415 418 349 348
		f 4 -663 660 -136 -662
		mu 0 4 420 419 335 338
		f 4 -665 661 -144 -664
		mu 0 4 421 420 338 337
		f 4 -667 663 127 -666
		mu 0 4 422 421 337 336
		f 4 -668 665 136 -661
		mu 0 4 419 422 336 335
		f 4 -671 668 -529 -670
		mu 0 4 424 423 357 356
		f 4 -673 669 -527 -672
		mu 0 4 425 424 356 355
		f 4 -675 671 531 -674
		mu 0 4 426 425 355 358
		f 4 -676 673 530 -669
		mu 0 4 423 426 358 357
		f 4 -679 676 -519 -678
		mu 0 4 428 427 352 351
		f 4 -681 677 523 -680
		mu 0 4 429 428 351 354
		f 4 -683 679 522 -682
		mu 0 4 430 429 354 353
		f 4 -684 681 -521 -677
		mu 0 4 427 430 353 352
		f 4 -687 684 538 -686
		mu 0 4 432 431 362 361
		f 4 -689 685 -537 -688
		mu 0 4 433 432 361 360
		f 4 -691 687 -535 -690
		mu 0 4 434 433 360 359
		f 4 -692 689 539 -685
		mu 0 4 431 434 359 362
		f 4 -695 692 547 -694
		mu 0 4 436 435 363 366
		f 4 -697 693 546 -696
		mu 0 4 437 436 366 365
		f 4 -699 695 -545 -698
		mu 0 4 438 437 365 364
		f 4 -700 697 -543 -693
		mu 0 4 435 438 364 363;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "axle" -p "cart";
	rename -uid "BF52816E-43E3-869D-905D-54874A7C2B54";
	setAttr ".t" -type "double3" -0.0017798753285376279 -3.1408005321539605 0 ;
	setAttr ".r" -type "double3" 89.999999999999986 0 0 ;
	setAttr ".s" -type "double3" 0.016 5 0.32 ;
createNode mesh -n "axleShape" -p "axle";
	rename -uid "1646EA14-4675-FF2E-B4A5-098AB833D2D1";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 36 ".uvst[0].uvsp[0:35]" -type "float2" 0.61048543 0.04576458
		 0.5 1.4901161e-008 0.38951457 0.04576458 0.34375 0.15625 0.38951457 0.26673543 0.5
		 0.3125 0.61048543 0.26673543 0.65625 0.15625 0.375 0.3125 0.40625 0.3125 0.4375 0.3125
		 0.46875 0.3125 0.5 0.3125 0.53125 0.3125 0.5625 0.3125 0.59375 0.3125 0.625 0.3125
		 0.375 0.68843985 0.40625 0.68843985 0.4375 0.68843985 0.46875 0.68843985 0.5 0.68843985
		 0.53125 0.68843985 0.5625 0.68843985 0.59375 0.68843985 0.625 0.68843985 0.61048543
		 0.73326457 0.5 0.6875 0.38951457 0.73326457 0.34375 0.84375 0.38951457 0.95423543
		 0.5 1 0.61048543 0.95423543 0.65625 0.84375 0.5 0.15000001 0.5 0.83749998;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 18 ".pt[1:17]" -type "float3"  1.0842022e-019 0 -2.9802322e-008 
		0 0 0 -2.9802322e-008 0 -6.6174449e-024 0 0 0 1.0842022e-019 0 0 1.4901161e-008 0 
		1.4901161e-008 2.9802322e-008 0 -6.6174449e-024 0 0 0 1.0842022e-019 0 -2.9802322e-008 
		0 0 0 -2.9802322e-008 0 6.6174449e-024 0 0 0 1.0842022e-019 0 0 1.4901161e-008 0 
		1.4901161e-008 2.9802322e-008 0 6.6174449e-024 1.0842022e-019 0 -6.6174449e-024 1.0842022e-019 
		0 6.6174449e-024;
	setAttr -s 18 ".vt[0:17]"  0.70710671 -0.125 -0.70710671 0 -0.125 -0.99999988
		 -0.70710671 -0.125 -0.70710671 -0.99999988 -0.125 0 -0.70710671 -0.125 0.70710671
		 0 -0.125 0.99999994 0.70710677 -0.125 0.70710677 1 -0.125 0 0.70710671 0.125 -0.70710671
		 0 0.125 -0.99999988 -0.70710671 0.125 -0.70710671 -0.99999988 0.125 0 -0.70710671 0.125 0.70710671
		 0 0.125 0.99999994 0.70710677 0.125 0.70710677 1 0.125 0 0 -0.125 0 0 0.125 0;
	setAttr -s 40 ".ed[0:39]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 0 0 8 9 0 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 8 0 0 8 0 1 9 0 2 10 0
		 3 11 0 4 12 0 5 13 0 6 14 0 7 15 0 16 0 1 16 1 1 16 2 1 16 3 1 16 4 1 16 5 1 16 6 1
		 16 7 1 8 17 1 9 17 1 10 17 1 11 17 1 12 17 1 13 17 1 14 17 1 15 17 1;
	setAttr -s 24 -ch 80 ".fc[0:23]" -type "polyFaces" 
		f 4 0 17 -9 -17
		mu 0 4 8 9 18 17
		f 4 1 18 -10 -18
		mu 0 4 9 10 19 18
		f 4 2 19 -11 -19
		mu 0 4 10 11 20 19
		f 4 3 20 -12 -20
		mu 0 4 11 12 21 20
		f 4 4 21 -13 -21
		mu 0 4 12 13 22 21
		f 4 5 22 -14 -22
		mu 0 4 13 14 23 22
		f 4 6 23 -15 -23
		mu 0 4 14 15 24 23
		f 4 7 16 -16 -24
		mu 0 4 15 16 25 24
		f 3 -1 -25 25
		mu 0 3 1 0 34
		f 3 -2 -26 26
		mu 0 3 2 1 34
		f 3 -3 -27 27
		mu 0 3 3 2 34
		f 3 -4 -28 28
		mu 0 3 4 3 34
		f 3 -5 -29 29
		mu 0 3 5 4 34
		f 3 -6 -30 30
		mu 0 3 6 5 34
		f 3 -7 -31 31
		mu 0 3 7 6 34
		f 3 -8 -32 24
		mu 0 3 0 7 34
		f 3 8 33 -33
		mu 0 3 32 31 35
		f 3 9 34 -34
		mu 0 3 31 30 35
		f 3 10 35 -35
		mu 0 3 30 29 35
		f 3 11 36 -36
		mu 0 3 29 28 35
		f 3 12 37 -37
		mu 0 3 28 27 35
		f 3 13 38 -38
		mu 0 3 27 26 35
		f 3 14 39 -39
		mu 0 3 26 33 35
		f 3 15 32 -40
		mu 0 3 33 32 35;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "88E61668-422E-5E18-52F1-288E1362AFD8";
	setAttr -s 6 ".lnk";
	setAttr -s 6 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "3639A30E-48C3-4D6A-2D4C-4F9959660C92";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "116532E3-4580-1D2D-6A5F-E499259900F3";
createNode displayLayerManager -n "layerManager";
	rename -uid "D412EEE2-4C77-E490-DD46-8B9575226E23";
createNode displayLayer -n "defaultLayer";
	rename -uid "B882B9B0-430B-BCA6-93D6-1FAA105BCB18";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "9A8B2DA3-4962-5010-8689-889FCC914CDE";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "404AD889-4896-4CBB-38C3-7FBB6CB461D7";
	setAttr ".g" yes;
createNode objectSet -s -n "lightEditorRoot";
	rename -uid "05BFB501-416C-6A5C-A3F6-4D95916ABE95";
	addAttr -ci true -sn "isolate" -ln "isolate" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "wasEnabled" -ln "wasEnabled" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "childIndex" -ln "childIndex" -dv -1 -at "long";
	addAttr -ci true -sn "lightGroup" -ln "lightGroup" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "visibility" -ln "visibility" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -s 3 ".dsm";
lockNode -l 1 ;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "49BC2DA7-470A-2DC3-70A1-2BAB0C69B61C";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n"
		+ "            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n"
		+ "            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n"
		+ "            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 654\n            -height 337\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n"
		+ "            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 654\n            -height 337\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"personcam\" \n            -useInteractiveMode 0\n            -displayLights \"all\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n"
		+ "            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n"
		+ "            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 1\n            -captureSequenceNumber -1\n            -width 556\n            -height 718\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n"
		+ "        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"all\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 1\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 1\n"
		+ "            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n"
		+ "            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 0\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n"
		+ "            -shadows 0\n            -captureSequenceNumber -1\n            -width 1118\n            -height 718\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n"
		+ "            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n"
		+ "            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n"
		+ "            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n"
		+ "            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n"
		+ "                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n"
		+ "\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 1\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -showCurveNames 0\n                -showActiveCurveNames 0\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 1\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                -valueLinesToggle 1\n"
		+ "                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n"
		+ "                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n"
		+ "                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n"
		+ "                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n"
		+ "                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\nstring $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n"
		+ "                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n"
		+ "                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n"
		+ "                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n"
		+ "                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -activeTab -1\n                -editorMode \"default\" \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n"
		+ "            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"0\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n"
		+ "            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"lightEditorLookThroughModelPanelLabel\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"lightEditorLookThroughModelPanelLabel\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"personcam\" \n"
		+ "            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n"
		+ "            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 4 4 \n            -bumpResolution 4 4 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 0\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n"
		+ "            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 0\n            -height 0\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n"
		+ "\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"all\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 1\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 0\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1118\\n    -height 718\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"all\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 1\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 0\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1118\\n    -height 718\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "C0CD2D31-45CE-2E63-8476-4AAF61EDDE71";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode lambert -n "Brown";
	rename -uid "0D93A98C-4443-E0FE-0A02-27AD331C38EE";
	setAttr ".c" -type "float3" 0.303 0.16073014 0.071810998 ;
createNode shadingEngine -n "lambert2SG";
	rename -uid "89F2AEB7-4646-7D11-5CE2-35B1F1BD8F1D";
	setAttr ".ihi" 0;
	setAttr -s 19 ".dsm";
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo1";
	rename -uid "FEF96D36-4DC4-6AF1-94EF-64B4C470F3CC";
createNode lambert -n "Red";
	rename -uid "974F3D35-4096-45EF-AE13-59A7B659EE23";
	setAttr ".c" -type "float3" 0.551 0.10579199 0.10579199 ;
createNode shadingEngine -n "lambert3SG";
	rename -uid "A84A7F54-4AD6-A4ED-0ABF-589F276E71D5";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo2";
	rename -uid "C9A9503A-4D94-C74F-79EA-AAB3AAC877CF";
createNode lambert -n "Grey";
	rename -uid "96802D7D-47DB-B815-68D6-E28EEF196DCE";
	setAttr ".c" -type "float3" 0.27200001 0.27200001 0.27200001 ;
createNode shadingEngine -n "lambert4SG";
	rename -uid "ED2571D1-42B8-80A5-4BDC-E99AA017E1E5";
	setAttr ".ihi" 0;
	setAttr -s 2 ".dsm";
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo3";
	rename -uid "C8F196AD-4873-3C7A-7627-5B9267B3D1F7";
createNode groupId -n "groupId1";
	rename -uid "0C68B038-47B4-45BA-34F4-81AAD8354EB7";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2";
	rename -uid "AD1E03F8-4CBA-1315-7148-D8ABF3A649F2";
	setAttr ".ihi" 0;
createNode blinn -n "Light_Tan";
	rename -uid "20B458A7-47EA-1971-0E1A-448D13D56132";
	setAttr ".c" -type "float3" 0.52700001 0.4896037 0.202895 ;
createNode shadingEngine -n "blinn1SG";
	rename -uid "6114305B-41AC-F57D-AA1A-BAB2444D4D6A";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo4";
	rename -uid "BD57A079-4F6A-84EC-3170-9498ED8CE9D9";
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
	setAttr -s 6 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 8 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
select -ne :lightList1;
	setAttr -s 3 ".l";
select -ne :initialShadingGroup;
	setAttr -s 22 ".dsm";
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :defaultLightSet;
	setAttr -s 3 ".dsm";
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :ikSystem;
	setAttr -s 4 ".sol";
connectAttr "groupId1.id" "cartTopShape.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "cartTopShape.iog.og[0].gco";
connectAttr "groupId2.id" "cartTopShape.iog.og[5].gid";
connectAttr "lambert4SG.mwc" "cartTopShape.iog.og[5].gco";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert3SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert4SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "blinn1SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert3SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert4SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "blinn1SG.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "ambientLight1.iog" ":lightEditorRoot.dsm" -na;
connectAttr "mainDirLight.iog" ":lightEditorRoot.dsm" -na;
connectAttr "fillLight.iog" ":lightEditorRoot.dsm" -na;
connectAttr "Brown.oc" "lambert2SG.ss";
connectAttr "doorShape.iog" "lambert2SG.dsm" -na;
connectAttr "pillarStickOut1Shape.iog" "lambert2SG.dsm" -na;
connectAttr "pillarStickOut3Shape.iog" "lambert2SG.dsm" -na;
connectAttr "pillarStickOut2Shape.iog" "lambert2SG.dsm" -na;
connectAttr "pillarStickOut4Shape.iog" "lambert2SG.dsm" -na;
connectAttr "pillarStickOutShape.iog" "lambert2SG.dsm" -na;
connectAttr "doorframeShape.iog" "lambert2SG.dsm" -na;
connectAttr "pCylinderShape3.iog" "lambert2SG.dsm" -na;
connectAttr "pCylinderShape4.iog" "lambert2SG.dsm" -na;
connectAttr "pCylinderShape5.iog" "lambert2SG.dsm" -na;
connectAttr "pCylinderShape6.iog" "lambert2SG.dsm" -na;
connectAttr "marketStallShape1.iog" "lambert2SG.dsm" -na;
connectAttr "pCylinderShape7.iog" "lambert2SG.dsm" -na;
connectAttr "pCylinderShape2.iog" "lambert2SG.dsm" -na;
connectAttr "backingShape.iog" "lambert2SG.dsm" -na;
connectAttr "cartShape.iog" "lambert2SG.dsm" -na;
connectAttr "wheelShape1.iog" "lambert2SG.dsm" -na;
connectAttr "wheelShape2.iog" "lambert2SG.dsm" -na;
connectAttr "cartTopShape.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "groupId1.msg" "lambert2SG.gn" -na;
connectAttr "lambert2SG.msg" "materialInfo1.sg";
connectAttr "Brown.msg" "materialInfo1.m";
connectAttr "Red.oc" "lambert3SG.ss";
connectAttr "tarpShape.iog" "lambert3SG.dsm" -na;
connectAttr "lambert3SG.msg" "materialInfo2.sg";
connectAttr "Red.msg" "materialInfo2.m";
connectAttr "Grey.oc" "lambert4SG.ss";
connectAttr "groupId2.msg" "lambert4SG.gn" -na;
connectAttr "axleShape.iog" "lambert4SG.dsm" -na;
connectAttr "cartTopShape.iog.og[5]" "lambert4SG.dsm" -na;
connectAttr "lambert4SG.msg" "materialInfo3.sg";
connectAttr "Grey.msg" "materialInfo3.m";
connectAttr "Light_Tan.oc" "blinn1SG.ss";
connectAttr "pPlaneShape1.iog" "blinn1SG.dsm" -na;
connectAttr "blinn1SG.msg" "materialInfo4.sg";
connectAttr "Light_Tan.msg" "materialInfo4.m";
connectAttr "lambert2SG.pa" ":renderPartition.st" -na;
connectAttr "lambert3SG.pa" ":renderPartition.st" -na;
connectAttr "lambert4SG.pa" ":renderPartition.st" -na;
connectAttr "blinn1SG.pa" ":renderPartition.st" -na;
connectAttr "Brown.msg" ":defaultShaderList1.s" -na;
connectAttr "Red.msg" ":defaultShaderList1.s" -na;
connectAttr "Grey.msg" ":defaultShaderList1.s" -na;
connectAttr "Light_Tan.msg" ":defaultShaderList1.s" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "mainDirLightShape.ltd" ":lightList1.l" -na;
connectAttr "ambientLightShape1.ltd" ":lightList1.l" -na;
connectAttr "fillLightShape.ltd" ":lightList1.l" -na;
connectAttr "pCubeShape2.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape4.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape5.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape6.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape7.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape8.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape9.iog" ":initialShadingGroup.dsm" -na;
connectAttr "house_placeholderShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "house_placeholder1Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape10.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape12.iog" ":initialShadingGroup.dsm" -na;
connectAttr "house_placeholder2Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "house_placeholder3Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape13.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape15.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape16.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape17.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape18.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape19.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape20.iog" ":initialShadingGroup.dsm" -na;
connectAttr "person_scaleShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "person_scale1Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "mainDirLight.iog" ":defaultLightSet.dsm" -na;
connectAttr "ambientLight1.iog" ":defaultLightSet.dsm" -na;
connectAttr "fillLight.iog" ":defaultLightSet.dsm" -na;
// End of Town Blocking.ma
