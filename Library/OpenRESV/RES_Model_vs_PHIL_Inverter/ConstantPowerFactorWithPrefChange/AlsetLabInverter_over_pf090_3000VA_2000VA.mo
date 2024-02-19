within OpenRESV.RES_Model_vs_PHIL_Inverter.ConstantPowerFactorWithPrefChange;
model AlsetLabInverter_over_pf090_3000VA_2000VA
  extends Modelica.Icons.Example;
  OpenIPSL.Electrical.Renewables.PSSE.PV_with_inputs pV_with_inputs(
    V_b=352.01,
    P_0(displayUnit="W") = 2689.07/3,
    Q_0(displayUnit="V.A") = 1284.53/3,
    angle_0=0,
    QFunctionality=1,
    Irr2Pow=true,
    QrefExt=true,
    redeclare OpenIPSL.Electrical.Renewables.PSSE.InverterInterface.REGCA1
      RenewableGenerator,
    redeclare
      OpenIPSL.Electrical.Renewables.PSSE.ElectricalController.REECB1
      RenewableController(Kqp=0.01, Kqi=0.2),
    redeclare OpenIPSL.Electrical.Renewables.PSSE.PlantController.REPCA1
      PlantController)
    annotation (Placement(transformation(extent={{-70,20},{-50,40}})));
  OpenIPSL.Electrical.Buses.Bus InverterBus(V_b=352.01, angle_0=0)
    annotation (Placement(transformation(extent={{-40,20},{-20,40}})));
  OpenIPSL.Electrical.Branches.PSSE.TwoWindingTransformer twoWindingTransformer(
    R=0.0,
    X=0.034,
    G=0,
    B=0,
    VNOM1(displayUnit="V") = 352.01,
    VB1(displayUnit="V") = 600,
    VNOM2(displayUnit="V") = 140.80,
    VB2(displayUnit="V") = 240)
    annotation (Placement(transformation(extent={{-10,20},{10,40}})));
  OpenIPSL.Electrical.Buses.Bus GridBus(V_b=281.61)
    annotation (Placement(transformation(extent={{20,20},{40,40}})));
  OpenIPSL.Electrical.Machines.PSSE.GENCLS INF(
    V_b=281.61,
    P_0(displayUnit="W"),
    angle_0=-0.58224183846531,
    X_d=0) annotation (Placement(transformation(extent={{70,20},{50,40}})));
  OpenIPSL.Electrical.Renewables.PSSE.PV_with_inputs pV_with_inputs1(
    V_b=352.01,
    P_0(displayUnit="W") = 2689.07/3,
    Q_0(displayUnit="V.A") = 1284.53/3,
    QFunctionality=1,
    Irr2Pow=true,
    QrefExt=true,
    redeclare OpenIPSL.Electrical.Renewables.PSSE.InverterInterface.REGCA1
      RenewableGenerator,
    redeclare
      OpenIPSL.Electrical.Renewables.PSSE.ElectricalController.REECB1
      RenewableController(Kqp=0.01, Kqi=0.2),
    redeclare OpenIPSL.Electrical.Renewables.PSSE.PlantController.REPCA1
      PlantController)
    annotation (Placement(transformation(extent={{-72,-40},{-52,-20}})));
  OpenIPSL.Electrical.Buses.Bus InverterBus1(V_b=352.01)
    annotation (Placement(transformation(extent={{-58,-40},{-38,-20}})));
  OpenIPSL.Electrical.Branches.PSSE.TwoWindingTransformer twoWindingTransformer1(
    R=0,
    X=0.034,
    G=0,
    B=0,
    VNOM1(displayUnit="V") = 352.01,
    VB1(displayUnit="V") = 600,
    VNOM2(displayUnit="V") = 140.80,
    VB2(displayUnit="V") = 240)
    annotation (Placement(transformation(extent={{-14,-40},{6,-20}})));
  OpenIPSL.Electrical.Buses.Bus GridBus1(V_b=281.61)
    annotation (Placement(transformation(extent={{2,-40},{22,-20}})));
  OpenIPSL.Electrical.Sources.VoltageSourceReImInput voltageSourceReImInput(V_b=
        281.61)
    annotation (Placement(transformation(extent={{66,-40},{46,-20}})));
  Modelica.Blocks.Sources.RealExpression VR(y=if time < 5 then INF.p.vr
         else INF.p.vr*r.y)
    annotation (Placement(transformation(extent={{92,-28},{78,-12}})));
  Modelica.Blocks.Sources.RealExpression VI(y=if time < 5 then INF.p.vi
         else INF.p.vi*r.y)
    annotation (Placement(transformation(extent={{92,-50},{78,-34}})));
  inner OpenIPSL.Electrical.SystemBase SysData(fn=60, S_b(displayUnit="V.A")
       = 30000)
    annotation (Placement(transformation(extent={{-88,74},{-48,94}})));
  OpenRESV.Electrical.Branches.PwLine pwLine(
    R=0,
    X=0.000000001,
    G=0,
    B=0) annotation (Placement(transformation(extent={{16,-40},{36,-20}})));
  OpenIPSL.Electrical.Buses.Bus GridBus2(V_b=281.61)
    annotation (Placement(transformation(extent={{30,-40},{50,-20}})));
  Modelica.Blocks.Math.Atan angle_low
    annotation (Placement(transformation(extent={{-40,-80},{-20,-60}})));
  Modelica.Blocks.Sources.RealExpression current_low_side(y=pwLine.is.im/
        pwLine.is.re)
    annotation (Placement(transformation(extent={{-80,-80},{-60,-60}})));
  OpenRESV.Electrical.Branches.PwLine pwLine1(
    R=0,
    X=0.00000001,
    G=0,
    B=0)
    annotation (Placement(transformation(extent={{-44,-40},{-24,-20}})));
  OpenIPSL.Electrical.Buses.Bus InverterBus2(V_b=352.01)
    annotation (Placement(transformation(extent={{-30,-40},{-10,-20}})));
  Modelica.Blocks.Math.Atan angle_high
    annotation (Placement(transformation(extent={{40,-80},{60,-60}})));
  Modelica.Blocks.Sources.RealExpression current_high_side1(y=pwLine1.is.im
        /pwLine1.is.re)
    annotation (Placement(transformation(extent={{0,-80},{20,-60}})));
  Modelica.Blocks.Sources.Constant r(k=1)
    annotation (Placement(transformation(extent={{60,60},{80,80}})));
  Modelica.Blocks.Sources.CombiTimeTable Pref(table=[0.110995,2689.07;
        0.173604,2685.35; 0.295767,2685.35; 0.358515,2687.82; 0.483143,
        2687.82; 0.560845,2685.82; 0.685354,2685.82; 0.748317,2686.24;
        0.80999,2686.24; 0.934908,2683.43; 0.997955,2683.43; 1.106929,
        2683.43; 1.153946,2689.95; 1.293319,2689.95; 1.356922,2688.78;
        1.483502,2688.78; 1.56195,2685.42; 1.687347,2685.42; 1.751441,
        2688.66; 1.814274,2688.66; 1.938334,2684.81; 2.001447,2684.81;
        2.110952,2684.81; 2.173255,2690.47; 2.298781,2690.47; 2.360933,
        2685.62; 2.499706,2685.62; 2.561033,2689.32; 2.68432,2689.32;
        2.745097,2685.47; 2.807597,2685.47; 2.913216,2685.47; 2.974201,
        2684.82; 3.099482,2684.82; 3.159931,2687.82; 3.297407,2687.82;
        3.359394,2686; 3.500337,2686; 3.562916,2687.23; 3.687731,2687.23;
        3.750243,2689.25; 3.81388,2689.25; 3.985255,2686.65; 4.109892,
        2686.65; 4.172757,2687.04; 4.326544,2687.04; 4.388354,2686.09;
        4.527988,2686.09; 4.588611,2687.52; 4.710871,2687.52; 4.786535,
        2687.51; 4.896501,2687.51; 4.986464,2686.75; 5.10977,2686.75;
        5.169378,2683.09; 5.30667,2683.09; 5.367304,2689.74; 5.505594,
        2689.74; 5.598245,2690.87; 5.702751,2690.87; 5.796473,2687.83;
        5.904478,2687.83; 5.983086,2685.45; 6.122028,2685.45; 6.183448,
        1899.82; 6.339286,1899.82; 6.401806,1782.71; 6.57354,1782.71;
        6.698137,1786; 6.79158,1789.78; 6.914851,1789.78; 6.977082,1787.61;
        7.118414,1787.61; 7.180474,1788.92; 7.321105,1788.92; 7.383709,
        1787.91; 7.553522,1787.91; 7.614461,1787.74; 7.722859,1788.49;
        7.800764,1788.49; 7.939738,1788.49; 8.017587,1787.4; 8.138286,
        1788.78; 8.199577,1788.78; 8.337552,1788.78; 8.399503,1787.22;
        8.554447,1787.22; 8.616437,1787.8; 8.725396,1786.38; 8.801296,
        1786.38; 8.971649,1786.38; 9.111901,1787.74; 9.172995,1786.57;
        9.326737,1786.57; 9.388765,1787.61; 9.546087,1787.61; 9.60789,
        1786.04; 9.717614,1786.04; 9.794978,1787.07; 9.90331,1787.07;
        9.980248,1786.75; 10.137679,1786.75; 10.215495,1788.15; 10.355529,
        1786.18; 10.402369,1786.18; 10.555471,1786.18; 10.603366,1787.53;
        10.714303,1787.53; 10.806781,1787.74; 10.915944,1787.74; 10.963607,
        1788.63; 11.135518,1788.63; 11.198809,1786.65; 11.321228,1786.65;
        11.384728,1785.98; 11.525441,1785.98; 11.589465,1788.45; 11.713961,
        1788.45; 11.805777,1787.31])
    annotation (Placement(transformation(extent={{-116,10},{-108,18}})));
  Modelica.Blocks.Sources.CombiTimeTable Qref(table=[0.110995,1284.53;
        0.173604,1283.08; 0.295767,1283.08; 0.358515,1285.09; 0.483143,
        1285.09; 0.560845,1284.42; 0.685354,1284.42; 0.748317,1287.85;
        0.80999,1287.85; 0.934908,1285.9; 0.997955,1285.9; 1.106929,1285.9;
        1.153946,1280.72; 1.293319,1280.72; 1.356922,1285.28; 1.483502,
        1285.28; 1.56195,1285.4; 1.687347,1285.4; 1.751441,1283.17;
        1.814274,1283.17; 1.938334,1284.81; 2.001447,1284.81; 2.110952,
        1284.81; 2.173255,1284.37; 2.298781,1284.37; 2.360933,1285.09;
        2.499706,1285.09; 2.561033,1284.56; 2.68432,1284.56; 2.745097,
        1282.74; 2.807597,1282.74; 2.913216,1282.74; 2.974201,1288.53;
        3.099482,1288.53; 3.159931,1286.46; 3.297407,1286.46; 3.359394,
        1287.65; 3.500337,1287.65; 3.562916,1283.53; 3.687731,1283.53;
        3.750243,1284.72; 3.81388,1284.72; 3.985255,1284.9; 4.109892,1284.9;
        4.172757,1285.13; 4.326544,1285.13; 4.388354,1284.52; 4.527988,
        1284.52; 4.588611,1280.37; 4.710871,1280.37; 4.786535,1285.87;
        4.896501,1285.87; 4.986464,1286.85; 5.10977,1286.85; 5.169378,
        1285.95; 5.30667,1285.95; 5.367304,1287.33; 5.505594,1287.33;
        5.598245,1286.69; 5.702751,1286.69; 5.796473,1285.32; 5.904478,
        1285.32; 5.983086,1283.75; 6.122028,1283.75; 6.183448,816.05;
        6.339286,816.05; 6.401806,778.12; 6.57354,778.12; 6.698137,747.31;
        6.79158,743.76; 6.914851,743.76; 6.977082,746.85; 7.118414,746.85;
        7.180474,746.96; 7.321105,746.96; 7.383709,744.55; 7.553522,744.55;
        7.614461,747.31; 7.722859,746.37; 7.800764,746.37; 7.939738,746.37;
        8.017587,746.17; 8.138286,746.72; 8.199577,746.72; 8.337552,746.72;
        8.399503,745; 8.554447,745; 8.616437,742.46; 8.725396,743.01;
        8.801296,743.01; 8.971649,743.01; 9.111901,742.69; 9.172995,742.58;
        9.326737,742.58; 9.388765,740.74; 9.546087,740.74; 9.60789,740.35;
        9.717614,740.35; 9.794978,741.61; 9.90331,741.61; 9.980248,743.07;
        10.137679,743.07; 10.215495,742.39; 10.355529,746.2; 10.402369,
        746.2; 10.555471,746.2; 10.603366,746.18; 10.714303,746.18;
        10.806781,746.78; 10.915944,746.78; 10.963607,750.75; 11.135518,
        750.75; 11.198809,750.44; 11.321228,750.44; 11.384728,750.54;
        11.525441,750.54; 11.589465,752.88; 11.713961,752.88; 11.805777,
        750.36])
    annotation (Placement(transformation(extent={{-116,-14},{-108,-6}})));
  Modelica.Blocks.Math.Gain gain(k=1/(3*SysData.S_b))
    annotation (Placement(transformation(extent={{-100,10},{-92,18}})));
  Modelica.Blocks.Math.Gain gain1(k=1/(3*SysData.S_b))
    annotation (Placement(transformation(extent={{-98,-14},{-90,-6}})));
  Modelica.Blocks.Sources.CombiTimeTable I1_angle(table=[0.110995,-58.89;
        0.173604,-58.89; 0.295767,-58.89; 0.358515,-58.91; 0.483143,-58.91;
        0.560845,-58.88; 0.685354,-58.88; 0.748317,-58.95; 0.80999,-58.95;
        0.934908,-58.82; 0.997955,-58.82; 1.106929,-58.91; 1.153946,-58.91;
        1.293319,-58.91; 1.356922,-58.85; 1.483502,-58.85; 1.56195,-58.83;
        1.687347,-58.83; 1.751441,-58.8; 1.814274,-58.8; 1.938334,-58.88;
        2.001447,-58.88; 2.110952,-58.9; 2.173255,-58.9; 2.298781,-58.9;
        2.360933,-58.81; 2.499706,-58.81; 2.561033,-58.84; 2.68432,-58.84;
        2.745097,-58.8; 2.807597,-58.8; 2.913216,-58.94; 2.974201,-58.94;
        3.099482,-58.94; 3.159931,-58.96; 3.297407,-58.96; 3.359394,-58.95;
        3.500337,-58.95; 3.562916,-58.77; 3.687731,-58.77; 3.750243,-58.92;
        3.81388,-58.92; 3.985255,-58.91; 4.109892,-58.86; 4.172757,-58.86;
        4.326544,-58.86; 4.388354,-58.87; 4.527988,-58.84; 4.588611,-58.84;
        4.710871,-58.89; 4.786535,-58.89; 4.896501,-58.89; 4.986464,-58.84;
        5.10977,-58.84; 5.169378,-58.84; 5.30667,-58.84; 5.367304,-58.9;
        5.505594,-58.9; 5.598245,-58.85; 5.702751,-58.84; 5.796473,-58.84;
        5.904478,-58.8; 5.983086,-58.8; 6.122028,-59.18; 6.183448,-59.18;
        6.339286,-56.46; 6.401806,-56.46; 6.57354,-56.5; 6.698137,-56.5;
        6.79158,-56.41; 6.914851,-56.39; 6.977082,-56.39; 7.118414,-56.39;
        7.180474,-56.42; 7.321105,-56.42; 7.383709,-56.38; 7.553522,-56.39;
        7.614461,-56.39; 7.722859,-56.36; 7.800764,-56.36; 7.939738,-56.42;
        8.017587,-56.42; 8.138286,-56.34; 8.199577,-56.34; 8.337552,-56.37;
        8.399503,-56.37; 8.554447,-56.35; 8.616437,-56.35; 8.725396,-56.38;
        8.801296,-56.38; 8.971649,-56.42; 9.111901,-56.42; 9.172995,-56.49;
        9.326737,-56.49; 9.388765,-56.37; 9.546087,-56.46; 9.60789,-56.46;
        9.717614,-56.34; 9.794978,-56.34; 9.90331,-56.45; 9.980248,-56.45;
        10.137679,-56.39; 10.215495,-56.39; 10.355529,-56.44; 10.402369,-56.44;
        10.555471,-56.37; 10.603366,-56.37; 10.714303,-56.39; 10.806781,-56.39;
        10.915944,-56.39; 10.963607,-56.39; 11.135518,-56.39; 11.198809,-56.49;
        11.321228,-56.38; 11.384728,-56.38; 11.525441,-56.38; 11.589465,-56.38;
        11.713961,-56.33; 11.805777,-56.33], smoothness=Modelica.Blocks.Types.Smoothness.LinearSegments)
    annotation (Placement(transformation(extent={{-116,-40},{-108,-32}})));
