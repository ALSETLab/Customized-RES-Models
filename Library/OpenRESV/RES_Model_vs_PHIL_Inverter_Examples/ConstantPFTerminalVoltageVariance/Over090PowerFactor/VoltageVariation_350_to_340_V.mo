within OpenRESV.RES_Model_vs_PHIL_Inverter_Examples.ConstantPFTerminalVoltageVariance.Over090PowerFactor;
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
  Modelica.Blocks.Sources.CombiTimeTable EXPERIMENT_P(table=[0.16198,
        905.77; 0.20755,905.77; 0.33167,904.71; 0.40958,904.71; 0.54903,
        904.04; 0.6887,904.04; 0.75006,903.78; 0.81331,903.78; 0.95333,
        904.93; 1.0944,904.93; 1.1719,905.33; 1.3129,905.33; 1.3758,
        904.56; 1.5169,904.56; 1.5789,904.65; 1.7037,904.47; 1.767,904.46;
        1.8926,904.46; 1.9549,905; 2.0172,905; 2.1577,904.82; 2.2797,
        904.82; 2.3432,902.8; 2.4047,902.8; 2.5458,902.69; 2.6078,904.8;
        2.73,906.02; 2.7937,906.02; 2.9022,905.46; 2.9642,904.43; 3.1196,
        904.43; 3.1675,904.83; 3.2921,904.83; 3.3544,903; 3.477,903;
        3.5543,903.62; 3.6935,903.65; 3.7699,905.13; 3.8782,905.13;
        3.9405,905.42; 4.0023,905.42; 4.1261,905.66; 4.1881,903.57;
        4.3119,904.34; 4.374,904.33; 4.5148,904.33; 4.5783,904.86; 4.7024,
        904.95; 4.7803,904.94; 4.8898,904.94; 4.9524,904.93; 5.0945,
        904.93; 5.1567,904.88; 5.2805,904.88; 5.3445,903.57; 5.3906,
        903.57; 5.5138,903.72; 5.5774,905.82; 5.7015,905.83; 5.7796,
        903.73; 5.8894,903.73; 5.9511,905.62; 6.1071,905.62; 6.1712,
        905.02; 6.3104,905.02; 6.3563,904.7; 6.4806,904.7; 6.5429,904.94;
        6.6838,904.94; 6.7638,902.73; 6.8886,902.73; 6.9499,906.23;
        7.1059,906.23; 7.1669,904.3; 7.3059,904.3; 7.3685,928.5; 7.5104,
        928.44; 7.5575,902.69; 7.6965,902.75; 7.7577,903.59; 7.881,903.59;
        7.9452,902.81; 8.007,902.81; 8.1476,903.85; 8.2092,903.85; 8.3337,
        903.66; 8.4123,903.66; 8.5368,903.58; 8.6887,903.58; 8.7646,
        903.54; 8.8896,903.57; 8.95,903.98; 9.1032,903.98; 9.1646,903.7;
        9.3012,903.7; 9.3621,903.75; 9.5003,903.72; 9.5612,903.47; 9.7,
        903.5; 9.7769,903.56; 9.9003,903.36; 9.9619,903.36; 10.102,903.33;
        10.165,903.47; 10.307,903.47; 10.368,903.73; 10.492,903.73;
        10.554,903.73], extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint)
    annotation (Placement(transformation(extent={{-68,180},{-48,200}})));
  Modelica.Blocks.Sources.CombiTimeTable EXPERIMENT_Q(table=[0.16198,
        480.1; 0.20755,480.1; 0.33167,479.53; 0.40958,479.53; 0.54903,
        478.27; 0.6887,478.27; 0.75006,478.78; 0.81331,478.78; 0.95333,
        479.17; 1.0944,479.17; 1.1719,478.37; 1.3129,478.37; 1.3758,
        479.85; 1.5169,479.85; 1.5789,479.7; 1.7037,480.01; 1.767,480;
        1.8926,480; 1.9549,479.01; 2.0172,479.01; 2.1577,479.38; 2.2797,
        479.38; 2.3432,478.05; 2.4047,478.05; 2.5458,478.25; 2.6078,
        479.37; 2.73,479.63; 2.7937,479.63; 2.9022,480.69; 2.9642,480.12;
        3.1196,480.12; 3.1675,479.32; 3.2921,479.32; 3.3544,477.68; 3.477,
        477.68; 3.5543,479.1; 3.6935,479.04; 3.7699,478.74; 3.8782,478.74;
        3.9405,480.73; 4.0023,480.73; 4.1261,480.32; 4.1881,479.17;
        4.3119,477.69; 4.374,477.72; 4.5148,477.72; 4.5783,479.28; 4.7024,
        479.12; 4.7803,479.12; 4.8898,479.12; 4.9524,479.16; 5.0945,
        479.16; 5.1567,479.21; 5.2805,479.21; 5.3445,479.15; 5.3906,
        479.15; 5.5138,478.89; 5.5774,480; 5.7015,480; 5.7796,478.85;
        5.8894,478.85; 5.9511,480.37; 6.1071,480.37; 6.1712,478.95;
        6.3104,478.95; 6.3563,479.59; 6.4806,479.59; 6.5429,479.11;
        6.6838,479.11; 6.7638,478.21; 6.8886,478.21; 6.9499,479.2; 7.1059,
        479.2; 7.1669,480.33; 7.3059,480.33; 7.3685,499.33; 7.5104,499.44;
        7.5575,487.9; 7.6965,487.8; 7.7577,488.61; 7.881,488.61; 7.9452,
        487.63; 8.007,487.63; 8.1476,488.14; 8.2092,488.14; 8.3337,488.51;
        8.4123,488.51; 8.5368,488.67; 8.6887,488.67; 8.7646,488.78;
        8.8896,488.73; 8.95,487.94; 9.1032,487.94; 9.1646,488.47; 9.3012,
        488.47; 9.3621,488.36; 9.5003,488.41; 9.5612,488.88; 9.7,488.83;
        9.7769,488.72; 9.9003,489.09; 9.9619,489.09; 10.102,489.15;
        10.165,488.88; 10.307,488.88; 10.368,488.41; 10.492,488.41;
        10.554,488.41],
                 extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint)
    annotation (Placement(transformation(extent={{-38,180},{-18,200}})));
  Modelica.Blocks.Sources.CombiTimeTable V(table=[0.16198,1; 0.20755,1;
        0.33167,0.99998; 0.40958,0.99998; 0.54903,0.99997; 0.6887,0.99997;
        0.75006,0.99999; 0.81331,0.99999; 0.95333,0.99999; 1.0944,0.99999;
        1.1719,0.99998; 1.3129,0.99998; 1.3758,0.99999; 1.5169,0.99999;
        1.5789,0.99999; 1.7037,0.99999; 1.767,0.99998; 1.8926,0.99998;
        1.9549,0.99998; 2.0172,0.99998; 2.1577,1; 2.2797,1; 2.3432,
        0.99996; 2.4047,0.99996; 2.5458,0.99996; 2.6078,0.99998; 2.73,1;
        2.7937,1; 2.9022,1; 2.9642,1; 3.1196,1; 3.1675,0.99998; 3.2921,
        0.99998; 3.3544,0.99996; 3.477,0.99996; 3.5543,0.99999; 3.6935,
        0.99999; 3.7699,0.99997; 3.8782,0.99997; 3.9405,0.99999; 4.0023,
        0.99999; 4.1261,0.99999; 4.1881,0.99997; 4.3119,0.99997; 4.374,
        0.99998; 4.5148,0.99998; 4.5783,0.99999; 4.7024,0.99999; 4.7803,
        0.99999; 4.8898,0.99999; 4.9524,0.99999; 5.0945,0.99999; 5.1567,
        0.99997; 5.2805,0.99997; 5.3445,0.99998; 5.3906,0.99998; 5.5138,
        0.99998; 5.5774,1; 5.7015,1; 5.7796,0.99997; 5.8894,0.99997;
        5.9511,1; 6.1071,1; 6.1712,0.99998; 6.3104,0.99998; 6.3563,
        0.99999; 6.4806,0.99999; 6.5429,0.99998; 6.6838,0.99998; 6.7638,
        0.99998; 6.8886,0.99998; 6.9499,0.99999; 7.1059,0.99999; 7.1669,
        0.99999; 7.3059,0.99999; 7.3685,0.98204; 7.5104,0.98204; 7.5575,
        0.97294; 7.6965,0.97294; 7.7577,0.97292; 7.881,0.97292; 7.9452,
        0.97292; 8.007,0.97292; 8.1476,0.97292; 8.2092,0.97292; 8.3337,
        0.97293; 8.4123,0.97293; 8.5368,0.97293; 8.6887,0.97293; 8.7646,
        0.97295; 8.8896,0.97295; 8.95,0.97294; 9.1032,0.97294; 9.1646,
        0.97294; 9.3012,0.97294; 9.3621,0.97294; 9.5003,0.97294; 9.5612,
        0.97294; 9.7,0.97294; 9.7769,0.97294; 9.9003,0.97294; 9.9619,
        0.97294; 10.102,0.97294; 10.165,0.97294; 10.307,0.97294; 10.368,
        0.97294; 10.492,0.97294; 10.554,0.97294],
      extrapolation=Modelica.Blocks.Types.Extrapolation.LastTwoPoints)
    annotation (Placement(transformation(extent={{100,120},{80,140}})));
  Modelica.Blocks.Sources.CombiTimeTable A(table=[0.16198,-0.52401;
        0.20755,-0.52401; 0.33167,-0.52401; 0.40958,-0.52401; 0.54903,-0.52401;
        0.6887,-0.52401; 0.75006,-0.52401; 0.81331,-0.52401; 0.95333,-0.52401;
        1.0944,-0.52401; 1.1719,-0.52401; 1.3129,-0.52401; 1.3758,-0.52401;
        1.5169,-0.52401; 1.5789,-0.52401; 1.7037,-0.52401; 1.767,-0.52401;
        1.8926,-0.52401; 1.9549,-0.52401; 2.0172,-0.52401; 2.1577,-0.52401;
        2.2797,-0.52401; 2.3432,-0.52401; 2.4047,-0.52401; 2.5458,-0.52401;
        2.6078,-0.52401; 2.73,-0.52401; 2.7937,-0.52401; 2.9022,-0.52401;
        2.9642,-0.52401; 3.1196,-0.52401; 3.1675,-0.52401; 3.2921,-0.52401;
        3.3544,-0.52401; 3.477,-0.52401; 3.5543,-0.52395; 3.6935,-0.52401;
        3.7699,-0.52401; 3.8782,-0.52401; 3.9405,-0.52401; 4.0023,-0.52401;
        4.1261,-0.52401; 4.1881,-0.52401; 4.3119,-0.52401; 4.374,-0.52401;
        4.5148,-0.52401; 4.5783,-0.52401; 4.7024,-0.52401; 4.7803,-0.52401;
        4.8898,-0.52401; 4.9524,-0.52401; 5.0945,-0.52401; 5.1567,-0.52401;
        5.2805,-0.52401; 5.3445,-0.52401; 5.3906,-0.52401; 5.5138,-0.52401;
        5.5774,-0.52401; 5.7015,-0.52401; 5.7796,-0.52401; 5.8894,-0.52401;
        5.9511,-0.52401; 6.1071,-0.52401; 6.1712,-0.52401; 6.3104,-0.52401;
        6.3563,-0.52401; 6.4806,-0.52401; 6.5429,-0.52401; 6.6838,-0.52401;
        6.7638,-0.52401; 6.8886,-0.52401; 6.9499,-0.52401; 7.1059,-0.52401;
        7.1669,-0.52401; 7.3059,-0.52401; 7.3685,-0.52401; 7.5104,-0.52389;
        7.5575,-0.52389; 7.6965,-0.52401; 7.7577,-0.52401; 7.881,-0.52401;
        7.9452,-0.52401; 8.007,-0.52401; 8.1476,-0.52406; 8.2092,-0.52406;
        8.3337,-0.52401; 8.4123,-0.52401; 8.5368,-0.52401; 8.6887,-0.52401;
        8.7646,-0.52401; 8.8896,-0.52406; 8.95,-0.52406; 9.1032,-0.52406;
        9.1646,-0.52406; 9.3012,-0.52406; 9.3621,-0.52406; 9.5003,-0.52401;
        9.5612,-0.52401; 9.7,-0.52406; 9.7769,-0.52406; 9.9003,-0.52406;
        9.9619,-0.52406; 10.102,-0.52401; 10.165,-0.52401; 10.307,-0.52401;
        10.368,-0.52401; 10.492,-0.52401; 10.554,-0.52401],
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
  Modelica.Blocks.Sources.CombiTimeTable EXPERIMENT_IAngle(table=[0.16198,
        -1.0114; 0.20755,-1.0114; 0.33167,-1.0114; 0.40958,-1.0114;
        0.54903,-1.0106; 0.6887,-1.0106; 0.75006,-1.0112; 0.81331,-1.0112;
        0.95333,-1.011; 1.0944,-1.011; 1.1719,-1.0101; 1.3129,-1.0101;
        1.3758,-1.0117; 1.5169,-1.0117; 1.5789,-1.0116; 1.7037,-1.0119;
        1.767,-1.0119; 1.8926,-1.0119; 1.9549,-1.0108; 2.0172,-1.0108;
        2.1577,-1.0112; 2.2797,-1.0112; 2.3432,-1.011; 2.4047,-1.011;
        2.5458,-1.0112; 2.6078,-1.0112; 2.73,-1.0109; 2.7937,-1.0109;
        2.9022,-1.012; 2.9642,-1.012; 3.1196,-1.012; 3.1675,-1.0112;
        3.2921,-1.0112; 3.3544,-1.0106; 3.477,-1.0106; 3.5543,-1.0115;
        3.6935,-1.0115; 3.7699,-1.0105; 3.8782,-1.0105; 3.9405,-1.0121;
        4.0023,-1.0121; 4.1261,-1.0116; 4.1881,-1.0116; 4.3119,-1.01;
        4.374,-1.01; 4.5148,-1.01; 4.5783,-1.0111; 4.7024,-1.0109; 4.7803,
        -1.0109; 4.8898,-1.0109; 4.9524,-1.011; 5.0945,-1.011; 5.1567,-1.011;
        5.2805,-1.011; 5.3445,-1.0116; 5.3906,-1.0116; 5.5138,-1.0113;
        5.5774,-1.0113; 5.7015,-1.0113; 5.7796,-1.0113; 5.8894,-1.0113;
        5.9511,-1.0117; 6.1071,-1.0117; 6.1712,-1.0107; 6.3104,-1.0107;
        6.3563,-1.0114; 6.4806,-1.0114; 6.5429,-1.0109; 6.6838,-1.0109;
        6.7638,-1.0112; 6.8886,-1.0112; 6.9499,-1.0104; 7.1059,-1.0104;
        7.1669,-1.0123; 7.3059,-1.0123; 7.3685,-1.0174; 7.5104,-1.0174;
        7.5575,-1.0194; 7.6965,-1.0194; 7.7577,-1.0197; 7.881,-1.0197;
        7.9452,-1.0192; 8.007,-1.0192; 8.1476,-1.0192; 8.2092,-1.0192;
        8.3337,-1.0196; 8.4123,-1.0196; 8.5368,-1.0198; 8.6887,-1.0198;
        8.7646,-1.0199; 8.8896,-1.0199; 8.95,-1.019; 9.1032,-1.019;
        9.1646,-1.0196; 9.3012,-1.0196; 9.3621,-1.0195; 9.5003,-1.0195;
        9.5612,-1.02; 9.7,-1.02; 9.7769,-1.0199; 9.9003,-1.0203; 9.9619,-1.0203;
        10.102,-1.0203; 10.165,-1.02; 10.307,-1.02; 10.368,-1.0195;
        10.492,-1.0195; 10.554,-1.0195], extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint)
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
  Modelica.Blocks.Sources.CombiTimeTable V1(table=[0.16198,1; 0.20755,1;
        0.33167,0.99998; 0.40958,0.99998; 0.54903,0.99997; 0.6887,0.99997;
        0.75006,0.99999; 0.81331,0.99999; 0.95333,0.99999; 1.0944,0.99999;
        1.1719,0.99998; 1.3129,0.99998; 1.3758,0.99999; 1.5169,0.99999;
        1.5789,0.99999; 1.7037,0.99999; 1.767,0.99998; 1.8926,0.99998;
        1.9549,0.99998; 2.0172,0.99998; 2.1577,1; 2.2797,1; 2.3432,
        0.99996; 2.4047,0.99996; 2.5458,0.99996; 2.6078,0.99998; 2.73,1;
        2.7937,1; 2.9022,1; 2.9642,1; 3.1196,1; 3.1675,0.99998; 3.2921,
        0.99998; 3.3544,0.99996; 3.477,0.99996; 3.5543,0.99999; 3.6935,
        0.99999; 3.7699,0.99997; 3.8782,0.99997; 3.9405,0.99999; 4.0023,
        0.99999; 4.1261,0.99999; 4.1881,0.99997; 4.3119,0.99997; 4.374,
        0.99998; 4.5148,0.99998; 4.5783,0.99999; 4.7024,0.99999; 4.7803,
        0.99999; 4.8898,0.99999; 4.9524,0.99999; 5.0945,0.99999; 5.1567,
        0.99997; 5.2805,0.99997; 5.3445,0.99998; 5.3906,0.99998; 5.5138,
        0.99998; 5.5774,1; 5.7015,1; 5.7796,0.99997; 5.8894,0.99997;
        5.9511,1; 6.1071,1; 6.1712,0.99998; 6.3104,0.99998; 6.3563,
        0.99999; 6.4806,0.99999; 6.5429,0.99998; 6.6838,0.99998; 6.7638,
        0.99998; 6.8886,0.99998; 6.9499,0.99999; 7.1059,0.99999; 7.1669,
        0.99999; 7.3059,0.99999; 7.3685,0.98204; 7.5104,0.98204; 7.5575,
        0.97294; 7.6965,0.97294; 7.7577,0.97292; 7.881,0.97292; 7.9452,
        0.97292; 8.007,0.97292; 8.1476,0.97292; 8.2092,0.97292; 8.3337,
        0.97293; 8.4123,0.97293; 8.5368,0.97293; 8.6887,0.97293; 8.7646,
        0.97295; 8.8896,0.97295; 8.95,0.97294; 9.1032,0.97294; 9.1646,
        0.97294; 9.3012,0.97294; 9.3621,0.97294; 9.5003,0.97294; 9.5612,
        0.97294; 9.7,0.97294; 9.7769,0.97294; 9.9003,0.97294; 9.9619,
        0.97294; 10.102,0.97294; 10.165,0.97294; 10.307,0.97294; 10.368,
        0.97294; 10.492,0.97294; 10.554,0.97294],
      extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint)
    annotation (Placement(transformation(extent={{100,0},{80,20}})));
  Modelica.Blocks.Sources.CombiTimeTable A1(table=[0.16198,-0.52401;
        0.20755,-0.52401; 0.33167,-0.52401; 0.40958,-0.52401; 0.54903,-0.52401;
        0.6887,-0.52401; 0.75006,-0.52401; 0.81331,-0.52401; 0.95333,-0.52401;
        1.0944,-0.52401; 1.1719,-0.52401; 1.3129,-0.52401; 1.3758,-0.52401;
        1.5169,-0.52401; 1.5789,-0.52401; 1.7037,-0.52401; 1.767,-0.52401;
        1.8926,-0.52401; 1.9549,-0.52401; 2.0172,-0.52401; 2.1577,-0.52401;
        2.2797,-0.52401; 2.3432,-0.52401; 2.4047,-0.52401; 2.5458,-0.52401;
        2.6078,-0.52401; 2.73,-0.52401; 2.7937,-0.52401; 2.9022,-0.52401;
        2.9642,-0.52401; 3.1196,-0.52401; 3.1675,-0.52401; 3.2921,-0.52401;
        3.3544,-0.52401; 3.477,-0.52401; 3.5543,-0.52395; 3.6935,-0.52401;
        3.7699,-0.52401; 3.8782,-0.52401; 3.9405,-0.52401; 4.0023,-0.52401;
        4.1261,-0.52401; 4.1881,-0.52401; 4.3119,-0.52401; 4.374,-0.52401;
        4.5148,-0.52401; 4.5783,-0.52401; 4.7024,-0.52401; 4.7803,-0.52401;
        4.8898,-0.52401; 4.9524,-0.52401; 5.0945,-0.52401; 5.1567,-0.52401;
        5.2805,-0.52401; 5.3445,-0.52401; 5.3906,-0.52401; 5.5138,-0.52401;
        5.5774,-0.52401; 5.7015,-0.52401; 5.7796,-0.52401; 5.8894,-0.52401;
        5.9511,-0.52401; 6.1071,-0.52401; 6.1712,-0.52401; 6.3104,-0.52401;
        6.3563,-0.52401; 6.4806,-0.52401; 6.5429,-0.52401; 6.6838,-0.52401;
        6.7638,-0.52401; 6.8886,-0.52401; 6.9499,-0.52401; 7.1059,-0.52401;
        7.1669,-0.52401; 7.3059,-0.52401; 7.3685,-0.52401; 7.5104,-0.52389;
        7.5575,-0.52389; 7.6965,-0.52401; 7.7577,-0.52401; 7.881,-0.52401;
        7.9452,-0.52401; 8.007,-0.52401; 8.1476,-0.52406; 8.2092,-0.52406;
        8.3337,-0.52401; 8.4123,-0.52401; 8.5368,-0.52401; 8.6887,-0.52401;
        8.7646,-0.52401; 8.8896,-0.52406; 8.95,-0.52406; 9.1032,-0.52406;
        9.1646,-0.52406; 9.3012,-0.52406; 9.3621,-0.52406; 9.5003,-0.52401;
        9.5612,-0.52401; 9.7,-0.52406; 9.7769,-0.52406; 9.9003,-0.52406;
        9.9619,-0.52406; 10.102,-0.52401; 10.165,-0.52401; 10.307,-0.52401;
        10.368,-0.52401; 10.492,-0.52401; 10.554,-0.52401],
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
  Modelica.Blocks.Sources.CombiTimeTable V2(table=[0.16198,1; 0.20755,1;
        0.33167,0.99998; 0.40958,0.99998; 0.54903,0.99997; 0.6887,0.99997;
        0.75006,0.99999; 0.81331,0.99999; 0.95333,0.99999; 1.0944,0.99999;
        1.1719,0.99998; 1.3129,0.99998; 1.3758,0.99999; 1.5169,0.99999;
        1.5789,0.99999; 1.7037,0.99999; 1.767,0.99998; 1.8926,0.99998;
        1.9549,0.99998; 2.0172,0.99998; 2.1577,1; 2.2797,1; 2.3432,
        0.99996; 2.4047,0.99996; 2.5458,0.99996; 2.6078,0.99998; 2.73,1;
        2.7937,1; 2.9022,1; 2.9642,1; 3.1196,1; 3.1675,0.99998; 3.2921,
        0.99998; 3.3544,0.99996; 3.477,0.99996; 3.5543,0.99999; 3.6935,
        0.99999; 3.7699,0.99997; 3.8782,0.99997; 3.9405,0.99999; 4.0023,
        0.99999; 4.1261,0.99999; 4.1881,0.99997; 4.3119,0.99997; 4.374,
        0.99998; 4.5148,0.99998; 4.5783,0.99999; 4.7024,0.99999; 4.7803,
        0.99999; 4.8898,0.99999; 4.9524,0.99999; 5.0945,0.99999; 5.1567,
        0.99997; 5.2805,0.99997; 5.3445,0.99998; 5.3906,0.99998; 5.5138,
        0.99998; 5.5774,1; 5.7015,1; 5.7796,0.99997; 5.8894,0.99997;
        5.9511,1; 6.1071,1; 6.1712,0.99998; 6.3104,0.99998; 6.3563,
        0.99999; 6.4806,0.99999; 6.5429,0.99998; 6.6838,0.99998; 6.7638,
        0.99998; 6.8886,0.99998; 6.9499,0.99999; 7.1059,0.99999; 7.1669,
        0.99999; 7.3059,0.99999; 7.3685,0.98204; 7.5104,0.98204; 7.5575,
        0.97294; 7.6965,0.97294; 7.7577,0.97292; 7.881,0.97292; 7.9452,
        0.97292; 8.007,0.97292; 8.1476,0.97292; 8.2092,0.97292; 8.3337,
        0.97293; 8.4123,0.97293; 8.5368,0.97293; 8.6887,0.97293; 8.7646,
        0.97295; 8.8896,0.97295; 8.95,0.97294; 9.1032,0.97294; 9.1646,
        0.97294; 9.3012,0.97294; 9.3621,0.97294; 9.5003,0.97294; 9.5612,
        0.97294; 9.7,0.97294; 9.7769,0.97294; 9.9003,0.97294; 9.9619,
        0.97294; 10.102,0.97294; 10.165,0.97294; 10.307,0.97294; 10.368,
        0.97294; 10.492,0.97294; 10.554,0.97294],
                                         extrapolation=Modelica.Blocks.Types.Extrapolation.LastTwoPoints)
    annotation (Placement(transformation(extent={{100,-120},{80,-100}})));
  Modelica.Blocks.Sources.CombiTimeTable A2(table=[0.16198,-0.52401;
        0.20755,-0.52401; 0.33167,-0.52401; 0.40958,-0.52401; 0.54903,-0.52401;
        0.6887,-0.52401; 0.75006,-0.52401; 0.81331,-0.52401; 0.95333,-0.52401;
        1.0944,-0.52401; 1.1719,-0.52401; 1.3129,-0.52401; 1.3758,-0.52401;
        1.5169,-0.52401; 1.5789,-0.52401; 1.7037,-0.52401; 1.767,-0.52401;
        1.8926,-0.52401; 1.9549,-0.52401; 2.0172,-0.52401; 2.1577,-0.52401;
        2.2797,-0.52401; 2.3432,-0.52401; 2.4047,-0.52401; 2.5458,-0.52401;
        2.6078,-0.52401; 2.73,-0.52401; 2.7937,-0.52401; 2.9022,-0.52401;
        2.9642,-0.52401; 3.1196,-0.52401; 3.1675,-0.52401; 3.2921,-0.52401;
        3.3544,-0.52401; 3.477,-0.52401; 3.5543,-0.52395; 3.6935,-0.52401;
        3.7699,-0.52401; 3.8782,-0.52401; 3.9405,-0.52401; 4.0023,-0.52401;
        4.1261,-0.52401; 4.1881,-0.52401; 4.3119,-0.52401; 4.374,-0.52401;
        4.5148,-0.52401; 4.5783,-0.52401; 4.7024,-0.52401; 4.7803,-0.52401;
        4.8898,-0.52401; 4.9524,-0.52401; 5.0945,-0.52401; 5.1567,-0.52401;
        5.2805,-0.52401; 5.3445,-0.52401; 5.3906,-0.52401; 5.5138,-0.52401;
        5.5774,-0.52401; 5.7015,-0.52401; 5.7796,-0.52401; 5.8894,-0.52401;
        5.9511,-0.52401; 6.1071,-0.52401; 6.1712,-0.52401; 6.3104,-0.52401;
        6.3563,-0.52401; 6.4806,-0.52401; 6.5429,-0.52401; 6.6838,-0.52401;
        6.7638,-0.52401; 6.8886,-0.52401; 6.9499,-0.52401; 7.1059,-0.52401;
        7.1669,-0.52401; 7.3059,-0.52401; 7.3685,-0.52401; 7.5104,-0.52389;
        7.5575,-0.52389; 7.6965,-0.52401; 7.7577,-0.52401; 7.881,-0.52401;
        7.9452,-0.52401; 8.007,-0.52401; 8.1476,-0.52406; 8.2092,-0.52406;
        8.3337,-0.52401; 8.4123,-0.52401; 8.5368,-0.52401; 8.6887,-0.52401;
        8.7646,-0.52401; 8.8896,-0.52406; 8.95,-0.52406; 9.1032,-0.52406;
        9.1646,-0.52406; 9.3012,-0.52406; 9.3621,-0.52406; 9.5003,-0.52401;
        9.5612,-0.52401; 9.7,-0.52406; 9.7769,-0.52406; 9.9003,-0.52406;
        9.9619,-0.52406; 10.102,-0.52401; 10.165,-0.52401; 10.307,-0.52401;
        10.368,-0.52401; 10.492,-0.52401; 10.554,-0.52401],
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
        0.16198,2.8964; 0.20755,2.8964; 0.33167,2.8931; 0.40958,2.8931;
        0.54903,2.8898; 0.6887,2.8898; 0.75006,2.8897; 0.81331,2.8897;
        0.95333,2.8931; 1.0944,2.8931; 1.1719,2.8931; 1.3129,2.8931;
        1.3758,2.8931; 1.5169,2.8931; 1.5789,2.8931; 1.7037,2.8931; 1.767,
        2.8931; 1.8926,2.8931; 1.9549,2.8931; 2.0172,2.8931; 2.1577,
        2.8931; 2.2797,2.8931; 2.3432,2.8864; 2.4047,2.8864; 2.5458,
        2.8864; 2.6078,2.8931; 2.73,2.8964; 2.7937,2.8964; 2.9022,2.8964;
        2.9642,2.8931; 3.1196,2.8931; 3.1675,2.8931; 3.2921,2.8931;
        3.3544,2.8865; 3.477,2.8865; 3.5543,2.8898; 3.6935,2.8898; 3.7699,
        2.8931; 3.8782,2.8931; 3.9405,2.8964; 4.0023,2.8964; 4.1261,
        2.8965; 4.1881,2.8898; 4.3119,2.8898; 4.374,2.8898; 4.5148,2.8898;
        4.5783,2.8931; 4.7024,2.8931; 4.7803,2.8931; 4.8898,2.8931;
        4.9524,2.8931; 5.0945,2.8931; 5.1567,2.8931; 5.2805,2.8931;
        5.3445,2.8898; 5.3906,2.8898; 5.5138,2.8898; 5.5774,2.8964;
        5.7015,2.8964; 5.7796,2.8898; 5.8894,2.8898; 5.9511,2.8964;
        6.1071,2.8964; 6.1712,2.8931; 6.3104,2.8931; 6.3563,2.8931;
        6.4806,2.8931; 6.5429,2.8931; 6.6838,2.8931; 6.7638,2.8864;
        6.8886,2.8864; 6.9499,2.8964; 7.1059,2.8964; 7.1669,2.8931;
        7.3059,2.8931; 7.3685,3.0332; 7.5104,3.0332; 7.5575,2.9798;
        7.6965,2.9798; 7.7577,2.9831; 7.881,2.9831; 7.9452,2.9798; 8.007,
        2.9798; 8.1476,2.9832; 8.2092,2.9832; 8.3337,2.9832; 8.4123,
        2.9832; 8.5368,2.9832; 8.6887,2.9832; 8.7646,2.9831; 8.8896,
        2.9831; 8.95,2.9832; 9.1032,2.9832; 9.1646,2.9832; 9.3012,2.9832;
        9.3621,2.9831; 9.5003,2.9831; 9.5612,2.9831; 9.7,2.9831; 9.7769,
        2.9831; 9.9003,2.9831; 9.9619,2.9831; 10.102,2.9831; 10.165,
        2.9831; 10.307,2.9831; 10.368,2.9832; 10.492,2.9832; 10.554,
        2.9832], extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint)
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
  Modelica.Blocks.Sources.CombiTimeTable VOLTAGE(table=[0.16198,353.93;
        0.20755,353.93; 0.33167,353.92; 0.40958,353.92; 0.54903,353.92;
        0.6887,353.92; 0.75006,353.93; 0.81331,353.93; 0.95333,353.93;
        1.0944,353.93; 1.1719,353.93; 1.3129,353.93; 1.3758,353.93;
        1.5169,353.93; 1.5789,353.93; 1.7037,353.93; 1.767,353.93; 1.8926,
        353.93; 1.9549,353.93; 2.0172,353.93; 2.1577,353.93; 2.2797,
        353.93; 2.3432,353.92; 2.4047,353.92; 2.5458,353.92; 2.6078,
        353.93; 2.73,353.93; 2.7937,353.93; 2.9022,353.93; 2.9642,353.93;
        3.1196,353.93; 3.1675,353.92; 3.2921,353.92; 3.3544,353.92; 3.477,
        353.92; 3.5543,353.93; 3.6935,353.93; 3.7699,353.92; 3.8782,
        353.92; 3.9405,353.93; 4.0023,353.93; 4.1261,353.93; 4.1881,
        353.92; 4.3119,353.92; 4.374,353.92; 4.5148,353.92; 4.5783,353.93;
        4.7024,353.93; 4.7803,353.93; 4.8898,353.93; 4.9524,353.93;
        5.0945,353.93; 5.1567,353.92; 5.2805,353.92; 5.3445,353.92;
        5.3906,353.92; 5.5138,353.92; 5.5774,353.93; 5.7015,353.93;
        5.7796,353.92; 5.8894,353.92; 5.9511,353.93; 6.1071,353.93;
        6.1712,353.92; 6.3104,353.92; 6.3563,353.93; 6.4806,353.93;
        6.5429,353.93; 6.6838,353.93; 6.7638,353.92; 6.8886,353.92;
        6.9499,353.93; 7.1059,353.93; 7.1669,353.93; 7.3059,353.93;
        7.3685,347.58; 7.5104,347.58; 7.5575,344.35; 7.6965,344.35;
        7.7577,344.35; 7.881,344.35; 7.9452,344.35; 8.007,344.35; 8.1476,
        344.35; 8.2092,344.35; 8.3337,344.35; 8.4123,344.35; 8.5368,
        344.35; 8.6887,344.35; 8.7646,344.36; 8.8896,344.36; 8.95,344.35;
        9.1032,344.35; 9.1646,344.36; 9.3012,344.36; 9.3621,344.35;
        9.5003,344.35; 9.5612,344.35; 9.7,344.35; 9.7769,344.36; 9.9003,
        344.36; 9.9619,344.36; 10.102,344.36; 10.165,344.36; 10.307,
        344.36; 10.368,344.35; 10.492,344.35; 10.554,344.35],
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
<p> Run the simulation for t=10.55 seconds. </p>
</html>"));
end VoltageVariation_350_to_340_V;
