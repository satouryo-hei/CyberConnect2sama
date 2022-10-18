xof 0302txt 0064
template Header {
 <3D82AB43-62DA-11cf-AB39-0020AF71E433>
 WORD major;
 WORD minor;
 DWORD flags;
}

template Vector {
 <3D82AB5E-62DA-11cf-AB39-0020AF71E433>
 FLOAT x;
 FLOAT y;
 FLOAT z;
}

template Coords2d {
 <F6F23F44-7686-11cf-8F52-0040333594A3>
 FLOAT u;
 FLOAT v;
}

template Matrix4x4 {
 <F6F23F45-7686-11cf-8F52-0040333594A3>
 array FLOAT matrix[16];
}

template ColorRGBA {
 <35FF44E0-6C7C-11cf-8F52-0040333594A3>
 FLOAT red;
 FLOAT green;
 FLOAT blue;
 FLOAT alpha;
}

template ColorRGB {
 <D3E16E81-7835-11cf-8F52-0040333594A3>
 FLOAT red;
 FLOAT green;
 FLOAT blue;
}

template IndexedColor {
 <1630B820-7842-11cf-8F52-0040333594A3>
 DWORD index;
 ColorRGBA indexColor;
}

template Boolean {
 <4885AE61-78E8-11cf-8F52-0040333594A3>
 WORD truefalse;
}

template Boolean2d {
 <4885AE63-78E8-11cf-8F52-0040333594A3>
 Boolean u;
 Boolean v;
}

template MaterialWrap {
 <4885AE60-78E8-11cf-8F52-0040333594A3>
 Boolean u;
 Boolean v;
}

template TextureFilename {
 <A42790E1-7810-11cf-8F52-0040333594A3>
 STRING filename;
}

template Material {
 <3D82AB4D-62DA-11cf-AB39-0020AF71E433>
 ColorRGBA faceColor;
 FLOAT power;
 ColorRGB specularColor;
 ColorRGB emissiveColor;
 [...]
}

template MeshFace {
 <3D82AB5F-62DA-11cf-AB39-0020AF71E433>
 DWORD nFaceVertexIndices;
 array DWORD faceVertexIndices[nFaceVertexIndices];
}

template MeshFaceWraps {
 <4885AE62-78E8-11cf-8F52-0040333594A3>
 DWORD nFaceWrapValues;
 Boolean2d faceWrapValues;
}

template MeshTextureCoords {
 <F6F23F40-7686-11cf-8F52-0040333594A3>
 DWORD nTextureCoords;
 array Coords2d textureCoords[nTextureCoords];
}

template MeshMaterialList {
 <F6F23F42-7686-11cf-8F52-0040333594A3>
 DWORD nMaterials;
 DWORD nFaceIndexes;
 array DWORD faceIndexes[nFaceIndexes];
 [Material]
}

template MeshNormals {
 <F6F23F43-7686-11cf-8F52-0040333594A3>
 DWORD nNormals;
 array Vector normals[nNormals];
 DWORD nFaceNormals;
 array MeshFace faceNormals[nFaceNormals];
}

template MeshVertexColors {
 <1630B821-7842-11cf-8F52-0040333594A3>
 DWORD nVertexColors;
 array IndexedColor vertexColors[nVertexColors];
}

template Mesh {
 <3D82AB44-62DA-11cf-AB39-0020AF71E433>
 DWORD nVertices;
 array Vector vertices[nVertices];
 DWORD nFaces;
 array MeshFace faces[nFaces];
 [...]
}

Header{
1;
0;
1;
}

