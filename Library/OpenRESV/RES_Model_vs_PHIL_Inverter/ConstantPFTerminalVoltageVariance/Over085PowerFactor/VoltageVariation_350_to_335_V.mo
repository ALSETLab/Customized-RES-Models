within OpenRESV.RES_Model_vs_PHIL_Inverter.ConstantPFTerminalVoltageVariance.Over085PowerFactor;
model VoltageVariation_350_to_335_V
  extends Modelica.Icons.Example;
  OpenRESV.Electrical.Renewables.PSSE.PV pV1(
    V_b=353.92049703035,
    P_0(displayUnit="W") = EXPERIMENT_P.table[1, 2],
    Q_0(displayUnit="V.A") = EXPERIMENT_Q.table[1, 2],
    angle_0(displayUnit="rad"),
    QFunctionality=0,
    redeclare
      OpenRESV.Electrical.Renewables.PSSE.InverterInterface.REGCA1
      RenewableGenerator(Tg=0.01, Tfltr=0.01),
    redeclare
      OpenRESV.Electrical.Renewables.PSSE.ElectricalController.REECB1_modified
      RenewableController(
      Trv=0.01,
      dbd1=-0.00001,
      dbd2=0.00001,
      Kqv=0.011,
      Tp=0.01,
      Tiq=0.01,
      Tpord=0.01),
    redeclare OpenRESV.Electrical.Renewables.PSSE.PlantController.REPCA1
      PlantController) annotation (Placement(transformation(extent={{-120,
            110},{-100,130}})));
  OpenRESV.Electrical.Buses.Bus InverterBus1(V_b=353.92049703035, angle_0
      =0)
    annotation (Placement(transformation(extent={{-80,110},{-60,130}})));
  OpenRESV.Electrical.Sources.VoltageSourceReImInput voltageSourceReImInput(V_b=
        353.920497030345)
    annotation (Placement(transformation(extent={{30,110},{10,130}})));
  inner OpenRESV.Electrical.SystemBase SysData(fn=60, S_b(displayUnit=
          "V.A") = 30000)
    annotation (Placement(transformation(extent={{-128,194},{-88,214}})));
  OpenRESV.Electrical.Buses.Bus GridBus2(V_b=353.92049703035, angle_0=0)
    annotation (Placement(transformation(extent={{-20,110},{0,130}})));
  OpenRESV.Electrical.Branches.PwLine pwLine1(
    R=0,
    X=0.0000000000001,
    G=0,
    B=0)
    annotation (Placement(transformation(extent={{-50,110},{-30,130}})));
  Modelica.Blocks.Math.Atan SIMULATION_IAng_REECB
    annotation (Placement(transformation(extent={{-44,74},{-24,94}})));
  Modelica.Blocks.Sources.RealExpression SIMULATION_I_Ang_REECB(y=pwLine1.is.im/
        pwLine1.is.re)
    annotation (Placement(transformation(extent={{-88,74},{-68,94}})));
  Modelica.Blocks.Sources.CombiTimeTable EXPERIMENT_P(table=[0.080449,
        889.28; 0.21884,889.25; 0.29703,890.12; 0.43621,890.16; 0.49696,
        889.82; 0.63682,889.82; 0.699,889.53; 0.82397,889.53; 0.90103,
        888.89; 1.0398,888.89; 1.0868,889.01; 1.2117,889.01; 1.274,890.03;
        1.3367,890.03; 1.477,888.87; 1.617,888.87; 1.6789,890.14; 1.741,
        890.14; 1.8657,889.36; 1.9288,889.36; 2.0859,889.49; 2.2104,889.5;
        2.2735,889.31; 2.3352,889.31; 2.474,890.94; 2.6147,890.94; 2.677,
        890.19; 2.7397,890.19; 2.8824,889.49; 3.0064,889.49; 3.069,889.13;
        3.2081,889.13; 3.2709,890.88; 3.3179,890.88; 3.4565,889.97;
        3.5356,889.96; 3.676,888.94; 3.7226,888.94; 3.8326,889.52; 3.9111,
        889.5; 4.0521,889.22; 4.1144,889.23; 4.2524,889.05; 4.3134,889.04;
        4.4545,889.55; 4.5308,889.54; 4.6704,888.79; 4.7307,889.77;
        4.8368,890.34; 4.9147,889.37; 5.0407,889.72; 5.1028,919.18;
        5.2442,912.32; 5.3058,887.95; 5.4162,887.95; 5.4784,886.97;
        5.6196,886.97; 5.6836,887.64; 5.8074,887.64; 5.8698,885.89;
        5.9327,885.89; 6.0878,886.9; 6.2448,886.9; 6.2911,887.04; 6.4178,
        887.04; 6.4794,886.94; 6.6184,886.94; 6.6973,887.44; 6.8212,
        887.44; 6.8682,886.3; 6.9301,886.3; 7.0712,886.56; 7.1328,886.55;
        7.2721,886.49; 7.3352,886.49; 7.46,886.28; 7.5375,886.28; 7.662,
        887.4; 7.7239,887.4; 7.8483,887.4; 7.9109,886.46; 8.0519,886.75;
        8.1306,886.73; 8.2377,886.37; 8.2999,887.3; 8.4084,887.3; 8.4695,
        886.38; 8.546,886.38; 8.6856,886.6; 8.7326,886.6; 8.8568,886.37;
        8.9189,886.37; 9.0249,886.19; 9.1028,887.12; 9.2255,887.12;
        9.2876,886.15; 9.4126,886.15; 9.4764,886.48; 9.6322,886.48;
        9.6933,886.7; 9.8162,886.7; 9.8778,886.41; 9.9376,886.41; 10.077,
        886.77; 10.215,886.77; 10.279,886.88; 10.341,886.88; 10.448,
        885.12; 10.509,885.12],
                        extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint)
    annotation (Placement(transformation(extent={{-68,180},{-48,200}})));
  Modelica.Blocks.Sources.CombiTimeTable EXPERIMENT_Q(table=[0.080449,
        607.65; 0.21884,607.7; 0.29703,608.53; 0.43621,608.48; 0.49696,
        609.01; 0.63682,609.01; 0.699,607.29; 0.82397,607.29; 0.90103,
        608.21; 1.0398,608.21; 1.0868,608.07; 1.2117,608.07; 1.274,608.7;
        1.3367,608.7; 1.477,608.28; 1.617,608.28; 1.6789,608.54; 1.741,
        608.54; 1.8657,607.55; 1.9288,607.55; 2.0859,607.34; 2.2104,
        607.35; 2.2735,607.65; 2.3352,607.65; 2.474,609.47; 2.6147,609.47;
        2.677,608.47; 2.7397,608.47; 2.8824,607.33; 3.0064,607.33; 3.069,
        607.91; 3.2081,607.91; 3.2709,607.46; 3.3179,607.46; 3.4565,
        608.81; 3.5356,608.81; 3.676,608.17; 3.7226,608.17; 3.8326,607.35;
        3.9111,607.34; 4.0521,607.75; 4.1144,607.75; 4.2524,608.01;
        4.3134,608.01; 4.4545,607.29; 4.5308,607.28; 4.6704,608.37;
        4.7307,609.07; 4.8368,608.24; 4.9147,607.55; 5.0407,607.03;
        5.1028,631.9; 5.2442,641.75; 5.3058,624.62; 5.4162,624.62; 5.4784,
        622.09; 5.6196,622.09; 5.6836,623.1; 5.8074,623.1; 5.8698,621.63;
        5.9327,621.63; 6.0878,622.2; 6.2448,622.2; 6.2911,621.99; 6.4178,
        621.99; 6.4794,622.15; 6.6184,622.15; 6.6973,623.42; 6.8212,
        623.42; 6.8682,623.09; 6.9301,623.09; 7.0712,622.72; 7.1328,
        622.72; 7.2721,622.76; 7.3352,622.76; 7.46,623.07; 7.5375,623.07;
        7.662,623.47; 7.7239,623.47; 7.8483,623.47; 7.9109,622.82; 8.0519,
        622.4; 8.1306,622.39; 8.2377,622.91; 8.2999,623.56; 8.4084,623.56;
        8.4695,622.91; 8.546,622.91; 8.6856,622.6; 8.7326,622.6; 8.8568,
        622.9; 8.9189,622.9; 9.0249,623.16; 9.1028,623.81; 9.2255,623.81;
        9.2876,623.21; 9.4126,623.21; 9.4764,622.75; 9.6322,622.75;
        9.6933,622.44; 9.8162,622.44; 9.8778,622.85; 9.9376,622.85;
        10.077,622.34; 10.215,622.34; 10.279,624.18; 10.341,624.18;
        10.448,622.7; 10.509,622.7],
                 extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint)
    annotation (Placement(transformation(extent={{-38,180},{-18,200}})));
  Modelica.Blocks.Sources.CombiTimeTable V(table=[0.080449,1; 0.21884,1;
        0.29703,1; 0.43621,1; 0.49696,1; 0.63682,1; 0.699,1; 0.82397,1;
        0.90103,0.99999; 1.0398,0.99999; 1.0868,1; 1.2117,1; 1.274,1;
        1.3367,1; 1.477,1; 1.617,1; 1.6789,1; 1.741,1; 1.8657,1; 1.9288,1;
        2.0859,1; 2.2104,1; 2.2735,1; 2.3352,1; 2.474,1; 2.6147,1; 2.677,
        1; 2.7397,1; 2.8824,0.99999; 3.0064,0.99999; 3.069,1; 3.2081,1;
        3.2709,1; 3.3179,1; 3.4565,1; 3.5356,1; 3.676,1; 3.7226,1; 3.8326,
        1; 3.9111,1; 4.0521,1; 4.1144,1; 4.2524,1; 4.3134,1; 4.4545,1;
        4.5308,1; 4.6704,1; 4.7307,1; 4.8368,1; 4.9147,1; 5.0407,1;
        5.1028,0.97569; 5.2442,0.97569; 5.3058,0.95954; 5.4162,0.95954;
        5.4784,0.95954; 5.6196,0.95954; 5.6836,0.95954; 5.8074,0.95954;
        5.8698,0.95953; 5.9327,0.95953; 6.0878,0.95955; 6.2448,0.95955;
        6.2911,0.95954; 6.4178,0.95954; 6.4794,0.95955; 6.6184,0.95955;
        6.6973,0.95956; 6.8212,0.95956; 6.8682,0.95957; 6.9301,0.95957;
        7.0712,0.95957; 7.1328,0.95956; 7.2721,0.95954; 7.3352,0.95954;
        7.46,0.95955; 7.5375,0.95955; 7.662,0.95956; 7.7239,0.95956;
        7.8483,0.95956; 7.9109,0.95955; 8.0519,0.95955; 8.1306,0.95952;
        8.2377,0.95952; 8.2999,0.95953; 8.4084,0.95953; 8.4695,0.95954;
        8.546,0.95954; 8.6856,0.95954; 8.7326,0.95954; 8.8568,0.95952;
        8.9189,0.95952; 9.0249,0.95952; 9.1028,0.95953; 9.2255,0.95953;
        9.2876,0.95952; 9.4126,0.95952; 9.4764,0.95952; 9.6322,0.95952;
        9.6933,0.95953; 9.8162,0.95953; 9.8778,0.95952; 9.9376,0.95952;
        10.077,0.95952; 10.215,0.95952; 10.279,0.95954; 10.341,0.95954;
        10.448,0.95952; 10.509,0.95952],
      extrapolation=Modelica.Blocks.Types.Extrapolation.LastTwoPoints)
    annotation (Placement(transformation(extent={{100,120},{80,140}})));
  Modelica.Blocks.Sources.CombiTimeTable A(table=[0.080449,-0.52401;
        0.21884,-0.52395; 0.29703,-0.52395; 0.43621,-0.52401; 0.49696,-0.52401;
        0.63682,-0.52401; 0.699,-0.52401; 0.82397,-0.52401; 0.90103,-0.52401;
        1.0398,-0.52401; 1.0868,-0.52401; 1.2117,-0.52401; 1.274,-0.52401;
        1.3367,-0.52401; 1.477,-0.52401; 1.617,-0.52401; 1.6789,-0.52401;
        1.741,-0.52401; 1.8657,-0.52401; 1.9288,-0.52401; 2.0859,-0.52401;
        2.2104,-0.52401; 2.2735,-0.52395; 2.3352,-0.52395; 2.474,-0.52401;
        2.6147,-0.52401; 2.677,-0.52401; 2.7397,-0.52401; 2.8824,-0.52401;
        3.0064,-0.52401; 3.069,-0.52401; 3.2081,-0.52401; 3.2709,-0.52401;
        3.3179,-0.52401; 3.4565,-0.52401; 3.5356,-0.52401; 3.676,-0.52401;
        3.7226,-0.52401; 3.8326,-0.52401; 3.9111,-0.52401; 4.0521,-0.52401;
        4.1144,-0.52401; 4.2524,-0.52401; 4.3134,-0.52401; 4.4545,-0.52401;
        4.5308,-0.52401; 4.6704,-0.52401; 4.7307,-0.52401; 4.8368,-0.52401;
        4.9147,-0.52401; 5.0407,-0.52459; 5.1028,-0.52459; 5.2442,-0.52401;
        5.3058,-0.52401; 5.4162,-0.52401; 5.4784,-0.52401; 5.6196,-0.52401;
        5.6836,-0.52401; 5.8074,-0.52401; 5.8698,-0.52401; 5.9327,-0.52401;
        6.0878,-0.52401; 6.2448,-0.52401; 6.2911,-0.52401; 6.4178,-0.52401;
        6.4794,-0.52401; 6.6184,-0.52401; 6.6973,-0.52401; 6.8212,-0.52401;
        6.8682,-0.52401; 6.9301,-0.52401; 7.0712,-0.52401; 7.1328,-0.52401;
        7.2721,-0.52401; 7.3352,-0.52401; 7.46,-0.52401; 7.5375,-0.52401;
        7.662,-0.52401; 7.7239,-0.52401; 7.8483,-0.52401; 7.9109,-0.52401;
        8.0519,-0.52401; 8.1306,-0.52401; 8.2377,-0.52401; 8.2999,-0.52401;
        8.4084,-0.52401; 8.4695,-0.52401; 8.546,-0.52401; 8.6856,-0.52401;
        8.7326,-0.52401; 8.8568,-0.52401; 8.9189,-0.52401; 9.0249,-0.52401;
        9.1028,-0.52401; 9.2255,-0.52401; 9.2876,-0.52401; 9.4126,-0.52401;
        9.4764,-0.52401; 9.6322,-0.52401; 9.6933,-0.52401; 9.8162,-0.52401;
        9.8778,-0.52401; 9.9376,-0.52401; 10.077,-0.52401; 10.215,-0.52401;
        10.279,-0.52401; 10.341,-0.52401; 10.448,-0.52401; 10.509,-0.52401],
      extrapolation=Modelica.Blocks.Types.Extrapolation.LastTwoPoints)
    annotation (Placement(transformation(extent={{100,100},{80,120}})));
  Modelica.Blocks.Math.Cos COS
    annotation (Placement(transformation(extent={{60,84},{52,92}})));
  Modelica.Blocks.Math.Sin SIN
    annotation (Placement(transformation(extent={{60,96},{52,104}})));
  Modelica.Blocks.Math.Product product1 annotation (Placement(transformation(
        extent={{-3,-3},{3,3}},
        rotation=180,
        origin={41,131})));
  Modelica.Blocks.Math.Product product2 annotation (Placement(transformation(
        extent={{-3,-3},{3,3}},
        rotation=180,
        origin={41,111})));
  Modelica.Blocks.Sources.CombiTimeTable EXPERIMENT_IAngle(table=[
        0.080449,-1.1234; 0.21884,-1.1234; 0.29703,-1.1236; 0.43621,-1.1236;
        0.49696,-1.1242; 0.63682,-1.1242; 0.699,-1.123; 0.82397,-1.123;
        0.90103,-1.1241; 1.0398,-1.1241; 1.0868,-1.1239; 1.2117,-1.1239;
        1.274,-1.1239; 1.3367,-1.1239; 1.477,-1.1241; 1.617,-1.1241;
        1.6789,-1.1237; 1.741,-1.1237; 1.8657,-1.1233; 1.9288,-1.1233;
        2.0859,-1.1231; 2.2104,-1.1231; 2.2735,-1.1234; 2.3352,-1.1234;
        2.474,-1.124; 2.6147,-1.124; 2.677,-1.1236; 2.7397,-1.1236;
        2.8824,-1.1231; 3.0064,-1.1231; 3.069,-1.1237; 3.2081,-1.1237;
        3.2709,-1.1225; 3.3179,-1.1225; 3.4565,-1.124; 3.5356,-1.124;
        3.676,-1.124; 3.7226,-1.124; 3.8326,-1.1231; 3.9111,-1.1231;
        4.0521,-1.1235; 4.1144,-1.1235; 4.2524,-1.1238; 4.3134,-1.1238;
        4.4545,-1.123; 4.5308,-1.123; 4.6704,-1.1242; 4.7307,-1.1243;
        4.8368,-1.1233; 4.9147,-1.1233; 5.0407,-1.1233; 5.1028,-1.1268;
        5.2442,-1.137; 5.3058,-1.137; 5.4162,-1.137; 5.4784,-1.1357;
        5.6196,-1.1357; 5.6836,-1.1361; 5.8074,-1.1361; 5.8698,-1.1359;
        5.9327,-1.1359; 6.0878,-1.1358; 6.2448,-1.1358; 6.2911,-1.1355;
        6.4178,-1.1355; 6.4794,-1.1357; 6.6184,-1.1357; 6.6973,-1.1364;
        6.8212,-1.1364; 6.8682,-1.1368; 6.9301,-1.1368; 7.0712,-1.1363;
        7.1328,-1.1363; 7.2721,-1.1364; 7.3352,-1.1364; 7.46,-1.1368;
        7.5375,-1.1368; 7.662,-1.1365; 7.7239,-1.1365; 7.8483,-1.1365;
        7.9109,-1.1365; 8.0519,-1.136; 8.1306,-1.136; 8.2377,-1.1366;
        8.2999,-1.1366; 8.4084,-1.1366; 8.4695,-1.1366; 8.546,-1.1366;
        8.6856,-1.1362; 8.7326,-1.1362; 8.8568,-1.1366; 8.9189,-1.1366;
        9.0249,-1.1369; 9.1028,-1.1369; 9.2255,-1.1369; 9.2876,-1.1369;
        9.4126,-1.1369; 9.4764,-1.1364; 9.6322,-1.1364; 9.6933,-1.1361;
        9.8162,-1.1361; 9.8778,-1.1365; 9.9376,-1.1365; 10.077,-1.1359;
        10.215,-1.1359; 10.279,-1.1373; 10.341,-1.1373; 10.448,-1.1371;
        10.509,-1.1371],                 extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint)
    annotation (Placement(transformation(extent={{20,180},{40,200}})));
  Modelica.Blocks.Sources.RealExpression EXPERIMENT_PF(y=EXPERIMENT_P.y[1]/sqrt(
         EXPERIMENT_P.y[1]^2 + EXPERIMENT_Q.y[1]^2))
    annotation (Placement(transformation(extent={{66,186},{86,206}})));
  Modelica.Blocks.Sources.RealExpression PF_Simulation_REECB(y=pwLine1.P12/sqrt(
         pwLine1.P12^2 + pwLine1.Q12^2))
    annotation (Placement(transformation(extent={{66,194},{86,174}})));
  OpenRESV.Electrical.Renewables.PSSE.Wind_or_PV wind(
    V_b=353.92049703035,
    P_0(displayUnit="W") = EXPERIMENT_P.table[1, 2],
    Q_0(displayUnit="V.A") = EXPERIMENT_Q.table[1, 2],
    angle_0(displayUnit="rad"),
    QFunctionality=0,
    redeclare
      OpenRESV.Electrical.Renewables.PSSE.InverterInterface.REGCA1
      RenewableGenerator(Tg=0.01, Tfltr=0.01),
    redeclare
      OpenRESV.Electrical.Renewables.PSSE.ElectricalController.REECA1
      RenewableController(
      dbd1=-0.0001,
      dbd2=0.0001,
      Kqv=0.011,
      Tp=0.01,
      Tiq=0.01,
      Tpord=0.01),
    redeclare OpenRESV.Electrical.Renewables.PSSE.PlantController.REPCA1
      PlantController,
    redeclare OpenRESV.Electrical.Renewables.PSSE.WindDriveTrain.WTDTA1
      DriveTrain,
    W0=0)
    annotation (Placement(transformation(extent={{-130,-10},{-110,10}})));

  OpenRESV.Electrical.Buses.Bus InverterBus2(V_b=352.01, angle_0=0)
    annotation (Placement(transformation(extent={{-80,-10},{-60,10}})));
  OpenRESV.Electrical.Sources.VoltageSourceReImInput voltageSourceReImInput1(V_b=
        353.920497030345)
    annotation (Placement(transformation(extent={{30,-10},{10,10}})));
  OpenRESV.Electrical.Buses.Bus GridBus1(V_b=353.92049703035, angle_0=0)
    annotation (Placement(transformation(extent={{-20,-10},{0,10}})));
  OpenRESV.Electrical.Branches.PwLine pwLine2(
    R=0,
    X=0.00000000001,
    G=0,
    B=0)
    annotation (Placement(transformation(extent={{-50,-10},{-30,10}})));
  Modelica.Blocks.Sources.CombiTimeTable V1(table=[0.080449,1; 0.21884,1;
        0.29703,1; 0.43621,1; 0.49696,1; 0.63682,1; 0.699,1; 0.82397,1;
        0.90103,0.99999; 1.0398,0.99999; 1.0868,1; 1.2117,1; 1.274,1;
        1.3367,1; 1.477,1; 1.617,1; 1.6789,1; 1.741,1; 1.8657,1; 1.9288,1;
        2.0859,1; 2.2104,1; 2.2735,1; 2.3352,1; 2.474,1; 2.6147,1; 2.677,
        1; 2.7397,1; 2.8824,0.99999; 3.0064,0.99999; 3.069,1; 3.2081,1;
        3.2709,1; 3.3179,1; 3.4565,1; 3.5356,1; 3.676,1; 3.7226,1; 3.8326,
        1; 3.9111,1; 4.0521,1; 4.1144,1; 4.2524,1; 4.3134,1; 4.4545,1;
        4.5308,1; 4.6704,1; 4.7307,1; 4.8368,1; 4.9147,1; 5.0407,1;
        5.1028,0.97569; 5.2442,0.97569; 5.3058,0.95954; 5.4162,0.95954;
        5.4784,0.95954; 5.6196,0.95954; 5.6836,0.95954; 5.8074,0.95954;
        5.8698,0.95953; 5.9327,0.95953; 6.0878,0.95955; 6.2448,0.95955;
        6.2911,0.95954; 6.4178,0.95954; 6.4794,0.95955; 6.6184,0.95955;
        6.6973,0.95956; 6.8212,0.95956; 6.8682,0.95957; 6.9301,0.95957;
        7.0712,0.95957; 7.1328,0.95956; 7.2721,0.95954; 7.3352,0.95954;
        7.46,0.95955; 7.5375,0.95955; 7.662,0.95956; 7.7239,0.95956;
        7.8483,0.95956; 7.9109,0.95955; 8.0519,0.95955; 8.1306,0.95952;
        8.2377,0.95952; 8.2999,0.95953; 8.4084,0.95953; 8.4695,0.95954;
        8.546,0.95954; 8.6856,0.95954; 8.7326,0.95954; 8.8568,0.95952;
        8.9189,0.95952; 9.0249,0.95952; 9.1028,0.95953; 9.2255,0.95953;
        9.2876,0.95952; 9.4126,0.95952; 9.4764,0.95952; 9.6322,0.95952;
        9.6933,0.95953; 9.8162,0.95953; 9.8778,0.95952; 9.9376,0.95952;
        10.077,0.95952; 10.215,0.95952; 10.279,0.95954; 10.341,0.95954;
        10.448,0.95952; 10.509,0.95952],
      extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint)
    annotation (Placement(transformation(extent={{100,0},{80,20}})));
  Modelica.Blocks.Sources.CombiTimeTable A1(table=[0.080449,-0.52401;
        0.21884,-0.52395; 0.29703,-0.52395; 0.43621,-0.52401; 0.49696,-0.52401;
        0.63682,-0.52401; 0.699,-0.52401; 0.82397,-0.52401; 0.90103,-0.52401;
        1.0398,-0.52401; 1.0868,-0.52401; 1.2117,-0.52401; 1.274,-0.52401;
        1.3367,-0.52401; 1.477,-0.52401; 1.617,-0.52401; 1.6789,-0.52401;
        1.741,-0.52401; 1.8657,-0.52401; 1.9288,-0.52401; 2.0859,-0.52401;
        2.2104,-0.52401; 2.2735,-0.52395; 2.3352,-0.52395; 2.474,-0.52401;
        2.6147,-0.52401; 2.677,-0.52401; 2.7397,-0.52401; 2.8824,-0.52401;
        3.0064,-0.52401; 3.069,-0.52401; 3.2081,-0.52401; 3.2709,-0.52401;
        3.3179,-0.52401; 3.4565,-0.52401; 3.5356,-0.52401; 3.676,-0.52401;
        3.7226,-0.52401; 3.8326,-0.52401; 3.9111,-0.52401; 4.0521,-0.52401;
        4.1144,-0.52401; 4.2524,-0.52401; 4.3134,-0.52401; 4.4545,-0.52401;
        4.5308,-0.52401; 4.6704,-0.52401; 4.7307,-0.52401; 4.8368,-0.52401;
        4.9147,-0.52401; 5.0407,-0.52459; 5.1028,-0.52459; 5.2442,-0.52401;
        5.3058,-0.52401; 5.4162,-0.52401; 5.4784,-0.52401; 5.6196,-0.52401;
        5.6836,-0.52401; 5.8074,-0.52401; 5.8698,-0.52401; 5.9327,-0.52401;
        6.0878,-0.52401; 6.2448,-0.52401; 6.2911,-0.52401; 6.4178,-0.52401;
        6.4794,-0.52401; 6.6184,-0.52401; 6.6973,-0.52401; 6.8212,-0.52401;
        6.8682,-0.52401; 6.9301,-0.52401; 7.0712,-0.52401; 7.1328,-0.52401;
        7.2721,-0.52401; 7.3352,-0.52401; 7.46,-0.52401; 7.5375,-0.52401;
        7.662,-0.52401; 7.7239,-0.52401; 7.8483,-0.52401; 7.9109,-0.52401;
        8.0519,-0.52401; 8.1306,-0.52401; 8.2377,-0.52401; 8.2999,-0.52401;
        8.4084,-0.52401; 8.4695,-0.52401; 8.546,-0.52401; 8.6856,-0.52401;
        8.7326,-0.52401; 8.8568,-0.52401; 8.9189,-0.52401; 9.0249,-0.52401;
        9.1028,-0.52401; 9.2255,-0.52401; 9.2876,-0.52401; 9.4126,-0.52401;
        9.4764,-0.52401; 9.6322,-0.52401; 9.6933,-0.52401; 9.8162,-0.52401;
        9.8778,-0.52401; 9.9376,-0.52401; 10.077,-0.52401; 10.215,-0.52401;
        10.279,-0.52401; 10.341,-0.52401; 10.448,-0.52401; 10.509,-0.52401],
      extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint)
    annotation (Placement(transformation(extent={{100,-20},{80,0}})));
  Modelica.Blocks.Math.Cos COS1
    annotation (Placement(transformation(extent={{60,-36},{52,-28}})));
  Modelica.Blocks.Math.Sin SIN1
    annotation (Placement(transformation(extent={{60,-24},{52,-16}})));
  Modelica.Blocks.Math.Product product3 annotation (Placement(transformation(
        extent={{-3,-3},{3,3}},
        rotation=180,
        origin={41,11})));
  Modelica.Blocks.Math.Product product4 annotation (Placement(transformation(
        extent={{-3,-3},{3,3}},
        rotation=180,
        origin={41,-9})));
  Modelica.Blocks.Sources.RealExpression PF_Simulation_REECA(y=pwLine1.P12/sqrt(
         pwLine2.P12^2 + pwLine2.Q12^2))
    annotation (Placement(transformation(extent={{100,194},{120,174}})));
  Modelica.Blocks.Math.Atan SIMULATION_IAng_REECA
    annotation (Placement(transformation(extent={{-48,-40},{-28,-20}})));
  OpenRESV.Electrical.Renewables.PSSE.PV pV2(
    V_b=353.92049703035,
    P_0(displayUnit="W") = EXPERIMENT_P.table[1, 2],
    Q_0(displayUnit="V.A") = EXPERIMENT_Q.table[1, 2],
    angle_0(displayUnit="rad"),
    QFunctionality=0,
    redeclare
      OpenRESV.Electrical.Renewables.PSSE.InverterInterface.REGCA1
      RenewableGenerator(Tg=0.01, Tfltr=0.01),
    redeclare
      OpenRESV.Electrical.Renewables.PSSE.ElectricalController.REECB1_modified
      RenewableController(
      Trv=0.01,
      dbd1=-0.0001,
      dbd2=0.0001,
      Kqv=0,
      Tp=0.01,
      Tiq=0.01,
      Tpord=0.01),
    redeclare OpenRESV.Electrical.Renewables.PSSE.PlantController.REPCA1
      PlantController) annotation (Placement(transformation(extent={{-130,
            -130},{-110,-110}})));
  OpenRESV.Electrical.Buses.Bus InverterBus3(V_b=353.92049703035, angle_0
      =0) annotation (Placement(transformation(extent={{-80,-130},{-60,-110}})));
  OpenRESV.Electrical.Sources.VoltageSourceReImInput voltageSourceReImInput2(V_b=
        353.920497030345)
    annotation (Placement(transformation(extent={{30,-130},{10,-110}})));
  OpenRESV.Electrical.Buses.Bus GridBus3(V_b=353.92049703035, angle_0=0)
    annotation (Placement(transformation(extent={{-20,-130},{0,-110}})));
  OpenRESV.Electrical.Branches.PwLine pwLine3(
    R=0,
    X=0.0000000000001,
    G=0,
    B=0) annotation (Placement(transformation(extent={{-50,-130},{-30,-110}})));
  Modelica.Blocks.Math.Atan SIMULATION_IAng_REECB_NO_Kqv
    annotation (Placement(transformation(extent={{-48,-160},{-28,-140}})));
  Modelica.Blocks.Sources.RealExpression SIMULATION_I_Ang_REECA_NO_Kqv(y=pwLine3.is.im
        /pwLine3.is.re)
    annotation (Placement(transformation(extent={{-88,-160},{-68,-140}})));
  Modelica.Blocks.Sources.CombiTimeTable V2(table=[0.080449,1; 0.21884,1;
        0.29703,1; 0.43621,1; 0.49696,1; 0.63682,1; 0.699,1; 0.82397,1;
        0.90103,0.99999; 1.0398,0.99999; 1.0868,1; 1.2117,1; 1.274,1;
        1.3367,1; 1.477,1; 1.617,1; 1.6789,1; 1.741,1; 1.8657,1; 1.9288,1;
        2.0859,1; 2.2104,1; 2.2735,1; 2.3352,1; 2.474,1; 2.6147,1; 2.677,
        1; 2.7397,1; 2.8824,0.99999; 3.0064,0.99999; 3.069,1; 3.2081,1;
        3.2709,1; 3.3179,1; 3.4565,1; 3.5356,1; 3.676,1; 3.7226,1; 3.8326,
        1; 3.9111,1; 4.0521,1; 4.1144,1; 4.2524,1; 4.3134,1; 4.4545,1;
        4.5308,1; 4.6704,1; 4.7307,1; 4.8368,1; 4.9147,1; 5.0407,1;
        5.1028,0.97569; 5.2442,0.97569; 5.3058,0.95954; 5.4162,0.95954;
        5.4784,0.95954; 5.6196,0.95954; 5.6836,0.95954; 5.8074,0.95954;
        5.8698,0.95953; 5.9327,0.95953; 6.0878,0.95955; 6.2448,0.95955;
        6.2911,0.95954; 6.4178,0.95954; 6.4794,0.95955; 6.6184,0.95955;
        6.6973,0.95956; 6.8212,0.95956; 6.8682,0.95957; 6.9301,0.95957;
        7.0712,0.95957; 7.1328,0.95956; 7.2721,0.95954; 7.3352,0.95954;
        7.46,0.95955; 7.5375,0.95955; 7.662,0.95956; 7.7239,0.95956;
        7.8483,0.95956; 7.9109,0.95955; 8.0519,0.95955; 8.1306,0.95952;
        8.2377,0.95952; 8.2999,0.95953; 8.4084,0.95953; 8.4695,0.95954;
        8.546,0.95954; 8.6856,0.95954; 8.7326,0.95954; 8.8568,0.95952;
        8.9189,0.95952; 9.0249,0.95952; 9.1028,0.95953; 9.2255,0.95953;
        9.2876,0.95952; 9.4126,0.95952; 9.4764,0.95952; 9.6322,0.95952;
        9.6933,0.95953; 9.8162,0.95953; 9.8778,0.95952; 9.9376,0.95952;
        10.077,0.95952; 10.215,0.95952; 10.279,0.95954; 10.341,0.95954;
        10.448,0.95952; 10.509,0.95952], extrapolation=Modelica.Blocks.Types.Extrapolation.LastTwoPoints)
    annotation (Placement(transformation(extent={{100,-120},{80,-100}})));
  Modelica.Blocks.Sources.CombiTimeTable A2(table=[0.080449,-0.52401;
        0.21884,-0.52395; 0.29703,-0.52395; 0.43621,-0.52401; 0.49696,-0.52401;
        0.63682,-0.52401; 0.699,-0.52401; 0.82397,-0.52401; 0.90103,-0.52401;
        1.0398,-0.52401; 1.0868,-0.52401; 1.2117,-0.52401; 1.274,-0.52401;
        1.3367,-0.52401; 1.477,-0.52401; 1.617,-0.52401; 1.6789,-0.52401;
        1.741,-0.52401; 1.8657,-0.52401; 1.9288,-0.52401; 2.0859,-0.52401;
        2.2104,-0.52401; 2.2735,-0.52395; 2.3352,-0.52395; 2.474,-0.52401;
        2.6147,-0.52401; 2.677,-0.52401; 2.7397,-0.52401; 2.8824,-0.52401;
        3.0064,-0.52401; 3.069,-0.52401; 3.2081,-0.52401; 3.2709,-0.52401;
        3.3179,-0.52401; 3.4565,-0.52401; 3.5356,-0.52401; 3.676,-0.52401;
        3.7226,-0.52401; 3.8326,-0.52401; 3.9111,-0.52401; 4.0521,-0.52401;
        4.1144,-0.52401; 4.2524,-0.52401; 4.3134,-0.52401; 4.4545,-0.52401;
        4.5308,-0.52401; 4.6704,-0.52401; 4.7307,-0.52401; 4.8368,-0.52401;
        4.9147,-0.52401; 5.0407,-0.52459; 5.1028,-0.52459; 5.2442,-0.52401;
        5.3058,-0.52401; 5.4162,-0.52401; 5.4784,-0.52401; 5.6196,-0.52401;
        5.6836,-0.52401; 5.8074,-0.52401; 5.8698,-0.52401; 5.9327,-0.52401;
        6.0878,-0.52401; 6.2448,-0.52401; 6.2911,-0.52401; 6.4178,-0.52401;
        6.4794,-0.52401; 6.6184,-0.52401; 6.6973,-0.52401; 6.8212,-0.52401;
        6.8682,-0.52401; 6.9301,-0.52401; 7.0712,-0.52401; 7.1328,-0.52401;
        7.2721,-0.52401; 7.3352,-0.52401; 7.46,-0.52401; 7.5375,-0.52401;
        7.662,-0.52401; 7.7239,-0.52401; 7.8483,-0.52401; 7.9109,-0.52401;
        8.0519,-0.52401; 8.1306,-0.52401; 8.2377,-0.52401; 8.2999,-0.52401;
        8.4084,-0.52401; 8.4695,-0.52401; 8.546,-0.52401; 8.6856,-0.52401;
        8.7326,-0.52401; 8.8568,-0.52401; 8.9189,-0.52401; 9.0249,-0.52401;
        9.1028,-0.52401; 9.2255,-0.52401; 9.2876,-0.52401; 9.4126,-0.52401;
        9.4764,-0.52401; 9.6322,-0.52401; 9.6933,-0.52401; 9.8162,-0.52401;
        9.8778,-0.52401; 9.9376,-0.52401; 10.077,-0.52401; 10.215,-0.52401;
        10.279,-0.52401; 10.341,-0.52401; 10.448,-0.52401; 10.509,-0.52401],
                                                          extrapolation=
        Modelica.Blocks.Types.Extrapolation.LastTwoPoints)
    annotation (Placement(transformation(extent={{100,-140},{80,-120}})));
  Modelica.Blocks.Math.Cos COS2
    annotation (Placement(transformation(extent={{60,-156},{52,-148}})));
  Modelica.Blocks.Math.Sin SIN2
    annotation (Placement(transformation(extent={{60,-144},{52,-136}})));
  Modelica.Blocks.Math.Product product5 annotation (Placement(transformation(
        extent={{-3,-3},{3,3}},
        rotation=180,
        origin={41,-109})));
  Modelica.Blocks.Math.Product product6 annotation (Placement(transformation(
        extent={{-3,-3},{3,3}},
        rotation=180,
        origin={41,-129})));
  Modelica.Blocks.Sources.CombiTimeTable EXPERIMENT_IMagnitude(table=[
        0.080449,3.0398; 0.21884,3.0398; 0.29703,3.0431; 0.43621,3.0431;
        0.49696,3.0431; 0.63682,3.0431; 0.699,3.0398; 0.82397,3.0398;
        0.90103,3.0398; 1.0398,3.0398; 1.0868,3.0398; 1.2117,3.0398;
        1.274,3.0431; 1.3367,3.0431; 1.477,3.0398; 1.617,3.0398; 1.6789,
        3.0431; 1.741,3.0431; 1.8657,3.0398; 1.9288,3.0398; 2.0859,3.0398;
        2.2104,3.0398; 2.2735,3.0398; 2.3352,3.0398; 2.474,3.0464; 2.6147,
        3.0464; 2.677,3.0431; 2.7397,3.0431; 2.8824,3.0398; 3.0064,3.0398;
        3.069,3.0398; 3.2081,3.0398; 3.2709,3.0431; 3.3179,3.0431; 3.4565,
        3.0431; 3.5356,3.0431; 3.676,3.0398; 3.7226,3.0398; 3.8326,3.0398;
        3.9111,3.0398; 4.0521,3.0398; 4.1144,3.0398; 4.2524,3.0398;
        4.3134,3.0398; 4.4545,3.0398; 4.5308,3.0398; 4.6704,3.0398;
        4.7307,3.0431; 4.8368,3.0431; 4.9147,3.0398; 5.0407,3.0398;
        5.1028,3.2265; 5.2442,3.2265; 5.3058,3.1932; 5.4162,3.1932;
        5.4784,3.1865; 5.6196,3.1865; 5.6836,3.1899; 5.8074,3.1899;
        5.8698,3.1832; 5.9327,3.1832; 6.0878,3.1865; 6.2448,3.1865;
        6.2911,3.1865; 6.4178,3.1865; 6.4794,3.1865; 6.6184,3.1865;
        6.6973,3.1899; 6.8212,3.1899; 6.8682,3.1865; 6.9301,3.1865;
        7.0712,3.1865; 7.1328,3.1865; 7.2721,3.1865; 7.3352,3.1865; 7.46,
        3.1865; 7.5375,3.1865; 7.662,3.1898; 7.7239,3.1898; 7.8483,3.1898;
        7.9109,3.1865; 8.0519,3.1865; 8.1306,3.1865; 8.2377,3.1865;
        8.2999,3.1899; 8.4084,3.1899; 8.4695,3.1865; 8.546,3.1865; 8.6856,
        3.1865; 8.7326,3.1865; 8.8568,3.1865; 8.9189,3.1865; 9.0249,
        3.1865; 9.1028,3.1898; 9.2255,3.1898; 9.2876,3.1865; 9.4126,
        3.1865; 9.4764,3.1865; 9.6322,3.1865; 9.6933,3.1865; 9.8162,
        3.1865; 9.8778,3.1865; 9.9376,3.1865; 10.077,3.1865; 10.215,
        3.1865; 10.279,3.1899; 10.341,3.1899; 10.448,3.1832; 10.509,
        3.1832], extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint)
    annotation (Placement(transformation(extent={{-8,180},{12,200}})));
  Modelica.Blocks.Sources.RealExpression PF_Simulation_REECB_NO_Kqv(y=pwLine3.P12
        /sqrt(pwLine3.P12^2 + pwLine3.Q12^2))
    annotation (Placement(transformation(extent={{100,186},{120,206}})));
  Modelica.Blocks.Sources.RealExpression SIMULATION_I_Mag_REECB(y=sqrt(pwLine1.p.ir
        ^2 + pwLine1.p.ii^2))
    annotation (Placement(transformation(extent={{-120,74},{-100,54}})));
  Modelica.Blocks.Sources.RealExpression SIMULATION_I_Ang_REECA(y=pwLine2.is.im/
        pwLine2.is.re)
    annotation (Placement(transformation(extent={{-88,-40},{-68,-20}})));
  Modelica.Blocks.Sources.RealExpression SIMULATION_I_Mag_REECA(y=sqrt(pwLine2.p.ir
        ^2 + pwLine2.p.ii^2))
    annotation (Placement(transformation(extent={{-120,-46},{-100,-66}})));
  Modelica.Blocks.Sources.RealExpression SIMULATION_I_Mag_REECB_NO_Kqv(y=sqrt(
        pwLine3.p.ir^2 + pwLine3.p.ii^2))
    annotation (Placement(transformation(extent={{-120,-160},{-100,-180}})));
  Modelica.Blocks.Sources.CombiTimeTable VOLTAGE(table=[0.080449,354.32;
        0.21884,354.32; 0.29703,354.33; 0.43621,354.33; 0.49696,354.33;
        0.63682,354.33; 0.699,354.32; 0.82397,354.32; 0.90103,354.32;
        1.0398,354.32; 1.0868,354.33; 1.2117,354.33; 1.274,354.33; 1.3367,
        354.33; 1.477,354.33; 1.617,354.33; 1.6789,354.33; 1.741,354.33;
        1.8657,354.32; 1.9288,354.32; 2.0859,354.32; 2.2104,354.33;
        2.2735,354.33; 2.3352,354.33; 2.474,354.33; 2.6147,354.33; 2.677,
        354.33; 2.7397,354.33; 2.8824,354.32; 3.0064,354.32; 3.069,354.33;
        3.2081,354.33; 3.2709,354.33; 3.3179,354.33; 3.4565,354.33;
        3.5356,354.33; 3.676,354.33; 3.7226,354.33; 3.8326,354.33; 3.9111,
        354.32; 4.0521,354.32; 4.1144,354.33; 4.2524,354.33; 4.3134,
        354.32; 4.4545,354.32; 4.5308,354.32; 4.6704,354.32; 4.7307,
        354.33; 4.8368,354.33; 4.9147,354.32; 5.0407,354.32; 5.1028,
        345.71; 5.2442,345.71; 5.3058,339.99; 5.4162,339.99; 5.4784,
        339.99; 5.6196,339.99; 5.6836,339.99; 5.8074,339.99; 5.8698,
        339.98; 5.9327,339.98; 6.0878,339.99; 6.2448,339.99; 6.2911,
        339.99; 6.4178,339.99; 6.4794,339.99; 6.6184,339.99; 6.6973,
        339.99; 6.8212,339.99; 6.8682,340; 6.9301,340; 7.0712,340; 7.1328,
        339.99; 7.2721,339.99; 7.3352,339.99; 7.46,339.99; 7.5375,339.99;
        7.662,339.99; 7.7239,339.99; 7.8483,339.99; 7.9109,339.99; 8.0519,
        339.99; 8.1306,339.98; 8.2377,339.98; 8.2999,339.98; 8.4084,
        339.98; 8.4695,339.99; 8.546,339.99; 8.6856,339.99; 8.7326,339.99;
        8.8568,339.98; 8.9189,339.98; 9.0249,339.98; 9.1028,339.98;
        9.2255,339.98; 9.2876,339.98; 9.4126,339.98; 9.4764,339.98;
        9.6322,339.98; 9.6933,339.98; 9.8162,339.98; 9.8778,339.98;
        9.9376,339.98; 10.077,339.98; 10.215,339.98; 10.279,339.99;
        10.341,339.99; 10.448,339.98; 10.509,339.98],
                        extrapolation=Modelica.Blocks.Types.Extrapolation.LastTwoPoints)
    annotation (Placement(transformation(extent={{-68,152},{-48,172}})));
  Modelica.Blocks.Sources.RealExpression Im1(y=sqrt(pwLine1.p.ir^2 +
        pwLine1.p.ii^2)*30000/VOLTAGE.table[1, 2])
    annotation (Placement(transformation(extent={{-120,56},{-100,36}})));
  Modelica.Blocks.Sources.RealExpression Im2(y=sqrt(pwLine2.p.ir^2 +
        pwLine2.p.ii^2)*SysData.S_b/VOLTAGE.table[1, 2])
    annotation (Placement(transformation(extent={{-120,-66},{-100,-86}})));
  Modelica.Blocks.Sources.RealExpression Im3(y=sqrt(pwLine3.p.ir^2 +
        pwLine3.p.ii^2)*SysData.S_b/VOLTAGE.table[1, 2])
    annotation (Placement(transformation(extent={{-120,-180},{-100,-200}})));
  Modelica.Blocks.Sources.RealExpression VR(y=VOLTAGE.y[1]*COS.y)
    annotation (Placement(transformation(extent={{-36,174},{-16,154}})));
  Modelica.Blocks.Sources.RealExpression VI(y=VOLTAGE.y[1]*SIN.y)
    annotation (Placement(transformation(extent={{-8,174},{12,154}})));
  Modelica.Blocks.Sources.RealExpression Ir1(y=Im1.y*cos(
        SIMULATION_IAng_REECB.y))
    annotation (Placement(transformation(extent={{-88,74},{-68,54}})));
  Modelica.Blocks.Sources.RealExpression Ii1(y=Im1.y*sin(
        SIMULATION_IAng_REECB.y))
    annotation (Placement(transformation(extent={{-88,56},{-68,36}})));
  Modelica.Blocks.Sources.RealExpression Ir2(y=Im2.y*cos(
        SIMULATION_IAng_REECA.y))
    annotation (Placement(transformation(extent={{-92,-46},{-72,-66}})));
  Modelica.Blocks.Sources.RealExpression Ii2(y=Im2.y*sin(
        SIMULATION_IAng_REECA.y))
    annotation (Placement(transformation(extent={{-92,-66},{-72,-86}})));
  Modelica.Blocks.Sources.RealExpression Ir3(y=Im3.y*cos(
        SIMULATION_IAng_REECB_NO_Kqv.y))
    annotation (Placement(transformation(extent={{-90,-160},{-70,-180}})));
  Modelica.Blocks.Sources.RealExpression Ii3(y=Im3.y*sin(
        SIMULATION_IAng_REECB_NO_Kqv.y))
    annotation (Placement(transformation(extent={{-90,-180},{-70,-200}})));
