within OpenRESV.RES_Model_vs_PHIL_Inverter.ConstantPowerFactorWithPrefChange;
model AlsetLabInverter_under_pf090_3000VA_2500VA
  extends Modelica.Icons.Example;
  OpenIPSL.Electrical.Renewables.PSSE.PV_with_inputs pV_with_inputs(
    V_b=352.01,
    P_0(displayUnit="W") = 3024.62/3,
    Q_0(displayUnit="V.A") = -1187.03/3,
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
    angle_0=-0.5246459731495,
    X_d=0) annotation (Placement(transformation(extent={{70,20},{50,40}})));
  OpenIPSL.Electrical.Renewables.PSSE.PV_with_inputs pV_with_inputs1(
    V_b=352.01,
    P_0(displayUnit="W") = 3024.62/3,
    Q_0(displayUnit="V.A") = -1187.03/3,
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
  Modelica.Blocks.Sources.CombiTimeTable Pref(table=[0.167041,3024.62;
        0.228056,3025.09; 0.367873,3025.09; 0.444769,3027.11; 0.584805,
        3027.11; 0.647821,3022.62; 0.756944,3022.62; 0.84962,3021.9;
        1.020928,3024.91; 1.145783,3024.91; 1.208233,3024.1; 1.347792,
        3024.1; 1.41085,3024.48; 1.582211,3024.48; 1.64468,3023.67;
        1.753332,3023.67; 1.816538,3024.43; 1.94048,3024.43; 2.017528,
        3024.01; 2.142502,3024.01; 2.204224,3026.99; 2.252148,3026.99;
        2.376251,3025.69; 2.437955,3025.69; 2.611015,3025.69; 2.735037,
        3025.64; 2.810907,3022.7; 2.932249,3022.7; 3.008267,3024.18;
        3.143301,3024.18; 3.220321,3028.26; 3.374051,3028.26; 3.435887,
        3023.35; 3.605947,3023.35; 3.729986,3024.46; 3.822172,3024.38;
        3.946372,3024.38; 4.009388,2976.77; 4.178429,2976.77; 4.239446,
        2515.89; 4.377695,2515.89; 4.439387,2510.66; 4.596349,2510.66;
        4.720426,2510.9; 4.799443,2510.44; 4.923745,2510.44; 4.98664,
        2510.05; 5.141731,2510.05; 5.202707,2509.68; 5.250023,2509.68;
        5.390271,2510.52; 5.452259,2510.52; 5.605517,2510.25; 5.729807,
        2510.25; 5.823443,2509.72; 5.960911,2509.72; 6.023369,2510.58;
        6.162986,2510.58; 6.225606,2510.41; 6.348924,2510.41; 6.410464,
        2510.15; 6.551026,2510.15; 6.613836,2510.17; 6.721222,2510.17;
        6.78448,2510.77; 6.845079,2510.77; 6.952424,2510.77; 7.016085,
        2509.34; 7.156287,2509.34; 7.219442,2509.35; 7.361262,2509.35;
        7.423845,2508.63; 7.565858,2508.63; 7.626927,2511.02; 7.75052,
        2511.02; 7.811463,2508.15; 7.933561,2508.15; 8.013022,2508.37;
        8.153944,2508.37; 8.216548,2510.17; 8.342169,2510.17; 8.404811,
        2510.9; 8.547769,2510.9; 8.61008,2511.18; 8.750397,2511.18;
        8.811412,2510.54; 8.93329,2510.54; 9.011588,2508.35; 9.147872,
        2508.35; 9.208512,2509.04; 9.332071,2509.04; 9.394127,2510.54;
        9.518675,2510.54; 9.597539,2509.36; 9.721985,2509.36; 9.785346,
        2511.25; 9.924912,2511.25; 10.001633,2508.96])
    annotation (Placement(transformation(extent={{-116,10},{-108,18}})));
  Modelica.Blocks.Sources.CombiTimeTable Qref(table=[0.167041,-1187.03;
        0.228056,-1184.19; 0.367873,-1184.19; 0.444769,-1188.71; 0.584805,-1188.71;
        0.647821,-1183.65; 0.756944,-1183.65; 0.84962,-1185.08; 1.020928,-1183.22;
        1.145783,-1183.22; 1.208233,-1185.82; 1.347792,-1185.82; 1.41085,-1186.53;
        1.582211,-1186.53; 1.64468,-1188.85; 1.753332,-1188.85; 1.816538,-1185.93;
        1.94048,-1185.93; 2.017528,-1181.95; 2.142502,-1181.95; 2.204224,-1188.78;
        2.252148,-1188.78; 2.376251,-1189.25; 2.437955,-1189.25; 2.611015,-1189.25;
        2.735037,-1182.72; 2.810907,-1185.88; 2.932249,-1185.88; 3.008267,-1184.05;
        3.143301,-1184.05; 3.220321,-1188.92; 3.374051,-1188.92; 3.435887,-1188.23;
        3.605947,-1188.23; 3.729986,-1189.51; 3.822172,-1186.76; 3.946372,-1186.76;
        4.009388,-1181.64; 4.178429,-1181.64; 4.239446,-1000.46; 4.377695,-1000.46;
        4.439387,-990.64; 4.596349,-990.64; 4.720426,-992.53; 4.799443,-990.95;
        4.923745,-990.95; 4.98664,-993.32; 5.141731,-993.32; 5.202707,-993.17;
        5.250023,-993.17; 5.390271,-994.82; 5.452259,-994.82; 5.605517,-994.23;
        5.729807,-994.23; 5.823443,-996.7; 5.960911,-996.7; 6.023369,-996.31;
        6.162986,-996.31; 6.225606,-994.12; 6.348924,-994.12; 6.410464,-997.07;
        6.551026,-997.07; 6.613836,-996.87; 6.721222,-996.87; 6.78448,-999.08;
        6.845079,-999.08; 6.952424,-999.08; 7.016085,-995.76; 7.156287,-995.76;
        7.219442,-996.9; 7.361262,-996.9; 7.423845,-995.87; 7.565858,-995.87;
        7.626927,-995.01; 7.75052,-995.01; 7.811463,-995.01; 7.933561,-995.01;
        8.013022,-993.04; 8.153944,-993.04; 8.216548,-996.85; 8.342169,-996.85;
        8.404811,-996.78; 8.547769,-996.78; 8.61008,-996.69; 8.750397,-996.69;
        8.811412,-996.63; 8.93329,-996.63; 9.011588,-995.52; 9.147872,-995.52;
        9.208512,-997.43; 9.332071,-997.43; 9.394127,-996.46; 9.518675,-996.46;
        9.597539,-994.66; 9.721985,-994.66; 9.785346,-995.64; 9.924912,-995.64;
        10.001633,-996.86])
    annotation (Placement(transformation(extent={{-116,-14},{-108,-6}})));
  Modelica.Blocks.Math.Gain gain(k=1/(3*SysData.S_b))
    annotation (Placement(transformation(extent={{-100,10},{-92,18}})));
  Modelica.Blocks.Math.Gain gain1(k=1/(3*SysData.S_b))
    annotation (Placement(transformation(extent={{-98,-14},{-90,-6}})));
  Modelica.Blocks.Sources.CombiTimeTable I1_angle(table=[0.167041,-7.56;
        0.228056,-7.59; 0.367873,-7.57; 0.444769,-7.57; 0.584805,-7.64;
        0.647821,-7.64; 0.756944,-7.56; 0.84962,-7.56; 1.020928,-7.62;
        1.145783,-7.56; 1.208233,-7.56; 1.347792,-7.56; 1.41085,-7.58;
        1.582211,-7.58; 1.64468,-7.58; 1.753332,-7.61; 1.816538,-7.61;
        1.94048,-7.61; 2.017528,-7.59; 2.142502,-7.53; 2.204224,-7.53;
        2.252148,-7.53; 2.376251,-7.55; 2.437955,-7.55; 2.611015,-7.61;
        2.735037,-7.61; 2.810907,-7.57; 2.932249,-7.57; 3.008267,-7.6;
        3.143301,-7.57; 3.220321,-7.57; 3.374051,-7.62; 3.435887,-7.62;
        3.605947,-7.5; 3.729986,-7.5; 3.822172,-7.62; 3.946372,-7.33;
        4.009388,-7.33; 4.178429,-6.33; 4.239446,-6.33; 4.377695,-6.79;
        4.439387,-6.79; 4.596349,-6.69; 4.720426,-6.69; 4.799443,-6.79;
        4.923745,-6.79; 4.98664,-6.83; 5.141731,-6.83; 5.202707,-6.77;
        5.250023,-6.77; 5.390271,-6.77; 5.452259,-6.77; 5.605517,-6.81;
        5.729807,-6.81; 5.823443,-6.78; 5.960911,-6.81; 6.023369,-6.81;
        6.162986,-6.83; 6.225606,-6.83; 6.348924,-6.79; 6.410464,-6.79;
        6.551026,-6.79; 6.613836,-6.84; 6.721222,-6.84; 6.78448,-6.82;
        6.845079,-6.82; 6.952424,-6.83; 7.016085,-6.83; 7.156287,-6.83;
        7.219442,-6.83; 7.361262,-6.83; 7.423845,-6.83; 7.565858,-6.83;
        7.626927,-6.83; 7.75052,-6.83; 7.811463,-6.83; 7.933561,-6.83;
        8.013022,-6.85; 8.153944,-6.85; 8.216548,-6.79; 8.342169,-6.79;
        8.404811,-6.8; 8.547769,-6.8; 8.61008,-6.78; 8.750397,-6.78;
        8.811412,-6.8; 8.93329,-6.8; 9.011588,-6.78; 9.147872,-6.78;
        9.208512,-6.79; 9.332071,-6.79; 9.394127,-6.78; 9.518675,-6.78;
        9.597539,-6.81; 9.721985,-6.81; 9.785346,-6.83; 9.924912,-6.83;
        10.001633,-6.77], smoothness=Modelica.Blocks.Types.Smoothness.LinearSegments)
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
end AlsetLabInverter_under_pf090_3000VA_2500VA;