Mesh {
 68;
 0.51000;337.54195;-9.19887;,
 7.26986;337.54195;-6.39885;,
 7.26986;2.72888;-6.39885;,
 0.51000;2.72888;-9.19887;,
 10.06990;337.54195;0.36101;,
 10.06990;2.72888;0.36101;,
 7.26986;337.54195;7.12087;,
 7.26986;2.72888;7.12087;,
 0.51000;337.54195;9.92089;,
 0.51000;2.72888;9.92089;,
 -6.24986;337.54195;7.12087;,
 -6.24986;2.72888;7.12087;,
 -9.04988;337.54195;0.36101;,
 -9.04988;2.72888;0.36101;,
 -6.24986;337.54195;-6.39885;,
 -6.24986;2.72888;-6.39885;,
 0.51000;337.54195;-9.19887;,
 0.51000;2.72888;-9.19887;,
 0.51000;2.72888;0.36101;,
 0.51000;2.72888;0.36101;,
 0.51000;2.72888;0.36101;,
 0.51000;2.72888;0.36101;,
 0.51000;2.72888;0.36101;,
 0.51000;2.72888;0.36101;,
 0.51000;2.72888;0.36101;,
 0.51000;2.72888;0.36101;,
 40.84130;452.89146;0.58501;,
 31.52274;360.18262;-92.12373;,
 31.52274;452.89146;-123.42562;,
 31.52274;335.97994;0.58501;,
 31.52274;360.18262;93.29379;,
 31.52274;452.89146;124.59562;,
 31.52274;545.60035;93.29379;,
 31.52274;569.80294;0.58501;,
 31.52274;545.60035;-92.12363;,
 -40.84130;452.89146;0.58501;,
 -26.91322;452.89146;-123.42562;,
 -26.91322;360.18267;-92.12373;,
 -26.91322;335.97994;0.58501;,
 -26.91322;360.18267;93.29379;,
 -26.91322;452.89146;124.59562;,
 -26.91322;545.60035;93.29379;,
 -26.91322;569.80294;0.58501;,
 -26.91322;545.60035;-92.12363;,
 0.89158;349.94556;-102.36063;,
 -26.91322;360.18267;-92.12373;,
 -26.91322;452.89146;-123.42562;,
 0.89158;452.89146;-137.11889;,
 31.52274;452.89146;-123.42562;,
 31.52274;360.18262;-92.12373;,
 0.89158;323.07046;0.58501;,
 -26.91322;335.97994;0.58501;,
 31.52274;335.97994;0.58501;,
 0.89158;349.94556;103.53063;,
 -26.91322;360.18267;93.29379;,
 31.52274;360.18262;93.29379;,
 0.89158;452.89146;138.28888;,
 -26.91322;452.89146;124.59562;,
 31.52274;452.89146;124.59562;,
 0.89158;555.83726;103.53063;,
 -26.91322;545.60035;93.29379;,
 31.52274;545.60035;93.29379;,
 0.89158;582.71222;0.58501;,
 -26.91322;569.80294;0.58501;,
 31.52274;569.80294;0.58501;,
 0.89158;555.83726;-102.36054;,
 -26.91322;545.60035;-92.12363;,
 31.52274;545.60035;-92.12363;;
 
 48;
 4;0,1,2,3;,
 4;1,4,5,2;,
 4;4,6,7,5;,
 4;6,8,9,7;,
 4;8,10,11,9;,
 4;10,12,13,11;,
 4;12,14,15,13;,
 4;14,16,17,15;,
 3;18,3,2;,
 3;19,2,5;,
 3;20,5,7;,
 3;21,7,9;,
 3;22,9,11;,
 3;23,11,13;,
 3;24,13,15;,
 3;25,15,17;,
 3;26,27,28;,
 3;26,29,27;,
 3;26,30,29;,
 3;26,31,30;,
 3;26,32,31;,
 3;26,33,32;,
 3;26,34,33;,
 3;26,28,34;,
 3;35,36,37;,
 3;35,37,38;,
 3;35,38,39;,
 3;35,39,40;,
 3;35,40,41;,
 3;35,41,42;,
 3;35,42,43;,
 3;35,43,36;,
 4;44,45,46,47;,
 4;44,47,48,49;,
 4;50,51,45,44;,
 4;50,44,49,52;,
 4;53,54,51,50;,
 4;53,50,52,55;,
 4;56,57,54,53;,
 4;56,53,55,58;,
 4;59,60,57,56;,
 4;59,56,58,61;,
 4;62,63,60,59;,
 4;62,59,61,64;,
 4;65,66,63,62;,
 4;65,62,64,67;,
 4;47,46,66,65;,
 4;47,65,67,48;;
 
 MeshMaterialList {
  4;
  48;
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3;;
  Material {
   0.600000;0.459000;0.244800;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.400000;0.306000;0.163200;;
  }
  Material {
   0.600000;0.600000;0.600000;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.400000;0.400000;0.400000;;
   TextureFilename {
    "data\\TEXTURE\\guruguru.png";
   }
  }
  Material {
   0.600000;0.327000;0.439800;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.400000;0.218000;0.293200;;
  }
  Material {
   0.600000;0.600000;0.600000;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.400000;0.400000;0.400000;;
   TextureFilename {
    "data\\TEXTURE\\guruguru_side.jpg";
   }
  }
 }
 MeshNormals {
  49;
  0.000000;0.000000;-1.000000;,
  0.707106;0.000000;-0.707108;,
  1.000000;0.000000;-0.000000;,
  0.707106;0.000000;0.707108;,
  0.000000;0.000000;1.000000;,
  -0.707107;0.000000;0.707107;,
  -1.000000;0.000000;0.000000;,
  -0.707107;0.000000;-0.707107;,
  0.000000;-1.000000;-0.000000;,
  1.000000;0.000000;-0.000000;,
  0.997189;0.000000;-0.074932;,
  0.997479;-0.052403;-0.047858;,
  0.996839;-0.079454;-0.000000;,
  0.997479;-0.052403;0.047858;,
  0.997189;-0.000000;0.074932;,
  0.997479;0.052403;0.047858;,
  0.996839;0.079454;-0.000000;,
  0.997479;0.052403;-0.047858;,
  -0.824938;0.000000;-0.565223;,
  -0.994393;-0.078076;-0.071316;,
  -0.813951;-0.580934;-0.000000;,
  -0.994393;-0.078076;0.071316;,
  -0.824938;0.000000;0.565223;,
  -0.994393;0.078076;0.071316;,
  -0.813949;0.580936;-0.000000;,
  -0.994393;0.078076;-0.071316;,
  -1.000000;0.000000;-0.000000;,
  -0.018962;0.000001;-0.999820;,
  -0.020154;-0.732473;-0.680498;,
  -0.018096;-0.999836;-0.000000;,
  -0.017509;-0.967424;0.252557;,
  -0.018962;0.000000;0.999820;,
  -0.020154;0.732474;0.680497;,
  -0.018095;0.999836;-0.000000;,
  -0.017508;0.967424;-0.252556;,
  -0.461577;-0.649990;-0.603705;,
  0.408114;0.000001;-0.912931;,
  0.427075;-0.662367;-0.615530;,
  0.388368;-0.921504;-0.000000;,
  -0.461576;-0.649990;0.603705;,
  0.427074;-0.662367;0.615530;,
  -0.017966;-0.319843;0.947300;,
  0.408113;0.000000;0.912931;,
  -0.461573;0.649992;0.603706;,
  0.427072;0.662369;0.615530;,
  0.388363;0.921506;-0.000000;,
  -0.461574;0.649992;-0.603705;,
  0.427072;0.662369;-0.615530;,
  -0.017966;0.319844;-0.947300;;
  48;
  4;0,1,1,0;,
  4;1,2,2,1;,
  4;2,3,3,2;,
  4;3,4,4,3;,
  4;4,5,5,4;,
  4;5,6,6,5;,
  4;6,7,7,6;,
  4;7,0,0,7;,
  3;8,8,8;,
  3;8,8,8;,
  3;8,8,8;,
  3;8,8,8;,
  3;8,8,8;,
  3;8,8,8;,
  3;8,8,8;,
  3;8,8,8;,
  3;9,11,10;,
  3;9,12,11;,
  3;9,13,12;,
  3;9,14,13;,
  3;9,15,14;,
  3;9,16,15;,
  3;9,17,16;,
  3;9,10,17;,
  3;26,18,19;,
  3;26,19,20;,
  3;26,20,21;,
  3;26,21,22;,
  3;26,22,23;,
  3;26,23,24;,
  3;26,24,25;,
  3;26,25,18;,
  4;28,35,18,27;,
  4;28,27,36,37;,
  4;29,20,35,28;,
  4;29,28,37,38;,
  4;30,39,20,29;,
  4;30,29,38,40;,
  4;31,22,39,41;,
  4;31,41,40,42;,
  4;32,43,22,31;,
  4;32,31,42,44;,
  4;33,24,43,32;,
  4;33,32,44,45;,
  4;34,46,24,33;,
  4;34,33,45,47;,
  4;27,18,46,48;,
  4;27,48,47,36;;
 }
 MeshTextureCoords {
  68;
  0.000000;0.000000;,
  0.125000;0.000000;,
  0.125000;1.000000;,
  0.000000;1.000000;,
  0.250000;0.000000;,
  0.250000;1.000000;,
  0.375000;0.000000;,
  0.375000;1.000000;,
  0.500000;0.000000;,
  0.500000;1.000000;,
  0.625000;0.000000;,
  0.625000;1.000000;,
  0.750000;0.000000;,
  0.750000;1.000000;,
  0.875000;0.000000;,
  0.875000;1.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.062500;1.000000;,
  0.187500;1.000000;,
  0.312500;1.000000;,
  0.437500;1.000000;,
  0.562500;1.000000;,
  0.687500;1.000000;,
  0.812500;1.000000;,
  0.937500;1.000000;,
  0.500330;0.505810;,
  0.678010;0.817030;,
  0.816250;0.587370;,
  0.426500;0.820460;,
  0.205530;0.693050;,
  0.184250;0.421530;,
  0.322490;0.191880;,
  0.574000;0.188450;,
  0.794970;0.315860;,
  0.499660;0.493940;,
  0.815780;0.578880;,
  0.677530;0.808530;,
  0.426020;0.811960;,
  0.205050;0.684560;,
  0.183770;0.413040;,
  0.322010;0.183380;,
  0.573520;0.179950;,
  0.794500;0.307360;,
  0.591290;0.568960;,
  0.552280;0.577870;,
  0.529420;0.617410;,
  0.565900;0.612870;,
  0.581200;0.590220;,
  0.604070;0.550680;,
  0.516720;0.499930;,
  0.485130;0.515700;,
  0.536910;0.488520;,
  0.413200;0.442700;,
  0.391900;0.464160;,
  0.443690;0.436970;,
  0.327680;0.443970;,
  0.314890;0.465300;,
  0.366670;0.438120;,
  0.302300;0.487880;,
  0.292030;0.504840;,
  0.343810;0.477660;,
  0.376860;0.556910;,
  0.359180;0.567010;,
  0.410960;0.539820;,
  0.480390;0.614140;,
  0.452410;0.618550;,
  0.504190;0.591370;;
 }
}
