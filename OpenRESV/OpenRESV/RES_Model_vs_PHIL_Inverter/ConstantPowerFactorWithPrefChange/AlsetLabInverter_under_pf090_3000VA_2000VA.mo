within OpenRESV.RES_Model_vs_PHIL_Inverter.ConstantPowerFactorWithPrefChange;
model AlsetLabInverter_under_pf090_3000VA_2000VA
  extends Modelica.Icons.Example;
  OpenIPSL.Electrical.Renewables.PSSE.PV_with_inputs pV_with_inputs(
    V_b=352.01,
    P_0(displayUnit="W") = 3026.85/3,
    Q_0(displayUnit="V.A") = -1182.5/3,
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
    VB1=352010,
    VNOM2(displayUnit="V") = 140.80,
    VB2=140800)
    annotation (Placement(transformation(extent={{-10,20},{10,40}})));
  OpenIPSL.Electrical.Buses.Bus GridBus(V_b=281.61)
    annotation (Placement(transformation(extent={{20,20},{40,40}})));
  OpenIPSL.Electrical.Machines.PSSE.GENCLS INF(
    V_b=281.61,
    P_0(displayUnit="W"),
    angle_0=-0.52431436059162,
    X_d=0) annotation (Placement(transformation(extent={{70,20},{50,40}})));
  OpenIPSL.Electrical.Renewables.PSSE.PV_with_inputs pV_with_inputs1(
    V_b=352.01,
    P_0(displayUnit="W") = 3026.85/3,
    Q_0(displayUnit="V.A") = -1182.5/3,
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
    VB1=352010,
    VNOM2(displayUnit="V") = 140.80,
    VB2=140800)
    annotation (Placement(transformation(extent={{-14,-40},{6,-20}})));
  OpenIPSL.Electrical.Buses.Bus GridBus1(V_b=281.61)
    annotation (Placement(transformation(extent={{2,-40},{22,-20}})));
  OpenIPSL.Electrical.Sources.VoltageSourceReImInput voltageSourceReImInput(V_b=
        281.61)
    annotation (Placement(transformation(extent={{66,-40},{46,-20}})));
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
  Modelica.Blocks.Sources.CombiTimeTable Pref(table=[0.06765,3026.85;
        0.128289,3026.85; 0.269158,3026.85; 0.330922,3023.57; 0.454059,
        3023.57; 0.532586,3021.98; 0.641754,3021.98; 0.704658,3027.82;
        0.859447,3027.82; 0.921392,3024.54; 1.06254,3024.54; 1.125606,
        3022.53; 1.265504,3022.53; 1.327413,3022.16; 1.453382,3022.16;
        1.500981,3028.27; 1.6412,3028.27; 1.703663,3023.42; 1.842194,
        3023.42; 1.903142,3022.19; 2.011836,3022.19; 2.090191,3026.91;
        2.215174,3026.91; 2.307658,3021.89; 2.447109,3021.89; 2.525516,
        3027.77; 2.633889,3027.77; 2.694712,3024.43; 2.85005,3024.43;
        2.911822,3023.63; 3.053732,3023.63; 3.101547,3025.54; 3.222353,
        3025.54; 3.299651,3024.65; 3.434278,3024.65; 3.510234,3027.88;
        3.631861,3027.88; 3.693751,3023.03; 3.832477,3023.03; 3.894431,
        3025.16; 3.940287,3025.16; 4.065036,3021.09; 4.126844,3021.09;
        4.2683,3021.09; 4.329473,3026.9; 4.450877,3026.9; 4.527808,2897.78;
        4.652149,2897.78; 4.714139,2000.42; 4.866155,2000.42; 4.943,1994.05;
        5.066351,1999.3; 5.143755,1999.3; 5.285098,1998.03; 5.347379,
        1998.03; 5.454508,1995.86; 5.517106,1995.86; 5.643855,1995.86;
        5.70679,1996.4; 5.878061,1996.4; 5.941131,1997.15; 6.064938,1996.11;
        6.127801,1996.11; 6.253629,1996.11; 6.315211,1996.77; 6.441399,
        1996.77; 6.519934,1995.67; 6.630073,1995.67; 6.693727,1996.02;
        6.818663,1996.02; 6.882257,1996.27; 6.94266,1996.27; 7.066564,
        1996.16; 7.143818,1996.16; 7.283152,1996.2; 7.345829,1996.2;
        7.484372,1995.12; 7.531057,1995.12; 7.641132,1995.12; 7.703643,
        1996.17; 7.842019,1996.17; 7.904343,1996.04; 8.01276,1996.04;
        8.075843,1996.51; 8.152813,1996.51; 8.259467,1995.46; 8.337277,
        1995.46; 8.44907,1995.46; 8.510816,1995.79; 8.636862,1995.79;
        8.698865,1995.78; 8.835295,1995.78; 8.897688,1995.24])
    annotation (Placement(transformation(extent={{-116,10},{-108,18}})));
  Modelica.Blocks.Sources.CombiTimeTable Qref(table=[0.06765,-1182.5;
        0.128289,-1182.5; 0.269158,-1182.5; 0.330922,-1183.1; 0.454059,-1183.1;
        0.532586,-1185.28; 0.641754,-1185.28; 0.704658,-1186.91; 0.859447,-1186.91;
        0.921392,-1186.81; 1.06254,-1186.81; 1.125606,-1190.86; 1.265504,-1190.86;
        1.327413,-1187.74; 1.453382,-1187.74; 1.500981,-1187.98; 1.6412,-1187.98;
        1.703663,-1188.61; 1.842194,-1188.61; 1.903142,-1186.94; 2.011836,-1186.94;
        2.090191,-1191.01; 2.215174,-1191.01; 2.307658,-1186.21; 2.447109,-1186.21;
        2.525516,-1189; 2.633889,-1189; 2.694712,-1190.12; 2.85005,-1190.12;
        2.911822,-1189.11; 3.053732,-1189.11; 3.101547,-1188.46; 3.222353,-1188.46;
        3.299651,-1186.53; 3.434278,-1186.53; 3.510234,-1191.72; 3.631861,-1191.72;
        3.693751,-1183.76; 3.832477,-1183.76; 3.894431,-1185.49; 3.940287,-1185.49;
        4.065036,-1183.55; 4.126844,-1183.55; 4.2683,-1183.55; 4.329473,-1187.49;
        4.450877,-1187.49; 4.527808,-1156.23; 4.652149,-1156.23; 4.714139,-812.61;
        4.866155,-812.61; 4.943,-815.39; 5.066351,-802.03; 5.143755,-802.03;
        5.285098,-800.55; 5.347379,-800.55; 5.454508,-799.86; 5.517106,-799.86;
        5.643855,-799.86; 5.70679,-802.77; 5.878061,-802.77; 5.941131,-802.7;
        6.064938,-804.66; 6.127801,-804.66; 6.253629,-804.66; 6.315211,-805.05;
        6.441399,-805.05; 6.519934,-805.44; 6.630073,-805.44; 6.693727,-806.81;
        6.818663,-806.81; 6.882257,-806.9; 6.94266,-806.9; 7.066564,-808.8;
        7.143818,-808.8; 7.283152,-809.59; 7.345829,-809.59; 7.484372,-808.75;
        7.531057,-808.75; 7.641132,-808.75; 7.703643,-809.85; 7.842019,-809.85;
        7.904343,-809.53; 8.01276,-809.53; 8.075843,-810.12; 8.152813,-810.12;
        8.259467,-807.54; 8.337277,-807.54; 8.44907,-807.54; 8.510816,-807.09;
        8.636862,-807.09; 8.698865,-808.15; 8.835295,-808.15; 8.897688,-807.73])
    annotation (Placement(transformation(extent={{-116,-14},{-108,-6}})));
  Modelica.Blocks.Math.Gain gain(k=1/(3*SysData.S_b))
    annotation (Placement(transformation(extent={{-100,10},{-92,18}})));
  Modelica.Blocks.Math.Gain gain1(k=1/(3*SysData.S_b))
    annotation (Placement(transformation(extent={{-98,-14},{-90,-6}})));
  Modelica.Blocks.Sources.CombiTimeTable I1_angle(table=[0.06765,-7.63;
        0.128289,-7.63; 0.269158,-7.6; 0.330922,-7.6; 0.454059,-7.56;
        0.532586,-7.56; 0.641754,-7.64; 0.704658,-7.64; 0.859447,-7.64;
        0.921392,-7.55; 1.06254,-7.61; 1.125606,-7.61; 1.265504,-7.53;
        1.327413,-7.53; 1.453382,-7.61; 1.500981,-7.61; 1.6412,-7.52;
        1.703663,-7.52; 1.842194,-7.52; 1.903142,-7.57; 2.011836,-7.57;
        2.090191,-7.53; 2.215174,-7.53; 2.307658,-7.58; 2.447109,-7.58;
        2.525516,-7.63; 2.633889,-7.53; 2.694712,-7.53; 2.85005,-7.53;
        2.911822,-7.61; 3.053732,-7.57; 3.101547,-7.57; 3.222353,-7.57;
        3.299651,-7.6; 3.434278,-7.6; 3.510234,-7.57; 3.631861,-7.6;
        3.693751,-7.6; 3.832477,-7.6; 3.894431,-7.56; 3.940287,-7.56;
        4.065036,-7.59; 4.126844,-7.59; 4.2683,-7.58; 4.329473,-7.58;
        4.450877,-6.74; 4.527808,-6.74; 4.652149,-4.81; 4.714139,-4.81;
        4.866155,-5.8; 4.943,-5.8; 5.066351,-5.71; 5.143755,-5.71; 5.285098,
        -5.58; 5.347379,-5.58; 5.454508,-5.61; 5.517106,-5.61; 5.643855,-5.62;
        5.70679,-5.62; 5.878061,-5.65; 5.941131,-5.65; 6.064938,-5.61;
        6.127801,-5.61; 6.253629,-5.61; 6.315211,-5.61; 6.441399,-5.67;
        6.519934,-5.67; 6.630073,-5.6; 6.693727,-5.6; 6.818663,-5.6;
        6.882257,-5.67; 6.94266,-5.67; 7.066564,-5.62; 7.143818,-5.62;
        7.283152,-5.56; 7.345829,-5.56; 7.484372,-5.64; 7.531057,-5.64;
        7.641132,-5.63; 7.703643,-5.63; 7.842019,-5.63; 7.904343,-5.61;
        8.01276,-5.61; 8.075843,-5.6; 8.152813,-5.6; 8.259467,-5.61;
        8.337277,-5.61; 8.44907,-5.62; 8.510816,-5.62; 8.636862,-5.58;
        8.698865,-5.58; 8.835295,-5.58; 8.897688,-5.61], smoothness=
        Modelica.Blocks.Types.Smoothness.LinearSegments)
    annotation (Placement(transformation(extent={{-116,-40},{-108,-32}})));
  Modelica.Blocks.Sources.CombiTimeTable VM(table=[0.110004,339.2221507;
        0.250006,339.2221507; 0.320006,339.2163772; 0.380007,339.2163772;
        0.53001,339.2221507; 0.660012,339.2221507; 0.730013,339.2336977;
        0.860015,339.2336977; 0.940016,339.2279242; 1.080019,339.2279242;
        1.150021,339.2279242; 1.270037,339.2279242; 1.340036,339.2221507;
        1.455158,339.2221507; 1.51516,339.2279242; 1.665174,339.2279242;
        1.735179,339.2394712; 1.875809,339.2394712; 1.965183,339.2106037;
        2.135742,339.2106037; 2.245182,339.2336977; 2.325189,339.2163772;
        2.445187,339.2163772; 2.505192,339.2163772; 2.655751,339.2163772;
        2.735196,339.2336977; 2.876194,339.2336977; 2.955834,339.2279242;
        3.10576,339.2279242; 3.175759,339.2279242; 3.2952,339.2106037;
        3.365207,339.2106037; 3.485841,339.2106037; 3.555765,339.2336977;
        3.71577,339.2336977; 3.775766,339.2221507; 3.926053,339.2163772;
        4.055218,339.2163772; 4.141731,339.2336977; 4.250796,339.2336977;
        4.320797,339.2163772; 4.450814,339.2163772; 4.510813,339.2452447;
        4.650803,339.2452447; 4.740804,339.2279242; 4.850817,339.2279242;
        4.920822,339.2221507; 4.980823,339.2221507; 5.141414,339.2279242;
        5.26142,339.2279242; 5.371409,339.2279242; 5.511424,339.2336977;
        5.661425,339.2336977; 5.722065,339.2279242; 5.85202,339.2279242;
        5.90286,339.2394712; 5.964097,339.2394712; 6.104225,339.2394712;
        6.254161,339.2279242; 6.353532,339.2336977; 6.463535,339.2336977;
        6.523535,339.2336977; 6.674319,339.2336977; 6.734321,339.2279242;
        6.868836,339.2279242; 6.938838,339.2163772; 7.07884,339.2163772;
        7.141181,339.2279242; 7.271817,339.2279242; 7.361199,339.2336977;
        7.481758,339.2336977; 7.561203,339.2163772; 7.691207,339.2163772;
        7.751209,339.2163772; 7.881211,339.2163772; 7.951763,339.2221507;
        8.081214,339.2221507; 8.141215,339.2279242; 8.341776,339.2279242;
        8.471221,339.2279242; 8.531222,339.2221507; 8.671225,339.2221507;
        8.741226,339.2163772; 8.871228,339.2163772; 8.931229,339.2394712;
        9.051229,339.2394712; 9.121872,339.2163772; 9.271231,339.2163772;
        9.351236,339.2279242; 9.481237,339.2279242; 9.541236,339.2279242;
        9.681932,339.2279242; 9.751243,339.2452447; 9.886306,339.2452447;
        9.946307,339.2279242; 10.06632,339.2279242; 10.14631,349.3604214;
        10.276327,349.3604214; 10.346328,353.7656039; 10.46633,353.7656039;
        10.536332,353.7829245; 10.646333,353.7829245; 10.716335,353.7771509;
        10.836335,353.7771509; 10.896334,353.7713774; 10.956339,353.7713774;
        11.076564,353.7713774; 11.136905,353.7829245; 11.276344,353.7829245;
        11.366346,353.7829245; 11.486343,353.7829245; 11.546345,353.7771509;
        11.656905,353.7771509; 11.736352,353.7829245; 11.856351,353.7829245;
        11.916355,353.7713774; 12.036352,353.7713774; 12.106919,353.7829245;
        12.17666,353.7829245; 12.317572,353.7656039; 12.367559,353.7656039;
        12.47756,353.7771509; 12.542555,353.7771509; 12.652556,353.7771509;
        12.722558,353.7771509; 12.772559,353.7771509; 12.89256,353.7656039;
        12.942561,353.7656039; 13.062563,353.7656039; 13.102564,353.7713774;
        13.152565,353.7713774; 13.292567,353.7713774; 13.342568,353.7598304;
        13.45257,353.7598304; 13.502571,353.7713774; 13.552572,353.7713774;
        13.652574,353.7713774; 13.722577,353.7598304; 13.862577,353.7598304;
        13.922578,353.7829245; 13.972579,353.7829245; 14.092581,353.7540569;
        14.142582,353.7540569; 14.272585,353.7540569; 14.342586,353.7829245;
        14.452588,353.7829245; 14.502588,353.7656039; 14.55259,353.7656039;
        14.652591,353.7656039; 14.722592,353.7713774; 14.772593,353.7713774;
        14.892595,353.7656039; 14.942596,353.7656039; 15.062598,353.7656039;
        15.102599,353.7713774; 15.1526,353.7713774; 15.27819,353.7713774;
        15.348188,353.7713774; 15.468193,353.7713774; 15.528188,353.7598304;
        15.638181,353.7598304; 15.698182,353.7829245; 15.758183,353.7829245;
        15.868185,353.7829245; 15.928198,353.7713774; 16.038197,353.7713774;
        16.108202,353.7713774; 16.238193,353.7713774])
    annotation (Placement(transformation(extent={{96,-34},{88,-26}})));
  Modelica.Blocks.Math.Gain gain2(k=0.4*cos(-3.1415*0.1670)/140.80)
    annotation (Placement(transformation(extent={{80,-22},{76,-18}})));
  Modelica.Blocks.Math.Gain gain3(k=0.4*sin(-3.1415*0.1670)/140.80)
    annotation (Placement(transformation(extent={{80,-42},{76,-38}})));
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
  connect(gain2.u,VM. y[1])
    annotation (Line(points={{80.4,-20},{84,-20},{84,-30},{87.6,-30}},
                                                     color={0,0,127}));
  connect(gain2.u, gain3.u) annotation (Line(points={{80.4,-20},{84,-20},{
          84,-40},{80.4,-40}}, color={0,0,127}));
  connect(gain2.y, voltageSourceReImInput.vRe) annotation (Line(points={{
          75.8,-20},{72,-20},{72,-26},{68,-26}}, color={0,0,127}));
  connect(gain3.y, voltageSourceReImInput.vIm) annotation (Line(points={{
          75.8,-40},{68,-40},{68,-34}}, color={0,0,127}));
  annotation (Icon(coordinateSystem(preserveAspectRatio=false, extent={{
            -120,-100},{100,100}})),                             Diagram(
        coordinateSystem(preserveAspectRatio=false, extent={{-120,-100},{
            100,100}})),
    experiment(
      StopTime=8.5,
      __Dymola_NumberOfIntervals=1000,
      __Dymola_Algorithm="Dassl"));
end AlsetLabInverter_under_pf090_3000VA_2000VA;
