within OpenRESV.RES_Model_vs_PHIL_Inverter.ConstantPowerFactorWithPrefChange;
model AlsetLabInverter_over_pf090_3000VA_2500VA
  extends Modelica.Icons.Example;
  OpenIPSL.Electrical.Renewables.PSSE.PV_with_inputs pV_with_inputs(
    V_b=352.01,
    P_0(displayUnit="W") = 2688.71/3,
    Q_0(displayUnit="V.A") = 1286.73/3,
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
    P_0(displayUnit="W") = 2688.71/3,
    Q_0(displayUnit="V.A") = 1286.73/3,
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
  Modelica.Blocks.Sources.CombiTimeTable Pref(table=[0.085022,2688.71;
        0.146036,2688.71; 0.282071,2688.71; 0.358104,2684.85; 0.484135,
        2689.55; 0.532147,2689.55; 0.672587,2689.55; 0.73408,2685.81;
        0.874693,2685.81; 0.936288,2688.1; 1.061115,2688.1; 1.139443,
        2688.89; 1.265768,2688.89; 1.329715,2687.49; 1.470008,2687.49;
        1.533093,2687.41; 1.64256,2687.41; 1.704092,2682.55; 1.829582,
        2682.55; 1.891563,2686.61; 2.032662,2686.61; 2.110667,2691.44;
        2.234828,2691.44; 2.281669,2683.43; 2.360671,2683.43; 2.499656,
        2687.6; 2.562679,2687.6; 2.670286,2690.56; 2.732162,2690.56;
        2.856438,2690.56; 2.918073,2683.32; 3.074039,2683.32; 3.120111,
        2689.51; 3.242271,2689.51; 3.321326,2689.5; 3.475893,2689.5;
        3.538267,2686.78; 3.647972,2686.78; 3.695267,2683.4; 3.757103,
        2683.4; 3.88282,2689.47; 4.023678,2689.47; 4.085156,2684.41;
        4.147663,2684.41; 4.256919,2684.41; 4.331558,2690.96; 4.468905,
        2690.96; 4.528921,2683.05; 4.651951,2683.05; 4.711966,2686.51;
        4.834997,2686.51; 4.89736,2687.84; 5.049308,2687.84; 5.110746,
        2690.53; 5.234223,2690.53; 5.280201,2682.69; 5.341194,2682.69;
        5.478128,2682.69; 5.539118,2314.08; 5.646076,2314.08; 5.707717,
        2238.99; 5.83104,2238.99; 5.89402,2237.2; 5.941038,2237.2; 6.111226,
        2238.37; 6.234113,2238.37; 6.311499,2237.11; 6.435173,2237.11;
        6.513245,2240.61; 6.639554,2240.61; 6.701359,2236.76; 6.826749,
        2236.76; 6.888198,2235.38; 7.029587,2235.38; 7.091622,2237.83;
        7.153025,2237.83; 7.275455,2237.05; 7.352751,2237.05; 7.506701,
        2237.7; 7.631803,2237.7; 7.695135,2236.18; 7.756607,2236.18;
        7.864977,2239.07; 7.927821,2239.07; 8.084811,2239.07; 8.147822,
        2236.64; 8.257421,2236.64; 8.333733,2238.51; 8.457522,2238.51;
        8.519736,2237.4; 8.66066,2237.4; 8.722912,2234.54; 8.848641,2234.54;
        8.896011,2237.8; 9.051494,2237.8; 9.112274,2237.99; 9.234484,
        2237.99; 9.312885,2237.65; 9.436853,2237.65; 9.514343,2235.57;
        9.639236,2235.57; 9.700592,2239.1; 9.826562,2239.1; 9.888143,2238.3;
        10.027749,2238.3; 10.105729,2238.64; 10.229804,2238.64; 10.308308,
        2236.84; 10.430873,2236.84; 10.526438,2238.18; 10.651745,2238.18;
        10.713511,2235.57; 10.835239,2235.57; 10.896773,2237.18; 11.050716,
        2237.18; 11.113357,2237.12; 11.237639,2237.12; 11.312281,2237.64;
        11.467362,2237.64; 11.529771,2237.94; 11.686495,2237.94; 11.748714,
        2237.28; 11.887427,2237.28])
    annotation (Placement(transformation(extent={{-116,10},{-108,18}})));
  Modelica.Blocks.Sources.CombiTimeTable Qref(table=[0.085022,1286.73;
        0.146036,1286.73; 0.282071,1286.73; 0.358104,1285.46; 0.484135,
        1285.76; 0.532147,1285.76; 0.672587,1285.76; 0.73408,1286.27;
        0.874693,1286.27; 0.936288,1283.18; 1.061115,1283.18; 1.139443,
        1283.7; 1.265768,1283.7; 1.329715,1286.84; 1.470008,1286.84;
        1.533093,1285.03; 1.64256,1285.03; 1.704092,1286.16; 1.829582,
        1286.16; 1.891563,1285.69; 2.032662,1285.69; 2.110667,1284.39;
        2.234828,1284.39; 2.281669,1283.28; 2.360671,1283.28; 2.499656,
        1287.62; 2.562679,1287.62; 2.670286,1283.51; 2.732162,1283.51;
        2.856438,1283.51; 2.918073,1283.82; 3.074039,1283.82; 3.120111,
        1285.27; 3.242271,1285.27; 3.321326,1284.94; 3.475893,1284.94;
        3.538267,1283.75; 3.647972,1283.75; 3.695267,1283.87; 3.757103,
        1283.87; 3.88282,1286.53; 4.023678,1286.53; 4.085156,1282.85;
        4.147663,1282.85; 4.256919,1282.85; 4.331558,1284.12; 4.468905,
        1284.12; 4.528921,1282.99; 4.651951,1282.99; 4.711966,1285.6;
        4.834997,1285.6; 4.89736,1283.95; 5.049308,1283.95; 5.110746,
        1284.84; 5.234223,1284.84; 5.280201,1282.2; 5.341194,1282.2;
        5.478128,1282.2; 5.539118,1067.31; 5.646076,1067.31; 5.707717,
        1019.48; 5.83104,1019.48; 5.89402,1018.25; 5.941038,1018.25;
        6.111226,1020.23; 6.234113,1020.23; 6.311499,1019.3; 6.435173,
        1019.3; 6.513245,1017.16; 6.639554,1017.16; 6.701359,1017.68;
        6.826749,1017.68; 6.888198,1020.75; 7.029587,1020.75; 7.091622,
        1018.11; 7.153025,1018.11; 7.275455,1018.89; 7.352751,1018.89;
        7.506701,1018.26; 7.631803,1018.26; 7.695135,1018.14; 7.756607,
        1018.14; 7.864977,1017.48; 7.927821,1017.48; 8.084811,1017.48;
        8.147822,1017.13; 8.257421,1017.13; 8.333733,1017.13; 8.457522,
        1017.13; 8.519736,1017.02; 8.66066,1017.02; 8.722912,1017.47;
        8.848641,1017.47; 8.896011,1017.79; 9.051494,1017.79; 9.112274,
        1016.83; 9.234484,1016.83; 9.312885,1016.48; 9.436853,1016.48;
        9.514343,1015.48; 9.639236,1015.48; 9.700592,1018.71; 9.826562,
        1018.71; 9.888143,1017.06; 10.027749,1017.06; 10.105729,1017.82;
        10.229804,1017.82; 10.308308,1018.17; 10.430873,1018.17; 10.526438,
        1018.3; 10.651745,1018.3; 10.713511,1020.53; 10.835239,1020.53;
        10.896773,1018.28; 11.050716,1018.28; 11.113357,1020.47; 11.237639,
        1020.47; 11.312281,1019.67; 11.467362,1019.67; 11.529771,1019.95;
        11.686495,1019.95; 11.748714,1021.51; 11.887427,1021.51])
    annotation (Placement(transformation(extent={{-116,-14},{-108,-6}})));
  Modelica.Blocks.Math.Gain gain(k=1/(3*SysData.S_b))
    annotation (Placement(transformation(extent={{-100,10},{-92,18}})));
  Modelica.Blocks.Math.Gain gain1(k=1/(3*SysData.S_b))
    annotation (Placement(transformation(extent={{-98,-14},{-90,-6}})));
  Modelica.Blocks.Sources.CombiTimeTable I1_angle(table=[0.085022,-58.87;
        0.146036,-58.87; 0.282071,-58.83; 0.358104,-58.83; 0.484135,-58.82;
        0.532147,-58.82; 0.672587,-58.86; 0.73408,-58.86; 0.874693,-58.86;
        0.936288,-58.83; 1.061115,-58.93; 1.139443,-58.93; 1.265768,-58.83;
        1.329715,-58.83; 1.470008,-58.85; 1.533093,-58.85; 1.64256,-58.84;
        1.704092,-58.84; 1.829582,-58.84; 1.891563,-58.88; 2.032662,-58.88;
        2.110667,-58.91; 2.234828,-58.91; 2.281669,-58.8; 2.360671,-58.8;
        2.499656,-58.91; 2.562679,-58.91; 2.670286,-58.82; 2.732162,-58.82;
        2.856438,-58.77; 2.918073,-58.77; 3.074039,-58.85; 3.120111,-58.85;
        3.242271,-58.85; 3.321326,-58.88; 3.475893,-58.88; 3.538267,-58.84;
        3.647972,-58.79; 3.695267,-58.79; 3.757103,-58.79; 3.88282,-58.87;
        4.023678,-58.87; 4.085156,-58.75; 4.147663,-58.75; 4.256919,-58.88;
        4.331558,-58.88; 4.468905,-58.83; 4.528921,-58.83; 4.651951,-58.83;
        4.711966,-58.83; 4.834997,-58.83; 4.89736,-58.78; 5.049308,-58.78;
        5.110746,-58.89; 5.234223,-58.89; 5.280201,-58.78; 5.341194,-58.78;
        5.478128,-59.04; 5.539118,-59.04; 5.646076,-57.94; 5.707717,-57.94;
        5.83104,-57.94; 5.89402,-57.87; 5.941038,-57.87; 6.111226,-57.9;
        6.234113,-57.9; 6.311499,-58; 6.435173,-58; 6.513245,-57.83;
        6.639554,-57.83; 6.701359,-57.86; 6.826749,-57.86; 6.888198,-57.92;
        7.029587,-57.92; 7.091622,-57.92; 7.153025,-57.92; 7.275455,-57.92;
        7.352751,-57.92; 7.506701,-57.92; 7.631803,-57.92; 7.695135,-57.89;
        7.756607,-57.89; 7.864977,-57.93; 7.927821,-57.93; 8.084811,-57.86;
        8.147822,-57.86; 8.257421,-57.96; 8.333733,-57.96; 8.457522,-57.96;
        8.519736,-57.95; 8.66066,-57.95; 8.722912,-57.94; 8.848641,-57.96;
        8.896011,-57.96; 9.051494,-57.96; 9.112274,-57.97; 9.234484,-57.97;
        9.312885,-57.94; 9.436853,-57.94; 9.514343,-57.83; 9.639236,-57.83;
        9.700592,-57.9; 9.826562,-57.9; 9.888143,-57.91; 10.027749,-57.91;
        10.105729,-57.92; 10.229804,-57.92; 10.308308,-57.85; 10.430873,-57.85;
        10.526438,-57.93; 10.651745,-57.93; 10.713511,-57.93; 10.835239,-57.93;
        10.896773,-57.89; 11.050716,-57.89; 11.113357,-57.91; 11.237639,-57.91;
        11.312281,-57.83; 11.467362,-57.91; 11.529771,-57.91; 11.686495,-57.96;
        11.748714,-57.96; 11.887427,-57.9], smoothness=Modelica.Blocks.Types.Smoothness.LinearSegments)
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
          {-82,14},{-82,30},{-72,30}}, color={0,0,127}));
  connect(pV_with_inputs1.Pinput, gain.y) annotation (Line(points={{-74,-30},
          {-78,-30},{-78,14},{-91.6,14}}, color={0,0,127}));
  connect(gain1.y, pV_with_inputs.Qinput) annotation (Line(points={{-89.6,
          -10},{-84,-10},{-84,50},{-72,50},{-72,36}},   color={0,0,127}));
  connect(pV_with_inputs1.Qinput, gain1.y) annotation (Line(points={{-74,-24},
          {-86,-24},{-86,-10},{-89.6,-10}},          color={0,0,127}));
  annotation (Icon(coordinateSystem(preserveAspectRatio=false, extent={{
            -120,-100},{100,100}})),                             Diagram(
        coordinateSystem(preserveAspectRatio=false, extent={{-120,-100},{
            100,100}})),
    experiment(
      StopTime=10,
      __Dymola_NumberOfIntervals=1000,
      __Dymola_Algorithm="Dassl"));
end AlsetLabInverter_over_pf090_3000VA_2500VA;
