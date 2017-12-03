class ColorScheme{
  int red, green, blue;
  ColorScheme(String s){
    setPCCS(s);
  }
  void setPCCS(String s){
    if(s.equals("W")){
      red = 255;
      green = 255;
      blue = 255;
    }else if(s.equals("ltgy")){
      red = 191;
      green = 191;
      blue = 191;
    }else if(s.equals("mgy")){
      red = 127;
      green = 127;
      blue = 127;
    }else if(s.equals("dkgy")){
      red = 63;
      green = 63;
      blue = 63;
    }else if((s.equals("gy-9.5")) || (s.equals("gy9.5"))){
      red = 241;
      green = 241;
      blue = 241;
    }else if((s.equals("gy-8.5")) || (s.equals("gy8.5"))){
      red = 214;
      green = 214;
      blue = 214;
    }else if((s.equals("gy-7.5")) || (s.equals("gy7.5"))){
      red = 187;
      green = 187;
      blue = 187;
    }else if((s.equals("gy-6.5")) || (s.equals("gy6.5"))){
      red = 161;
      green = 161;
      blue = 161;
    }else if((s.equals("gy-5.5")) || (s.equals("gy5.5"))){
      red = 135;
      green = 135;
      blue = 135;
    }else if((s.equals("gy-4.5")) || (s.equals("gy4.5"))){
      red = 109;
      green = 109;
      blue = 109;
    }else if((s.equals("gy-3.5")) || (s.equals("gy3.5"))){
      red = 84;
      green = 84;
      blue = 84;
    }else if((s.equals("gy-2.5")) || (s.equals("gy2.5"))){
      red = 60;
      green = 60;
      blue = 60;
    }else if((s.equals("gy-1.5")) || (s.equals("gy1.5"))){
      red = 39;
      green = 39;
      blue = 39;
    }else if(s.equals("Bk")){
      red = 0;
      green = 0;
      blue = 0;
    }else if(s.equals("v1")){
      red = 185;
      green = 31;
      blue = 87;
    }else if(s.equals("v2")){
      red = 208;
      green = 47;
      blue = 72;
    }else if(s.equals("v3")){
      red = 221;
      green = 68;
      blue = 59;
    }else if(s.equals("v4")){
      red = 233;
      green = 91;
      blue = 35;
    }else if(s.equals("v5")){
      red = 230;
      green = 120;
      blue = 0;
    }else if(s.equals("v6")){
      red = 244;
      green = 157;
      blue = 0;
    }else if(s.equals("v7")){
      red = 241;
      green = 181;
      blue = 0;
    }else if(s.equals("v8")){
      red = 238;
      green = 201;
      blue = 0;
    }else if(s.equals("v9")){
      red = 210;
      green = 193;
      blue = 0;
    }else if(s.equals("v10")){
      red = 168;
      green = 187;
      blue = 0;
    }else if(s.equals("v11")){
      red = 88;
      green = 169;
      blue = 29;
    }else if(s.equals("v12")){
      red = 0;
      green = 161;
      blue = 90;
    }else if(s.equals("v13")){
      red = 0;
      green = 146;
      blue = 110;
    }else if(s.equals("v14")){
      red = 0;
      green = 133;
      blue = 127;
    }else if(s.equals("v15")){
      red = 0;
      green = 116;
      blue = 136;
    }else if(s.equals("v16")){
      red = 0;
      green = 112;
      blue = 155;
    }else if(s.equals("v17")){
      red = 0;
      green = 96;
      blue = 156;
    }else if(s.equals("v18")){
      red = 0;
      green = 91;
      blue = 165;
    }else if(s.equals("v19")){
      red = 26;
      green = 84;
      blue = 165;
    }else if(s.equals("v20")){
      red = 83;
      green = 74;
      blue = 160;
    }else if(s.equals("v21")){
      red = 112;
      green = 63;
      blue = 150;
    }else if(s.equals("v22")){
      red = 129;
      green = 55;
      blue = 138;
    }else if(s.equals("v23")){
      red = 143;
      green = 46;
      blue = 124;
    }else if(s.equals("v24")){
      red = 173;
      green = 46;
      blue = 108;
    }else if(s.equals("b2")){
      red = 239;
      green = 108;
      blue = 112;
    }else if(s.equals("b4")){
      red = 250;
      green = 129;
      blue = 85;
    }else if(s.equals("b6")){
      red = 255;
      green = 173;
      blue = 54;
    }else if(s.equals("b8")){
      red = 250;
      green = 216;
      blue = 49;
    }else if(s.equals("b10")){
      red = 183;
      green = 200;
      blue = 43;
    }else if(s.equals("b12")){
      red = 65;
      green = 184;
      blue = 121;
    }else if(s.equals("b14")){
      red = 0;
      green = 170;
      blue = 159;
    }else if(s.equals("b16")){
      red = 0;
      green = 152;
      blue = 185;
    }else if(s.equals("b18")){
      red = 41;
      green = 129;
      blue = 192;
    }else if(s.equals("b20")){
      red = 117;
      green = 116;
      blue = 188;
    }else if(s.equals("b22")){
      red = 161;
      green = 101;
      blue = 168;
    }else if(s.equals("b24")){
      red = 208;
      green = 103;
      blue = 142;
    }else if(s.equals("s2")){
      red = 197;
      green = 63;
      blue = 77;
    }else if(s.equals("s4")){
      red = 204;
      green = 87;
      blue = 46;
    }else if(s.equals("s6")){
      red = 225;
      green = 146;
      blue = 21;
    }else if(s.equals("s8")){
      red = 222;
      green = 188;
      blue = 3;
    }else if(s.equals("s10")){
      red = 156;
      green = 173;
      blue = 0;
    }else if(s.equals("s12")){
      red = 0;
      green = 143;
      blue = 86;
    }else if(s.equals("s14")){
      red = 0;
      green = 130;
      blue = 124;
    }else if(s.equals("s16")){
      red = 0;
      green = 111;
      blue = 146;
    }else if(s.equals("s18")){
      red = 0;
      green = 91;
      blue = 155;
    }else if(s.equals("s20")){
      red = 83;
      green = 76;
      blue = 152;
    }else if(s.equals("s22")){
      red = 124;
      green = 61;
      blue = 132;
    }else if(s.equals("s24")){
      red = 163;
      green = 60;
      blue = 106;
    }else if(s.equals("dp2")){
      red = 166;
      green = 29;
      blue = 57;
    }else if(s.equals("dp4")){
      red = 171;
      green = 61;
      blue = 29;
    }else if(s.equals("dp6")){
      red = 177;
      green = 108;
      blue = 0;
    }else if(s.equals("dp8")){
      red = 179;
      green = 147;
      blue = 0;
    }else if(s.equals("dp10")){
      red = 116;
      green = 132;
      blue = 0;
    }else if(s.equals("dp12")){
      red = 0;
      green = 114;
      blue = 67;
    }else if(s.equals("dp14")){
      red = 0;
      green = 102;
      blue = 100;
    }else if(s.equals("dp16")){
      red = 0;
      green = 84;
      blue = 118;
    }else if(s.equals("dp18")){
      red = 0;
      green = 66;
      blue = 128;
    }else if(s.equals("dp20")){
      red = 62;
      green = 51;
      blue = 123;
    }else if(s.equals("dp22")){
      red = 97;
      green = 36;
      blue = 105;
    }else if(s.equals("dp24")){
      red = 134;
      green = 29;
      blue = 85;
    }else if(s.equals("lt+2")){
      red = 241;
      green = 152;
      blue = 150;
    }else if(s.equals("lt+4")){
      red = 255;
      green = 167;
      blue = 135;
    }else if(s.equals("lt+6")){
      red = 255;
      green = 190;
      blue = 113;
    }else if(s.equals("lt+8")){
      red = 242;
      green = 217;
      blue = 110;
    }else if(s.equals("lt+10")){
      red = 199;
      green = 211;
      blue = 109;
    }else if(s.equals("lt+12")){
      red = 133;
      green = 206;
      blue = 158;
    }else if(s.equals("lt+14")){
      red = 98;
      green = 192;
      blue = 181;
    }else if(s.equals("lt+16")){
      red = 91;
      green = 175;
      blue = 196;
    }else if(s.equals("lt+18")){
      red = 108;
      green = 154;
      blue = 197;
    }else if(s.equals("lt+20")){
      red = 144;
      green = 145;
      blue = 195;
    }else if(s.equals("lt+22")){
      red = 176;
      green = 136;
      blue = 181;
    }else if(s.equals("lt+24")){
      red = 217;
      green = 142;
      blue = 165;
    }else if(s.equals("lt2")){
      red = 246;
      green = 171;
      blue = 165;
    }else if(s.equals("lt4")){
      red = 255;
      green = 185;
      blue = 158;
    }else if(s.equals("lt6")){
      red = 255;
      green = 206;
      blue = 144;
    }else if(s.equals("lt8")){
      red = 251;
      green = 230;
      blue = 143;
    }else if(s.equals("lt10")){
      red = 216;
      green = 223;
      blue = 146;
    }else if(s.equals("lt12")){
      red = 156;
      green = 217;
      blue = 172;
    }else if(s.equals("lt14")){
      red = 126;
      green = 204;
      blue = 193;
    }else if(s.equals("lt16")){
      red = 121;
      green = 186;
      blue = 202;
    }else if(s.equals("lt18")){
      red = 131;
      green = 167;
      blue = 200;
    }else if(s.equals("lt20")){
      red = 162;
      green = 159;
      blue = 199;
    }else if(s.equals("lt22")){
      red = 184;
      green = 154;
      blue = 184;
    }else if(s.equals("lt24")){
      red = 218;
      green = 160;
      blue = 179;
    }else if(s.equals("sf2")){
      red = 202;
      green = 130;
      blue = 129;
    }else if(s.equals("sf4")){
      red = 218;
      green = 146;
      blue = 122;
    }else if(s.equals("sf6")){
      red = 219;
      green = 166;
      blue = 107;
    }else if(s.equals("sf8")){
      red = 211;
      green = 189;
      blue = 108;
    }else if(s.equals("sf10")){
      red = 173;
      green = 182;
      blue = 107;
    }else if(s.equals("sf12")){
      red = 118;
      green = 177;
      blue = 138;
    }else if(s.equals("sf14")){
      red = 84;
      green = 163;
      blue = 155;
    }else if(s.equals("sf16")){
      red = 81;
      green = 146;
      blue = 164;
    }else if(s.equals("sf18")){
      red = 93;
      green = 126;
      blue = 160;
    }else if(s.equals("sf20")){
      red = 120;
      green = 120;
      blue = 160;
    }else if(s.equals("sf22")){
      red = 144;
      green = 113;
      blue = 148;
    }else if(s.equals("sf24")){
      red = 180;
      green = 120;
      blue = 139;
    }else if(s.equals("d2")){
      red = 163;
      green = 90;
      blue = 92;
    }else if(s.equals("d4")){
      red = 175;
      green = 105;
      blue = 84;
    }else if(s.equals("d6")){
      red = 179;
      green = 127;
      blue = 70;
    }else if(s.equals("d8")){
      red = 171;
      green = 148;
      blue = 70;
    }else if(s.equals("d10")){
      red = 133;
      green = 143;
      blue = 70;
    }else if(s.equals("d12")){
      red = 79;
      green = 135;
      blue = 102;
    }else if(s.equals("d14")){
      red = 42;
      green = 123;
      blue = 118;
    }else if(s.equals("d16")){
      red = 36;
      green = 106;
      blue = 125;
    }else if(s.equals("d18")){
      red = 52;
      green = 89;
      blue = 125;
    }else if(s.equals("d20")){
      red = 84;
      green = 82;
      blue = 124;
    }else if(s.equals("d22")){
      red = 108;
      green = 74;
      blue = 113;
    }else if(s.equals("d24")){
      red = 139;
      green = 79;
      blue = 101;
    }else if(s.equals("dk2")){
      red = 105;
      green = 41;
      blue = 52;
    }else if(s.equals("dk4")){
      red = 117;
      green = 54;
      blue = 42;
    }else if(s.equals("dk6")){
      red = 121;
      green = 77;
      blue = 28;
    }else if(s.equals("dk8")){
      red = 116;
      green = 96;
      blue = 31;
    }else if(s.equals("dk10")){
      red = 82;
      green = 91;
      blue = 32;
    }else if(s.equals("dk12")){
      red = 35;
      green = 82;
      blue = 58;
    }else if(s.equals("dk14")){
      red = 0;
      green = 71;
      blue = 70;
    }else if(s.equals("dk16")){
      red = 0;
      green = 69;
      blue = 88;
    }else if(s.equals("dk18")){
      red = 18;
      green = 52;
      blue = 82;
    }else if(s.equals("dk20")){
      red = 50;
      green = 45;
      blue = 81;
    }else if(s.equals("dk22")){
      red = 67;
      green = 40;
      blue = 72;
    }else if(s.equals("dk24")){
      red = 97;
      green = 45;
      blue = 70;
    }else if(s.equals("p+2")){
      red = 232;
      green = 194;
      blue = 191;
    }else if(s.equals("p+4")){
      red = 235;
      green = 194;
      blue = 181;
    }else if(s.equals("p+6")){
      red = 244;
      green = 212;
      blue = 176;
    }else if(s.equals("p+8")){
      red = 242;
      green = 230;
      blue = 184;
    }else if(s.equals("p+10")){
      red = 216;
      green = 221;
      blue = 173;
    }else if(s.equals("p+12")){
      red = 174;
      green = 212;
      blue = 185;
    }else if(s.equals("p+14")){
      red = 166;
      green = 212;
      blue = 204;
    }else if(s.equals("p+16")){
      red = 173;
      green = 209;
      blue = 218;
    }else if(s.equals("p+18")){
      red = 175;
      green = 192;
      blue = 209;
    }else if(s.equals("p+20")){
      red = 187;
      green = 189;
      blue = 208;
    }else if(s.equals("p+22")){
      red = 200;
      green = 185;
      blue = 201;
    }else if(s.equals("p+24")){
      red = 222;
      green = 196;
      blue = 202;
    }else if(s.equals("p2")){
      red = 231;
      green = 213;
      blue = 212;
    }else if(s.equals("p4")){
      red = 233;
      green = 213;
      blue = 207;
    }else if(s.equals("p6")){
      red = 246;
      green = 227;
      blue = 206;
    }else if(s.equals("p8")){
      red = 239;
      green = 230;
      blue = 198;
    }else if(s.equals("p10")){
      red = 230;
      green = 233;
      blue = 198;
    }else if(s.equals("p12")){
      red = 196;
      green = 224;
      blue = 203;
    }else if(s.equals("p14")){
      red = 191;
      green = 224;
      blue = 217;
    }else if(s.equals("p16")){
      red = 198;
      green = 221;
      blue = 226;
    }else if(s.equals("p18")){
      red = 194;
      green = 204;
      blue = 213;
    }else if(s.equals("p20")){
      red = 201;
      green = 202;
      blue = 213;
    }else if(s.equals("p22")){
      red = 208;
      green = 200;
      blue = 209;
    }else if(s.equals("p24")){
      red = 228;
      green = 213;
      blue = 217;
    }else if(s.equals("ltg2")){
      red = 192;
      green = 171;
      blue = 170;
    }else if(s.equals("ltg4")){
      red = 193;
      green = 171;
      blue = 165;
    }else if(s.equals("ltg6")){
      red = 206;
      green = 187;
      blue = 168;
    }else if(s.equals("ltg8")){
      red = 198;
      green = 190;
      blue = 161;
    }else if(s.equals("ltg10")){
      red = 189;
      green = 193;
      blue = 162;
    }else if(s.equals("ltg12")){
      red = 157;
      green = 182;
      blue = 165;
    }else if(s.equals("ltg14")){
      red = 152;
      green = 182;
      blue = 177;
    }else if(s.equals("ltg16")){
      red = 158;
      green = 180;
      blue = 185;
    }else if(s.equals("ltg18")){
      red = 155;
      green = 165;
      blue = 175;
    }else if(s.equals("ltg20")){
      red = 162;
      green = 162;
      blue = 175;
    }else if(s.equals("ltg22")){
      red = 171;
      green = 160;
      blue = 171;
    }else if(s.equals("ltg24")){
      red = 189;
      green = 172;
      blue = 176;
    }else if(s.equals("g2")){
      red = 116;
      green = 92;
      blue = 92;
    }else if(s.equals("g4")){
      red = 117;
      green = 92;
      blue = 87;
    }else if(s.equals("g6")){
      red = 128;
      green = 108;
      blue = 92;
    }else if(s.equals("g8")){
      red = 120;
      green = 111;
      blue = 87;
    }else if(s.equals("g10")){
      red = 110;
      green = 114;
      blue = 90;
    }else if(s.equals("g12")){
      red = 83;
      green = 102;
      blue = 90;
    }else if(s.equals("g14")){
      red = 78;
      green = 103;
      blue = 100;
    }else if(s.equals("g16")){
      red = 79;
      green = 101;
      blue = 108;
    }else if(s.equals("g18")){
      red = 76;
      green = 87;
      blue = 101;
    }else if(s.equals("g20")){
      red = 86;
      green = 85;
      blue = 102;
    }else if(s.equals("g22")){
      red = 96;
      green = 82;
      blue = 98;
    }else if(s.equals("g24")){
      red = 114;
      green = 92;
      blue = 99;
    }else if(s.equals("dkg2")){
      red = 62;
      green = 45;
      blue = 48;
    }else if(s.equals("dkg4")){
      red = 63;
      green = 46;
      blue = 44;
    }else if(s.equals("dkg6")){
      red = 74;
      green = 60;
      blue = 50;
    }else if(s.equals("dkg8")){
      red = 68;
      green = 62;
      blue = 48;
    }else if(s.equals("dkg10")){
      red = 61;
      green = 64;
      blue = 51;
    }else if(s.equals("dkg12")){
      red = 42;
      green = 52;
      blue = 46;
    }else if(s.equals("dkg14")){
      red = 39;
      green = 52;
      blue = 52;
    }else if(s.equals("dkg16")){
      red = 39;
      green = 52;
      blue = 57;
    }else if(s.equals("dkg18")){
      red = 34;
      green = 41;
      blue = 51;
    }else if(s.equals("dkg20")){
      red = 41;
      green = 39;
      blue = 52;
    }else if(s.equals("dkg22")){
      red = 48;
      green = 37;
      blue = 49;
    }else if(s.equals("dkg24")){
      red = 61;
      green = 46;
      blue = 52;
    }else{
      red = 0;
      green = 0;
      blue = 0;
    }
  }
}