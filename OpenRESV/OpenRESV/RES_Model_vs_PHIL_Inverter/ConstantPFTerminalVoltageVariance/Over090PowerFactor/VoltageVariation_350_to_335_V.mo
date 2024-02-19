within OpenRESV.RES_Model_vs_PHIL_Inverter.ConstantPFTerminalVoltageVariance.Over090PowerFactor;
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
  Modelica.Blocks.Sources.CombiTimeTable EXPERIMENT_P(table=[0.15595,
        905.43; 0.21738,904.94; 0.26377,904.94; 0.37103,904.98; 0.41692,
        904.98; 0.52794,904.98; 0.60443,903.83; 0.7304,903.83; 0.7925,
        905.18; 0.85511,905.18; 0.96638,904.83; 1.0134,904.82; 1.1664,
        904.82; 1.2144,904.46; 1.3533,904.46; 1.4149,904.46; 1.5512,
        904.46; 1.6119,904.84; 1.6588,904.84; 1.7829,903.7; 1.8598,903.7;
        1.9813,904.46; 2.0587,904.46; 2.1831,904.56; 2.2457,904.56;
        2.3707,905.18; 2.4331,904.14; 2.5875,903.52; 2.6341,903.5; 2.7594,
        903.38; 2.8381,905.5; 2.9624,905.67; 3.0084,904.63; 3.1654,904.63;
        3.2295,904.13; 3.3696,903.33; 3.4321,905.43; 3.5882,905.93;
        3.6507,904.88; 3.7601,905.2; 3.8388,905.19; 3.9631,904.83; 4.0253,
        905.89; 4.1653,906.17; 4.2273,904.05; 4.3528,904.05; 4.4152,904.8;
        4.5548,904.8; 4.6318,903.74; 4.7567,903.55; 4.8364,905.66; 4.9596,
        906.28; 5.0206,904.18; 5.1612,904.18; 5.2075,904.71; 5.3317,
        904.71; 5.394,904.56; 5.5347,904.56; 5.6134,903.81; 5.7384,903.81;
        5.8014,905.7; 5.8634,905.7; 5.9729,904.14; 6.0202,904.14; 6.1439,
        904.11; 6.2062,905.51; 6.3473,905.54; 6.395,905.09; 6.4579,905.09;
        6.5979,904.67; 6.6451,904.67; 6.7716,905.13; 6.8191,904.07;
        6.9411,904.07; 7.0031,903.88; 7.1558,903.88; 7.2172,904.55;
        7.3404,904.58; 7.4023,920.21; 7.4494,920.21; 7.6037,916.5; 7.7287,
        918.2; 7.7912,903.76; 7.8382,903.76; 7.9617,903.87; 8.0087,903.86;
        8.147,903.86; 8.1943,902.7; 8.3319,902.7; 8.3941,903.75; 8.4563,
        903.75; 8.5963,903.45; 8.6578,903.45; 8.7826,904.12; 8.8456,
        904.12; 8.9542,903.63; 9.032,903.64; 9.172,903.81; 9.2192,902.82;
        9.3411,902.82; 9.4026,903.87; 9.4635,903.87; 9.6036,903.19;
        9.6651,903.19; 9.7753,903.67; 9.8352,903.67],
                        extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint)
    annotation (Placement(transformation(extent={{-68,180},{-48,200}})));
  Modelica.Blocks.Sources.CombiTimeTable EXPERIMENT_Q(table=[0.15595,
        480.67; 0.21738,479.11; 0.26377,479.11; 0.37103,479; 0.41692,479;
        0.52794,479; 0.60443,478.62; 0.7304,478.62; 0.7925,478.69;
        0.85511,478.69; 0.96638,479.32; 1.0134,479.32; 1.1664,479.32;
        1.2144,480; 1.3533,480; 1.4149,479.94; 1.5512,479.94; 1.6119,
        479.32; 1.6588,479.32; 1.7829,478.88; 1.8598,478.88; 1.9813,480;
        2.0587,480; 2.1831,479.79; 2.2457,479.79; 2.3707,478.63; 2.4331,
        478.1; 2.5875,479.25; 2.6341,479.24; 2.7594,479.45; 2.8381,480.57;
        2.9624,480.26; 3.0084,479.69; 3.1654,479.69; 3.2295,478.06;
        3.3696,479.52; 3.4321,480.68; 3.5882,479.78; 3.6507,479.21;
        3.7601,478.58; 3.8388,478.57; 3.9631,479.25; 4.0253,479.84;
        4.1653,479.32; 4.2273,478.16; 4.3528,478.16; 4.4152,479.37;
        4.5548,479.37; 4.6318,478.77; 4.7567,479.13; 4.8364,480.25;
        4.9596,479.1; 5.0206,477.98; 5.1612,477.98; 5.2075,479.53; 5.3317,
        479.53; 5.394,479.79; 5.5347,479.79; 5.6134,478.67; 5.7384,478.67;
        5.8014,480.15; 5.8634,480.15; 5.9729,478.06; 6.0202,478.06;
        6.1439,478.11; 6.2062,480.51; 6.3473,480.46; 6.395,478.79; 6.4579,
        478.79; 6.5979,479.58; 6.6451,479.58; 6.7716,478.74; 6.8191,
        478.19; 6.9411,478.19; 7.0031,478.5; 7.1558,478.5; 7.2172,479.78;
        7.3404,479.73; 7.4023,488.44; 7.4494,488.44; 7.6037,495.4; 7.7287,
        496.29; 7.7912,493.93; 7.8382,493.93; 7.9617,493.73; 8.0087,
        493.72; 8.147,493.72; 8.1943,493.48; 8.3319,493.48; 8.3941,493.99;
        8.4563,493.99; 8.5963,494.52; 8.6578,494.52; 8.7826,493.31;
        8.8456,493.31; 8.9542,494.21; 9.032,494.21; 9.172,493.9; 9.2192,
        493.34; 9.3411,493.34; 9.4026,493.8; 9.4635,493.8; 9.6036,495.06;
        9.6651,495.06; 9.7753,494.15; 9.8352,494.15],
                 extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint)
    annotation (Placement(transformation(extent={{-38,180},{-18,200}})));
  Modelica.Blocks.Sources.CombiTimeTable V(table=[0.15595,1; 0.21738,1;
        0.26377,1; 0.37103,0.99999; 0.41692,0.99999; 0.52794,0.99999;
        0.60443,0.99998; 0.7304,0.99998; 0.7925,1; 0.85511,1; 0.96638,1;
        1.0134,1; 1.1664,1; 1.2144,1; 1.3533,1; 1.4149,0.99999; 1.5512,
        0.99999; 1.6119,1; 1.6588,1; 1.7829,0.99999; 1.8598,0.99999;
        1.9813,1; 2.0587,1; 2.1831,0.99999; 2.2457,0.99999; 2.3707,
        0.99999; 2.4331,1; 2.5875,1; 2.6341,0.99997; 2.7594,0.99997;
        2.8381,1; 2.9624,1; 3.0084,1; 3.1654,1; 3.2295,0.99997; 3.3696,
        0.99997; 3.4321,1; 3.5882,1; 3.6507,0.99999; 3.7601,0.99999;
        3.8388,0.99998; 3.9631,0.99998; 4.0253,1; 4.1653,1; 4.2273,
        0.99996; 4.3528,0.99996; 4.4152,1; 4.5548,1; 4.6318,0.99997;
        4.7567,0.99997; 4.8364,1; 4.9596,1; 5.0206,0.99998; 5.1612,
        0.99998; 5.2075,1; 5.3317,1; 5.394,0.99999; 5.5347,0.99999;
        5.6134,0.99998; 5.7384,0.99998; 5.8014,0.99999; 5.8634,0.99999;
        5.9729,0.99998; 6.0202,0.99998; 6.1439,0.99998; 6.2062,1; 6.3473,
        1; 6.395,0.99998; 6.4579,0.99998; 6.5979,0.99999; 6.6451,0.99999;
        6.7716,0.99999; 6.8191,0.99998; 6.9411,0.99998; 7.0031,0.99996;
        7.1558,0.99996; 7.2172,0.99998; 7.3404,0.99998; 7.4023,0.99903;
        7.4494,0.99903; 7.6037,0.99903; 7.7287,0.95961; 7.7912,0.9594;
        7.8382,0.9594; 7.9617,0.9594; 8.0087,0.95939; 8.147,0.95939;
        8.1943,0.95939; 8.3319,0.95939; 8.3941,0.95941; 8.4563,0.95941;
        8.5963,0.95941; 8.6578,0.95941; 8.7826,0.95941; 8.8456,0.95941;
        8.9542,0.95941; 9.032,0.95943; 9.172,0.95943; 9.2192,0.95942;
        9.3411,0.95942; 9.4026,0.95943; 9.4635,0.95943; 9.6036,0.95944;
        9.6651,0.95944; 9.7753,0.95942; 9.8352,0.95942],
      extrapolation=Modelica.Blocks.Types.Extrapolation.LastTwoPoints)
    annotation (Placement(transformation(extent={{100,120},{80,140}})));
  Modelica.Blocks.Sources.CombiTimeTable A(table=[0.15595,-0.52401;
        0.21738,-0.52401; 0.26377,-0.52401; 0.37103,-0.52401; 0.41692,-0.52401;
        0.52794,-0.52401; 0.60443,-0.52401; 0.7304,-0.52401; 0.7925,-0.52401;
        0.85511,-0.52401; 0.96638,-0.52401; 1.0134,-0.52401; 1.1664,-0.52401;
        1.2144,-0.52401; 1.3533,-0.52401; 1.4149,-0.52401; 1.5512,-0.52401;
        1.6119,-0.52401; 1.6588,-0.52401; 1.7829,-0.52401; 1.8598,-0.52401;
        1.9813,-0.52401; 2.0587,-0.52401; 2.1831,-0.52401; 2.2457,-0.52401;
        2.3707,-0.52401; 2.4331,-0.52401; 2.5875,-0.52401; 2.6341,-0.52401;
        2.7594,-0.52401; 2.8381,-0.52401; 2.9624,-0.52401; 3.0084,-0.52401;
        3.1654,-0.52401; 3.2295,-0.52401; 3.3696,-0.52395; 3.4321,-0.52395;
        3.5882,-0.52401; 3.6507,-0.52401; 3.7601,-0.52401; 3.8388,-0.52401;
        3.9631,-0.52395; 4.0253,-0.52395; 4.1653,-0.52401; 4.2273,-0.52401;
        4.3528,-0.52401; 4.4152,-0.52401; 4.5548,-0.52401; 4.6318,-0.52401;
        4.7567,-0.52401; 4.8364,-0.52401; 4.9596,-0.52401; 5.0206,-0.52401;
        5.1612,-0.52401; 5.2075,-0.52401; 5.3317,-0.52401; 5.394,-0.52401;
        5.5347,-0.52401; 5.6134,-0.52401; 5.7384,-0.52401; 5.8014,-0.52401;
        5.8634,-0.52401; 5.9729,-0.52401; 6.0202,-0.52401; 6.1439,-0.52395;
        6.2062,-0.52395; 6.3473,-0.52401; 6.395,-0.52401; 6.4579,-0.52401;
        6.5979,-0.52401; 6.6451,-0.52401; 6.7716,-0.52401; 6.8191,-0.52401;
        6.9411,-0.52401; 7.0031,-0.52401; 7.1558,-0.52401; 7.2172,-0.52401;
        7.3404,-0.52406; 7.4023,-0.52406; 7.4494,-0.52406; 7.6037,-0.52435;
        7.7287,-0.52435; 7.7912,-0.52389; 7.8382,-0.52389; 7.9617,-0.52401;
        8.0087,-0.52401; 8.147,-0.52401; 8.1943,-0.52401; 8.3319,-0.52401;
        8.3941,-0.52401; 8.4563,-0.52401; 8.5963,-0.52401; 8.6578,-0.52401;
        8.7826,-0.52401; 8.8456,-0.52401; 8.9542,-0.52401; 9.032,-0.52401;
        9.172,-0.52401; 9.2192,-0.52401; 9.3411,-0.52401; 9.4026,-0.52401;
        9.4635,-0.52401; 9.6036,-0.52401; 9.6651,-0.52401; 9.7753,-0.52401;
        9.8352,-0.52401],
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
  Modelica.Blocks.Sources.CombiTimeTable EXPERIMENT_IAngle(table=[0.15595,
        -1.0121; 0.21738,-1.0109; 0.26377,-1.0109; 0.37103,-1.0108;
        0.41692,-1.0108; 0.52794,-1.0108; 0.60443,-1.011; 0.7304,-1.011;
        0.7925,-1.0105; 0.85511,-1.0105; 0.96638,-1.0112; 1.0134,-1.0112;
        1.1664,-1.0112; 1.2144,-1.0119; 1.3533,-1.0119; 1.4149,-1.0119;
        1.5512,-1.0119; 1.6119,-1.0112; 1.6588,-1.0112; 1.7829,-1.0113;
        1.8598,-1.0113; 1.9813,-1.0119; 2.0587,-1.0119; 2.1831,-1.0117;
        2.2457,-1.0117; 2.3707,-1.0104; 2.4331,-1.0104; 2.5875,-1.0117;
        2.6341,-1.0117; 2.7594,-1.0119; 2.8381,-1.0119; 2.9624,-1.0116;
        3.0084,-1.0116; 3.1654,-1.0116; 3.2295,-1.0104; 3.3696,-1.012;
        3.4321,-1.012; 3.5882,-1.0111; 3.6507,-1.011; 3.7601,-1.0103;
        3.8388,-1.0103; 3.9631,-1.011; 4.0253,-1.0111; 4.1653,-1.0105;
        4.2273,-1.0105; 4.3528,-1.0105; 4.4152,-1.0112; 4.5548,-1.0112;
        4.6318,-1.0112; 4.7567,-1.0116; 4.8364,-1.0116; 4.9596,-1.0103;
        5.0206,-1.0103; 5.1612,-1.0103; 5.2075,-1.0114; 5.3317,-1.0114;
        5.394,-1.0117; 5.5347,-1.0117; 5.6134,-1.0111; 5.7384,-1.0111;
        5.8014,-1.0115; 5.8634,-1.0115; 5.9729,-1.0104; 6.0202,-1.0104;
        6.1439,-1.0104; 6.2062,-1.0118; 6.3473,-1.0118; 6.395,-1.0106;
        6.4579,-1.0106; 6.5979,-1.0115; 6.6451,-1.0115; 6.7716,-1.0105;
        6.8191,-1.0105; 6.9411,-1.0105; 7.0031,-1.0109; 7.1558,-1.0109;
        7.2172,-1.0117; 7.3404,-1.0117; 7.4023,-1.012; 7.4494,-1.012;
        7.6037,-1.0199; 7.7287,-1.0199; 7.7912,-1.0241; 7.8382,-1.0241;
        7.9617,-1.024; 8.0087,-1.024; 8.147,-1.024; 8.1943,-1.0243;
        8.3319,-1.0243; 8.3941,-1.0242; 8.4563,-1.0242; 8.5963,-1.0248;
        8.6578,-1.0248; 8.7826,-1.0235; 8.8456,-1.0235; 8.9542,-1.0245;
        9.032,-1.0245; 9.172,-1.0241; 9.2192,-1.0241; 9.3411,-1.0241;
        9.4026,-1.024; 9.4635,-1.024; 9.6036,-1.0254; 9.6651,-1.0254;
        9.7753,-1.0244; 9.8352,-1.0244], extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint)
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
  Modelica.Blocks.Sources.CombiTimeTable V1(table=[0.15595,1; 0.21738,1;
        0.26377,1; 0.37103,0.99999; 0.41692,0.99999; 0.52794,0.99999;
        0.60443,0.99998; 0.7304,0.99998; 0.7925,1; 0.85511,1; 0.96638,1;
        1.0134,1; 1.1664,1; 1.2144,1; 1.3533,1; 1.4149,0.99999; 1.5512,
        0.99999; 1.6119,1; 1.6588,1; 1.7829,0.99999; 1.8598,0.99999;
        1.9813,1; 2.0587,1; 2.1831,0.99999; 2.2457,0.99999; 2.3707,
        0.99999; 2.4331,1; 2.5875,1; 2.6341,0.99997; 2.7594,0.99997;
        2.8381,1; 2.9624,1; 3.0084,1; 3.1654,1; 3.2295,0.99997; 3.3696,
        0.99997; 3.4321,1; 3.5882,1; 3.6507,0.99999; 3.7601,0.99999;
        3.8388,0.99998; 3.9631,0.99998; 4.0253,1; 4.1653,1; 4.2273,
        0.99996; 4.3528,0.99996; 4.4152,1; 4.5548,1; 4.6318,0.99997;
        4.7567,0.99997; 4.8364,1; 4.9596,1; 5.0206,0.99998; 5.1612,
        0.99998; 5.2075,1; 5.3317,1; 5.394,0.99999; 5.5347,0.99999;
        5.6134,0.99998; 5.7384,0.99998; 5.8014,0.99999; 5.8634,0.99999;
        5.9729,0.99998; 6.0202,0.99998; 6.1439,0.99998; 6.2062,1; 6.3473,
        1; 6.395,0.99998; 6.4579,0.99998; 6.5979,0.99999; 6.6451,0.99999;
        6.7716,0.99999; 6.8191,0.99998; 6.9411,0.99998; 7.0031,0.99996;
        7.1558,0.99996; 7.2172,0.99998; 7.3404,0.99998; 7.4023,0.99903;
        7.4494,0.99903; 7.6037,0.99903; 7.7287,0.95961; 7.7912,0.9594;
        7.8382,0.9594; 7.9617,0.9594; 8.0087,0.95939; 8.147,0.95939;
        8.1943,0.95939; 8.3319,0.95939; 8.3941,0.95941; 8.4563,0.95941;
        8.5963,0.95941; 8.6578,0.95941; 8.7826,0.95941; 8.8456,0.95941;
        8.9542,0.95941; 9.032,0.95943; 9.172,0.95943; 9.2192,0.95942;
        9.3411,0.95942; 9.4026,0.95943; 9.4635,0.95943; 9.6036,0.95944;
        9.6651,0.95944; 9.7753,0.95942; 9.8352,0.95942],
      extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint)
    annotation (Placement(transformation(extent={{100,0},{80,20}})));
  Modelica.Blocks.Sources.CombiTimeTable A1(table=[0.15595,-0.52401;
        0.21738,-0.52401; 0.26377,-0.52401; 0.37103,-0.52401; 0.41692,-0.52401;
        0.52794,-0.52401; 0.60443,-0.52401; 0.7304,-0.52401; 0.7925,-0.52401;
        0.85511,-0.52401; 0.96638,-0.52401; 1.0134,-0.52401; 1.1664,-0.52401;
        1.2144,-0.52401; 1.3533,-0.52401; 1.4149,-0.52401; 1.5512,-0.52401;
        1.6119,-0.52401; 1.6588,-0.52401; 1.7829,-0.52401; 1.8598,-0.52401;
        1.9813,-0.52401; 2.0587,-0.52401; 2.1831,-0.52401; 2.2457,-0.52401;
        2.3707,-0.52401; 2.4331,-0.52401; 2.5875,-0.52401; 2.6341,-0.52401;
        2.7594,-0.52401; 2.8381,-0.52401; 2.9624,-0.52401; 3.0084,-0.52401;
        3.1654,-0.52401; 3.2295,-0.52401; 3.3696,-0.52395; 3.4321,-0.52395;
        3.5882,-0.52401; 3.6507,-0.52401; 3.7601,-0.52401; 3.8388,-0.52401;
        3.9631,-0.52395; 4.0253,-0.52395; 4.1653,-0.52401; 4.2273,-0.52401;
        4.3528,-0.52401; 4.4152,-0.52401; 4.5548,-0.52401; 4.6318,-0.52401;
        4.7567,-0.52401; 4.8364,-0.52401; 4.9596,-0.52401; 5.0206,-0.52401;
        5.1612,-0.52401; 5.2075,-0.52401; 5.3317,-0.52401; 5.394,-0.52401;
        5.5347,-0.52401; 5.6134,-0.52401; 5.7384,-0.52401; 5.8014,-0.52401;
        5.8634,-0.52401; 5.9729,-0.52401; 6.0202,-0.52401; 6.1439,-0.52395;
        6.2062,-0.52395; 6.3473,-0.52401; 6.395,-0.52401; 6.4579,-0.52401;
        6.5979,-0.52401; 6.6451,-0.52401; 6.7716,-0.52401; 6.8191,-0.52401;
        6.9411,-0.52401; 7.0031,-0.52401; 7.1558,-0.52401; 7.2172,-0.52401;
        7.3404,-0.52406; 7.4023,-0.52406; 7.4494,-0.52406; 7.6037,-0.52435;
        7.7287,-0.52435; 7.7912,-0.52389; 7.8382,-0.52389; 7.9617,-0.52401;
        8.0087,-0.52401; 8.147,-0.52401; 8.1943,-0.52401; 8.3319,-0.52401;
        8.3941,-0.52401; 8.4563,-0.52401; 8.5963,-0.52401; 8.6578,-0.52401;
        8.7826,-0.52401; 8.8456,-0.52401; 8.9542,-0.52401; 9.032,-0.52401;
        9.172,-0.52401; 9.2192,-0.52401; 9.3411,-0.52401; 9.4026,-0.52401;
        9.4635,-0.52401; 9.6036,-0.52401; 9.6651,-0.52401; 9.7753,-0.52401;
        9.8352,-0.52401],
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
  Modelica.Blocks.Sources.CombiTimeTable V2(table=[0.15595,1; 0.21738,1;
        0.26377,1; 0.37103,0.99999; 0.41692,0.99999; 0.52794,0.99999;
        0.60443,0.99998; 0.7304,0.99998; 0.7925,1; 0.85511,1; 0.96638,1;
        1.0134,1; 1.1664,1; 1.2144,1; 1.3533,1; 1.4149,0.99999; 1.5512,
        0.99999; 1.6119,1; 1.6588,1; 1.7829,0.99999; 1.8598,0.99999;
        1.9813,1; 2.0587,1; 2.1831,0.99999; 2.2457,0.99999; 2.3707,
        0.99999; 2.4331,1; 2.5875,1; 2.6341,0.99997; 2.7594,0.99997;
        2.8381,1; 2.9624,1; 3.0084,1; 3.1654,1; 3.2295,0.99997; 3.3696,
        0.99997; 3.4321,1; 3.5882,1; 3.6507,0.99999; 3.7601,0.99999;
        3.8388,0.99998; 3.9631,0.99998; 4.0253,1; 4.1653,1; 4.2273,
        0.99996; 4.3528,0.99996; 4.4152,1; 4.5548,1; 4.6318,0.99997;
        4.7567,0.99997; 4.8364,1; 4.9596,1; 5.0206,0.99998; 5.1612,
        0.99998; 5.2075,1; 5.3317,1; 5.394,0.99999; 5.5347,0.99999;
        5.6134,0.99998; 5.7384,0.99998; 5.8014,0.99999; 5.8634,0.99999;
        5.9729,0.99998; 6.0202,0.99998; 6.1439,0.99998; 6.2062,1; 6.3473,
        1; 6.395,0.99998; 6.4579,0.99998; 6.5979,0.99999; 6.6451,0.99999;
        6.7716,0.99999; 6.8191,0.99998; 6.9411,0.99998; 7.0031,0.99996;
        7.1558,0.99996; 7.2172,0.99998; 7.3404,0.99998; 7.4023,0.99903;
        7.4494,0.99903; 7.6037,0.99903; 7.7287,0.95961; 7.7912,0.9594;
        7.8382,0.9594; 7.9617,0.9594; 8.0087,0.95939; 8.147,0.95939;
        8.1943,0.95939; 8.3319,0.95939; 8.3941,0.95941; 8.4563,0.95941;
        8.5963,0.95941; 8.6578,0.95941; 8.7826,0.95941; 8.8456,0.95941;
        8.9542,0.95941; 9.032,0.95943; 9.172,0.95943; 9.2192,0.95942;
        9.3411,0.95942; 9.4026,0.95943; 9.4635,0.95943; 9.6036,0.95944;
        9.6651,0.95944; 9.7753,0.95942; 9.8352,0.95942],
                                         extrapolation=Modelica.Blocks.Types.Extrapolation.LastTwoPoints)
    annotation (Placement(transformation(extent={{100,-120},{80,-100}})));
  Modelica.Blocks.Sources.CombiTimeTable A2(table=[0.15595,-0.52401;
        0.21738,-0.52401; 0.26377,-0.52401; 0.37103,-0.52401; 0.41692,-0.52401;
        0.52794,-0.52401; 0.60443,-0.52401; 0.7304,-0.52401; 0.7925,-0.52401;
        0.85511,-0.52401; 0.96638,-0.52401; 1.0134,-0.52401; 1.1664,-0.52401;
        1.2144,-0.52401; 1.3533,-0.52401; 1.4149,-0.52401; 1.5512,-0.52401;
        1.6119,-0.52401; 1.6588,-0.52401; 1.7829,-0.52401; 1.8598,-0.52401;
        1.9813,-0.52401; 2.0587,-0.52401; 2.1831,-0.52401; 2.2457,-0.52401;
        2.3707,-0.52401; 2.4331,-0.52401; 2.5875,-0.52401; 2.6341,-0.52401;
        2.7594,-0.52401; 2.8381,-0.52401; 2.9624,-0.52401; 3.0084,-0.52401;
        3.1654,-0.52401; 3.2295,-0.52401; 3.3696,-0.52395; 3.4321,-0.52395;
        3.5882,-0.52401; 3.6507,-0.52401; 3.7601,-0.52401; 3.8388,-0.52401;
        3.9631,-0.52395; 4.0253,-0.52395; 4.1653,-0.52401; 4.2273,-0.52401;
        4.3528,-0.52401; 4.4152,-0.52401; 4.5548,-0.52401; 4.6318,-0.52401;
        4.7567,-0.52401; 4.8364,-0.52401; 4.9596,-0.52401; 5.0206,-0.52401;
        5.1612,-0.52401; 5.2075,-0.52401; 5.3317,-0.52401; 5.394,-0.52401;
        5.5347,-0.52401; 5.6134,-0.52401; 5.7384,-0.52401; 5.8014,-0.52401;
        5.8634,-0.52401; 5.9729,-0.52401; 6.0202,-0.52401; 6.1439,-0.52395;
        6.2062,-0.52395; 6.3473,-0.52401; 6.395,-0.52401; 6.4579,-0.52401;
        6.5979,-0.52401; 6.6451,-0.52401; 6.7716,-0.52401; 6.8191,-0.52401;
        6.9411,-0.52401; 7.0031,-0.52401; 7.1558,-0.52401; 7.2172,-0.52401;
        7.3404,-0.52406; 7.4023,-0.52406; 7.4494,-0.52406; 7.6037,-0.52435;
        7.7287,-0.52435; 7.7912,-0.52389; 7.8382,-0.52389; 7.9617,-0.52401;
        8.0087,-0.52401; 8.147,-0.52401; 8.1943,-0.52401; 8.3319,-0.52401;
        8.3941,-0.52401; 8.4563,-0.52401; 8.5963,-0.52401; 8.6578,-0.52401;
        8.7826,-0.52401; 8.8456,-0.52401; 8.9542,-0.52401; 9.032,-0.52401;
        9.172,-0.52401; 9.2192,-0.52401; 9.3411,-0.52401; 9.4026,-0.52401;
        9.4635,-0.52401; 9.6036,-0.52401; 9.6651,-0.52401; 9.7753,-0.52401;
        9.8352,-0.52401],                                 extrapolation=
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
        0.15595,2.8964; 0.21738,2.8931; 0.26377,2.8931; 0.37103,2.8931;
        0.41692,2.8931; 0.52794,2.8931; 0.60443,2.8898; 0.7304,2.8898;
        0.7925,2.8931; 0.85511,2.8931; 0.96638,2.8931; 1.0134,2.8931;
        1.1664,2.8931; 1.2144,2.8931; 1.3533,2.8931; 1.4149,2.8931;
        1.5512,2.8931; 1.6119,2.8931; 1.6588,2.8931; 1.7829,2.8898;
        1.8598,2.8898; 1.9813,2.8931; 2.0587,2.8931; 2.1831,2.8931;
        2.2457,2.8931; 2.3707,2.8931; 2.4331,2.8898; 2.5875,2.8898;
        2.6341,2.8898; 2.7594,2.8898; 2.8381,2.8964; 2.9624,2.8964;
        3.0084,2.8931; 3.1654,2.8931; 3.2295,2.8898; 3.3696,2.8897;
        3.4321,2.8964; 3.5882,2.8965; 3.6507,2.8931; 3.7601,2.8931;
        3.8388,2.8931; 3.9631,2.8931; 4.0253,2.8964; 4.1653,2.8964;
        4.2273,2.8898; 4.3528,2.8898; 4.4152,2.8931; 4.5548,2.8931;
        4.6318,2.8897; 4.7567,2.8898; 4.8364,2.8964; 4.9596,2.8965;
        5.0206,2.8898; 5.1612,2.8898; 5.2075,2.8931; 5.3317,2.8931; 5.394,
        2.8931; 5.5347,2.8931; 5.6134,2.8898; 5.7384,2.8898; 5.8014,
        2.8964; 5.8634,2.8964; 5.9729,2.8898; 6.0202,2.8898; 6.1439,
        2.8898; 6.2062,2.8964; 6.3473,2.8964; 6.395,2.8931; 6.4579,2.8931;
        6.5979,2.8931; 6.6451,2.8931; 6.7716,2.8931; 6.8191,2.8898;
        6.9411,2.8898; 7.0031,2.8898; 7.1558,2.8898; 7.2172,2.8931;
        7.3404,2.8931; 7.4023,2.9465; 7.4494,2.9465; 7.6037,2.9465;
        7.7287,3.0732; 7.7912,3.0332; 7.8382,3.0332; 7.9617,3.0332;
        8.0087,3.0332; 8.147,3.0332; 8.1943,3.0298; 8.3319,3.0298; 8.3941,
        3.0332; 8.4563,3.0332; 8.5963,3.0332; 8.6578,3.0332; 8.7826,
        3.0332; 8.8456,3.0332; 8.9542,3.0332; 9.032,3.0332; 9.172,3.0332;
        9.2192,3.0298; 9.3411,3.0298; 9.4026,3.0332; 9.4635,3.0332;
        9.6036,3.0331; 9.6651,3.0331; 9.7753,3.0332; 9.8352,3.0332],
                 extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint)
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
  Modelica.Blocks.Sources.CombiTimeTable VOLTAGE(table=[0.15595,353.92;
        0.21738,353.93; 0.26377,353.93; 0.37103,353.92; 0.41692,353.92;
        0.52794,353.92; 0.60443,353.92; 0.7304,353.92; 0.7925,353.93;
        0.85511,353.93; 0.96638,353.93; 1.0134,353.93; 1.1664,353.93;
        1.2144,353.92; 1.3533,353.92; 1.4149,353.92; 1.5512,353.92;
        1.6119,353.93; 1.6588,353.93; 1.7829,353.92; 1.8598,353.92;
        1.9813,353.93; 2.0587,353.93; 2.1831,353.92; 2.2457,353.92;
        2.3707,353.92; 2.4331,353.92; 2.5875,353.92; 2.6341,353.91;
        2.7594,353.91; 2.8381,353.93; 2.9624,353.93; 3.0084,353.92;
        3.1654,353.92; 3.2295,353.91; 3.3696,353.91; 3.4321,353.93;
        3.5882,353.93; 3.6507,353.92; 3.7601,353.92; 3.8388,353.92;
        3.9631,353.92; 4.0253,353.93; 4.1653,353.93; 4.2273,353.91;
        4.3528,353.91; 4.4152,353.92; 4.5548,353.92; 4.6318,353.91;
        4.7567,353.91; 4.8364,353.92; 4.9596,353.92; 5.0206,353.92;
        5.1612,353.92; 5.2075,353.92; 5.3317,353.92; 5.394,353.92; 5.5347,
        353.92; 5.6134,353.92; 5.7384,353.92; 5.8014,353.92; 5.8634,
        353.92; 5.9729,353.92; 6.0202,353.92; 6.1439,353.92; 6.2062,
        353.92; 6.3473,353.92; 6.395,353.92; 6.4579,353.92; 6.5979,353.92;
        6.6451,353.92; 6.7716,353.92; 6.8191,353.92; 6.9411,353.92;
        7.0031,353.91; 7.1558,353.91; 7.2172,353.92; 7.3404,353.92;
        7.4023,353.58; 7.4494,353.58; 7.6037,353.58; 7.7287,339.63;
        7.7912,339.55; 7.8382,339.55; 7.9617,339.55; 8.0087,339.55; 8.147,
        339.55; 8.1943,339.55; 8.3319,339.55; 8.3941,339.56; 8.4563,
        339.56; 8.5963,339.56; 8.6578,339.56; 8.7826,339.56; 8.8456,
        339.56; 8.9542,339.56; 9.032,339.57; 9.172,339.57; 9.2192,339.56;
        9.3411,339.56; 9.4026,339.57; 9.4635,339.57; 9.6036,339.57;
        9.6651,339.57; 9.7753,339.56; 9.8352,339.56],
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
<p> Run the simulation for t=9.83 seconds. </p>
</html>"));
end VoltageVariation_350_to_335_V;
