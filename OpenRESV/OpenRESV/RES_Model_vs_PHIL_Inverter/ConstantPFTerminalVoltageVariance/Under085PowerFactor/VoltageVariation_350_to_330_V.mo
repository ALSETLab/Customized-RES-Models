within OpenRESV.RES_Model_vs_PHIL_Inverter.ConstantPFTerminalVoltageVariance.Under085PowerFactor;
model VoltageVariation_350_to_330_V "Voltage drop from 350 V to 330 V"
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
  Modelica.Blocks.Sources.CombiTimeTable EXPERIMENT_P(table=[0.077046,
        1030.3; 0.15395,1030.3; 0.29358,1028.4; 0.43438,1028.4; 0.49787,
        1031.9; 0.54389,1031.9; 0.69879,1031.5; 0.74567,1030.4; 0.8557,
        1030.4; 0.91768,1030.4; 1.0283,1030.4; 1.0917,1030.7; 1.1556,
        1030.7; 1.2956,1028.1; 1.4351,1028.1; 1.4989,1032.1; 1.5461,
        1032.1; 1.6864,1031.3; 1.75,1030.2; 1.873,1030.4; 1.9502,1030.4;
        2.0607,1030.6; 2.1381,1030.6; 2.2627,1030.9; 2.3252,1029.9;
        2.4657,1029.4; 2.5267,1030.4; 2.6677,1030.6; 2.7308,1030.6;
        2.8568,1030.4; 2.9187,1029.3; 3.0426,1029.3; 3.1053,1029.4;
        3.2467,1029.4; 3.3247,1030.7; 3.4489,1030.4; 3.4951,1030.4;
        3.5576,1030.4; 3.7136,1030.6; 3.8236,1030.6; 3.8856,1030.7;
        3.9466,1030.7; 4.0545,1034.1; 4.131,1069.6; 4.2694,1072; 4.3311,
        1028.2; 4.4509,1028.3; 4.5144,1027.2; 4.6244,1027.2; 4.7033,
        1028.5; 4.8289,1028.5; 4.89,1028.5; 4.9519,1028.5; 5.0759,1027.4;
        5.1384,1027.4; 5.2628,1027.6; 5.3237,1028.6; 5.4482,1028.6;
        5.4948,1027.6; 5.5576,1027.6; 5.7127,1027.4; 5.8205,1027.4;
        5.8818,1027.6; 5.9434,1027.6; 6.0524,1027.6; 6.1307,1028.6;
        6.2713,1028.7; 6.3337,1026.8; 6.4436,1026.7; 6.5054,1026.7;
        6.6479,1026.7; 6.7265,1027.3; 6.8646,1027.2; 6.9263,1026.2;
        7.0496,1026.9; 7.111,1026.9],
                        extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint)
    annotation (Placement(transformation(extent={{-68,180},{-48,200}})));
  Modelica.Blocks.Sources.CombiTimeTable EXPERIMENT_Q(table=[0.077046,-553.74;
        0.15395,-553.74; 0.29358,-552.33; 0.43438,-552.33; 0.49787,-553.28;
        0.54389,-553.28; 0.69879,-554.13; 0.74567,-553.57; 0.8557,-553.56;
        0.91768,-553.57; 1.0283,-553.57; 1.0917,-553.02; 1.1556,-553.02;
        1.2956,-552.95; 1.4351,-552.95; 1.4989,-552.92; 1.5461,-552.92;
        1.6864,-554.48; 1.75,-553.92; 1.873,-553.68; 1.9502,-553.68;
        2.0607,-553.21; 2.1381,-553.21; 2.2627,-552.6; 2.3252,-552.04;
        2.4657,-553; 2.5267,-553.56; 2.6677,-553.26; 2.7308,-553.28;
        2.8568,-553.64; 2.9187,-553.06; 3.0426,-553.12; 3.1053,-553.06;
        3.2467,-553; 3.3247,-553.04; 3.4489,-553.57; 3.4951,-553.56;
        3.5576,-553.56; 3.7136,-553.22; 3.8236,-553.22; 3.8856,-553.1;
        3.9466,-553.1; 4.0545,-546.7; 4.131,-565.43; 4.2694,-560.83;
        4.3311,-537.92; 4.4509,-537.78; 4.5144,-537.2; 4.6244,-537.2;
        4.7033,-536.94; 4.8289,-536.94; 4.89,-536.93; 4.9519,-536.93;
        5.0759,-536.74; 5.1384,-536.74; 5.2628,-536.32; 5.3237,-536.81;
        5.4482,-536.87; 5.4948,-536.37; 5.5576,-536.37; 5.7127,-536.79;
        5.8205,-536.79; 5.8818,-536.37; 5.9434,-536.37; 6.0524,-536.37;
        6.1307,-536.88; 6.2713,-536.63; 6.3337,-535.61; 6.4436,-535.79;
        6.5054,-535.79; 6.6479,-535.79; 6.7265,-536.89; 6.8646,-537.01;
        6.9263,-536.48; 7.0496,-535.29; 7.111,-535.3],
                 extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint)
    annotation (Placement(transformation(extent={{-38,180},{-18,200}})));
  Modelica.Blocks.Sources.CombiTimeTable V(table=[0.077046,1; 0.15395,1;
        0.29358,1; 0.43438,1; 0.49787,1; 0.54389,1; 0.69879,1; 0.74567,1;
        0.8557,1; 0.91768,1; 1.0283,1; 1.0917,0.99999; 1.1556,0.99999;
        1.2956,0.99999; 1.4351,0.99999; 1.4989,1; 1.5461,1; 1.6864,1;
        1.75,1; 1.873,1; 1.9502,1; 2.0607,1; 2.1381,1; 2.2627,1; 2.3252,1;
        2.4657,1; 2.5267,1; 2.6677,1; 2.7308,1; 2.8568,1; 2.9187,0.99998;
        3.0426,0.99998; 3.1053,1; 3.2467,1; 3.3247,1; 3.4489,1; 3.4951,1;
        3.5576,1; 3.7136,1; 3.8236,1; 3.8856,1; 3.9466,1; 4.0545,1; 4.131,
        0.98225; 4.2694,0.98225; 4.3311,0.94482; 4.4509,0.94482; 4.5144,
        0.94468; 4.6244,0.94468; 4.7033,0.94468; 4.8289,0.94468; 4.89,
        0.94467; 4.9519,0.94467; 5.0759,0.94469; 5.1384,0.94469; 5.2628,
        0.94469; 5.3237,0.94467; 5.4482,0.94467; 5.4948,0.94468; 5.5576,
        0.94468; 5.7127,0.94467; 5.8205,0.94467; 5.8818,0.94467; 5.9434,
        0.94467; 6.0524,0.94467; 6.1307,0.94468; 6.2713,0.94468; 6.3337,
        0.94468; 6.4436,0.94468; 6.5054,0.94468; 6.6479,0.94468; 6.7265,
        0.94466; 6.8646,0.94466; 6.9263,0.94465; 7.0496,0.94465; 7.111,
        0.94466],
      extrapolation=Modelica.Blocks.Types.Extrapolation.LastTwoPoints)
    annotation (Placement(transformation(extent={{100,120},{80,140}})));
  Modelica.Blocks.Sources.CombiTimeTable A(table=[0.077046,-0.52325;
        0.15395,-0.52325; 0.29358,-0.52325; 0.43438,-0.52325; 0.49787,-0.52325;
        0.54389,-0.52325; 0.69879,-0.52325; 0.74567,-0.52325; 0.8557,-0.52325;
        0.91768,-0.52325; 1.0283,-0.52325; 1.0917,-0.52325; 1.1556,-0.52325;
        1.2956,-0.52331; 1.4351,-0.52331; 1.4989,-0.52325; 1.5461,-0.52325;
        1.6864,-0.52325; 1.75,-0.52325; 1.873,-0.52325; 1.9502,-0.52325;
        2.0607,-0.52325; 2.1381,-0.52325; 2.2627,-0.52325; 2.3252,-0.52325;
        2.4657,-0.52325; 2.5267,-0.52325; 2.6677,-0.52325; 2.7308,-0.52325;
        2.8568,-0.52325; 2.9187,-0.52325; 3.0426,-0.52331; 3.1053,-0.52331;
        3.2467,-0.52325; 3.3247,-0.52325; 3.4489,-0.52331; 3.4951,-0.52331;
        3.5576,-0.52331; 3.7136,-0.52325; 3.8236,-0.52325; 3.8856,-0.52325;
        3.9466,-0.52325; 4.0545,-0.52377; 4.131,-0.52377; 4.2694,-0.52319;
        4.3311,-0.52319; 4.4509,-0.52342; 4.5144,-0.52342; 4.6244,-0.52342;
        4.7033,-0.52337; 4.8289,-0.52337; 4.89,-0.52342; 4.9519,-0.52342;
        5.0759,-0.52342; 5.1384,-0.52342; 5.2628,-0.52342; 5.3237,-0.52342;
        5.4482,-0.52342; 5.4948,-0.52342; 5.5576,-0.52342; 5.7127,-0.52342;
        5.8205,-0.52342; 5.8818,-0.52342; 5.9434,-0.52342; 6.0524,-0.52342;
        6.1307,-0.52342; 6.2713,-0.52342; 6.3337,-0.52342; 6.4436,-0.52342;
        6.5054,-0.52342; 6.6479,-0.52342; 6.7265,-0.52342; 6.8646,-0.52342;
        6.9263,-0.52342; 7.0496,-0.52342; 7.111,-0.52342],
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
        0.077046,-0.030104; 0.15395,-0.030104; 0.29358,-0.030399; 0.43438,
        -0.030399; 0.49787,-0.031096; 0.54389,-0.031096; 0.69879,-0.030278;
        0.74567,-0.030271; 0.8557,-0.030273; 0.91768,-0.030273; 1.0283,-0.030273;
        1.0917,-0.030795; 1.1556,-0.030795; 1.2956,-0.029854; 1.4351,-0.029854;
        1.4989,-0.031439; 1.5461,-0.031439; 1.6864,-0.029932; 1.75,-0.029926;
        1.873,-0.030162; 1.9502,-0.030162; 2.0607,-0.030616; 2.1381,-0.030616;
        2.2627,-0.031204; 2.3252,-0.03122; 2.4657,-0.030292; 2.5267,-0.030276;
        2.6677,-0.030567; 2.7308,-0.030567; 2.8568,-0.030217; 2.9187,-0.03021;
        3.0426,-0.03021; 3.1053,-0.03029; 3.2467,-0.03029; 3.3247,-0.030795;
        3.4489,-0.030337; 3.4951,-0.030337; 3.5576,-0.030337; 3.7136,-0.03062;
        3.8236,-0.03062; 3.8856,-0.030738; 3.9466,-0.030738; 4.0545,-0.037461;
        4.131,-0.037478; 4.2694,-0.041195; 4.3311,-0.041195; 4.4509,-0.041553;
        4.5144,-0.041545; 4.6244,-0.041545; 4.7033,-0.042248; 4.8289,-0.042248;
        4.89,-0.042308; 4.9519,-0.042308; 5.0759,-0.042007; 5.1384,-0.042007;
        5.2628,-0.042414; 5.3237,-0.042422; 5.4482,-0.042365; 5.4948,-0.042358;
        5.5576,-0.042358; 5.7127,-0.041949; 5.8205,-0.041949; 5.8818,-0.042357;
        5.9434,-0.042357; 6.0524,-0.042358; 6.1307,-0.042366; 6.2713,-0.042598;
        6.3337,-0.042604; 6.4436,-0.042426; 6.5054,-0.042426; 6.6479,-0.042426;
        6.7265,-0.041837; 6.8646,-0.041722; 6.9263,-0.041735; 7.0496,-0.042894;
        7.111,-0.042894],                extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint)
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
  Modelica.Blocks.Sources.CombiTimeTable V1(table=[0.077046,1; 0.15395,1;
        0.29358,1; 0.43438,1; 0.49787,1; 0.54389,1; 0.69879,1; 0.74567,1;
        0.8557,1; 0.91768,1; 1.0283,1; 1.0917,0.99999; 1.1556,0.99999;
        1.2956,0.99999; 1.4351,0.99999; 1.4989,1; 1.5461,1; 1.6864,1;
        1.75,1; 1.873,1; 1.9502,1; 2.0607,1; 2.1381,1; 2.2627,1; 2.3252,1;
        2.4657,1; 2.5267,1; 2.6677,1; 2.7308,1; 2.8568,1; 2.9187,0.99998;
        3.0426,0.99998; 3.1053,1; 3.2467,1; 3.3247,1; 3.4489,1; 3.4951,1;
        3.5576,1; 3.7136,1; 3.8236,1; 3.8856,1; 3.9466,1; 4.0545,1; 4.131,
        0.98225; 4.2694,0.98225; 4.3311,0.94482; 4.4509,0.94482; 4.5144,
        0.94468; 4.6244,0.94468; 4.7033,0.94468; 4.8289,0.94468; 4.89,
        0.94467; 4.9519,0.94467; 5.0759,0.94469; 5.1384,0.94469; 5.2628,
        0.94469; 5.3237,0.94467; 5.4482,0.94467; 5.4948,0.94468; 5.5576,
        0.94468; 5.7127,0.94467; 5.8205,0.94467; 5.8818,0.94467; 5.9434,
        0.94467; 6.0524,0.94467; 6.1307,0.94468; 6.2713,0.94468; 6.3337,
        0.94468; 6.4436,0.94468; 6.5054,0.94468; 6.6479,0.94468; 6.7265,
        0.94466; 6.8646,0.94466; 6.9263,0.94465; 7.0496,0.94465; 7.111,
        0.94466],
      extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint)
    annotation (Placement(transformation(extent={{100,0},{80,20}})));
  Modelica.Blocks.Sources.CombiTimeTable A1(table=[0.077046,-0.52325;
        0.15395,-0.52325; 0.29358,-0.52325; 0.43438,-0.52325; 0.49787,-0.52325;
        0.54389,-0.52325; 0.69879,-0.52325; 0.74567,-0.52325; 0.8557,-0.52325;
        0.91768,-0.52325; 1.0283,-0.52325; 1.0917,-0.52325; 1.1556,-0.52325;
        1.2956,-0.52331; 1.4351,-0.52331; 1.4989,-0.52325; 1.5461,-0.52325;
        1.6864,-0.52325; 1.75,-0.52325; 1.873,-0.52325; 1.9502,-0.52325;
        2.0607,-0.52325; 2.1381,-0.52325; 2.2627,-0.52325; 2.3252,-0.52325;
        2.4657,-0.52325; 2.5267,-0.52325; 2.6677,-0.52325; 2.7308,-0.52325;
        2.8568,-0.52325; 2.9187,-0.52325; 3.0426,-0.52331; 3.1053,-0.52331;
        3.2467,-0.52325; 3.3247,-0.52325; 3.4489,-0.52331; 3.4951,-0.52331;
        3.5576,-0.52331; 3.7136,-0.52325; 3.8236,-0.52325; 3.8856,-0.52325;
        3.9466,-0.52325; 4.0545,-0.52377; 4.131,-0.52377; 4.2694,-0.52319;
        4.3311,-0.52319; 4.4509,-0.52342; 4.5144,-0.52342; 4.6244,-0.52342;
        4.7033,-0.52337; 4.8289,-0.52337; 4.89,-0.52342; 4.9519,-0.52342;
        5.0759,-0.52342; 5.1384,-0.52342; 5.2628,-0.52342; 5.3237,-0.52342;
        5.4482,-0.52342; 5.4948,-0.52342; 5.5576,-0.52342; 5.7127,-0.52342;
        5.8205,-0.52342; 5.8818,-0.52342; 5.9434,-0.52342; 6.0524,-0.52342;
        6.1307,-0.52342; 6.2713,-0.52342; 6.3337,-0.52342; 6.4436,-0.52342;
        6.5054,-0.52342; 6.6479,-0.52342; 6.7265,-0.52342; 6.8646,-0.52342;
        6.9263,-0.52342; 7.0496,-0.52342; 7.111,-0.52342],
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
 OpenRESV.Electrical.Renewables.PSSE.PV PV_WITH_NO_MODIFIED_MODELS(
    V_b=353.92049703035,
    P_0(displayUnit="W") = EXPERIMENT_P.table[1, 2],
    Q_0(displayUnit="V.A") = EXPERIMENT_Q.table[1, 2],
    angle_0(displayUnit="rad"),
    QFunctionality=0,
    redeclare OpenRESV.Electrical.Renewables.PSSE.InverterInterface.REGCA1
      RenewableGenerator(Tg=0.01, Tfltr=0.01),
    redeclare OpenRESV.Electrical.Renewables.PSSE.ElectricalController.REECB1
      RenewableController(
      Trv=0.01,
      dbd1=-0.0001,
      dbd2=0.0001,
      Kqv=0,
      Tp=0.01,
      Tiq=0.01,
      Tpord=0.01),
    redeclare OpenRESV.Electrical.Renewables.PSSE.PlantController.REPCA1
      PlantController)
    annotation (Placement(transformation(extent={{-130,-130},{-110,-110}})));
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
  Modelica.Blocks.Sources.CombiTimeTable V2(table=[0.077046,1; 0.15395,1;
        0.29358,1; 0.43438,1; 0.49787,1; 0.54389,1; 0.69879,1; 0.74567,1;
        0.8557,1; 0.91768,1; 1.0283,1; 1.0917,0.99999; 1.1556,0.99999;
        1.2956,0.99999; 1.4351,0.99999; 1.4989,1; 1.5461,1; 1.6864,1;
        1.75,1; 1.873,1; 1.9502,1; 2.0607,1; 2.1381,1; 2.2627,1; 2.3252,1;
        2.4657,1; 2.5267,1; 2.6677,1; 2.7308,1; 2.8568,1; 2.9187,0.99998;
        3.0426,0.99998; 3.1053,1; 3.2467,1; 3.3247,1; 3.4489,1; 3.4951,1;
        3.5576,1; 3.7136,1; 3.8236,1; 3.8856,1; 3.9466,1; 4.0545,1; 4.131,
        0.98225; 4.2694,0.98225; 4.3311,0.94482; 4.4509,0.94482; 4.5144,
        0.94468; 4.6244,0.94468; 4.7033,0.94468; 4.8289,0.94468; 4.89,
        0.94467; 4.9519,0.94467; 5.0759,0.94469; 5.1384,0.94469; 5.2628,
        0.94469; 5.3237,0.94467; 5.4482,0.94467; 5.4948,0.94468; 5.5576,
        0.94468; 5.7127,0.94467; 5.8205,0.94467; 5.8818,0.94467; 5.9434,
        0.94467; 6.0524,0.94467; 6.1307,0.94468; 6.2713,0.94468; 6.3337,
        0.94468; 6.4436,0.94468; 6.5054,0.94468; 6.6479,0.94468; 6.7265,
        0.94466; 6.8646,0.94466; 6.9263,0.94465; 7.0496,0.94465; 7.111,
        0.94466],                        extrapolation=Modelica.Blocks.Types.Extrapolation.LastTwoPoints)
    annotation (Placement(transformation(extent={{100,-120},{80,-100}})));
  Modelica.Blocks.Sources.CombiTimeTable A2(table=[0.077046,-0.52325;
        0.15395,-0.52325; 0.29358,-0.52325; 0.43438,-0.52325; 0.49787,-0.52325;
        0.54389,-0.52325; 0.69879,-0.52325; 0.74567,-0.52325; 0.8557,-0.52325;
        0.91768,-0.52325; 1.0283,-0.52325; 1.0917,-0.52325; 1.1556,-0.52325;
        1.2956,-0.52331; 1.4351,-0.52331; 1.4989,-0.52325; 1.5461,-0.52325;
        1.6864,-0.52325; 1.75,-0.52325; 1.873,-0.52325; 1.9502,-0.52325;
        2.0607,-0.52325; 2.1381,-0.52325; 2.2627,-0.52325; 2.3252,-0.52325;
        2.4657,-0.52325; 2.5267,-0.52325; 2.6677,-0.52325; 2.7308,-0.52325;
        2.8568,-0.52325; 2.9187,-0.52325; 3.0426,-0.52331; 3.1053,-0.52331;
        3.2467,-0.52325; 3.3247,-0.52325; 3.4489,-0.52331; 3.4951,-0.52331;
        3.5576,-0.52331; 3.7136,-0.52325; 3.8236,-0.52325; 3.8856,-0.52325;
        3.9466,-0.52325; 4.0545,-0.52377; 4.131,-0.52377; 4.2694,-0.52319;
        4.3311,-0.52319; 4.4509,-0.52342; 4.5144,-0.52342; 4.6244,-0.52342;
        4.7033,-0.52337; 4.8289,-0.52337; 4.89,-0.52342; 4.9519,-0.52342;
        5.0759,-0.52342; 5.1384,-0.52342; 5.2628,-0.52342; 5.3237,-0.52342;
        5.4482,-0.52342; 5.4948,-0.52342; 5.5576,-0.52342; 5.7127,-0.52342;
        5.8205,-0.52342; 5.8818,-0.52342; 5.9434,-0.52342; 6.0524,-0.52342;
        6.1307,-0.52342; 6.2713,-0.52342; 6.3337,-0.52342; 6.4436,-0.52342;
        6.5054,-0.52342; 6.6479,-0.52342; 6.7265,-0.52342; 6.8646,-0.52342;
        6.9263,-0.52342; 7.0496,-0.52342; 7.111,-0.52342],extrapolation=
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
        0.077046,3.3331; 0.15395,3.3331; 0.29358,3.3265; 0.43438,3.3265;
        0.49787,3.3364; 0.54389,3.3364; 0.69879,3.3365; 0.74567,3.3331;
        0.8557,3.3331; 0.91768,3.3331; 1.0283,3.3331; 1.0917,3.3331;
        1.1556,3.3331; 1.2956,3.3265; 1.4351,3.3265; 1.4989,3.3364;
        1.5461,3.3364; 1.6864,3.3364; 1.75,3.3331; 1.873,3.3331; 1.9502,
        3.3331; 2.0607,3.3331; 2.1381,3.3331; 2.2627,3.3331; 2.3252,
        3.3298; 2.4657,3.3298; 2.5267,3.3331; 2.6677,3.3331; 2.7308,
        3.3331; 2.8568,3.3331; 2.9187,3.3298; 3.0426,3.3298; 3.1053,
        3.3298; 3.2467,3.3298; 3.3247,3.3331; 3.4489,3.3331; 3.4951,
        3.3331; 3.5576,3.3331; 3.7136,3.3331; 3.8236,3.3331; 3.8856,
        3.3331; 3.9466,3.3331; 4.0545,3.3332; 4.131,3.5098; 4.2694,3.5098;
        4.3311,3.4998; 4.4509,3.4998; 4.5144,3.4965; 4.6244,3.4965;
        4.7033,3.4998; 4.8289,3.4998; 4.89,3.4998; 4.9519,3.4998; 5.0759,
        3.4965; 5.1384,3.4965; 5.2628,3.4965; 5.3237,3.4998; 5.4482,
        3.4998; 5.4948,3.4965; 5.5576,3.4965; 5.7127,3.4965; 5.8205,
        3.4965; 5.8818,3.4965; 5.9434,3.4965; 6.0524,3.4965; 6.1307,
        3.4998; 6.2713,3.4998; 6.3337,3.4932; 6.4436,3.4932; 6.5054,
        3.4932; 6.6479,3.4932; 6.7265,3.4965; 6.8646,3.4965; 6.9263,
        3.4932; 7.0496,3.4932; 7.111,3.4932],
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
  Modelica.Blocks.Sources.CombiTimeTable VOLTAGE(table=[0.077046,350.93;
        0.15395,350.93; 0.29358,350.94; 0.43438,350.94; 0.49787,350.94;
        0.54389,350.94; 0.69879,350.94; 0.74567,350.94; 0.8557,350.94;
        0.91768,350.94; 1.0283,350.94; 1.0917,350.93; 1.1556,350.93;
        1.2956,350.93; 1.4351,350.93; 1.4989,350.94; 1.5461,350.94;
        1.6864,350.94; 1.75,350.94; 1.873,350.94; 1.9502,350.94; 2.0607,
        350.94; 2.1381,350.94; 2.2627,350.94; 2.3252,350.94; 2.4657,
        350.94; 2.5267,350.94; 2.6677,350.94; 2.7308,350.95; 2.8568,
        350.95; 2.9187,350.93; 3.0426,350.93; 3.1053,350.94; 3.2467,
        350.94; 3.3247,350.94; 3.4489,350.94; 3.4951,350.94; 3.5576,
        350.94; 3.7136,350.94; 3.8236,350.94; 3.8856,350.94; 3.9466,
        350.94; 4.0545,350.94; 4.131,344.7; 4.2694,344.7; 4.3311,331.57;
        4.4509,331.57; 4.5144,331.52; 4.6244,331.52; 4.7033,331.52;
        4.8289,331.52; 4.89,331.52; 4.9519,331.52; 5.0759,331.52; 5.1384,
        331.52; 5.2628,331.52; 5.3237,331.52; 5.4482,331.52; 5.4948,
        331.52; 5.5576,331.52; 5.7127,331.52; 5.8205,331.52; 5.8818,
        331.52; 5.9434,331.52; 6.0524,331.52; 6.1307,331.52; 6.2713,
        331.52; 6.3337,331.52; 6.4436,331.52; 6.5054,331.52; 6.6479,
        331.52; 6.7265,331.51; 6.8646,331.51; 6.9263,331.51; 7.0496,
        331.51; 7.111,331.51],
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
  connect(PV_WITH_NO_MODIFIED_MODELS.pwPin, InverterBus3.p)
    annotation (Line(points={{-110,-120},{-70,-120}}, color={0,0,255}));
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
      StopTime=8.7658,
      __Dymola_NumberOfIntervals=1000,
      __Dymola_Algorithm="Dassl"),
    Documentation(info="<html>
<p> Run the simulation for t=7.11 seconds. </p>
</html>"));
end VoltageVariation_350_to_330_V;