equation
  connect(pV_with_inputs.pwPin, InverterBus.p)
    annotation (Line(points={{-50,30},{-30,30}}, color={0,0,255}));
  connect(InverterBus.p, twoWindingTransformer.p)
    annotation (Line(points={{-30,30},{-11,30}}, color={0,0,255}));
  connect(twoWindingTransformer.n, GridBus.p)
    annotation (Line(points={{11,30},{30,30}}, color={0,0,255}));
  connect(GridBus.p, INF.p)
    annotation (Line(points={{30,30},{50,30}}, color={0,0,255}));
  connect(pV_with_inputs1.pwPin, InverterBus1.p)
    annotation (Line(points={{-52,-30},{-48,-30}}, color={0,0,255}));
  connect(twoWindingTransformer1.n, GridBus1.p)
    annotation (Line(points={{7,-30},{12,-30}},  color={0,0,255}));
  connect(VR.y, voltageSourceReImInput.vRe) annotation (Line(points={{77.3,
          -20},{74,-20},{74,-26},{68,-26}}, color={0,0,127}));
  connect(VI.y, voltageSourceReImInput.vIm) annotation (Line(points={{77.3,
          -42},{74,-42},{74,-34},{68,-34}}, color={0,0,127}));
  connect(GridBus1.p, pwLine.p)
    annotation (Line(points={{12,-30},{17,-30}},color={0,0,255}));
  connect(pwLine.n, GridBus2.p)
    annotation (Line(points={{35,-30},{40,-30}}, color={0,0,255}));
  connect(GridBus2.p, voltageSourceReImInput.p)
    annotation (Line(points={{40,-30},{45,-30}}, color={0,0,255}));
  connect(current_low_side.y, angle_low.u)
    annotation (Line(points={{-59,-70},{-42,-70}}, color={0,0,127}));
  connect(InverterBus2.p, twoWindingTransformer1.p)
    annotation (Line(points={{-20,-30},{-15,-30}}, color={0,0,255}));
  connect(pwLine1.n, InverterBus2.p)
    annotation (Line(points={{-25,-30},{-20,-30}}, color={0,0,255}));
  connect(pwLine1.p, InverterBus1.p)
    annotation (Line(points={{-43,-30},{-48,-30}}, color={0,0,255}));
  connect(current_high_side1.y, angle_high.u)
    annotation (Line(points={{21,-70},{38,-70}}, color={0,0,127}));
  connect(gain1.u, Qref.y[1])
    annotation (Line(points={{-98.8,-10},{-107.6,-10}}, color={0,0,127}));
  connect(gain.u, Pref.y[1])
    annotation (Line(points={{-100.8,14},{-107.6,14}}, color={0,0,127}));
  connect(gain.y, pV_with_inputs.Pinput) annotation (Line(points={{-91.6,14},
          {-82,14},{-82,34},{-72,34}}, color={0,0,127}));
  connect(pV_with_inputs1.Pinput, gain.y) annotation (Line(points={{-74,-26},
          {-78,-26},{-78,14},{-91.6,14}}, color={0,0,127}));
  connect(gain1.y, pV_with_inputs.Qinput) annotation (Line(points={{-89.6,
          -10},{-84,-10},{-84,50},{-72,50},{-72,39.8}}, color={0,0,127}));
  connect(pV_with_inputs1.Qinput, gain1.y) annotation (Line(points={{-74,
          -20.2},{-86,-20.2},{-86,-10},{-89.6,-10}}, color={0,0,127}));
  annotation (Icon(coordinateSystem(preserveAspectRatio=false, extent={{
            -120,-100},{100,100}})),                             Diagram(
        coordinateSystem(preserveAspectRatio=false, extent={{-120,-100},{
            100,100}})),
    experiment(
      StopTime=10,
      __Dymola_NumberOfIntervals=1000,
      __Dymola_Algorithm="Dassl"));
end AlsetLabInverter_over_pf090_3000VA_2000VA;