equation
  connect(pV1.pwPin,InverterBus1. p)
    annotation (Line(points={{-100,120},{-70,120}},color={0,0,255}));
  connect(GridBus2.p,voltageSourceReImInput. p)
    annotation (Line(points={{-10,120},{9,120}}, color={0,0,255}));
  connect(pwLine1.p,InverterBus1. p)
    annotation (Line(points={{-49,120},{-70,120}}, color={0,0,255}));
  connect(SIMULATION_I_Ang_REECB.y, SIMULATION_IAng_REECB.u)
    annotation (Line(points={{-67,84},{-46,84}}, color={0,0,127}));
  connect(A.y[1],COS. u) annotation (Line(points={{79,110},{78,110},{78,
          88},{60.8,88}},
                color={0,0,127}));
  connect(SIN.u, A.y[1]) annotation (Line(points={{60.8,100},{78,100},{78,
          110},{79,110}},
                color={0,0,127}));
  connect(voltageSourceReImInput.vRe, product1.y)
    annotation (Line(points={{32,124},{32,131},{37.7,131}},
                                                         color={0,0,127}));
  connect(voltageSourceReImInput.vIm, product2.y)
    annotation (Line(points={{32,116},{32,111},{37.7,111}},
                                                         color={0,0,127}));
  connect(COS.y, product1.u2) annotation (Line(points={{51.6,88},{44,88},
          {44,66},{112,66},{112,152},{44.6,152},{44.6,132.8}},
                                                   color={0,0,127}));
  connect(V.y[1], product1.u1) annotation (Line(points={{79,130},{50,130},
          {50,129.2},{44.6,129.2}},
                        color={0,0,127}));
  connect(SIN.y, product2.u1) annotation (Line(points={{51.6,100},{48,100},
          {48,109.2},{44.6,109.2}},
                        color={0,0,127}));
  connect(product2.u2, V.y[1])
    annotation (Line(points={{44.6,112.8},{79,112.8},{79,130}},
                                                             color={0,0,127}));
  connect(pwLine1.n, GridBus2.p)
    annotation (Line(points={{-31,120},{-10,120}},
                                               color={0,0,255}));
  connect(wind.pwPin, InverterBus2.p)
    annotation (Line(points={{-110,0},{-70,0}},     color={0,0,255}));
  connect(GridBus1.p, voltageSourceReImInput1.p)
    annotation (Line(points={{-10,0},{9,0}},    color={0,0,255}));
  connect(pwLine2.p,InverterBus2. p)
    annotation (Line(points={{-49,0},{-70,0}},     color={0,0,255}));
  connect(A1.y[1],COS1. u) annotation (Line(points={{79,-10},{78,-10},{78,
          -32},{60.8,-32}},
                      color={0,0,127}));
  connect(SIN1.u, A1.y[1]) annotation (Line(points={{60.8,-20},{78,-20},{
          78,-10},{79,-10}},
                     color={0,0,127}));
  connect(voltageSourceReImInput1.vRe, product3.y)
    annotation (Line(points={{32,4},{32,11},{37.7,11}},     color={0,0,127}));
  connect(voltageSourceReImInput1.vIm, product4.y)
    annotation (Line(points={{32,-4},{32,-9},{37.7,-9}},    color={0,0,127}));
  connect(COS1.y, product3.u2) annotation (Line(points={{51.6,-32},{44,
          -32},{44,-54},{112,-54},{112,32},{44.6,32},{44.6,12.8}},
                                                               color={0,0,127}));
  connect(V1.y[1], product3.u1) annotation (Line(points={{79,10},{50,10},
          {50,9.2},{44.6,9.2}},
                         color={0,0,127}));
  connect(SIN1.y, product4.u1) annotation (Line(points={{51.6,-20},{48,
          -20},{48,-10.8},{44.6,-10.8}},
                                color={0,0,127}));
  connect(product4.u2, V1.y[1]) annotation (Line(points={{44.6,-7.2},{79,
          -7.2},{79,10}},
                     color={0,0,127}));
  connect(pwLine2.n, GridBus1.p)
    annotation (Line(points={{-31,0},{-10,0}},   color={0,0,255}));
  connect(pV2.pwPin,InverterBus3. p)
    annotation (Line(points={{-110,-120},{-70,-120}},
                                                   color={0,0,255}));
  connect(GridBus3.p, voltageSourceReImInput2.p)
    annotation (Line(points={{-10,-120},{9,-120}},color={0,0,255}));
  connect(pwLine3.p,InverterBus3. p)
    annotation (Line(points={{-49,-120},{-70,-120}},
                                                   color={0,0,255}));
  connect(SIMULATION_I_Ang_REECA_NO_Kqv.y, SIMULATION_IAng_REECB_NO_Kqv.u)
    annotation (Line(points={{-67,-150},{-50,-150}}, color={0,0,127}));
  connect(A2.y[1],COS2. u) annotation (Line(points={{79,-130},{78,-130},{
          78,-152},{60.8,-152}},
                              color={0,0,127}));
  connect(SIN2.u, A2.y[1]) annotation (Line(points={{60.8,-140},{78,-140},
          {78,-130},{79,-130}},color={0,0,127}));
  connect(voltageSourceReImInput2.vRe, product5.y) annotation (Line(points={{32,-116},
          {32,-109},{37.7,-109}},            color={0,0,127}));
  connect(voltageSourceReImInput2.vIm, product6.y) annotation (Line(points={{32,-124},
          {32,-129},{37.7,-129}},            color={0,0,127}));
  connect(COS2.y, product5.u2) annotation (Line(points={{51.6,-152},{44,
          -152},{44,-174},{112,-174},{112,-88},{44.6,-88},{44.6,-107.2}},
        color={0,0,127}));
  connect(V2.y[1], product5.u1) annotation (Line(points={{79,-110},{50,
          -110},{50,-110.8},{44.6,-110.8}},
                                      color={0,0,127}));
  connect(SIN2.y, product6.u1) annotation (Line(points={{51.6,-140},{48,
          -140},{48,-130.8},{44.6,-130.8}}, color={0,0,127}));
  connect(product6.u2, V2.y[1]) annotation (Line(points={{44.6,-127.2},{
          79,-127.2},{79,-110}},
                              color={0,0,127}));
  connect(pwLine3.n,GridBus3. p)
    annotation (Line(points={{-31,-120},{-10,-120}},
                                               color={0,0,255}));
  connect(SIMULATION_I_Ang_REECA.y, SIMULATION_IAng_REECA.u)
    annotation (Line(points={{-67,-30},{-50,-30}}, color={0,0,127}));
  annotation (Icon(coordinateSystem(preserveAspectRatio=false, extent={{-160,-240},
            {160,240}})),                                        Diagram(
        coordinateSystem(preserveAspectRatio=false, extent={{-160,-240},{160,240}}),
        graphics={
        Text(
          extent={{-171,85},{171,-85}},
          textColor={238,46,47},
          textString="Experiment Voltage Data Replay",
          origin={133,-11},
          rotation=90),
        Rectangle(
          extent={{70,166},{154,-186}},
          lineColor={238,46,47},
          pattern=LinePattern.Dash,
          lineThickness=0.5),
        Rectangle(
          extent={{-154,154},{-86,102}},
          lineColor={238,46,47},
          pattern=LinePattern.Dash,
          lineThickness=0.5),
        Text(
          extent={{-152,152},{-88,136}},
          textColor={238,46,47},
          textString="PV Model with 
Modified REECB",
          textStyle={TextStyle.Bold}),
        Text(
          extent={{-154,32},{-90,16}},
          textColor={238,46,47},
          textStyle={TextStyle.Bold},
          textString="PV Model with 
Modified REECA"),
        Rectangle(
          extent={{-156,34},{-88,-18}},
          lineColor={238,46,47},
          pattern=LinePattern.Dash,
          lineThickness=0.5),
        Text(
          extent={{-156,-92},{-92,-108}},
          textColor={238,46,47},
          textStyle={TextStyle.Bold},
          textString="PV Model with 
Original REECB"),
        Rectangle(
          extent={{-158,-90},{-90,-142}},
          lineColor={238,46,47},
          pattern=LinePattern.Dash,
          lineThickness=0.5)}),
    experiment(
      StopTime=7.8,
      __Dymola_NumberOfIntervals=1000,
      __Dymola_Algorithm="Dassl"),
    Documentation(info="<html>
<p> Run the simulation for t=10.60 seconds. </p>
</html>"));
end VoltageVariation_350_to_335_V;
