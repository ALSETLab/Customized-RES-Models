within OpenRESV.RES_Model_vs_PHIL_Inverter.ConstantPFTerminalVoltageVariance.Over095PowerFactor;
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
  Modelica.Blocks.Sources.CombiTimeTable EXPERIMENT_P(table=[0.1422,920.8;
        0.18922,920.8; 0.314,920.8; 0.37572,921.95; 0.51682,921.95;
        0.56396,920.86; 0.70518,920.86; 0.78404,921.1; 0.94075,921.09;
        0.98797,921.68; 1.1291,921.7; 1.1921,920.66; 1.3013,920.66;
        1.3644,920.77; 1.5244,920.77; 1.6024,921.71; 1.7125,921.71;
        1.7754,921.99; 1.9167,921.99; 1.979,921.06; 2.106,921.06; 2.1692,
        921.02; 2.231,921.02; 2.357,920.6; 2.405,920.6; 2.531,920.62;
        2.594,921.74; 2.7195,921.74; 2.7823,920.95; 2.9061,920.95; 2.9683,
        921.94; 3.0312,921.94; 3.1561,919.88; 3.2034,919.88; 3.3457,
        919.62; 3.4085,921.86; 3.5358,922.14; 3.613,921.02; 3.7231,921;
        3.7859,920.99; 3.9235,920.97; 3.9849,920.85; 4.1221,920.85;
        4.1841,920.69; 4.3064,920.69; 4.367,921.06; 4.5013,921.06; 4.5623,
        921.9; 4.624,921.9; 4.7444,921.92; 4.8379,920.83; 4.98,921.75;
        5.106,921.75; 5.1844,945.3; 5.31,945.18; 5.4045,921.63; 5.5437,
        922.1; 5.6199,918.85; 5.7589,918.85; 5.8199,918.85; 5.9618,918.32;
        6.0242,920.51; 6.1634,920.82; 6.2247,919.69; 6.332,919.91; 6.4086,
        919.96; 6.5463,919.42; 6.6232,921.58; 6.7454,918.44; 6.8055,
        918.44; 6.9586,918.62; 7.0976,919.68; 7.1897,921.88; 7.3107,
        921.88; 7.403,918.66; 7.5581,918.67; 7.7106,920.82; 7.7725,921.45;
        7.8345,921.45; 7.9737,918.44; 8.1136,918.44; 8.1916,919.78],
                        extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint)
    annotation (Placement(transformation(extent={{-68,180},{-48,200}})));
  Modelica.Blocks.Sources.CombiTimeTable EXPERIMENT_Q(table=[0.1422,
        333.05; 0.18922,333.04; 0.314,333.04; 0.37572,333.36; 0.51682,
        333.36; 0.56396,332.83; 0.70518,332.83; 0.78404,332.25; 0.94075,
        332.3; 0.98797,334.05; 1.1291,334; 1.1921,333.43; 1.3013,333.43;
        1.3644,333.04; 1.5244,333.04; 1.6024,334; 1.7125,334; 1.7754,
        333.19; 1.9167,333.19; 1.979,332.24; 2.106,332.24; 2.1692,332.51;
        2.231,332.51; 2.357,333.52; 2.405,333.52; 2.531,333.47; 2.594,
        333.9; 2.7195,333.9; 2.7823,332.56; 2.9061,332.56; 2.9683,333.35;
        3.0312,333.35; 3.1561,332.07; 3.2034,332.07; 3.3457,332.76;
        3.4085,333.57; 3.5358,332.83; 3.613,332.4; 3.7231,332.46; 3.7859,
        332.46; 3.9235,332.51; 3.9849,332.88; 4.1221,332.88; 4.1841,
        333.36; 4.3064,333.36; 4.367,332.29; 4.5013,332.29; 4.5623,333.4;
        4.624,333.4; 4.7444,333.3; 4.8379,332.88; 4.98,333.89; 5.106,
        333.89; 5.1844,351.32; 5.31,351.65; 5.4045,343.39; 5.5437,342.15;
        5.6199,340.95; 5.7589,340.96; 5.8199,340.96; 5.9618,342.33;
        6.0242,343.17; 6.1634,342.37; 6.2247,341.94; 6.332,341.35; 6.4086,
        341.35; 6.5463,342.78; 6.6232,343.6; 6.7454,342.14; 6.8055,342.14;
        6.9586,341.66; 7.0976,342.06; 7.1897,342.81; 7.3107,342.81; 7.403,
        341.56; 7.5581,341.56; 7.7106,342.34; 7.7725,343.99; 7.8345,
        343.99; 7.9737,342.2; 8.1136,342.2; 8.1916,341.9],
                 extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint)
    annotation (Placement(transformation(extent={{-38,180},{-18,200}})));
  Modelica.Blocks.Sources.CombiTimeTable V(table=[0.1422,1; 0.18922,
        0.99999; 0.314,0.99999; 0.37572,1; 0.51682,1; 0.56396,0.99999;
        0.70518,0.99999; 0.78404,1; 0.94075,1; 0.98797,0.99999; 1.1291,
        0.99999; 1.1921,1; 1.3013,1; 1.3644,0.99996; 1.5244,0.99996;
        1.6024,1; 1.7125,1; 1.7754,0.99999; 1.9167,0.99999; 1.979,0.99997;
        2.106,0.99997; 2.1692,1; 2.231,1; 2.357,0.99998; 2.405,0.99998;
        2.531,0.99998; 2.594,1; 2.7195,1; 2.7823,0.99998; 2.9061,0.99998;
        2.9683,1; 3.0312,1; 3.1561,0.99997; 3.2034,0.99997; 3.3457,
        0.99997; 3.4085,1; 3.5358,1; 3.613,0.99999; 3.7231,0.99999;
        3.7859,0.99998; 3.9235,0.99998; 3.9849,0.99999; 4.1221,0.99999;
        4.1841,1; 4.3064,1; 4.367,0.99998; 4.5013,0.99998; 4.5623,0.99997;
        4.624,0.99997; 4.7444,0.99997; 4.8379,0.99998; 4.98,1; 5.106,1;
        5.1844,0.97587; 5.31,0.97587; 5.4045,0.97281; 5.5437,0.97281;
        5.6199,0.97279; 5.7589,0.97278; 5.8199,0.97278; 5.9618,0.97278;
        6.0242,0.97284; 6.1634,0.97284; 6.2247,0.97277; 6.332,0.97277;
        6.4086,0.97281; 6.5463,0.97281; 6.6232,0.97283; 6.7454,0.97282;
        6.8055,0.97282; 6.9586,0.97282; 7.0976,0.97281; 7.1897,0.97284;
        7.3107,0.97284; 7.403,0.97282; 7.5581,0.97282; 7.7106,0.97282;
        7.7725,0.97285; 7.8345,0.97285; 7.9737,0.97284; 8.1136,0.97284;
        8.1916,0.97284],
      extrapolation=Modelica.Blocks.Types.Extrapolation.LastTwoPoints)
    annotation (Placement(transformation(extent={{100,120},{80,140}})));
  Modelica.Blocks.Sources.CombiTimeTable A(table=[0.1422,-0.52377;
        0.18922,-0.52377; 0.314,-0.52377; 0.37572,-0.52377; 0.51682,-0.52377;
        0.56396,-0.52377; 0.70518,-0.52377; 0.78404,-0.52377; 0.94075,-0.52372;
        0.98797,-0.52372; 1.1291,-0.52377; 1.1921,-0.52377; 1.3013,-0.52377;
        1.3644,-0.52377; 1.5244,-0.52377; 1.6024,-0.52377; 1.7125,-0.52377;
        1.7754,-0.52377; 1.9167,-0.52377; 1.979,-0.52377; 2.106,-0.52377;
        2.1692,-0.52372; 2.231,-0.52372; 2.357,-0.52377; 2.405,-0.52377;
        2.531,-0.52377; 2.594,-0.52377; 2.7195,-0.52377; 2.7823,-0.52377;
        2.9061,-0.52377; 2.9683,-0.52372; 3.0312,-0.52372; 3.1561,-0.52377;
        3.2034,-0.52377; 3.3457,-0.52377; 3.4085,-0.52377; 3.5358,-0.52377;
        3.613,-0.52377; 3.7231,-0.52383; 3.7859,-0.52383; 3.9235,-0.52377;
        3.9849,-0.52377; 4.1221,-0.52377; 4.1841,-0.52377; 4.3064,-0.52377;
        4.367,-0.52377; 4.5013,-0.52377; 4.5623,-0.52377; 4.624,-0.52377;
        4.7444,-0.52377; 4.8379,-0.52377; 4.98,-0.52372; 5.106,-0.52372;
        5.1844,-0.52418; 5.31,-0.52383; 5.4045,-0.52383; 5.5437,-0.52383;
        5.6199,-0.52383; 5.7589,-0.52383; 5.8199,-0.52383; 5.9618,-0.52377;
        6.0242,-0.52377; 6.1634,-0.52383; 6.2247,-0.52383; 6.332,-0.52383;
        6.4086,-0.52383; 6.5463,-0.52377; 6.6232,-0.52377; 6.7454,-0.52383;
        6.8055,-0.52383; 6.9586,-0.52383; 7.0976,-0.52383; 7.1897,-0.52383;
        7.3107,-0.52383; 7.403,-0.52383; 7.5581,-0.52383; 7.7106,-0.52383;
        7.7725,-0.52377; 7.8345,-0.52377; 7.9737,-0.52383; 8.1136,-0.52383;
        8.1916,-0.52383],
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
  Modelica.Blocks.Sources.CombiTimeTable EXPERIMENT_IAngle(table=[0.1422,
        -0.87082; 0.18922,-0.87082; 0.314,-0.87082; 0.37572,-0.87073;
        0.51682,-0.87073; 0.56396,-0.8706; 0.70518,-0.8706; 0.78404,-0.86996;
        0.94075,-0.86996; 0.98797,-0.87143; 1.1291,-0.87143; 1.1921,-0.87124;
        1.3013,-0.87124; 1.3644,-0.87083; 1.5244,-0.87083; 1.6024,-0.87143;
        1.7125,-0.87143; 1.7754,-0.87055; 1.9167,-0.87055; 1.979,-0.86996;
        2.106,-0.86996; 2.1692,-0.87018; 2.231,-0.87018; 2.357,-0.87135;
        2.405,-0.87135; 2.531,-0.8713; 2.594,-0.87132; 2.7195,-0.87132;
        2.7823,-0.8703; 2.9061,-0.8703; 2.9683,-0.87066; 3.0312,-0.87066;
        3.1561,-0.87021; 3.2034,-0.87021; 3.3457,-0.87096; 3.4085,-0.87096;
        3.5358,-0.87015; 3.613,-0.87013; 3.7231,-0.87025; 3.7859,-0.87025;
        3.9235,-0.87025; 3.9849,-0.87065; 4.1221,-0.87065; 4.1841,-0.87117;
        4.3064,-0.87117; 4.367,-0.87001; 4.5013,-0.87001; 4.5623,-0.87078;
        4.624,-0.87078; 4.7444,-0.87068; 4.8379,-0.87066; 4.98,-0.87125;
        5.106,-0.87125; 5.1844,-0.88001; 5.31,-0.88001; 5.4045,-0.88049;
        5.5437,-0.87914; 5.6199,-0.87914; 5.7589,-0.87915; 5.8199,-0.87915;
        5.9618,-0.8806; 6.0242,-0.88061; 6.1634,-0.87981; 6.2247,-0.87979;
        6.332,-0.87915; 6.4086,-0.87914; 6.5463,-0.88064; 6.6232,-0.88065;
        6.7454,-0.88043; 6.8055,-0.88043; 6.9586,-0.87991; 7.0976,-0.87991;
        7.1897,-0.87985; 7.3107,-0.87985; 7.403,-0.8798; 7.5581,-0.87979;
        7.7106,-0.87977; 7.7725,-0.88106; 7.8345,-0.88106; 7.9737,-0.88048;
        8.1136,-0.88048; 8.1916,-0.87972],
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
  Modelica.Blocks.Sources.CombiTimeTable V1(table=[0.1422,1; 0.18922,
        0.99999; 0.314,0.99999; 0.37572,1; 0.51682,1; 0.56396,0.99999;
        0.70518,0.99999; 0.78404,1; 0.94075,1; 0.98797,0.99999; 1.1291,
        0.99999; 1.1921,1; 1.3013,1; 1.3644,0.99996; 1.5244,0.99996;
        1.6024,1; 1.7125,1; 1.7754,0.99999; 1.9167,0.99999; 1.979,0.99997;
        2.106,0.99997; 2.1692,1; 2.231,1; 2.357,0.99998; 2.405,0.99998;
        2.531,0.99998; 2.594,1; 2.7195,1; 2.7823,0.99998; 2.9061,0.99998;
        2.9683,1; 3.0312,1; 3.1561,0.99997; 3.2034,0.99997; 3.3457,
        0.99997; 3.4085,1; 3.5358,1; 3.613,0.99999; 3.7231,0.99999;
        3.7859,0.99998; 3.9235,0.99998; 3.9849,0.99999; 4.1221,0.99999;
        4.1841,1; 4.3064,1; 4.367,0.99998; 4.5013,0.99998; 4.5623,0.99997;
        4.624,0.99997; 4.7444,0.99997; 4.8379,0.99998; 4.98,1; 5.106,1;
        5.1844,0.97587; 5.31,0.97587; 5.4045,0.97281; 5.5437,0.97281;
        5.6199,0.97279; 5.7589,0.97278; 5.8199,0.97278; 5.9618,0.97278;
        6.0242,0.97284; 6.1634,0.97284; 6.2247,0.97277; 6.332,0.97277;
        6.4086,0.97281; 6.5463,0.97281; 6.6232,0.97283; 6.7454,0.97282;
        6.8055,0.97282; 6.9586,0.97282; 7.0976,0.97281; 7.1897,0.97284;
        7.3107,0.97284; 7.403,0.97282; 7.5581,0.97282; 7.7106,0.97282;
        7.7725,0.97285; 7.8345,0.97285; 7.9737,0.97284; 8.1136,0.97284;
        8.1916,0.97284],
      extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint)
    annotation (Placement(transformation(extent={{100,0},{80,20}})));
  Modelica.Blocks.Sources.CombiTimeTable A1(table=[0.1422,-0.52377;
        0.18922,-0.52377; 0.314,-0.52377; 0.37572,-0.52377; 0.51682,-0.52377;
        0.56396,-0.52377; 0.70518,-0.52377; 0.78404,-0.52377; 0.94075,-0.52372;
        0.98797,-0.52372; 1.1291,-0.52377; 1.1921,-0.52377; 1.3013,-0.52377;
        1.3644,-0.52377; 1.5244,-0.52377; 1.6024,-0.52377; 1.7125,-0.52377;
        1.7754,-0.52377; 1.9167,-0.52377; 1.979,-0.52377; 2.106,-0.52377;
        2.1692,-0.52372; 2.231,-0.52372; 2.357,-0.52377; 2.405,-0.52377;
        2.531,-0.52377; 2.594,-0.52377; 2.7195,-0.52377; 2.7823,-0.52377;
        2.9061,-0.52377; 2.9683,-0.52372; 3.0312,-0.52372; 3.1561,-0.52377;
        3.2034,-0.52377; 3.3457,-0.52377; 3.4085,-0.52377; 3.5358,-0.52377;
        3.613,-0.52377; 3.7231,-0.52383; 3.7859,-0.52383; 3.9235,-0.52377;
        3.9849,-0.52377; 4.1221,-0.52377; 4.1841,-0.52377; 4.3064,-0.52377;
        4.367,-0.52377; 4.5013,-0.52377; 4.5623,-0.52377; 4.624,-0.52377;
        4.7444,-0.52377; 4.8379,-0.52377; 4.98,-0.52372; 5.106,-0.52372;
        5.1844,-0.52418; 5.31,-0.52383; 5.4045,-0.52383; 5.5437,-0.52383;
        5.6199,-0.52383; 5.7589,-0.52383; 5.8199,-0.52383; 5.9618,-0.52377;
        6.0242,-0.52377; 6.1634,-0.52383; 6.2247,-0.52383; 6.332,-0.52383;
        6.4086,-0.52383; 6.5463,-0.52377; 6.6232,-0.52377; 6.7454,-0.52383;
        6.8055,-0.52383; 6.9586,-0.52383; 7.0976,-0.52383; 7.1897,-0.52383;
        7.3107,-0.52383; 7.403,-0.52383; 7.5581,-0.52383; 7.7106,-0.52383;
        7.7725,-0.52377; 7.8345,-0.52377; 7.9737,-0.52383; 8.1136,-0.52383;
        8.1916,-0.52383],
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
  Modelica.Blocks.Sources.CombiTimeTable V2(table=[0.1422,1; 0.18922,
        0.99999; 0.314,0.99999; 0.37572,1; 0.51682,1; 0.56396,0.99999;
        0.70518,0.99999; 0.78404,1; 0.94075,1; 0.98797,0.99999; 1.1291,
        0.99999; 1.1921,1; 1.3013,1; 1.3644,0.99996; 1.5244,0.99996;
        1.6024,1; 1.7125,1; 1.7754,0.99999; 1.9167,0.99999; 1.979,0.99997;
        2.106,0.99997; 2.1692,1; 2.231,1; 2.357,0.99998; 2.405,0.99998;
        2.531,0.99998; 2.594,1; 2.7195,1; 2.7823,0.99998; 2.9061,0.99998;
        2.9683,1; 3.0312,1; 3.1561,0.99997; 3.2034,0.99997; 3.3457,
        0.99997; 3.4085,1; 3.5358,1; 3.613,0.99999; 3.7231,0.99999;
        3.7859,0.99998; 3.9235,0.99998; 3.9849,0.99999; 4.1221,0.99999;
        4.1841,1; 4.3064,1; 4.367,0.99998; 4.5013,0.99998; 4.5623,0.99997;
        4.624,0.99997; 4.7444,0.99997; 4.8379,0.99998; 4.98,1; 5.106,1;
        5.1844,0.97587; 5.31,0.97587; 5.4045,0.97281; 5.5437,0.97281;
        5.6199,0.97279; 5.7589,0.97278; 5.8199,0.97278; 5.9618,0.97278;
        6.0242,0.97284; 6.1634,0.97284; 6.2247,0.97277; 6.332,0.97277;
        6.4086,0.97281; 6.5463,0.97281; 6.6232,0.97283; 6.7454,0.97282;
        6.8055,0.97282; 6.9586,0.97282; 7.0976,0.97281; 7.1897,0.97284;
        7.3107,0.97284; 7.403,0.97282; 7.5581,0.97282; 7.7106,0.97282;
        7.7725,0.97285; 7.8345,0.97285; 7.9737,0.97284; 8.1136,0.97284;
        8.1916,0.97284],                 extrapolation=Modelica.Blocks.Types.Extrapolation.LastTwoPoints)
    annotation (Placement(transformation(extent={{100,-120},{80,-100}})));
  Modelica.Blocks.Sources.CombiTimeTable A2(table=[0.1422,-0.52377;
        0.18922,-0.52377; 0.314,-0.52377; 0.37572,-0.52377; 0.51682,-0.52377;
        0.56396,-0.52377; 0.70518,-0.52377; 0.78404,-0.52377; 0.94075,-0.52372;
        0.98797,-0.52372; 1.1291,-0.52377; 1.1921,-0.52377; 1.3013,-0.52377;
        1.3644,-0.52377; 1.5244,-0.52377; 1.6024,-0.52377; 1.7125,-0.52377;
        1.7754,-0.52377; 1.9167,-0.52377; 1.979,-0.52377; 2.106,-0.52377;
        2.1692,-0.52372; 2.231,-0.52372; 2.357,-0.52377; 2.405,-0.52377;
        2.531,-0.52377; 2.594,-0.52377; 2.7195,-0.52377; 2.7823,-0.52377;
        2.9061,-0.52377; 2.9683,-0.52372; 3.0312,-0.52372; 3.1561,-0.52377;
        3.2034,-0.52377; 3.3457,-0.52377; 3.4085,-0.52377; 3.5358,-0.52377;
        3.613,-0.52377; 3.7231,-0.52383; 3.7859,-0.52383; 3.9235,-0.52377;
        3.9849,-0.52377; 4.1221,-0.52377; 4.1841,-0.52377; 4.3064,-0.52377;
        4.367,-0.52377; 4.5013,-0.52377; 4.5623,-0.52377; 4.624,-0.52377;
        4.7444,-0.52377; 4.8379,-0.52377; 4.98,-0.52372; 5.106,-0.52372;
        5.1844,-0.52418; 5.31,-0.52383; 5.4045,-0.52383; 5.5437,-0.52383;
        5.6199,-0.52383; 5.7589,-0.52383; 5.8199,-0.52383; 5.9618,-0.52377;
        6.0242,-0.52377; 6.1634,-0.52383; 6.2247,-0.52383; 6.332,-0.52383;
        6.4086,-0.52383; 6.5463,-0.52377; 6.6232,-0.52377; 6.7454,-0.52383;
        6.8055,-0.52383; 6.9586,-0.52383; 7.0976,-0.52383; 7.1897,-0.52383;
        7.3107,-0.52383; 7.403,-0.52383; 7.5581,-0.52383; 7.7106,-0.52383;
        7.7725,-0.52377; 7.8345,-0.52377; 7.9737,-0.52383; 8.1136,-0.52383;
        8.1916,-0.52383],                                 extrapolation=
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
        0.1422,2.7697; 0.18922,2.7697; 0.314,2.7697; 0.37572,2.7731;
        0.51682,2.7731; 0.56396,2.7697; 0.70518,2.7697; 0.78404,2.7698;
        0.94075,2.7698; 0.98797,2.7731; 1.1291,2.7731; 1.1921,2.7697;
        1.3013,2.7697; 1.3644,2.7697; 1.5244,2.7697; 1.6024,2.7731;
        1.7125,2.7731; 1.7754,2.7731; 1.9167,2.7731; 1.979,2.7697; 2.106,
        2.7697; 2.1692,2.7698; 2.231,2.7698; 2.357,2.7697; 2.405,2.7697;
        2.531,2.7697; 2.594,2.7731; 2.7195,2.7731; 2.7823,2.7697; 2.9061,
        2.7697; 2.9683,2.7731; 3.0312,2.7731; 3.1561,2.7664; 3.2034,
        2.7664; 3.3457,2.7664; 3.4085,2.773; 3.5358,2.7731; 3.613,2.7697;
        3.7231,2.7697; 3.7859,2.7697; 3.9235,2.7697; 3.9849,2.7697;
        4.1221,2.7697; 4.1841,2.7697; 4.3064,2.7697; 4.367,2.7697; 4.5013,
        2.7697; 4.5623,2.7731; 4.624,2.7731; 4.7444,2.773; 4.8379,2.7697;
        4.98,2.7731; 5.106,2.7731; 5.1844,2.9231; 5.31,2.9231; 5.4045,
        2.8598; 5.5437,2.8598; 5.6199,2.8498; 5.7589,2.8498; 5.8199,
        2.8498; 5.9618,2.8498; 6.0242,2.8564; 6.1634,2.8565; 6.2247,
        2.8531; 6.332,2.8531; 6.4086,2.8531; 6.5463,2.8531; 6.6232,2.8598;
        6.7454,2.8498; 6.8055,2.8498; 6.9586,2.8498; 7.0976,2.8531;
        7.1897,2.8598; 7.3107,2.8598; 7.403,2.8498; 7.5581,2.8498; 7.7106,
        2.8565; 7.7725,2.8598; 7.8345,2.8598; 7.9737,2.8498; 8.1136,
        2.8498; 8.1916,2.8531],
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
  Modelica.Blocks.Sources.CombiTimeTable VOLTAGE(table=[0.1422,353.53;
        0.18922,353.53; 0.314,353.53; 0.37572,353.53; 0.51682,353.53;
        0.56396,353.52; 0.70518,353.52; 0.78404,353.53; 0.94075,353.53;
        0.98797,353.52; 1.1291,353.52; 1.1921,353.53; 1.3013,353.53;
        1.3644,353.51; 1.5244,353.51; 1.6024,353.53; 1.7125,353.53;
        1.7754,353.53; 1.9167,353.53; 1.979,353.52; 2.106,353.52; 2.1692,
        353.53; 2.231,353.53; 2.357,353.52; 2.405,353.52; 2.531,353.52;
        2.594,353.53; 2.7195,353.53; 2.7823,353.52; 2.9061,353.52; 2.9683,
        353.53; 3.0312,353.53; 3.1561,353.52; 3.2034,353.52; 3.3457,
        353.52; 3.4085,353.53; 3.5358,353.53; 3.613,353.52; 3.7231,353.52;
        3.7859,353.52; 3.9235,353.52; 3.9849,353.52; 4.1221,353.52;
        4.1841,353.53; 4.3064,353.53; 4.367,353.52; 4.5013,353.52; 4.5623,
        353.52; 4.624,353.52; 4.7444,353.52; 4.8379,353.52; 4.98,353.53;
        5.106,353.53; 5.1844,345; 5.31,345; 5.4045,343.92; 5.5437,343.92;
        5.6199,343.91; 5.7589,343.91; 5.8199,343.91; 5.9618,343.91;
        6.0242,343.92; 6.1634,343.92; 6.2247,343.9; 6.332,343.9; 6.4086,
        343.92; 6.5463,343.92; 6.6232,343.92; 6.7454,343.92; 6.8055,
        343.92; 6.9586,343.92; 7.0976,343.92; 7.1897,343.92; 7.3107,
        343.92; 7.403,343.92; 7.5581,343.92; 7.7106,343.92; 7.7725,343.93;
        7.8345,343.93; 7.9737,343.92; 8.1136,343.92; 8.1916,343.92],
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
<p> Run the simulation for t=8.20 seconds. </p>
</html>"));
end VoltageVariation_350_to_340_V;
