within OpenRESV.RES_Model_vs_PHIL_Inverter_Examples.ConstantPFTerminalVoltageVariance.Over095PowerFactor;
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
  Modelica.Blocks.Sources.CombiTimeTable EXPERIMENT_P(table=[0.082026,
        920.95; 0.14304,920.95; 0.27007,921.13; 0.33409,921.13; 0.4751,
        920.61; 0.53679,921.72; 0.66282,921.75; 0.71083,921.73; 0.84926,
        921.75; 0.89624,920.97; 1.037,920.97; 1.0988,921.96; 1.1461,
        921.96; 1.2698,922.13; 1.3325,921.01; 1.4726,921.01; 1.551,922.13;
        1.691,922.1; 1.7683,920.99; 1.8755,920.56; 1.9536,920.56; 2.0781,
        920.51; 2.1393,921.59; 2.2481,921.59; 2.3094,920.97; 2.4334,
        920.97; 2.5113,921.94; 2.6511,921.94; 2.7122,920.73; 2.8511,
        920.73; 2.9139,921.83; 3.0388,921.83; 3.1011,921.98; 3.1642,
        921.98; 3.2893,922.01; 3.3351,922.01; 3.475,921.97; 3.5364,921.98;
        3.6609,921.72; 3.755,920.61; 3.8961,920.55; 4.0516,921.63; 4.1281,
        935.69; 4.2678,930.98; 4.3452,934.1; 4.4684,933.72; 4.5306,918.63;
        4.6719,919; 4.734,920.06; 4.8873,920.17; 4.965,920.14; 5.1173,
        919.89; 5.2404,919.89; 5.318,918.55; 5.4421,918.55; 5.5206,919.98;
        5.6608,919.98; 5.7383,920.09; 5.8631,920.09; 5.925,918.93; 6.062,
        918.93; 6.1398,920.84; 6.2496,920.84; 6.3275,919.82; 6.4663,
        919.82; 6.5285,919.92; 6.6698,919.91; 6.7307,919.92],
                        extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint)
    annotation (Placement(transformation(extent={{-68,180},{-48,200}})));
  Modelica.Blocks.Sources.CombiTimeTable EXPERIMENT_Q(table=[0.082026,
        332.37; 0.14304,332.37; 0.27007,331.89; 0.33409,331.89; 0.4751,
        333.33; 0.53679,333.76; 0.66282,333.65; 0.71083,333.64; 0.84926,
        333.59; 0.89624,332.32; 1.037,332.32; 1.0988,333.11; 1.1461,
        333.11; 1.2698,332.65; 1.3325,332.22; 1.4726,332.2; 1.551,332.63;
        1.691,332.75; 1.7683,332.32; 1.8755,333.5; 1.9536,333.5; 2.0781,
        333.66; 2.1393,334.08; 2.2481,334.08; 2.3094,332.32; 2.4334,
        332.32; 2.5113,333.17; 2.6511,333.17; 2.7122,333.02; 2.8511,
        333.02; 2.9139,333.39; 3.0388,333.39; 3.1011,333.06; 3.1642,
        333.06; 3.2893,332.95; 3.3351,332.95; 3.475,333.05; 3.5364,333.05;
        3.6609,333.76; 3.755,333.33; 3.8961,333.45; 4.0516,333.98; 4.1281,
        338.31; 4.2678,351.19; 4.3452,352.35; 4.4684,353.32; 4.5306,
        347.62; 4.6719,346.66; 4.734,347.06; 4.8873,346.74; 4.965,346.73;
        5.1173,347.48; 5.2404,347.48; 5.318,347.78; 5.4421,347.78; 5.5206,
        347.28; 5.6608,347.28; 5.7383,346.9; 5.8631,346.9; 5.925,346.82;
        6.062,346.82; 6.1398,348.23; 6.2496,348.23; 6.3275,347.71; 6.4663,
        347.71; 6.5285,347.44; 6.6698,347.44; 6.7307,347.44],
                 extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint)
    annotation (Placement(transformation(extent={{-38,180},{-18,200}})));
  Modelica.Blocks.Sources.CombiTimeTable V(table=[0.082026,1; 0.14304,1;
        0.27007,1; 0.33409,1; 0.4751,1; 0.53679,1; 0.66282,1; 0.71083,
        0.99999; 0.84926,0.99999; 0.89624,1; 1.037,1; 1.0988,1; 1.1461,1;
        1.2698,1; 1.3325,1; 1.4726,1; 1.551,1; 1.691,1; 1.7683,1; 1.8755,
        1; 1.9536,1; 2.0781,1; 2.1393,1; 2.2481,1; 2.3094,1; 2.4334,1;
        2.5113,1; 2.6511,1; 2.7122,1; 2.8511,1; 2.9139,1; 3.0388,1;
        3.1011,1; 3.1642,1; 3.2893,1; 3.3351,1; 3.475,1; 3.5364,1; 3.6609,
        1; 3.755,1; 3.8961,1; 4.0516,1; 4.1281,0.99938; 4.2678,0.99938;
        4.3452,0.95957; 4.4684,0.95957; 4.5306,0.95928; 4.6719,0.95928;
        4.734,0.95928; 4.8873,0.95928; 4.965,0.95924; 5.1173,0.95927;
        5.2404,0.95927; 5.318,0.95926; 5.4421,0.95926; 5.5206,0.95929;
        5.6608,0.95929; 5.7383,0.95926; 5.8631,0.95926; 5.925,0.95928;
        6.062,0.95928; 6.1398,0.9593; 6.2496,0.9593; 6.3275,0.95929;
        6.4663,0.95929; 6.5285,0.95929; 6.6698,0.95929; 6.7307,0.9593],
      extrapolation=Modelica.Blocks.Types.Extrapolation.LastTwoPoints)
    annotation (Placement(transformation(extent={{100,120},{80,140}})));
  Modelica.Blocks.Sources.CombiTimeTable A(table=[0.082026,-0.52377;
        0.14304,-0.52377; 0.27007,-0.52383; 0.33409,-0.52383; 0.4751,-0.52377;
        0.53679,-0.52377; 0.66282,-0.52377; 0.71083,-0.52377; 0.84926,-0.52383;
        0.89624,-0.52383; 1.037,-0.52383; 1.0988,-0.52377; 1.1461,-0.52377;
        1.2698,-0.52383; 1.3325,-0.52383; 1.4726,-0.52377; 1.551,-0.52377;
        1.691,-0.52383; 1.7683,-0.52383; 1.8755,-0.52383; 1.9536,-0.52383;
        2.0781,-0.52377; 2.1393,-0.52377; 2.2481,-0.52377; 2.3094,-0.52377;
        2.4334,-0.52377; 2.5113,-0.52383; 2.6511,-0.52383; 2.7122,-0.52383;
        2.8511,-0.52383; 2.9139,-0.52383; 3.0388,-0.52383; 3.1011,-0.52377;
        3.1642,-0.52377; 3.2893,-0.52377; 3.3351,-0.52377; 3.475,-0.52377;
        3.5364,-0.52377; 3.6609,-0.52377; 3.755,-0.52377; 3.8961,-0.52389;
        4.0516,-0.52377; 4.1281,-0.52377; 4.2678,-0.52383; 4.3452,-0.52383;
        4.4684,-0.52366; 4.5306,-0.52366; 4.6719,-0.52383; 4.734,-0.52383;
        4.8873,-0.52389; 4.965,-0.52389; 5.1173,-0.52383; 5.2404,-0.52383;
        5.318,-0.52383; 5.4421,-0.52383; 5.5206,-0.52383; 5.6608,-0.52383;
        5.7383,-0.52383; 5.8631,-0.52383; 5.925,-0.52383; 6.062,-0.52383;
        6.1398,-0.52383; 6.2496,-0.52383; 6.3275,-0.52383; 6.4663,-0.52383;
        6.5285,-0.52383; 6.6698,-0.52383; 6.7307,-0.52383],
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
        0.082026,-0.87012; 0.14304,-0.87012; 0.27007,-0.86966; 0.33409,-0.86966;
        0.4751,-0.87117; 0.53679,-0.87119; 0.66282,-0.87108; 0.71083,-0.87108;
        0.84926,-0.87108; 0.89624,-0.87013; 1.037,-0.87013; 1.0988,-0.87049;
        1.1461,-0.87049; 1.2698,-0.87004; 1.3325,-0.87002; 1.4726,-0.86994;
        1.551,-0.86996; 1.691,-0.87014; 1.7683,-0.87013; 1.8755,-0.87141;
        1.9536,-0.87141; 2.0781,-0.87152; 2.1393,-0.87154; 2.2481,-0.87154;
        2.3094,-0.87007; 2.4334,-0.87007; 2.5113,-0.87061; 2.6511,-0.87061;
        2.7122,-0.87088; 2.8511,-0.87088; 2.9139,-0.87086; 3.0388,-0.87086;
        3.1011,-0.87043; 3.1642,-0.87043; 3.2893,-0.87031; 3.3351,-0.87031;
        3.475,-0.87043; 3.5364,-0.87043; 3.6609,-0.87119; 3.755,-0.87117;
        3.8961,-0.87141; 4.0516,-0.87143; 4.1281,-0.87071; 4.2678,-0.88455;
        4.3452,-0.88453; 4.4684,-0.8854; 4.5306,-0.88542; 4.6719,-0.88455;
        4.734,-0.88454; 4.8873,-0.88426; 4.965,-0.88426; 5.1173,-0.88501;
        5.2404,-0.88501; 5.318,-0.88577; 5.4421,-0.88577; 5.5206,-0.88478;
        5.6608,-0.88478; 5.7383,-0.88438; 5.8631,-0.88438; 5.925,-0.88473;
        6.062,-0.88473; 6.1398,-0.88538; 6.2496,-0.88538; 6.3275,-0.88524;
        6.4663,-0.88524; 6.5285,-0.88495; 6.6698,-0.88496; 6.7307,-0.88496],
                                         extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint)
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
  Modelica.Blocks.Sources.CombiTimeTable V1(table=[0.082026,1; 0.14304,1;
        0.27007,1; 0.33409,1; 0.4751,1; 0.53679,1; 0.66282,1; 0.71083,
        0.99999; 0.84926,0.99999; 0.89624,1; 1.037,1; 1.0988,1; 1.1461,1;
        1.2698,1; 1.3325,1; 1.4726,1; 1.551,1; 1.691,1; 1.7683,1; 1.8755,
        1; 1.9536,1; 2.0781,1; 2.1393,1; 2.2481,1; 2.3094,1; 2.4334,1;
        2.5113,1; 2.6511,1; 2.7122,1; 2.8511,1; 2.9139,1; 3.0388,1;
        3.1011,1; 3.1642,1; 3.2893,1; 3.3351,1; 3.475,1; 3.5364,1; 3.6609,
        1; 3.755,1; 3.8961,1; 4.0516,1; 4.1281,0.99938; 4.2678,0.99938;
        4.3452,0.95957; 4.4684,0.95957; 4.5306,0.95928; 4.6719,0.95928;
        4.734,0.95928; 4.8873,0.95928; 4.965,0.95924; 5.1173,0.95927;
        5.2404,0.95927; 5.318,0.95926; 5.4421,0.95926; 5.5206,0.95929;
        5.6608,0.95929; 5.7383,0.95926; 5.8631,0.95926; 5.925,0.95928;
        6.062,0.95928; 6.1398,0.9593; 6.2496,0.9593; 6.3275,0.95929;
        6.4663,0.95929; 6.5285,0.95929; 6.6698,0.95929; 6.7307,0.9593],
      extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint)
    annotation (Placement(transformation(extent={{100,0},{80,20}})));
  Modelica.Blocks.Sources.CombiTimeTable A1(table=[0.082026,-0.52377;
        0.14304,-0.52377; 0.27007,-0.52383; 0.33409,-0.52383; 0.4751,-0.52377;
        0.53679,-0.52377; 0.66282,-0.52377; 0.71083,-0.52377; 0.84926,-0.52383;
        0.89624,-0.52383; 1.037,-0.52383; 1.0988,-0.52377; 1.1461,-0.52377;
        1.2698,-0.52383; 1.3325,-0.52383; 1.4726,-0.52377; 1.551,-0.52377;
        1.691,-0.52383; 1.7683,-0.52383; 1.8755,-0.52383; 1.9536,-0.52383;
        2.0781,-0.52377; 2.1393,-0.52377; 2.2481,-0.52377; 2.3094,-0.52377;
        2.4334,-0.52377; 2.5113,-0.52383; 2.6511,-0.52383; 2.7122,-0.52383;
        2.8511,-0.52383; 2.9139,-0.52383; 3.0388,-0.52383; 3.1011,-0.52377;
        3.1642,-0.52377; 3.2893,-0.52377; 3.3351,-0.52377; 3.475,-0.52377;
        3.5364,-0.52377; 3.6609,-0.52377; 3.755,-0.52377; 3.8961,-0.52389;
        4.0516,-0.52377; 4.1281,-0.52377; 4.2678,-0.52383; 4.3452,-0.52383;
        4.4684,-0.52366; 4.5306,-0.52366; 4.6719,-0.52383; 4.734,-0.52383;
        4.8873,-0.52389; 4.965,-0.52389; 5.1173,-0.52383; 5.2404,-0.52383;
        5.318,-0.52383; 5.4421,-0.52383; 5.5206,-0.52383; 5.6608,-0.52383;
        5.7383,-0.52383; 5.8631,-0.52383; 5.925,-0.52383; 6.062,-0.52383;
        6.1398,-0.52383; 6.2496,-0.52383; 6.3275,-0.52383; 6.4663,-0.52383;
        6.5285,-0.52383; 6.6698,-0.52383; 6.7307,-0.52383],
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
  Modelica.Blocks.Sources.CombiTimeTable V2(table=[0.082026,1; 0.14304,1;
        0.27007,1; 0.33409,1; 0.4751,1; 0.53679,1; 0.66282,1; 0.71083,
        0.99999; 0.84926,0.99999; 0.89624,1; 1.037,1; 1.0988,1; 1.1461,1;
        1.2698,1; 1.3325,1; 1.4726,1; 1.551,1; 1.691,1; 1.7683,1; 1.8755,
        1; 1.9536,1; 2.0781,1; 2.1393,1; 2.2481,1; 2.3094,1; 2.4334,1;
        2.5113,1; 2.6511,1; 2.7122,1; 2.8511,1; 2.9139,1; 3.0388,1;
        3.1011,1; 3.1642,1; 3.2893,1; 3.3351,1; 3.475,1; 3.5364,1; 3.6609,
        1; 3.755,1; 3.8961,1; 4.0516,1; 4.1281,0.99938; 4.2678,0.99938;
        4.3452,0.95957; 4.4684,0.95957; 4.5306,0.95928; 4.6719,0.95928;
        4.734,0.95928; 4.8873,0.95928; 4.965,0.95924; 5.1173,0.95927;
        5.2404,0.95927; 5.318,0.95926; 5.4421,0.95926; 5.5206,0.95929;
        5.6608,0.95929; 5.7383,0.95926; 5.8631,0.95926; 5.925,0.95928;
        6.062,0.95928; 6.1398,0.9593; 6.2496,0.9593; 6.3275,0.95929;
        6.4663,0.95929; 6.5285,0.95929; 6.6698,0.95929; 6.7307,0.9593],
                                         extrapolation=Modelica.Blocks.Types.Extrapolation.LastTwoPoints)
    annotation (Placement(transformation(extent={{100,-120},{80,-100}})));
  Modelica.Blocks.Sources.CombiTimeTable A2(table=[0.082026,-0.52377;
        0.14304,-0.52377; 0.27007,-0.52383; 0.33409,-0.52383; 0.4751,-0.52377;
        0.53679,-0.52377; 0.66282,-0.52377; 0.71083,-0.52377; 0.84926,-0.52383;
        0.89624,-0.52383; 1.037,-0.52383; 1.0988,-0.52377; 1.1461,-0.52377;
        1.2698,-0.52383; 1.3325,-0.52383; 1.4726,-0.52377; 1.551,-0.52377;
        1.691,-0.52383; 1.7683,-0.52383; 1.8755,-0.52383; 1.9536,-0.52383;
        2.0781,-0.52377; 2.1393,-0.52377; 2.2481,-0.52377; 2.3094,-0.52377;
        2.4334,-0.52377; 2.5113,-0.52383; 2.6511,-0.52383; 2.7122,-0.52383;
        2.8511,-0.52383; 2.9139,-0.52383; 3.0388,-0.52383; 3.1011,-0.52377;
        3.1642,-0.52377; 3.2893,-0.52377; 3.3351,-0.52377; 3.475,-0.52377;
        3.5364,-0.52377; 3.6609,-0.52377; 3.755,-0.52377; 3.8961,-0.52389;
        4.0516,-0.52377; 4.1281,-0.52377; 4.2678,-0.52383; 4.3452,-0.52383;
        4.4684,-0.52366; 4.5306,-0.52366; 4.6719,-0.52383; 4.734,-0.52383;
        4.8873,-0.52389; 4.965,-0.52389; 5.1173,-0.52383; 5.2404,-0.52383;
        5.318,-0.52383; 5.4421,-0.52383; 5.5206,-0.52383; 5.6608,-0.52383;
        5.7383,-0.52383; 5.8631,-0.52383; 5.925,-0.52383; 6.062,-0.52383;
        6.1398,-0.52383; 6.2496,-0.52383; 6.3275,-0.52383; 6.4663,-0.52383;
        6.5285,-0.52383; 6.6698,-0.52383; 6.7307,-0.52383],
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
        0.082026,2.7697; 0.14304,2.7697; 0.27007,2.7698; 0.33409,2.7698;
        0.4751,2.7698; 0.53679,2.7731; 0.66282,2.7731; 0.71083,2.7731;
        0.84926,2.7731; 0.89624,2.7697; 1.037,2.7697; 1.0988,2.7731;
        1.1461,2.7731; 1.2698,2.7731; 1.3325,2.7698; 1.4726,2.7697; 1.551,
        2.7731; 1.691,2.7731; 1.7683,2.7698; 1.8755,2.7697; 1.9536,2.7697;
        2.0781,2.7697; 2.1393,2.7731; 2.2481,2.7731; 2.3094,2.7697;
        2.4334,2.7697; 2.5113,2.7731; 2.6511,2.7731; 2.7122,2.7697;
        2.8511,2.7697; 2.9139,2.773; 3.0388,2.773; 3.1011,2.7731; 3.1642,
        2.7731; 3.2893,2.7731; 3.3351,2.7731; 3.475,2.7731; 3.5364,2.7731;
        3.6609,2.7731; 3.755,2.7697; 3.8961,2.7697; 4.0516,2.773; 4.1281,
        2.8164; 4.2678,2.8165; 4.3452,2.9432; 4.4684,2.9431; 4.5306,
        2.8965; 4.6719,2.8965; 4.734,2.8998; 4.8873,2.8998; 4.965,2.8998;
        5.1173,2.8998; 5.2404,2.8998; 5.318,2.8965; 5.4421,2.8965; 5.5206,
        2.8998; 5.6608,2.8998; 5.7383,2.8998; 5.8631,2.8998; 5.925,2.8965;
        6.062,2.8965; 6.1398,2.9032; 6.2496,2.9032; 6.3275,2.8998; 6.4663,
        2.8998; 6.5285,2.8998; 6.6698,2.8998; 6.7307,2.8998],
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
  Modelica.Blocks.Sources.CombiTimeTable VOLTAGE(table=[0.082026,353.5;
        0.14304,353.5; 0.27007,353.5; 0.33409,353.5; 0.4751,353.5;
        0.53679,353.5; 0.66282,353.5; 0.71083,353.49; 0.84926,353.49;
        0.89624,353.5; 1.037,353.5; 1.0988,353.5; 1.1461,353.5; 1.2698,
        353.5; 1.3325,353.5; 1.4726,353.5; 1.551,353.5; 1.691,353.5;
        1.7683,353.5; 1.8755,353.5; 1.9536,353.5; 2.0781,353.5; 2.1393,
        353.5; 2.2481,353.5; 2.3094,353.5; 2.4334,353.5; 2.5113,353.5;
        2.6511,353.5; 2.7122,353.5; 2.8511,353.5; 2.9139,353.5; 3.0388,
        353.5; 3.1011,353.5; 3.1642,353.5; 3.2893,353.5; 3.3351,353.5;
        3.475,353.5; 3.5364,353.5; 3.6609,353.5; 3.755,353.5; 3.8961,
        353.5; 4.0516,353.5; 4.1281,353.28; 4.2678,353.28; 4.3452,339.2;
        4.4684,339.2; 4.5306,339.1; 4.6719,339.1; 4.734,339.1; 4.8873,
        339.1; 4.965,339.09; 5.1173,339.1; 5.2404,339.1; 5.318,339.09;
        5.4421,339.09; 5.5206,339.1; 5.6608,339.1; 5.7383,339.09; 5.8631,
        339.09; 5.925,339.1; 6.062,339.1; 6.1398,339.11; 6.2496,339.11;
        6.3275,339.11; 6.4663,339.11; 6.5285,339.1; 6.6698,339.1; 6.7307,
        339.11],        extrapolation=Modelica.Blocks.Types.Extrapolation.LastTwoPoints)
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
<p> Run the simulation for t=6.73 seconds. </p>
</html>"));
end VoltageVariation_350_to_335_V;
