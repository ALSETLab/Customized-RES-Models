within OpenRESV.RES_Model_vs_PHIL_Inverter_Examples.ConstantPFTerminalVoltageVariance.Over085PowerFactor;
model VoltageVariation_350_to_340_V
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
  Modelica.Blocks.Sources.CombiTimeTable EXPERIMENT_P(table=[0.10905,
        889.05; 0.17028,889.05; 0.31029,889.59; 0.3739,889.58; 0.54358,
        889.25; 0.65345,889.27; 0.73186,890.32; 0.85871,890.32; 0.92132,
        889.31; 0.98398,889.31; 1.1082,890.29; 1.1712,890.29; 1.3108,
        889.87; 1.3742,888.88; 1.5281,889.13; 1.6504,889.13; 1.729,889.89;
        1.8543,889.89; 1.9478,889.04; 2.0878,889.04; 2.1335,890.23;
        2.2589,890.23; 2.3211,889.33; 2.3834,889.33; 2.5241,889.95;
        2.6796,889.95; 2.743,888.81; 2.8666,888.81; 2.9607,889.56; 3.0999,
        888.75; 3.1929,889.75; 3.3184,889.92; 3.3654,889.92; 3.5065,
        890.55; 3.584,889.56; 3.7244,888.88; 3.7873,888.88; 3.9122,889.6;
        3.9743,889.6; 4.1449,890.23; 4.2847,889.26; 4.3469,889.15; 4.4556,
        889.15; 4.5327,889.36; 4.6734,889.36; 4.7526,890.89; 4.8615,
        890.89; 4.9218,888.55; 5.0575,888.55; 5.1354,913.17; 5.2749,
        912.88; 5.3534,889.66; 5.5094,893.16; 5.5718,887.41; 5.7273,
        887.56; 5.7893,887.55; 5.8975,887.52; 5.9749,887.52; 6.0839,
        887.69; 6.1609,887.7; 6.3026,887.74; 6.3643,887.74; 6.5049,887.67;
        6.5682,887.66; 6.723,887.41; 6.786,887.41; 6.8944,887; 6.9714,887;
        7.0803,886.17; 7.1583,888.07; 7.2998,888.54; 7.3769,887.59;
        7.5016,887.48; 7.563,888.43; 7.6888,888.43; 7.751,888.24; 7.8768,
        888.28],        extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint)
    annotation (Placement(transformation(extent={{-68,180},{-48,200}})));
  Modelica.Blocks.Sources.CombiTimeTable EXPERIMENT_Q(table=[0.10905,
        608.02; 0.17028,608.02; 0.31029,607.25; 0.3739,607.24; 0.54358,
        607.7; 0.65345,607.71; 0.73186,608.3; 0.85871,608.3; 0.92132,
        607.66; 0.98398,607.66; 1.1082,608.35; 1.1712,608.35; 1.3108,
        608.98; 1.3742,608.28; 1.5281,607.92; 1.6504,607.91; 1.729,606.77;
        1.8543,606.77; 1.9478,608.01; 2.0878,608.01; 2.1335,608.39;
        2.2589,608.39; 2.3211,607.6; 2.3834,607.6; 2.5241,608.81; 2.6796,
        608.81; 2.743,608.38; 2.8666,608.38; 2.9607,607.23; 3.0999,608.41;
        3.1929,609.12; 3.3184,608.85; 3.3654,608.85; 3.5065,607.93; 3.584,
        607.23; 3.7244,608.27; 3.7873,608.27; 3.9122,609.33; 3.9743,
        609.33; 4.1449,608.39; 4.2847,607.71; 4.3469,607.85; 4.4556,
        607.85; 4.5327,607.55; 4.6734,607.55; 4.7526,609.51; 4.8615,
        609.51; 4.9218,606.63; 5.0575,606.63; 5.1354,613.26; 5.2749,
        613.69; 5.3534,626.93; 5.5094,621.94; 5.5718,617.93; 5.7273,
        617.72; 5.7893,617.72; 5.8975,617.77; 5.9749,617.77; 6.0839,
        617.51; 6.1609,617.52; 6.3026,617.47; 6.3643,617.47; 6.5049,
        617.57; 6.5682,617.57; 6.723,617.93; 6.786,617.93; 6.8944,616.51;
        6.9714,616.51; 7.0803,617.69; 7.1583,619.03; 7.2998,618.35;
        7.3769,617.67; 7.5016,617.83; 7.563,618.51; 7.6888,618.51; 7.751,
        618.76; 7.8768,618.71],
                 extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint)
    annotation (Placement(transformation(extent={{-38,180},{-18,200}})));
  Modelica.Blocks.Sources.CombiTimeTable V(table=[0.10905,1; 0.17028,1;
        0.31029,1; 0.3739,0.99999; 0.54358,0.99999; 0.65345,1; 0.73186,1;
        0.85871,1; 0.92132,1; 0.98398,1; 1.1082,1; 1.1712,1; 1.3108,1;
        1.3742,1; 1.5281,1; 1.6504,1; 1.729,0.99999; 1.8543,0.99999;
        1.9478,0.99999; 2.0878,0.99999; 2.1335,1; 2.2589,1; 2.3211,
        0.99999; 2.3834,0.99999; 2.5241,1; 2.6796,1; 2.743,1; 2.8666,1;
        2.9607,0.99998; 3.0999,0.99998; 3.1929,1; 3.3184,1; 3.3654,1;
        3.5065,1; 3.584,0.99998; 3.7244,1; 3.7873,1; 3.9122,1; 3.9743,1;
        4.1449,1; 4.2847,1; 4.3469,0.99999; 4.4556,0.99999; 4.5327,
        0.99999; 4.6734,0.99999; 4.7526,1; 4.8615,1; 4.9218,0.99998;
        5.0575,0.99998; 5.1354,0.99721; 5.2749,0.99721; 5.3534,0.97313;
        5.5094,0.97313; 5.5718,0.97302; 5.7273,0.97302; 5.7893,0.97302;
        5.8975,0.97302; 5.9749,0.97302; 6.0839,0.97302; 6.1609,0.97303;
        6.3026,0.97303; 6.3643,0.97303; 6.5049,0.97303; 6.5682,0.97302;
        6.723,0.97302; 6.786,0.97302; 6.8944,0.97302; 6.9714,0.97302;
        7.0803,0.97302; 7.1583,0.97304; 7.2998,0.97304; 7.3769,0.97302;
        7.5016,0.97302; 7.563,0.97303; 7.6888,0.97303; 7.751,0.97303;
        7.8768,0.97303],
      extrapolation=Modelica.Blocks.Types.Extrapolation.LastTwoPoints)
    annotation (Placement(transformation(extent={{100,120},{80,140}})));
  Modelica.Blocks.Sources.CombiTimeTable A(table=[0.10905,-0.52401;
        0.17028,-0.52401; 0.31029,-0.52406; 0.3739,-0.52406; 0.54358,-0.52401;
        0.65345,-0.52401; 0.73186,-0.52401; 0.85871,-0.52401; 0.92132,-0.52401;
        0.98398,-0.52401; 1.1082,-0.52401; 1.1712,-0.52401; 1.3108,-0.52401;
        1.3742,-0.52401; 1.5281,-0.52401; 1.6504,-0.52401; 1.729,-0.52401;
        1.8543,-0.52401; 1.9478,-0.52401; 2.0878,-0.52401; 2.1335,-0.52401;
        2.2589,-0.52401; 2.3211,-0.52401; 2.3834,-0.52401; 2.5241,-0.52401;
        2.6796,-0.52401; 2.743,-0.52401; 2.8666,-0.52401; 2.9607,-0.52401;
        3.0999,-0.52401; 3.1929,-0.52401; 3.3184,-0.52401; 3.3654,-0.52401;
        3.5065,-0.52401; 3.584,-0.52401; 3.7244,-0.52401; 3.7873,-0.52401;
        3.9122,-0.52401; 3.9743,-0.52401; 4.1449,-0.52401; 4.2847,-0.52401;
        4.3469,-0.52401; 4.4556,-0.52401; 4.5327,-0.52401; 4.6734,-0.52401;
        4.7526,-0.52401; 4.8615,-0.52401; 4.9218,-0.52401; 5.0575,-0.52401;
        5.1354,-0.52441; 5.2749,-0.52395; 5.3534,-0.52395; 5.5094,-0.52401;
        5.5718,-0.52401; 5.7273,-0.52401; 5.7893,-0.52401; 5.8975,-0.52401;
        5.9749,-0.52401; 6.0839,-0.52406; 6.1609,-0.52406; 6.3026,-0.52401;
        6.3643,-0.52401; 6.5049,-0.52401; 6.5682,-0.52401; 6.723,-0.52406;
        6.786,-0.52406; 6.8944,-0.52401; 6.9714,-0.52401; 7.0803,-0.52401;
        7.1583,-0.52401; 7.2998,-0.52412; 7.3769,-0.52412; 7.5016,-0.52401;
        7.563,-0.52401; 7.6888,-0.52401; 7.751,-0.52401; 7.8768,-0.52406],
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
  Modelica.Blocks.Sources.CombiTimeTable EXPERIMENT_IAngle(table=[0.10905,
        -1.1238; 0.17028,-1.1238; 0.31029,-1.123; 0.3739,-1.123; 0.54358,
        -1.1235; 0.65345,-1.1235; 0.73186,-1.1234; 0.85871,-1.1234;
        0.92132,-1.1234; 0.98398,-1.1234; 1.1082,-1.1235; 1.1712,-1.1235;
        1.3108,-1.1242; 1.3742,-1.1241; 1.5281,-1.1237; 1.6504,-1.1237;
        1.729,-1.1224; 1.8543,-1.1224; 1.9478,-1.1238; 2.0878,-1.1238;
        2.1335,-1.1235; 2.2589,-1.1235; 2.3211,-1.1234; 2.3834,-1.1234;
        2.5241,-1.124; 2.6796,-1.124; 2.743,-1.1242; 2.8666,-1.1242;
        2.9607,-1.123; 3.0999,-1.1243; 3.1929,-1.1243; 3.3184,-1.124;
        3.3654,-1.124; 3.5065,-1.123; 3.584,-1.123; 3.7244,-1.1241;
        3.7873,-1.1241; 3.9122,-1.1246; 3.9743,-1.1246; 4.1449,-1.1235;
        4.2847,-1.1235; 4.3469,-1.1237; 4.4556,-1.1237; 4.5327,-1.1233;
        4.6734,-1.1233; 4.7526,-1.124; 4.8615,-1.124; 4.9218,-1.123;
        5.0575,-1.123; 5.1354,-1.1158; 5.2749,-1.1158; 5.3534,-1.1378;
        5.5094,-1.1323; 5.5718,-1.1323; 5.7273,-1.132; 5.7893,-1.132;
        5.8975,-1.1321; 5.9749,-1.1321; 6.0839,-1.1319; 6.1609,-1.1319;
        6.3026,-1.1317; 6.3643,-1.1317; 6.5049,-1.1319; 6.5682,-1.1319;
        6.723,-1.1323; 6.786,-1.1323; 6.8944,-1.1314; 6.9714,-1.1314;
        7.0803,-1.1327; 7.1583,-1.1327; 7.2998,-1.1321; 7.3769,-1.1321;
        7.5016,-1.1321; 7.563,-1.1322; 7.6888,-1.1322; 7.751,-1.1325;
        7.8768,-1.1325],                 extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint)
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
  Modelica.Blocks.Sources.CombiTimeTable V1(table=[0.10905,1; 0.17028,1;
        0.31029,1; 0.3739,0.99999; 0.54358,0.99999; 0.65345,1; 0.73186,1;
        0.85871,1; 0.92132,1; 0.98398,1; 1.1082,1; 1.1712,1; 1.3108,1;
        1.3742,1; 1.5281,1; 1.6504,1; 1.729,0.99999; 1.8543,0.99999;
        1.9478,0.99999; 2.0878,0.99999; 2.1335,1; 2.2589,1; 2.3211,
        0.99999; 2.3834,0.99999; 2.5241,1; 2.6796,1; 2.743,1; 2.8666,1;
        2.9607,0.99998; 3.0999,0.99998; 3.1929,1; 3.3184,1; 3.3654,1;
        3.5065,1; 3.584,0.99998; 3.7244,1; 3.7873,1; 3.9122,1; 3.9743,1;
        4.1449,1; 4.2847,1; 4.3469,0.99999; 4.4556,0.99999; 4.5327,
        0.99999; 4.6734,0.99999; 4.7526,1; 4.8615,1; 4.9218,0.99998;
        5.0575,0.99998; 5.1354,0.99721; 5.2749,0.99721; 5.3534,0.97313;
        5.5094,0.97313; 5.5718,0.97302; 5.7273,0.97302; 5.7893,0.97302;
        5.8975,0.97302; 5.9749,0.97302; 6.0839,0.97302; 6.1609,0.97303;
        6.3026,0.97303; 6.3643,0.97303; 6.5049,0.97303; 6.5682,0.97302;
        6.723,0.97302; 6.786,0.97302; 6.8944,0.97302; 6.9714,0.97302;
        7.0803,0.97302; 7.1583,0.97304; 7.2998,0.97304; 7.3769,0.97302;
        7.5016,0.97302; 7.563,0.97303; 7.6888,0.97303; 7.751,0.97303;
        7.8768,0.97303],
      extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint)
    annotation (Placement(transformation(extent={{100,0},{80,20}})));
  Modelica.Blocks.Sources.CombiTimeTable A1(table=[0.10905,-0.52401;
        0.17028,-0.52401; 0.31029,-0.52406; 0.3739,-0.52406; 0.54358,-0.52401;
        0.65345,-0.52401; 0.73186,-0.52401; 0.85871,-0.52401; 0.92132,-0.52401;
        0.98398,-0.52401; 1.1082,-0.52401; 1.1712,-0.52401; 1.3108,-0.52401;
        1.3742,-0.52401; 1.5281,-0.52401; 1.6504,-0.52401; 1.729,-0.52401;
        1.8543,-0.52401; 1.9478,-0.52401; 2.0878,-0.52401; 2.1335,-0.52401;
        2.2589,-0.52401; 2.3211,-0.52401; 2.3834,-0.52401; 2.5241,-0.52401;
        2.6796,-0.52401; 2.743,-0.52401; 2.8666,-0.52401; 2.9607,-0.52401;
        3.0999,-0.52401; 3.1929,-0.52401; 3.3184,-0.52401; 3.3654,-0.52401;
        3.5065,-0.52401; 3.584,-0.52401; 3.7244,-0.52401; 3.7873,-0.52401;
        3.9122,-0.52401; 3.9743,-0.52401; 4.1449,-0.52401; 4.2847,-0.52401;
        4.3469,-0.52401; 4.4556,-0.52401; 4.5327,-0.52401; 4.6734,-0.52401;
        4.7526,-0.52401; 4.8615,-0.52401; 4.9218,-0.52401; 5.0575,-0.52401;
        5.1354,-0.52441; 5.2749,-0.52395; 5.3534,-0.52395; 5.5094,-0.52401;
        5.5718,-0.52401; 5.7273,-0.52401; 5.7893,-0.52401; 5.8975,-0.52401;
        5.9749,-0.52401; 6.0839,-0.52406; 6.1609,-0.52406; 6.3026,-0.52401;
        6.3643,-0.52401; 6.5049,-0.52401; 6.5682,-0.52401; 6.723,-0.52406;
        6.786,-0.52406; 6.8944,-0.52401; 6.9714,-0.52401; 7.0803,-0.52401;
        7.1583,-0.52401; 7.2998,-0.52412; 7.3769,-0.52412; 7.5016,-0.52401;
        7.563,-0.52401; 7.6888,-0.52401; 7.751,-0.52401; 7.8768,-0.52406],
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
  Modelica.Blocks.Sources.CombiTimeTable V2(table=[0.10905,1; 0.17028,1;
        0.31029,1; 0.3739,0.99999; 0.54358,0.99999; 0.65345,1; 0.73186,1;
        0.85871,1; 0.92132,1; 0.98398,1; 1.1082,1; 1.1712,1; 1.3108,1;
        1.3742,1; 1.5281,1; 1.6504,1; 1.729,0.99999; 1.8543,0.99999;
        1.9478,0.99999; 2.0878,0.99999; 2.1335,1; 2.2589,1; 2.3211,
        0.99999; 2.3834,0.99999; 2.5241,1; 2.6796,1; 2.743,1; 2.8666,1;
        2.9607,0.99998; 3.0999,0.99998; 3.1929,1; 3.3184,1; 3.3654,1;
        3.5065,1; 3.584,0.99998; 3.7244,1; 3.7873,1; 3.9122,1; 3.9743,1;
        4.1449,1; 4.2847,1; 4.3469,0.99999; 4.4556,0.99999; 4.5327,
        0.99999; 4.6734,0.99999; 4.7526,1; 4.8615,1; 4.9218,0.99998;
        5.0575,0.99998; 5.1354,0.99721; 5.2749,0.99721; 5.3534,0.97313;
        5.5094,0.97313; 5.5718,0.97302; 5.7273,0.97302; 5.7893,0.97302;
        5.8975,0.97302; 5.9749,0.97302; 6.0839,0.97302; 6.1609,0.97303;
        6.3026,0.97303; 6.3643,0.97303; 6.5049,0.97303; 6.5682,0.97302;
        6.723,0.97302; 6.786,0.97302; 6.8944,0.97302; 6.9714,0.97302;
        7.0803,0.97302; 7.1583,0.97304; 7.2998,0.97304; 7.3769,0.97302;
        7.5016,0.97302; 7.563,0.97303; 7.6888,0.97303; 7.751,0.97303;
        7.8768,0.97303],                 extrapolation=Modelica.Blocks.Types.Extrapolation.LastTwoPoints)
    annotation (Placement(transformation(extent={{100,-120},{80,-100}})));
  Modelica.Blocks.Sources.CombiTimeTable A2(table=[0.10905,-0.52401;
        0.17028,-0.52401; 0.31029,-0.52406; 0.3739,-0.52406; 0.54358,-0.52401;
        0.65345,-0.52401; 0.73186,-0.52401; 0.85871,-0.52401; 0.92132,-0.52401;
        0.98398,-0.52401; 1.1082,-0.52401; 1.1712,-0.52401; 1.3108,-0.52401;
        1.3742,-0.52401; 1.5281,-0.52401; 1.6504,-0.52401; 1.729,-0.52401;
        1.8543,-0.52401; 1.9478,-0.52401; 2.0878,-0.52401; 2.1335,-0.52401;
        2.2589,-0.52401; 2.3211,-0.52401; 2.3834,-0.52401; 2.5241,-0.52401;
        2.6796,-0.52401; 2.743,-0.52401; 2.8666,-0.52401; 2.9607,-0.52401;
        3.0999,-0.52401; 3.1929,-0.52401; 3.3184,-0.52401; 3.3654,-0.52401;
        3.5065,-0.52401; 3.584,-0.52401; 3.7244,-0.52401; 3.7873,-0.52401;
        3.9122,-0.52401; 3.9743,-0.52401; 4.1449,-0.52401; 4.2847,-0.52401;
        4.3469,-0.52401; 4.4556,-0.52401; 4.5327,-0.52401; 4.6734,-0.52401;
        4.7526,-0.52401; 4.8615,-0.52401; 4.9218,-0.52401; 5.0575,-0.52401;
        5.1354,-0.52441; 5.2749,-0.52395; 5.3534,-0.52395; 5.5094,-0.52401;
        5.5718,-0.52401; 5.7273,-0.52401; 5.7893,-0.52401; 5.8975,-0.52401;
        5.9749,-0.52401; 6.0839,-0.52406; 6.1609,-0.52406; 6.3026,-0.52401;
        6.3643,-0.52401; 6.5049,-0.52401; 6.5682,-0.52401; 6.723,-0.52406;
        6.786,-0.52406; 6.8944,-0.52401; 6.9714,-0.52401; 7.0803,-0.52401;
        7.1583,-0.52401; 7.2998,-0.52412; 7.3769,-0.52412; 7.5016,-0.52401;
        7.563,-0.52401; 7.6888,-0.52401; 7.751,-0.52401; 7.8768,-0.52406],
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
        0.10905,3.0398; 0.17028,3.0398; 0.31029,3.0398; 0.3739,3.0398;
        0.54358,3.0398; 0.65345,3.0398; 0.73186,3.0431; 0.85871,3.0431;
        0.92132,3.0398; 0.98398,3.0398; 1.1082,3.0431; 1.1712,3.0431;
        1.3108,3.0431; 1.3742,3.0398; 1.5281,3.0398; 1.6504,3.0398; 1.729,
        3.0398; 1.8543,3.0398; 1.9478,3.0398; 2.0878,3.0398; 2.1335,
        3.0431; 2.2589,3.0431; 2.3211,3.0398; 2.3834,3.0398; 2.5241,
        3.0431; 2.6796,3.0431; 2.743,3.0398; 2.8666,3.0398; 2.9607,3.0398;
        3.0999,3.0398; 3.1929,3.0431; 3.3184,3.0431; 3.3654,3.0431;
        3.5065,3.0431; 3.584,3.0398; 3.7244,3.0398; 3.7873,3.0398; 3.9122,
        3.0431; 3.9743,3.0431; 4.1449,3.0431; 4.2847,3.0398; 4.3469,
        3.0398; 4.4556,3.0398; 4.5327,3.0398; 4.6734,3.0398; 4.7526,
        3.0464; 4.8615,3.0464; 4.9218,3.0365; 5.0575,3.0365; 5.1354,
        3.1131; 5.2749,3.1131; 5.3534,3.1565; 5.5094,3.1565; 5.5718,
        3.1365; 5.7273,3.1365; 5.7893,3.1365; 5.8975,3.1365; 5.9749,
        3.1365; 6.0839,3.1365; 6.1609,3.1365; 6.3026,3.1365; 6.3643,
        3.1365; 6.5049,3.1365; 6.5682,3.1365; 6.723,3.1365; 6.786,3.1365;
        6.8944,3.1332; 6.9714,3.1332; 7.0803,3.1331; 7.1583,3.1398;
        7.2998,3.1398; 7.3769,3.1365; 7.5016,3.1365; 7.563,3.1398; 7.6888,
        3.1398; 7.751,3.1398; 7.8768,3.1398],
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
  Modelica.Blocks.Sources.CombiTimeTable VOLTAGE(table=[0.10905,354.33;
        0.17028,354.33; 0.31029,354.33; 0.3739,354.32; 0.54358,354.32;
        0.65345,354.33; 0.73186,354.33; 0.85871,354.33; 0.92132,354.33;
        0.98398,354.33; 1.1082,354.34; 1.1712,354.34; 1.3108,354.34;
        1.3742,354.33; 1.5281,354.33; 1.6504,354.33; 1.729,354.32; 1.8543,
        354.32; 1.9478,354.32; 2.0878,354.32; 2.1335,354.33; 2.2589,
        354.33; 2.3211,354.32; 2.3834,354.32; 2.5241,354.33; 2.6796,
        354.33; 2.743,354.33; 2.8666,354.33; 2.9607,354.32; 3.0999,354.32;
        3.1929,354.34; 3.3184,354.33; 3.3654,354.33; 3.5065,354.33; 3.584,
        354.32; 3.7244,354.33; 3.7873,354.33; 3.9122,354.33; 3.9743,
        354.33; 4.1449,354.33; 4.2847,354.33; 4.3469,354.32; 4.4556,
        354.32; 4.5327,354.32; 4.6734,354.32; 4.7526,354.33; 4.8615,
        354.33; 4.9218,354.32; 5.0575,354.32; 5.1354,353.34; 5.2749,
        353.34; 5.3534,344.8; 5.5094,344.8; 5.5718,344.77; 5.7273,344.77;
        5.7893,344.77; 5.8975,344.77; 5.9749,344.77; 6.0839,344.77;
        6.1609,344.77; 6.3026,344.77; 6.3643,344.77; 6.5049,344.77;
        6.5682,344.77; 6.723,344.77; 6.786,344.77; 6.8944,344.77; 6.9714,
        344.77; 7.0803,344.77; 7.1583,344.77; 7.2998,344.77; 7.3769,
        344.77; 7.5016,344.77; 7.563,344.77; 7.6888,344.77; 7.751,344.77;
        7.8768,344.77], extrapolation=Modelica.Blocks.Types.Extrapolation.LastTwoPoints)
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
<p> Run the simulation for t=7.87 seconds. </p>
</html>"));
end VoltageVariation_350_to_340_V;
