within OpenRESV.RES_Model_vs_PHIL_Inverter_Examples.ConstantPFTerminalVoltageVariance.Over090PowerFactor;
model VoltageVariation_350_to_330_V
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
  Modelica.Blocks.Sources.CombiTimeTable EXPERIMENT_P(table=[0.12689,904.73; 0.18793,
        903.56; 0.32603,903.56; 0.38918,904.18; 0.54505,904.18; 0.60702,904.98;
        0.7326,904.98; 0.81161,904.74; 0.95393,904.71; 1.033,905.84; 1.1576,905.64;
        1.2519,903.55; 1.376,904.09; 1.4541,905.14; 1.6103,904.67; 1.6571,904.67;
        1.7989,906.03; 1.8622,906.03; 2.0169,903.6; 2.1403,903.6; 2.1874,904.53;
        2.3267,904.53; 2.3894,904.79; 2.5443,904.79; 2.6228,904.07; 2.7629,904.07;
        2.8255,905.46; 2.9354,905.46; 3.0291,904.18; 3.1528,903.79; 3.2314,904.86;
        3.3571,904.74; 3.418,903.68; 3.5729,903.71; 3.6349,904.61; 3.7734,904.61;
        3.8341,903.78; 3.9728,904.24; 4.0487,904.21; 4.1896,903.33; 4.329,905.46;
        4.3916,905.21; 4.4538,905.21; 4.6258,938.76; 4.7838,922.63; 4.8601,905.8;
        5.002,902.52; 5.1423,902.55; 5.2048,902.88; 5.3286,902.88; 5.3897,902.49;
        5.4512,902.49; 5.6073,902.55; 5.7335,901.56; 5.7951,902.94; 5.8581,902.94;
        5.9667,902.58; 6.1208,902.58; 6.1827,901.23; 6.2609,901.23; 6.3689,902.51;
        6.4161,902.51; 6.5548,902.48; 6.6314,902.49; 6.7698,902.43; 6.8169,902.43;
        6.9436,902.43; 7.0066,901.49; 7.1456,901.49; 7.2079,902.35; 7.3309,902.38;
        7.3946,902.8; 7.4415,902.8; 7.5828,901.9; 7.6459,900.92; 7.7726,901.71;
        7.8333,902.66], extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint)
    annotation (Placement(transformation(extent={{-68,180},{-48,200}})));
  Modelica.Blocks.Sources.CombiTimeTable EXPERIMENT_Q(table=[0.12689,479.47; 0.18793,
        479.14; 0.32603,479.14; 0.38918,480.46; 0.54505,480.46; 0.60702,478.99;
        0.7326,478.99; 0.81161,479.41; 0.95393,479.46; 1.033,479.88; 1.1576,480.25;
        1.2519,479.14; 1.376,478.14; 1.4541,478.67; 1.6103,479.57; 1.6571,479.57;
        1.7989,479.57; 1.8622,479.57; 2.0169,479.02; 2.1403,479.02; 2.1874,479.83;
        2.3267,479.83; 2.3894,479.31; 2.5443,479.31; 2.6228,478.19; 2.7629,478.19;
        2.8255,480.62; 2.9354,480.62; 3.0291,477.91; 3.1528,478.65; 3.2314,479.2;
        3.3571,479.41; 3.418,478.87; 3.5729,478.81; 3.6349,479.68; 3.7734,479.68;
        3.8341,478.72; 3.9728,477.88; 4.0487,477.87; 4.1896,479.49; 4.329,480.62;
        4.3916,478.51; 4.4538,478.51; 4.6258,486.83; 4.7838,516.66; 4.8601,507.21;
        5.002,498.51; 5.1423,498.46; 5.2048,497.76; 5.3286,497.76; 5.3897,498.5;
        5.4512,498.5; 5.6073,498.39; 5.7335,497.86; 5.7951,497.72; 5.8581,497.72;
        5.9667,498.35; 6.1208,498.35; 6.1827,498.51; 6.2609,498.51; 6.3689,498.52;
        6.4161,498.52; 6.5548,498.57; 6.6314,498.57; 6.7698,498.68; 6.8169,498.68;
        6.9436,498.68; 7.0066,498.04; 7.1456,498.04; 7.2079,498.83; 7.3309,498.78;
        7.3946,497.99; 7.4415,497.99; 7.5828,499.61; 7.6459,499.08; 7.7726,497.67;
        7.8333,498.19],
                 extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint)
    annotation (Placement(transformation(extent={{-38,180},{-18,200}})));
  Modelica.Blocks.Sources.CombiTimeTable V(table=[0.12689,1; 0.18793,0.99999; 0.32603,
        0.99999; 0.38918,0.99999; 0.54505,0.99999; 0.60702,0.99999; 0.7326,0.99999;
        0.81161,0.99998; 0.95393,0.99998; 1.033,1; 1.1576,1; 1.2519,0.99999; 1.376,
        0.99999; 1.4541,0.99999; 1.6103,0.99999; 1.6571,0.99999; 1.7989,1; 1.8622,
        1; 2.0169,0.99998; 2.1403,0.99998; 2.1874,0.99999; 2.3267,0.99999; 2.3894,
        0.99998; 2.5443,0.99998; 2.6228,0.99999; 2.7629,0.99999; 2.8255,1; 2.9354,
        1; 3.0291,0.99996; 3.1528,0.99996; 3.2314,0.99999; 3.3571,0.99999; 3.418,
        0.99998; 3.5729,0.99998; 3.6349,0.99999; 3.7734,0.99999; 3.8341,0.99999;
        3.9728,0.99999; 4.0487,0.99996; 4.1896,0.99996; 4.329,1; 4.3916,0.99998;
        4.4538,0.99998; 4.6258,0.996; 4.7838,0.996; 4.8601,0.94628; 5.002,0.9459;
        5.1423,0.9459; 5.2048,0.94584; 5.3286,0.94584; 5.3897,0.94586; 5.4512,0.94586;
        5.6073,0.94586; 5.7335,0.94586; 5.7951,0.94587; 5.8581,0.94587; 5.9667,0.94587;
        6.1208,0.94587; 6.1827,0.94588; 6.2609,0.94588; 6.3689,0.94589; 6.4161,0.94589;
        6.5548,0.94589; 6.6314,0.9459; 6.7698,0.9459; 6.8169,0.9459; 6.9436,0.9459;
        7.0066,0.94588; 7.1456,0.94588; 7.2079,0.9459; 7.3309,0.9459; 7.3946,0.94588;
        7.4415,0.94588; 7.5828,0.94588; 7.6459,0.94589; 7.7726,0.94589; 7.8333,0.94586],
      extrapolation=Modelica.Blocks.Types.Extrapolation.LastTwoPoints)
    annotation (Placement(transformation(extent={{100,120},{80,140}})));
  Modelica.Blocks.Sources.CombiTimeTable A(table=[0.12689,-0.52401; 0.18793,-0.52401;
        0.32603,-0.52401; 0.38918,-0.52401; 0.54505,-0.52401; 0.60702,-0.52401;
        0.7326,-0.52401; 0.81161,-0.52401; 0.95393,-0.52395; 1.033,-0.52395; 1.1576,
        -0.52401; 1.2519,-0.52401; 1.376,-0.52395; 1.4541,-0.52395; 1.6103,-0.52401;
        1.6571,-0.52401; 1.7989,-0.52401; 1.8622,-0.52401; 2.0169,-0.52401; 2.1403,
        -0.52401; 2.1874,-0.52401; 2.3267,-0.52401; 2.3894,-0.52401; 2.5443,-0.52401;
        2.6228,-0.52401; 2.7629,-0.52401; 2.8255,-0.52401; 2.9354,-0.52401; 3.0291,
        -0.52401; 3.1528,-0.52401; 3.2314,-0.52401; 3.3571,-0.52395; 3.418,-0.52395;
        3.5729,-0.52401; 3.6349,-0.52401; 3.7734,-0.52401; 3.8341,-0.52401; 3.9728,
        -0.52401; 4.0487,-0.52401; 4.1896,-0.52395; 4.329,-0.52395; 4.3916,-0.52401;
        4.4538,-0.52401; 4.6258,-0.52447; 4.7838,-0.52377; 4.8601,-0.52377; 5.002,
        -0.52395; 5.1423,-0.52401; 5.2048,-0.52401; 5.3286,-0.52401; 5.3897,-0.52401;
        5.4512,-0.52401; 5.6073,-0.52401; 5.7335,-0.52401; 5.7951,-0.52401; 5.8581,
        -0.52401; 5.9667,-0.52401; 6.1208,-0.52401; 6.1827,-0.52401; 6.2609,-0.52401;
        6.3689,-0.52406; 6.4161,-0.52406; 6.5548,-0.52401; 6.6314,-0.52401; 6.7698,
        -0.52401; 6.8169,-0.52401; 6.9436,-0.52401; 7.0066,-0.52401; 7.1456,-0.52401;
        7.2079,-0.52401; 7.3309,-0.52406; 7.3946,-0.52406; 7.4415,-0.52406; 7.5828,
        -0.52395; 7.6459,-0.52395; 7.7726,-0.52401; 7.8333,-0.52401],
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
  Modelica.Blocks.Sources.CombiTimeTable EXPERIMENT_IAngle(table=[0.12689,-1.0113;
        0.18793,-1.0116; 0.32603,-1.0116; 0.38918,-1.0124; 0.54505,-1.0124; 0.60702,
        -1.0108; 0.7326,-1.0108; 0.81161,-1.0113; 0.95393,-1.0113; 1.033,-1.0111;
        1.1576,-1.0116; 1.2519,-1.0116; 1.376,-1.0104; 1.4541,-1.0104; 1.6103,-1.0114;
        1.6571,-1.0114; 1.7989,-1.0108; 1.8622,-1.0108; 2.0169,-1.0115; 2.1403,-1.0115;
        2.1874,-1.0117; 2.3267,-1.0117; 2.3894,-1.0112; 2.5443,-1.0112; 2.6228,-1.0105;
        2.7629,-1.0105; 2.8255,-1.012; 2.9354,-1.012; 3.0291,-1.0102; 3.1528,-1.0111;
        3.2314,-1.011; 3.3571,-1.0112; 3.418,-1.0112; 3.5729,-1.0112; 3.6349,-1.0116;
        3.7734,-1.0116; 3.8341,-1.0111; 3.9728,-1.0102; 4.0487,-1.0102; 4.1896,-1.0119;
        4.329,-1.0119; 4.3916,-1.0103; 4.4538,-1.0103; 4.6258,-1.0029; 4.7838,-1.0343;
        4.8601,-1.0342; 5.002,-1.0286; 5.1423,-1.0286; 5.2048,-1.0278; 5.3286,-1.0278;
        5.3897,-1.0287; 5.4512,-1.0287; 5.6073,-1.0285; 5.7335,-1.0286; 5.7951,-1.0278;
        5.8581,-1.0278; 5.9667,-1.0285; 6.1208,-1.0285; 6.1827,-1.0293; 6.2609,-1.0293;
        6.3689,-1.0287; 6.4161,-1.0287; 6.5548,-1.0287; 6.6314,-1.0287; 6.7698,-1.0288;
        6.8169,-1.0288; 6.9436,-1.0288; 7.0066,-1.0287; 7.1456,-1.0287; 7.2079,-1.029;
        7.3309,-1.029; 7.3946,-1.0281; 7.4415,-1.0281; 7.5828,-1.0298; 7.6459,-1.0298;
        7.7726,-1.0283; 7.8333,-1.0283], extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint)
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
  Modelica.Blocks.Sources.CombiTimeTable V1(table=[0.12689,1; 0.18793,0.99999; 0.32603,
        0.99999; 0.38918,0.99999; 0.54505,0.99999; 0.60702,0.99999; 0.7326,0.99999;
        0.81161,0.99998; 0.95393,0.99998; 1.033,1; 1.1576,1; 1.2519,0.99999; 1.376,
        0.99999; 1.4541,0.99999; 1.6103,0.99999; 1.6571,0.99999; 1.7989,1; 1.8622,
        1; 2.0169,0.99998; 2.1403,0.99998; 2.1874,0.99999; 2.3267,0.99999; 2.3894,
        0.99998; 2.5443,0.99998; 2.6228,0.99999; 2.7629,0.99999; 2.8255,1; 2.9354,
        1; 3.0291,0.99996; 3.1528,0.99996; 3.2314,0.99999; 3.3571,0.99999; 3.418,
        0.99998; 3.5729,0.99998; 3.6349,0.99999; 3.7734,0.99999; 3.8341,0.99999;
        3.9728,0.99999; 4.0487,0.99996; 4.1896,0.99996; 4.329,1; 4.3916,0.99998;
        4.4538,0.99998; 4.6258,0.996; 4.7838,0.996; 4.8601,0.94628; 5.002,0.9459;
        5.1423,0.9459; 5.2048,0.94584; 5.3286,0.94584; 5.3897,0.94586; 5.4512,0.94586;
        5.6073,0.94586; 5.7335,0.94586; 5.7951,0.94587; 5.8581,0.94587; 5.9667,0.94587;
        6.1208,0.94587; 6.1827,0.94588; 6.2609,0.94588; 6.3689,0.94589; 6.4161,0.94589;
        6.5548,0.94589; 6.6314,0.9459; 6.7698,0.9459; 6.8169,0.9459; 6.9436,0.9459;
        7.0066,0.94588; 7.1456,0.94588; 7.2079,0.9459; 7.3309,0.9459; 7.3946,0.94588;
        7.4415,0.94588; 7.5828,0.94588; 7.6459,0.94589; 7.7726,0.94589; 7.8333,0.94586],
      extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint)
    annotation (Placement(transformation(extent={{100,0},{80,20}})));
  Modelica.Blocks.Sources.CombiTimeTable A1(table=[0.12689,-0.52401; 0.18793,-0.52401;
        0.32603,-0.52401; 0.38918,-0.52401; 0.54505,-0.52401; 0.60702,-0.52401;
        0.7326,-0.52401; 0.81161,-0.52401; 0.95393,-0.52395; 1.033,-0.52395; 1.1576,
        -0.52401; 1.2519,-0.52401; 1.376,-0.52395; 1.4541,-0.52395; 1.6103,-0.52401;
        1.6571,-0.52401; 1.7989,-0.52401; 1.8622,-0.52401; 2.0169,-0.52401; 2.1403,
        -0.52401; 2.1874,-0.52401; 2.3267,-0.52401; 2.3894,-0.52401; 2.5443,-0.52401;
        2.6228,-0.52401; 2.7629,-0.52401; 2.8255,-0.52401; 2.9354,-0.52401; 3.0291,
        -0.52401; 3.1528,-0.52401; 3.2314,-0.52401; 3.3571,-0.52395; 3.418,-0.52395;
        3.5729,-0.52401; 3.6349,-0.52401; 3.7734,-0.52401; 3.8341,-0.52401; 3.9728,
        -0.52401; 4.0487,-0.52401; 4.1896,-0.52395; 4.329,-0.52395; 4.3916,-0.52401;
        4.4538,-0.52401; 4.6258,-0.52447; 4.7838,-0.52377; 4.8601,-0.52377; 5.002,
        -0.52395; 5.1423,-0.52401; 5.2048,-0.52401; 5.3286,-0.52401; 5.3897,-0.52401;
        5.4512,-0.52401; 5.6073,-0.52401; 5.7335,-0.52401; 5.7951,-0.52401; 5.8581,
        -0.52401; 5.9667,-0.52401; 6.1208,-0.52401; 6.1827,-0.52401; 6.2609,-0.52401;
        6.3689,-0.52406; 6.4161,-0.52406; 6.5548,-0.52401; 6.6314,-0.52401; 6.7698,
        -0.52401; 6.8169,-0.52401; 6.9436,-0.52401; 7.0066,-0.52401; 7.1456,-0.52401;
        7.2079,-0.52401; 7.3309,-0.52406; 7.3946,-0.52406; 7.4415,-0.52406; 7.5828,
        -0.52395; 7.6459,-0.52395; 7.7726,-0.52401; 7.8333,-0.52401],
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
  Modelica.Blocks.Sources.CombiTimeTable V2(table=[0.12689,1; 0.18793,0.99999; 0.32603,
        0.99999; 0.38918,0.99999; 0.54505,0.99999; 0.60702,0.99999; 0.7326,0.99999;
        0.81161,0.99998; 0.95393,0.99998; 1.033,1; 1.1576,1; 1.2519,0.99999; 1.376,
        0.99999; 1.4541,0.99999; 1.6103,0.99999; 1.6571,0.99999; 1.7989,1; 1.8622,
        1; 2.0169,0.99998; 2.1403,0.99998; 2.1874,0.99999; 2.3267,0.99999; 2.3894,
        0.99998; 2.5443,0.99998; 2.6228,0.99999; 2.7629,0.99999; 2.8255,1; 2.9354,
        1; 3.0291,0.99996; 3.1528,0.99996; 3.2314,0.99999; 3.3571,0.99999; 3.418,
        0.99998; 3.5729,0.99998; 3.6349,0.99999; 3.7734,0.99999; 3.8341,0.99999;
        3.9728,0.99999; 4.0487,0.99996; 4.1896,0.99996; 4.329,1; 4.3916,0.99998;
        4.4538,0.99998; 4.6258,0.996; 4.7838,0.996; 4.8601,0.94628; 5.002,0.9459;
        5.1423,0.9459; 5.2048,0.94584; 5.3286,0.94584; 5.3897,0.94586; 5.4512,0.94586;
        5.6073,0.94586; 5.7335,0.94586; 5.7951,0.94587; 5.8581,0.94587; 5.9667,0.94587;
        6.1208,0.94587; 6.1827,0.94588; 6.2609,0.94588; 6.3689,0.94589; 6.4161,0.94589;
        6.5548,0.94589; 6.6314,0.9459; 6.7698,0.9459; 6.8169,0.9459; 6.9436,0.9459;
        7.0066,0.94588; 7.1456,0.94588; 7.2079,0.9459; 7.3309,0.9459; 7.3946,0.94588;
        7.4415,0.94588; 7.5828,0.94588; 7.6459,0.94589; 7.7726,0.94589; 7.8333,0.94586],
                                         extrapolation=Modelica.Blocks.Types.Extrapolation.LastTwoPoints)
    annotation (Placement(transformation(extent={{100,-120},{80,-100}})));
  Modelica.Blocks.Sources.CombiTimeTable A2(table=[0.12689,-0.52401; 0.18793,-0.52401;
        0.32603,-0.52401; 0.38918,-0.52401; 0.54505,-0.52401; 0.60702,-0.52401;
        0.7326,-0.52401; 0.81161,-0.52401; 0.95393,-0.52395; 1.033,-0.52395; 1.1576,
        -0.52401; 1.2519,-0.52401; 1.376,-0.52395; 1.4541,-0.52395; 1.6103,-0.52401;
        1.6571,-0.52401; 1.7989,-0.52401; 1.8622,-0.52401; 2.0169,-0.52401; 2.1403,
        -0.52401; 2.1874,-0.52401; 2.3267,-0.52401; 2.3894,-0.52401; 2.5443,-0.52401;
        2.6228,-0.52401; 2.7629,-0.52401; 2.8255,-0.52401; 2.9354,-0.52401; 3.0291,
        -0.52401; 3.1528,-0.52401; 3.2314,-0.52401; 3.3571,-0.52395; 3.418,-0.52395;
        3.5729,-0.52401; 3.6349,-0.52401; 3.7734,-0.52401; 3.8341,-0.52401; 3.9728,
        -0.52401; 4.0487,-0.52401; 4.1896,-0.52395; 4.329,-0.52395; 4.3916,-0.52401;
        4.4538,-0.52401; 4.6258,-0.52447; 4.7838,-0.52377; 4.8601,-0.52377; 5.002,
        -0.52395; 5.1423,-0.52401; 5.2048,-0.52401; 5.3286,-0.52401; 5.3897,-0.52401;
        5.4512,-0.52401; 5.6073,-0.52401; 5.7335,-0.52401; 5.7951,-0.52401; 5.8581,
        -0.52401; 5.9667,-0.52401; 6.1208,-0.52401; 6.1827,-0.52401; 6.2609,-0.52401;
        6.3689,-0.52406; 6.4161,-0.52406; 6.5548,-0.52401; 6.6314,-0.52401; 6.7698,
        -0.52401; 6.8169,-0.52401; 6.9436,-0.52401; 7.0066,-0.52401; 7.1456,-0.52401;
        7.2079,-0.52401; 7.3309,-0.52406; 7.3946,-0.52406; 7.4415,-0.52406; 7.5828,
        -0.52395; 7.6459,-0.52395; 7.7726,-0.52401; 7.8333,-0.52401],
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
  Modelica.Blocks.Sources.CombiTimeTable EXPERIMENT_IMagnitude(table=[0.12689,2.8931;
        0.18793,2.8898; 0.32603,2.8898; 0.38918,2.8931; 0.54505,2.8931; 0.60702,
        2.8931; 0.7326,2.8931; 0.81161,2.8931; 0.95393,2.8931; 1.033,2.8964; 1.1576,
        2.8964; 1.2519,2.8897; 1.376,2.8898; 1.4541,2.8931; 1.6103,2.8931; 1.6571,
        2.8931; 1.7989,2.8964; 1.8622,2.8964; 2.0169,2.8897; 2.1403,2.8897; 2.1874,
        2.8931; 2.3267,2.8931; 2.3894,2.8931; 2.5443,2.8931; 2.6228,2.8898; 2.7629,
        2.8898; 2.8255,2.8964; 2.9354,2.8964; 3.0291,2.8898; 3.1528,2.8898; 3.2314,
        2.8931; 3.3571,2.8931; 3.418,2.8897; 3.5729,2.8897; 3.6349,2.8931; 3.7734,
        2.8931; 3.8341,2.8897; 3.9728,2.8898; 4.0487,2.8898; 4.1896,2.8898; 4.329,
        2.8964; 4.3916,2.8931; 4.4538,2.8931; 4.6258,2.9999; 4.7838,2.9998; 4.8601,
        3.0998; 5.002,3.0799; 5.1423,3.0799; 5.2048,3.0799; 5.3286,3.0799; 5.3897,
        3.0799; 5.4512,3.0799; 5.6073,3.0799; 5.7335,3.0765; 5.7951,3.0799; 5.8581,
        3.0799; 5.9667,3.0799; 6.1208,3.0799; 6.1827,3.0765; 6.2609,3.0765; 6.3689,
        3.0799; 6.4161,3.0799; 6.5548,3.0799; 6.6314,3.0799; 6.7698,3.0799; 6.8169,
        3.0799; 6.9436,3.0799; 7.0066,3.0765; 7.1456,3.0765; 7.2079,3.0799; 7.3309,
        3.0799; 7.3946,3.0799; 7.4415,3.0799; 7.5828,3.0798; 7.6459,3.0765; 7.7726,
        3.0765; 7.8333,3.0799],
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
  Modelica.Blocks.Sources.CombiTimeTable VOLTAGE(table=[0.12689,353.92; 0.18793,
        353.92; 0.32603,353.92; 0.38918,353.92; 0.54505,353.92; 0.60702,353.92;
        0.7326,353.92; 0.81161,353.91; 0.95393,353.91; 1.033,353.92; 1.1576,353.92;
        1.2519,353.92; 1.376,353.92; 1.4541,353.92; 1.6103,353.92; 1.6571,353.92;
        1.7989,353.92; 1.8622,353.92; 2.0169,353.91; 2.1403,353.91; 2.1874,353.92;
        2.3267,353.92; 2.3894,353.91; 2.5443,353.91; 2.6228,353.92; 2.7629,353.92;
        2.8255,353.92; 2.9354,353.92; 3.0291,353.91; 3.1528,353.91; 3.2314,353.92;
        3.3571,353.92; 3.418,353.91; 3.5729,353.91; 3.6349,353.92; 3.7734,353.92;
        3.8341,353.92; 3.9728,353.92; 4.0487,353.91; 4.1896,353.91; 4.329,353.92;
        4.3916,353.91; 4.4538,353.91; 4.6258,352.51; 4.7838,352.51; 4.8601,334.91;
        5.002,334.77; 5.1423,334.77; 5.2048,334.75; 5.3286,334.75; 5.3897,334.76;
        5.4512,334.76; 5.6073,334.76; 5.7335,334.76; 5.7951,334.76; 5.8581,334.76;
        5.9667,334.76; 6.1208,334.76; 6.1827,334.77; 6.2609,334.77; 6.3689,334.77;
        6.4161,334.77; 6.5548,334.77; 6.6314,334.77; 6.7698,334.77; 6.8169,334.77;
        6.9436,334.77; 7.0066,334.77; 7.1456,334.77; 7.2079,334.77; 7.3309,334.77;
        7.3946,334.77; 7.4415,334.77; 7.5828,334.77; 7.6459,334.77; 7.7726,334.77;
        7.8333,334.76], extrapolation=Modelica.Blocks.Types.Extrapolation.LastTwoPoints)
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
<p> Run the simulation for t=7.84 seconds. </p>
</html>"));
end VoltageVariation_350_to_330_V;
