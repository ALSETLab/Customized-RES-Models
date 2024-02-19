within OpenRESV.RES_Model_vs_PHIL_Inverter_Examples.ConstantPFTerminalVoltageVariance.Under085PowerFactor;
model VoltageVariation_350_to_340_V "Voltage drop from 350 V to 340 V"
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
  OpenRESV.Electrical.Buses.Bus SEL_735_PQ_Meter_Bus_1(V_b=353.92049703035,
      angle_0=0)
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
  Modelica.Blocks.Sources.CombiTimeTable EXPERIMENT_P(table=[0.12907,
        1029.7; 0.19065,1029.7; 0.33222,1029.3; 0.39474,1029.4; 0.5059,
        1029.8; 0.58502,1027.7; 0.69704,1027.2; 0.793,1030.3; 0.94964,
        1031.3; 0.99666,1031.3; 1.1222,1030.3; 1.1863,1030.3; 1.3281,
        1030.5; 1.3906,1028.3; 1.5004,1028.8; 1.5631,1030.9; 1.6896,
        1030.9; 1.7521,1030.1; 1.9095,1030.7; 1.9719,1030.7; 2.114,1030.4;
        2.1771,1030.4; 2.3041,1031; 2.3681,1031; 2.4962,1030.2; 2.5755,
        1030.1; 2.6833,1030.1; 2.7457,1030.5; 2.8856,1030.4; 2.9475,
        1031.5; 3.0752,1031.5; 3.1375,1029.2; 3.1998,1029.2; 3.3412,
        1029.1; 3.4667,1029.1; 3.5297,1030.5; 3.5926,1030.5; 3.7011,1031;
        3.7486,1032.1; 3.9059,1032.1; 3.9686,1030.4; 4.1106,1030.5;
        4.1576,1030.4; 4.2994,1030.4; 4.3771,1028.2; 4.4886,1028.8; 4.568,
        1030.9; 4.7086,1030.7; 4.7721,1030.8; 4.9139,1030.8; 4.9768,
        1030.8; 5.1012,1036; 5.1481,1056.5; 5.2747,1056.5; 5.3376,1029.2;
        5.4796,1029.2; 5.5437,1029.6; 5.6686,1029.6; 5.7315,1030.1; 5.887,
        1030.1; 5.9811,1028.6; 6.1216,1028.3; 6.1854,1030.4; 6.294,1030.4;
        6.358,1030.4; 6.485,1030.4; 6.548,1028.1; 6.7065,1028.1; 6.7696,
        1030.1; 6.9296,1030.6; 6.9916,1027.6; 7.134,1027.2; 7.1961,1027.2;
        7.3074,1029.4; 7.3867,1029.4; 7.5117,1029.1; 7.5905,1029.1; 7.716,
        1029.4; 7.7797,1030.5; 7.9215,1030.4; 7.9837,1028.3; 8.1246,
        1028.3; 8.1718,1028.3; 8.2964,1027.9; 8.3736,1026.9; 8.4996,
        1027.4; 8.5626,1027.4; 8.7029,1027.5; 8.7658,1030.5],
                        extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint)
    annotation (Placement(transformation(extent={{-68,180},{-48,200}})));
  Modelica.Blocks.Sources.CombiTimeTable EXPERIMENT_Q(table=[0.12907,-552.48;
        0.19065,-552.48; 0.33222,-553.15; 0.39474,-553.13; 0.5059,-552.35;
        0.58502,-551.25; 0.69704,-552.09; 0.793,-553.75; 0.94964,-552.02;
        0.99666,-552.02; 1.1222,-553.88; 1.1863,-553.88; 1.3281,-553.58;
        1.3906,-552.46; 1.5004,-551.57; 1.5631,-552.68; 1.6896,-552.68;
        1.7521,-554.1; 1.9095,-553.09; 1.9719,-553.1; 2.114,-553.69;
        2.1771,-553.68; 2.3041,-552.55; 2.3681,-552.56; 2.4962,-554.11;
        2.5755,-554.1; 2.6833,-554.1; 2.7457,-553.57; 2.8856,-553.63;
        2.9475,-554.13; 3.0752,-554.13; 3.1375,-553.36; 3.1998,-553.36;
        3.3412,-553.62; 3.4667,-553.62; 3.5297,-553.45; 3.5926,-553.45;
        3.7011,-552.49; 3.7486,-553.04; 3.9059,-553.04; 3.9686,-553.64;
        4.1106,-553.58; 4.1576,-553.57; 4.2994,-553.69; 4.3771,-552.83;
        4.4886,-551.65; 4.568,-552.75; 4.7086,-553.04; 4.7721,-553.05;
        4.9139,-552.93; 4.9768,-552.9; 5.1012,-542.98; 5.1481,-553.68;
        5.2747,-553.68; 5.3376,-557.15; 5.4796,-557.15; 5.5437,-544.38;
        5.6686,-544.38; 5.7315,-545.91; 5.887,-545.91; 5.9811,-543.79;
        6.1216,-544.32; 6.1854,-545.38; 6.294,-545.32; 6.358,-545.32;
        6.485,-545.32; 6.548,-544.67; 6.7065,-544.67; 6.7696,-545.79;
        6.9296,-544.89; 6.9916,-543.3; 7.134,-543.95; 7.1961,-543.94;
        7.3074,-544.79; 7.3867,-544.79; 7.5117,-545.33; 7.5905,-545.32;
        7.716,-544.6; 7.7797,-545.15; 7.9215,-545.39; 7.9837,-544.3;
        8.1246,-544.41; 8.1718,-544.44; 8.2964,-545.1; 8.3736,-544.54;
        8.4996,-543.57; 8.5626,-543.59; 8.7029,-543.47; 8.7658,-545.08],
                 extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint)
    annotation (Placement(transformation(extent={{-38,180},{-18,200}})));
  Modelica.Blocks.Sources.CombiTimeTable EXPERIMENT_V_1(table=[0.12907,1;
        0.19065,1; 0.33222,1; 0.39474,1; 0.5059,1; 0.58502,1; 0.69704,1;
        0.793,1; 0.94964,1; 0.99666,1; 1.1222,1; 1.1863,1; 1.3281,1; 1.3906,
        0.99997; 1.5004,0.99997; 1.5631,1; 1.6896,1; 1.7521,0.99999; 1.9095,
        0.99999; 1.9719,1; 2.114,1; 2.1771,1; 2.3041,1; 2.3681,1; 2.4962,
        1; 2.5755,1; 2.6833,1; 2.7457,1; 2.8856,1; 2.9475,1; 3.0752,1; 3.1375,
        0.99997; 3.1998,0.99997; 3.3412,0.99999; 3.4667,0.99999; 3.5297,
        1; 3.5926,1; 3.7011,1; 3.7486,1; 3.9059,1; 3.9686,1; 4.1106,1; 4.1576,
        0.99999; 4.2994,0.99999; 4.3771,1; 4.4886,1; 4.568,1; 4.7086,1;
        4.7721,1; 4.9139,1; 4.9768,0.99998; 5.1012,0.99998; 5.1481,0.99579;
        5.2747,0.99579; 5.3376,0.9723; 5.4796,0.9723; 5.5437,0.97233; 5.6686,
        0.97233; 5.7315,0.97232; 5.887,0.97232; 5.9811,0.97233; 6.1216,0.97233;
        6.1854,0.97233; 6.294,0.97233; 6.358,0.97233; 6.485,0.97233; 6.548,
        0.97231; 6.7065,0.97231; 6.7696,0.97233; 6.9296,0.97233; 6.9916,
        0.97233; 7.134,0.97233; 7.1961,0.97231; 7.3074,0.97232; 7.3867,0.97232;
        7.5117,0.97232; 7.5905,0.97231; 7.716,0.97231; 7.7797,0.97235; 7.9215,
        0.97235; 7.9837,0.97232; 8.1246,0.97232; 8.1718,0.97232; 8.2964,
        0.97232; 8.3736,0.97229; 8.4996,0.97229; 8.5626,0.97232; 8.7029,
        0.97232; 8.7658,0.97233], extrapolation=Modelica.Blocks.Types.Extrapolation.LastTwoPoints)
    annotation (Placement(transformation(extent={{100,120},{80,140}})));
  Modelica.Blocks.Sources.CombiTimeTable EXPERIMENT_A_1(table=[0.12907,-0.52325;
        0.19065,-0.52325; 0.33222,-0.52331; 0.39474,-0.52331; 0.5059,-0.52337;
        0.58502,-0.52337; 0.69704,-0.52325; 0.793,-0.52325; 0.94964,-0.52325;
        0.99666,-0.52325; 1.1222,-0.52331; 1.1863,-0.52331; 1.3281,-0.52331;
        1.3906,-0.52331; 1.5004,-0.52325; 1.5631,-0.52325; 1.6896,-0.52325;
        1.7521,-0.52325; 1.9095,-0.52325; 1.9719,-0.52325; 2.114,-0.52331;
        2.1771,-0.52331; 2.3041,-0.52325; 2.3681,-0.52325; 2.4962,-0.52325;
        2.5755,-0.52325; 2.6833,-0.52325; 2.7457,-0.52325; 2.8856,-0.52331;
        2.9475,-0.52331; 3.0752,-0.52331; 3.1375,-0.52331; 3.1998,-0.52331;
        3.3412,-0.52337; 3.4667,-0.52337; 3.5297,-0.52325; 3.5926,-0.52325;
        3.7011,-0.52325; 3.7486,-0.52325; 3.9059,-0.52325; 3.9686,-0.52325;
        4.1106,-0.52325; 4.1576,-0.52325; 4.2994,-0.52337; 4.3771,-0.52337;
        4.4886,-0.52325; 4.568,-0.52325; 4.7086,-0.52325; 4.7721,-0.52325;
        4.9139,-0.52325; 4.9768,-0.52325; 5.1012,-0.52354; 5.1481,-0.52354;
        5.2747,-0.52354; 5.3376,-0.52325; 5.4796,-0.52325; 5.5437,-0.52325;
        5.6686,-0.52325; 5.7315,-0.52331; 5.887,-0.52331; 5.9811,-0.52331;
        6.1216,-0.52331; 6.1854,-0.52331; 6.294,-0.52331; 6.358,-0.52331;
        6.485,-0.52331; 6.548,-0.52331; 6.7065,-0.52331; 6.7696,-0.52331;
        6.9296,-0.52331; 6.9916,-0.52331; 7.134,-0.52337; 7.1961,-0.52337;
        7.3074,-0.52331; 7.3867,-0.52331; 7.5117,-0.52325; 7.5905,-0.52325;
        7.716,-0.52331; 7.7797,-0.52331; 7.9215,-0.52331; 7.9837,-0.52331;
        8.1246,-0.52337; 8.1718,-0.52337; 8.2964,-0.52331; 8.3736,-0.52331;
        8.4996,-0.52331; 8.5626,-0.52331; 8.7029,-0.52331; 8.7658,-0.52331],
      extrapolation=Modelica.Blocks.Types.Extrapolation.LastTwoPoints)
    annotation (Placement(transformation(extent={{100,120},{80,100}})));
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
  Modelica.Blocks.Sources.CombiTimeTable EXPERIMENT_IAngle(table=[0.12907,
        -0.030791; 0.19065,-0.030791; 0.33222,-0.030206; 0.39474,-0.030229;
        0.5059,-0.031048; 0.58502,-0.031033; 0.69704,-0.030097; 0.793,-0.030096;
        0.94964,-0.031782; 0.99666,-0.031782; 1.1222,-0.030046; 1.1863,-0.030046;
        1.3281,-0.030334; 1.3906,-0.030319; 1.5004,-0.031128; 1.5631,-0.031144;
        1.6896,-0.031144; 1.7521,-0.029754; 1.9095,-0.030737; 1.9719,-0.030737;
        2.114,-0.030219; 2.1771,-0.030219; 2.3041,-0.03126; 2.3681,-0.03126;
        2.4962,-0.029753; 2.5755,-0.029753; 2.6833,-0.029753; 2.7457,-0.030276;
        2.8856,-0.030276; 2.9475,-0.030341; 3.0752,-0.030341; 3.1375,-0.029978;
        3.1998,-0.029978; 3.3412,-0.029805; 3.4667,-0.029805; 3.5297,-0.030387;
        3.5926,-0.030387; 3.7011,-0.031318; 3.7486,-0.031326; 3.9059,-0.031326;
        3.9686,-0.030218; 4.1106,-0.030274; 4.1576,-0.030274; 4.2994,-0.030274;
        4.3771,-0.030031; 4.4886,-0.031065; 4.568,-0.031082; 4.7086,-0.030796;
        4.7721,-0.030796; 4.9139,-0.030912; 4.9768,-0.030912; 5.1012,-0.040804;
        5.1481,-0.040803; 5.2747,-0.040803; 5.3376,-0.027063; 5.4796,-0.027063;
        5.5437,-0.036888; 5.6686,-0.036888; 5.7315,-0.035971; 5.887,-0.035971;
        5.9811,-0.037002; 6.1216,-0.036478; 6.1854,-0.036492; 6.294,-0.03655;
        6.358,-0.03655; 6.485,-0.03655; 6.548,-0.036129; 6.7065,-0.036129;
        6.7696,-0.036086; 6.9296,-0.036958; 6.9916,-0.036958; 7.134,-0.036377;
        7.1961,-0.036377; 7.3074,-0.036543; 7.3867,-0.036543; 7.5117,-0.035961;
        7.5905,-0.035961; 7.716,-0.036715; 7.7797,-0.036723; 7.9215,-0.03649;
        7.9837,-0.036496; 8.1246,-0.036444; 8.1718,-0.036421; 8.2964,-0.03572;
        8.3736,-0.035734; 8.4996,-0.036671; 8.5626,-0.036671; 8.7029,-0.036782;
        8.7658,-0.036782],               extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint)
    annotation (Placement(transformation(extent={{20,180},{40,200}})));
  Modelica.Blocks.Sources.RealExpression EXPERIMENT_PF(y=EXPERIMENT_P.y[1]/sqrt(
         EXPERIMENT_P.y[1]^2 + EXPERIMENT_Q.y[1]^2))
    annotation (Placement(transformation(extent={{66,186},{86,206}})));
  Modelica.Blocks.Sources.RealExpression PF_Simulation_REECB(y=pwLine1.P12/sqrt(
         pwLine1.P12^2 + pwLine1.Q12^2))
    annotation (Placement(transformation(extent={{66,194},{86,174}})));
  OpenRESV.Electrical.Renewables.PSSE.Wind_or_PV PV_with_REECA(
    V_b=353.92049703035,
    P_0(displayUnit="W") = EXPERIMENT_P.table[1, 2],
    Q_0(displayUnit="V.A") = EXPERIMENT_Q.table[1, 2],
    angle_0(displayUnit="rad"),
    QFunctionality=0,
    redeclare OpenRESV.Electrical.Renewables.PSSE.InverterInterface.REGCA1
      RenewableGenerator(Tg=0.01, Tfltr=0.01),
    redeclare OpenRESV.Electrical.Renewables.PSSE.ElectricalController.REECA1
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
    W0=0) annotation (Placement(transformation(extent={{-130,-10},{-110,10}})));

  OpenRESV.Electrical.Buses.Bus InverterBus2(V_b=352.01, angle_0=0)
    annotation (Placement(transformation(extent={{-80,-10},{-60,10}})));
  OpenRESV.Electrical.Sources.VoltageSourceReImInput voltageSourceReImInput1(V_b=
        353.920497030345)
    annotation (Placement(transformation(extent={{30,-10},{10,10}})));
  OpenRESV.Electrical.Buses.Bus SEL_735_PQ_Meter_Bus_2(V_b=353.92049703035,
      angle_0=0)
    annotation (Placement(transformation(extent={{-20,-10},{0,10}})));
  OpenRESV.Electrical.Branches.PwLine pwLine2(
    R=0,
    X=0.00000000001,
    G=0,
    B=0)
    annotation (Placement(transformation(extent={{-50,-10},{-30,10}})));
  Modelica.Blocks.Sources.CombiTimeTable EXPERIMENT_V_2(table=[0.12907,1;
        0.19065,1; 0.33222,1; 0.39474,1; 0.5059,1; 0.58502,1; 0.69704,1;
        0.793,1; 0.94964,1; 0.99666,1; 1.1222,1; 1.1863,1; 1.3281,1; 1.3906,
        0.99997; 1.5004,0.99997; 1.5631,1; 1.6896,1; 1.7521,0.99999; 1.9095,
        0.99999; 1.9719,1; 2.114,1; 2.1771,1; 2.3041,1; 2.3681,1; 2.4962,
        1; 2.5755,1; 2.6833,1; 2.7457,1; 2.8856,1; 2.9475,1; 3.0752,1; 3.1375,
        0.99997; 3.1998,0.99997; 3.3412,0.99999; 3.4667,0.99999; 3.5297,
        1; 3.5926,1; 3.7011,1; 3.7486,1; 3.9059,1; 3.9686,1; 4.1106,1; 4.1576,
        0.99999; 4.2994,0.99999; 4.3771,1; 4.4886,1; 4.568,1; 4.7086,1;
        4.7721,1; 4.9139,1; 4.9768,0.99998; 5.1012,0.99998; 5.1481,0.99579;
        5.2747,0.99579; 5.3376,0.9723; 5.4796,0.9723; 5.5437,0.97233; 5.6686,
        0.97233; 5.7315,0.97232; 5.887,0.97232; 5.9811,0.97233; 6.1216,0.97233;
        6.1854,0.97233; 6.294,0.97233; 6.358,0.97233; 6.485,0.97233; 6.548,
        0.97231; 6.7065,0.97231; 6.7696,0.97233; 6.9296,0.97233; 6.9916,
        0.97233; 7.134,0.97233; 7.1961,0.97231; 7.3074,0.97232; 7.3867,0.97232;
        7.5117,0.97232; 7.5905,0.97231; 7.716,0.97231; 7.7797,0.97235; 7.9215,
        0.97235; 7.9837,0.97232; 8.1246,0.97232; 8.1718,0.97232; 8.2964,
        0.97232; 8.3736,0.97229; 8.4996,0.97229; 8.5626,0.97232; 8.7029,
        0.97232; 8.7658,0.97233], extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint)
    annotation (Placement(transformation(extent={{100,0},{80,20}})));
  Modelica.Blocks.Sources.CombiTimeTable EXPERIMENT_A_2(table=[0.12907,-0.52325;
        0.19065,-0.52325; 0.33222,-0.52331; 0.39474,-0.52331; 0.5059,-0.52337;
        0.58502,-0.52337; 0.69704,-0.52325; 0.793,-0.52325; 0.94964,-0.52325;
        0.99666,-0.52325; 1.1222,-0.52331; 1.1863,-0.52331; 1.3281,-0.52331;
        1.3906,-0.52331; 1.5004,-0.52325; 1.5631,-0.52325; 1.6896,-0.52325;
        1.7521,-0.52325; 1.9095,-0.52325; 1.9719,-0.52325; 2.114,-0.52331;
        2.1771,-0.52331; 2.3041,-0.52325; 2.3681,-0.52325; 2.4962,-0.52325;
        2.5755,-0.52325; 2.6833,-0.52325; 2.7457,-0.52325; 2.8856,-0.52331;
        2.9475,-0.52331; 3.0752,-0.52331; 3.1375,-0.52331; 3.1998,-0.52331;
        3.3412,-0.52337; 3.4667,-0.52337; 3.5297,-0.52325; 3.5926,-0.52325;
        3.7011,-0.52325; 3.7486,-0.52325; 3.9059,-0.52325; 3.9686,-0.52325;
        4.1106,-0.52325; 4.1576,-0.52325; 4.2994,-0.52337; 4.3771,-0.52337;
        4.4886,-0.52325; 4.568,-0.52325; 4.7086,-0.52325; 4.7721,-0.52325;
        4.9139,-0.52325; 4.9768,-0.52325; 5.1012,-0.52354; 5.1481,-0.52354;
        5.2747,-0.52354; 5.3376,-0.52325; 5.4796,-0.52325; 5.5437,-0.52325;
        5.6686,-0.52325; 5.7315,-0.52331; 5.887,-0.52331; 5.9811,-0.52331;
        6.1216,-0.52331; 6.1854,-0.52331; 6.294,-0.52331; 6.358,-0.52331;
        6.485,-0.52331; 6.548,-0.52331; 6.7065,-0.52331; 6.7696,-0.52331;
        6.9296,-0.52331; 6.9916,-0.52331; 7.134,-0.52337; 7.1961,-0.52337;
        7.3074,-0.52331; 7.3867,-0.52331; 7.5117,-0.52325; 7.5905,-0.52325;
        7.716,-0.52331; 7.7797,-0.52331; 7.9215,-0.52331; 7.9837,-0.52331;
        8.1246,-0.52337; 8.1718,-0.52337; 8.2964,-0.52331; 8.3736,-0.52331;
        8.4996,-0.52331; 8.5626,-0.52331; 8.7029,-0.52331; 8.7658,-0.52331],
      extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint)
    annotation (Placement(transformation(extent={{100,0},{80,-20}})));
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
  OpenRESV.Electrical.Renewables.PSSE.PV PV_WITH_NO_MODIFIED_MODELS(
    V_b=353.92049703035,
    P_0(displayUnit="W") = EXPERIMENT_P.table[1, 2],
    Q_0(displayUnit="V.A") = EXPERIMENT_Q.table[1, 2],
    angle_0(displayUnit="rad"),
    QFunctionality=0,
    redeclare
      OpenRESV.Electrical.Renewables.PSSE.InverterInterface.REGCA1
      RenewableGenerator(Tg=0.01, Tfltr=0.01),
    redeclare
      OpenRESV.Electrical.Renewables.PSSE.ElectricalController.REECB1
      RenewableController(
      Trv=0.01,
      dbd1=-0.0001,
      dbd2=0.0001,
      Kqv=0,
      Tp=0.01,
      Tiq=0.01,
      Tpord=0.01),
    redeclare
      OpenRESV.Electrical.Renewables.PSSE.PlantController.REPCA1
      PlantController) annotation (Placement(transformation(extent={{-130,
            -130},{-110,-110}})));
  OpenRESV.Electrical.Buses.Bus InverterBus3(V_b=353.92049703035, angle_0
      =0) annotation (Placement(transformation(extent={{-80,-130},{-60,-110}})));
  OpenRESV.Electrical.Sources.VoltageSourceReImInput voltageSourceReImInput2(V_b=
        353.920497030345)
    annotation (Placement(transformation(extent={{30,-130},{10,-110}})));
  OpenRESV.Electrical.Buses.Bus SEL_735_PQ_Meter_Bus_3(V_b=353.92049703035,
      angle_0=0)
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
  Modelica.Blocks.Sources.CombiTimeTable EXPERIMENT_V_3(table=[0.12907,1;
        0.19065,1; 0.33222,1; 0.39474,1; 0.5059,1; 0.58502,1; 0.69704,1;
        0.793,1; 0.94964,1; 0.99666,1; 1.1222,1; 1.1863,1; 1.3281,1; 1.3906,
        0.99997; 1.5004,0.99997; 1.5631,1; 1.6896,1; 1.7521,0.99999; 1.9095,
        0.99999; 1.9719,1; 2.114,1; 2.1771,1; 2.3041,1; 2.3681,1; 2.4962,
        1; 2.5755,1; 2.6833,1; 2.7457,1; 2.8856,1; 2.9475,1; 3.0752,1; 3.1375,
        0.99997; 3.1998,0.99997; 3.3412,0.99999; 3.4667,0.99999; 3.5297,
        1; 3.5926,1; 3.7011,1; 3.7486,1; 3.9059,1; 3.9686,1; 4.1106,1; 4.1576,
        0.99999; 4.2994,0.99999; 4.3771,1; 4.4886,1; 4.568,1; 4.7086,1;
        4.7721,1; 4.9139,1; 4.9768,0.99998; 5.1012,0.99998; 5.1481,0.99579;
        5.2747,0.99579; 5.3376,0.9723; 5.4796,0.9723; 5.5437,0.97233; 5.6686,
        0.97233; 5.7315,0.97232; 5.887,0.97232; 5.9811,0.97233; 6.1216,0.97233;
        6.1854,0.97233; 6.294,0.97233; 6.358,0.97233; 6.485,0.97233; 6.548,
        0.97231; 6.7065,0.97231; 6.7696,0.97233; 6.9296,0.97233; 6.9916,
        0.97233; 7.134,0.97233; 7.1961,0.97231; 7.3074,0.97232; 7.3867,0.97232;
        7.5117,0.97232; 7.5905,0.97231; 7.716,0.97231; 7.7797,0.97235; 7.9215,
        0.97235; 7.9837,0.97232; 8.1246,0.97232; 8.1718,0.97232; 8.2964,
        0.97232; 8.3736,0.97229; 8.4996,0.97229; 8.5626,0.97232; 8.7029,
        0.97232; 8.7658,0.97233], extrapolation=Modelica.Blocks.Types.Extrapolation.LastTwoPoints)
    annotation (Placement(transformation(extent={{100,-120},{80,-100}})));
  Modelica.Blocks.Sources.CombiTimeTable EXPERIMENT_A_3(table=[0.12907,-0.52325;
        0.19065,-0.52325; 0.33222,-0.52331; 0.39474,-0.52331; 0.5059,-0.52337;
        0.58502,-0.52337; 0.69704,-0.52325; 0.793,-0.52325; 0.94964,-0.52325;
        0.99666,-0.52325; 1.1222,-0.52331; 1.1863,-0.52331; 1.3281,-0.52331;
        1.3906,-0.52331; 1.5004,-0.52325; 1.5631,-0.52325; 1.6896,-0.52325;
        1.7521,-0.52325; 1.9095,-0.52325; 1.9719,-0.52325; 2.114,-0.52331;
        2.1771,-0.52331; 2.3041,-0.52325; 2.3681,-0.52325; 2.4962,-0.52325;
        2.5755,-0.52325; 2.6833,-0.52325; 2.7457,-0.52325; 2.8856,-0.52331;
        2.9475,-0.52331; 3.0752,-0.52331; 3.1375,-0.52331; 3.1998,-0.52331;
        3.3412,-0.52337; 3.4667,-0.52337; 3.5297,-0.52325; 3.5926,-0.52325;
        3.7011,-0.52325; 3.7486,-0.52325; 3.9059,-0.52325; 3.9686,-0.52325;
        4.1106,-0.52325; 4.1576,-0.52325; 4.2994,-0.52337; 4.3771,-0.52337;
        4.4886,-0.52325; 4.568,-0.52325; 4.7086,-0.52325; 4.7721,-0.52325;
        4.9139,-0.52325; 4.9768,-0.52325; 5.1012,-0.52354; 5.1481,-0.52354;
        5.2747,-0.52354; 5.3376,-0.52325; 5.4796,-0.52325; 5.5437,-0.52325;
        5.6686,-0.52325; 5.7315,-0.52331; 5.887,-0.52331; 5.9811,-0.52331;
        6.1216,-0.52331; 6.1854,-0.52331; 6.294,-0.52331; 6.358,-0.52331;
        6.485,-0.52331; 6.548,-0.52331; 6.7065,-0.52331; 6.7696,-0.52331;
        6.9296,-0.52331; 6.9916,-0.52331; 7.134,-0.52337; 7.1961,-0.52337;
        7.3074,-0.52331; 7.3867,-0.52331; 7.5117,-0.52325; 7.5905,-0.52325;
        7.716,-0.52331; 7.7797,-0.52331; 7.9215,-0.52331; 7.9837,-0.52331;
        8.1246,-0.52337; 8.1718,-0.52337; 8.2964,-0.52331; 8.3736,-0.52331;
        8.4996,-0.52331; 8.5626,-0.52331; 8.7029,-0.52331; 8.7658,-0.52331],
      extrapolation=Modelica.Blocks.Types.Extrapolation.LastTwoPoints)
    annotation (Placement(transformation(extent={{100,-120},{80,-140}})));
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
        0.12907,3.3298; 0.19065,3.3298; 0.33222,3.3298; 0.39474,3.3298;
        0.5059,3.3298; 0.58502,3.3231; 0.69704,3.3231; 0.793,3.3331;
        0.94964,3.3331; 0.99666,3.3331; 1.1222,3.3331; 1.1863,3.3331;
        1.3281,3.3331; 1.3906,3.3265; 1.5004,3.3264; 1.5631,3.3331;
        1.6896,3.3331; 1.7521,3.3331; 1.9095,3.3331; 1.9719,3.3331; 2.114,
        3.3331; 2.1771,3.3331; 2.3041,3.3331; 2.3681,3.3331; 2.4962,
        3.3331; 2.5755,3.3331; 2.6833,3.3331; 2.7457,3.3331; 2.8856,
        3.3331; 2.9475,3.3364; 3.0752,3.3364; 3.1375,3.3298; 3.1998,
        3.3298; 3.3412,3.3298; 3.4667,3.3298; 3.5297,3.3331; 3.5926,
        3.3331; 3.7011,3.3331; 3.7486,3.3364; 3.9059,3.3364; 3.9686,
        3.3331; 4.1106,3.3331; 4.1576,3.3331; 4.2994,3.3331; 4.3771,
        3.3265; 4.4886,3.3264; 4.568,3.3331; 4.7086,3.3331; 4.7721,3.3331;
        4.9139,3.3331; 4.9768,3.3331; 5.1012,3.3331; 5.1481,3.4131;
        5.2747,3.4131; 5.3376,3.4298; 5.4796,3.4298; 5.5437,3.4131;
        5.6686,3.4131; 5.7315,3.4165; 5.887,3.4165; 5.9811,3.4098; 6.1216,
        3.4098; 6.1854,3.4165; 6.294,3.4165; 6.358,3.4165; 6.485,3.4165;
        6.548,3.4098; 6.7065,3.4098; 6.7696,3.4165; 6.9296,3.4165; 6.9916,
        3.4065; 7.134,3.4065; 7.1961,3.4065; 7.3074,3.4131; 7.3867,3.4131;
        7.5117,3.4131; 7.5905,3.4131; 7.716,3.4131; 7.7797,3.4165; 7.9215,
        3.4165; 7.9837,3.4098; 8.1246,3.4098; 8.1718,3.4098; 8.2964,
        3.4098; 8.3736,3.4065; 8.4996,3.4065; 8.5626,3.4065; 8.7029,
        3.4065; 8.7658,3.4165],
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
  Modelica.Blocks.Sources.CombiTimeTable VOLTAGE(table=[0.12907,350.94;
        0.19065,350.94; 0.33222,350.94; 0.39474,350.94; 0.5059,350.94;
        0.58502,350.94; 0.69704,350.94; 0.793,350.94; 0.94964,350.95;
        0.99666,350.95; 1.1222,350.95; 1.1863,350.95; 1.3281,350.95;
        1.3906,350.93; 1.5004,350.93; 1.5631,350.94; 1.6896,350.94;
        1.7521,350.94; 1.9095,350.94; 1.9719,350.94; 2.114,350.94; 2.1771,
        350.94; 2.3041,350.94; 2.3681,350.94; 2.4962,350.94; 2.5755,
        350.94; 2.6833,350.94; 2.7457,350.94; 2.8856,350.94; 2.9475,
        350.95; 3.0752,350.95; 3.1375,350.93; 3.1998,350.93; 3.3412,
        350.94; 3.4667,350.94; 3.5297,350.94; 3.5926,350.94; 3.7011,
        350.94; 3.7486,350.94; 3.9059,350.94; 3.9686,350.94; 4.1106,
        350.94; 4.1576,350.94; 4.2994,350.94; 4.3771,350.94; 4.4886,
        350.94; 4.568,350.95; 4.7086,350.95; 4.7721,350.95; 4.9139,350.95;
        4.9768,350.93; 5.1012,350.93; 5.1481,349.46; 5.2747,349.46;
        5.3376,341.22; 5.4796,341.22; 5.5437,341.23; 5.6686,341.23;
        5.7315,341.22; 5.887,341.22; 5.9811,341.23; 6.1216,341.23; 6.1854,
        341.23; 6.294,341.23; 6.358,341.23; 6.485,341.23; 6.548,341.22;
        6.7065,341.22; 6.7696,341.23; 6.9296,341.23; 6.9916,341.23; 7.134,
        341.23; 7.1961,341.22; 7.3074,341.22; 7.3867,341.22; 7.5117,
        341.22; 7.5905,341.22; 7.716,341.22; 7.7797,341.23; 7.9215,341.23;
        7.9837,341.22; 8.1246,341.22; 8.1718,341.22; 8.2964,341.22;
        8.3736,341.21; 8.4996,341.21; 8.5626,341.22; 8.7029,341.22;
        8.7658,341.23], extrapolation=Modelica.Blocks.Types.Extrapolation.LastTwoPoints)
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
  connect(SEL_735_PQ_Meter_Bus_1.p, voltageSourceReImInput.p)
    annotation (Line(points={{-10,120},{9,120}}, color={0,0,255}));
  connect(pwLine1.p,InverterBus1. p)
    annotation (Line(points={{-49,120},{-70,120}}, color={0,0,255}));
  connect(SIMULATION_I_Ang_REECB.y, SIMULATION_IAng_REECB.u)
    annotation (Line(points={{-67,84},{-46,84}}, color={0,0,127}));
  connect(EXPERIMENT_A_1.y[1], COS.u) annotation (Line(points={{79,110},
          {78,110},{78,88},{60.8,88}}, color={0,0,127}));
  connect(SIN.u, EXPERIMENT_A_1.y[1]) annotation (Line(points={{60.8,100},
          {78,100},{78,110},{79,110}}, color={0,0,127}));
  connect(voltageSourceReImInput.vRe, product1.y)
    annotation (Line(points={{32,124},{32,131},{37.7,131}},
                                                         color={0,0,127}));
  connect(voltageSourceReImInput.vIm, product2.y)
    annotation (Line(points={{32,116},{32,111},{37.7,111}},
                                                         color={0,0,127}));
  connect(COS.y, product1.u2) annotation (Line(points={{51.6,88},{44,88},
          {44,66},{112,66},{112,152},{44.6,152},{44.6,132.8}},
                                                   color={0,0,127}));
  connect(EXPERIMENT_V_1.y[1], product1.u1) annotation (Line(points={{79,
          130},{50,130},{50,129.2},{44.6,129.2}}, color={0,0,127}));
  connect(SIN.y, product2.u1) annotation (Line(points={{51.6,100},{48,100},
          {48,109.2},{44.6,109.2}},
                        color={0,0,127}));
  connect(product2.u2, EXPERIMENT_V_1.y[1]) annotation (Line(points={{44.6,
          112.8},{79,112.8},{79,130}}, color={0,0,127}));
  connect(pwLine1.n, SEL_735_PQ_Meter_Bus_1.p)
    annotation (Line(points={{-31,120},{-10,120}}, color={0,0,255}));
  connect(PV_with_REECA.pwPin, InverterBus2.p)
    annotation (Line(points={{-110,0},{-70,0}}, color={0,0,255}));
  connect(SEL_735_PQ_Meter_Bus_2.p, voltageSourceReImInput1.p)
    annotation (Line(points={{-10,0},{9,0}}, color={0,0,255}));
  connect(pwLine2.p,InverterBus2. p)
    annotation (Line(points={{-49,0},{-70,0}},     color={0,0,255}));
  connect(EXPERIMENT_A_2.y[1], COS1.u) annotation (Line(points={{79,-10},
          {78,-10},{78,-32},{60.8,-32}}, color={0,0,127}));
  connect(SIN1.u, EXPERIMENT_A_2.y[1]) annotation (Line(points={{60.8,-20},
          {78,-20},{78,-10},{79,-10}}, color={0,0,127}));
  connect(voltageSourceReImInput1.vRe, product3.y)
    annotation (Line(points={{32,4},{32,11},{37.7,11}},     color={0,0,127}));
  connect(voltageSourceReImInput1.vIm, product4.y)
    annotation (Line(points={{32,-4},{32,-9},{37.7,-9}},    color={0,0,127}));
  connect(COS1.y, product3.u2) annotation (Line(points={{51.6,-32},{44,
          -32},{44,-54},{112,-54},{112,32},{44.6,32},{44.6,12.8}},
                                                               color={0,0,127}));
  connect(EXPERIMENT_V_2.y[1], product3.u1) annotation (Line(points={{79,
          10},{50,10},{50,9.2},{44.6,9.2}}, color={0,0,127}));
  connect(SIN1.y, product4.u1) annotation (Line(points={{51.6,-20},{48,
          -20},{48,-10.8},{44.6,-10.8}},
                                color={0,0,127}));
  connect(product4.u2, EXPERIMENT_V_2.y[1]) annotation (Line(points={{44.6,
          -7.2},{79,-7.2},{79,10}}, color={0,0,127}));
  connect(pwLine2.n, SEL_735_PQ_Meter_Bus_2.p)
    annotation (Line(points={{-31,0},{-10,0}}, color={0,0,255}));
  connect(PV_WITH_NO_MODIFIED_MODELS.pwPin, InverterBus3.p) annotation (
     Line(points={{-110,-120},{-70,-120}}, color={0,0,255}));
  connect(SEL_735_PQ_Meter_Bus_3.p, voltageSourceReImInput2.p)
    annotation (Line(points={{-10,-120},{9,-120}}, color={0,0,255}));
  connect(pwLine3.p,InverterBus3. p)
    annotation (Line(points={{-49,-120},{-70,-120}},
                                                   color={0,0,255}));
  connect(SIMULATION_I_Ang_REECA_NO_Kqv.y, SIMULATION_IAng_REECB_NO_Kqv.u)
    annotation (Line(points={{-67,-150},{-50,-150}}, color={0,0,127}));
  connect(EXPERIMENT_A_3.y[1], COS2.u) annotation (Line(points={{79,-130},
          {78,-130},{78,-152},{60.8,-152}}, color={0,0,127}));
  connect(SIN2.u, EXPERIMENT_A_3.y[1]) annotation (Line(points={{60.8,-140},
          {78,-140},{78,-130},{79,-130}}, color={0,0,127}));
  connect(voltageSourceReImInput2.vRe, product5.y) annotation (Line(points={{32,-116},
          {32,-109},{37.7,-109}},            color={0,0,127}));
  connect(voltageSourceReImInput2.vIm, product6.y) annotation (Line(points={{32,-124},
          {32,-129},{37.7,-129}},            color={0,0,127}));
  connect(COS2.y, product5.u2) annotation (Line(points={{51.6,-152},{44,
          -152},{44,-174},{112,-174},{112,-88},{44.6,-88},{44.6,-107.2}},
        color={0,0,127}));
  connect(EXPERIMENT_V_3.y[1], product5.u1) annotation (Line(points={{79,
          -110},{50,-110},{50,-110.8},{44.6,-110.8}}, color={0,0,127}));
  connect(SIN2.y, product6.u1) annotation (Line(points={{51.6,-140},{48,
          -140},{48,-130.8},{44.6,-130.8}}, color={0,0,127}));
  connect(product6.u2, EXPERIMENT_V_3.y[1]) annotation (Line(points={{44.6,
          -127.2},{79,-127.2},{79,-110}}, color={0,0,127}));
  connect(pwLine3.n, SEL_735_PQ_Meter_Bus_3.p)
    annotation (Line(points={{-31,-120},{-10,-120}}, color={0,0,255}));
  connect(SIMULATION_I_Ang_REECA.y, SIMULATION_IAng_REECA.u)
    annotation (Line(points={{-67,-30},{-50,-30}}, color={0,0,127}));
  annotation (Icon(coordinateSystem(preserveAspectRatio=false, extent={{-160,
            -240},{160,240}})),                                  Diagram(
        coordinateSystem(preserveAspectRatio=false, extent={{-160,-240},
            {160,240}}), graphics={
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
<p> Run the simulation for t=8.76 seconds. </p>
</html>"));
end VoltageVariation_350_to_340_V;
