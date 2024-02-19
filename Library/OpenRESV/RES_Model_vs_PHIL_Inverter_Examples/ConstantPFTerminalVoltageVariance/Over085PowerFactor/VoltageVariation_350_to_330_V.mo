within OpenRESV.RES_Model_vs_PHIL_Inverter_Examples.ConstantPFTerminalVoltageVariance.Over085PowerFactor;
model VoltageVariation_350_to_330_V
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
  Modelica.Blocks.Sources.CombiTimeTable EXPERIMENT_P(table=[0.1315,
        889.77; 0.17779,889.77; 0.31613,888.95; 0.37821,888.95; 0.48649,
        889.67; 0.5345,888.7; 0.66053,888.7; 0.74055,890.25; 0.88155,
        890.25; 0.94375,890.19; 1.0853,890.19; 1.1483,890.05; 1.3031,
        890.29; 1.3658,889.32; 1.4732,888.29; 1.5354,889.27; 1.6574,
        889.27; 1.7362,889.49; 1.7829,889.49; 1.9224,889.11; 1.9854,
        889.11; 2.1263,890.75; 2.1892,890.75; 2.3287,889.1; 2.4519,889.1;
        2.5149,890.38; 2.5772,890.38; 2.7172,889.67; 2.8572,889.66; 2.92,
        888.92; 2.983,888.92; 3.1216,889.87; 3.1686,889.87; 3.3263,889.98;
        3.3872,889.01; 3.4982,888.94; 3.5606,888.94; 3.6846,888.94;
        3.7625,890.1; 3.9023,890.32; 3.9658,889.33; 4.0898,889.5; 4.1514,
        889.49; 4.2926,889.49; 4.3557,889.83; 4.4647,889.83; 4.5267,
        889.38; 4.6495,889.38; 4.7408,915.87; 4.8767,916.01; 4.9367,
        899.73; 5.076,899.73; 5.1382,887.22; 5.2952,887.19; 5.3413,886.49;
        5.4658,886.49; 5.5451,885.21; 5.6549,885.21; 5.7328,885.4; 5.8727,
        885.4; 5.9357,885.79; 5.9826,885.79; 6.105,885.46; 6.1514,885.46;
        6.2914,885.46; 6.3524,885.9; 6.4761,885.79; 6.5537,885.79; 6.6954,
        885.61; 6.7588,885.59; 6.8844,885.89; 6.9623,885.89; 7.0855,
        885.49; 7.1333,886.41; 7.2726,886.37; 7.3348,885.62; 7.4924,
        885.66; 7.5559,885.48; 7.6977,885.4; 7.7767,885.4; 7.8877,885.58;
        7.9491,885.58; 8.0867,885.55; 8.1497,885.95; 8.3168,886.27;
        8.3793,885.35; 8.4871,885.72; 8.5497,886.64],
                        extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint)
    annotation (Placement(transformation(extent={{-68,180},{-48,200}})));
  Modelica.Blocks.Sources.CombiTimeTable EXPERIMENT_Q(table=[0.1315,
        609.06; 0.17779,609.06; 0.31613,608.11; 0.37821,608.11; 0.48649,
        607.08; 0.5345,606.42; 0.66053,606.42; 0.74055,608.32; 0.88155,
        608.32; 0.94375,608.44; 1.0853,608.44; 1.1483,608.64; 1.3031,
        608.28; 1.3658,607.6; 1.4732,609.09; 1.5354,609.78; 1.6574,609.78;
        1.7362,607.33; 1.7829,607.33; 1.9224,607.9; 1.9854,607.9; 2.1263,
        609.71; 2.1892,609.71; 2.3287,607.91; 2.4519,607.91; 2.5149,
        608.19; 2.5772,608.19; 2.7172,609.22; 2.8572,609.22; 2.92,608.16;
        2.983,608.16; 3.1216,608.89; 3.1686,608.89; 3.3263,608.75; 3.3872,
        608.07; 3.4982,608.17; 3.5606,608.17; 3.6846,608.17; 3.7625,
        608.57; 3.9023,608.25; 3.9658,607.59; 4.0898,607.34; 4.1514,
        607.34; 4.2926,607.34; 4.3557,608.95; 4.4647,608.95; 4.5267,
        607.49; 4.6495,607.49; 4.7408,622.07; 4.8767,621.86; 4.9367,
        640.16; 5.076,640.16; 5.1382,626.27; 5.2952,626.32; 5.3413,627.37;
        5.4658,627.37; 5.5451,627.25; 5.6549,627.25; 5.7328,626.99;
        5.8727,626.99; 5.9357,626.42; 5.9826,626.42; 6.105,626.88; 6.1514,
        626.88; 6.2914,626.88; 6.3524,626.28; 6.4761,626.43; 6.5537,
        626.43; 6.6954,626.68; 6.7588,626.67; 6.8844,626.26; 6.9623,
        626.26; 7.0855,626.83; 7.1333,627.47; 7.2726,627.52; 7.3348,
        626.62; 7.4924,626.56; 7.5559,626.82; 7.6977,626.93; 7.7767,
        626.92; 7.8877,626.66; 7.9491,626.66; 8.0867,626.72; 8.1497,628.1;
        8.3168,627.63; 8.3793,626.97; 8.4871,626.46; 8.5497,627.09],
                 extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint)
    annotation (Placement(transformation(extent={{-38,180},{-18,200}})));
  Modelica.Blocks.Sources.CombiTimeTable V(table=[0.1315,1; 0.17779,1;
        0.31613,0.99998; 0.37821,0.99998; 0.48649,0.99998; 0.5345,0.99998;
        0.66053,0.99998; 0.74055,0.99999; 0.88155,0.99999; 0.94375,1;
        1.0853,1; 1.1483,0.99999; 1.3031,0.99999; 1.3658,0.99999; 1.4732,
        0.99999; 1.5354,1; 1.6574,1; 1.7362,0.99998; 1.7829,0.99998;
        1.9224,0.99999; 1.9854,0.99999; 2.1263,1; 2.1892,1; 2.3287,
        0.99998; 2.4519,0.99998; 2.5149,1; 2.5772,1; 2.7172,1; 2.8572,1;
        2.92,0.99998; 2.983,0.99998; 3.1216,0.99999; 3.1686,0.99999;
        3.3263,0.99999; 3.3872,0.99999; 3.4982,1; 3.5606,1; 3.6846,1;
        3.7625,0.99999; 3.9023,0.99999; 3.9658,0.99999; 4.0898,0.99999;
        4.1514,0.99998; 4.2926,0.99998; 4.3557,1; 4.4647,1; 4.5267,
        0.99998; 4.6495,0.99998; 4.7408,0.99732; 4.8767,0.99732; 4.9367,
        0.94631; 5.076,0.94631; 5.1382,0.94601; 5.2952,0.94601; 5.3413,
        0.94603; 5.4658,0.94603; 5.5451,0.94604; 5.6549,0.94604; 5.7328,
        0.94604; 5.8727,0.94604; 5.9357,0.94603; 5.9826,0.94603; 6.105,
        0.94603; 6.1514,0.94603; 6.2914,0.94603; 6.3524,0.94604; 6.4761,
        0.94604; 6.5537,0.94604; 6.6954,0.94604; 6.7588,0.94602; 6.8844,
        0.94602; 6.9623,0.94603; 7.0855,0.94603; 7.1333,0.94603; 7.2726,
        0.94603; 7.3348,0.94602; 7.4924,0.94602; 7.5559,0.94602; 7.6977,
        0.94602; 7.7767,0.94601; 7.8877,0.94601; 7.9491,0.94601; 8.0867,
        0.94601; 8.1497,0.94602; 8.3168,0.94602; 8.3793,0.946; 8.4871,
        0.946; 8.5497,0.946],
      extrapolation=Modelica.Blocks.Types.Extrapolation.LastTwoPoints)
    annotation (Placement(transformation(extent={{100,120},{80,140}})));
  Modelica.Blocks.Sources.CombiTimeTable A(table=[0.1315,-1.1242; 0.17779,
        -1.1242; 0.31613,-1.124; 0.37821,-1.124; 0.48649,-1.1228; 0.5345,
        -1.1228; 0.66053,-1.1228; 0.74055,-1.1234; 0.88155,-1.1234;
        0.94375,-1.1236; 1.0853,-1.1236; 1.1483,-1.1238; 1.3031,-1.1234;
        1.3658,-1.1234; 1.4732,-1.1251; 1.5354,-1.1251; 1.6574,-1.1251;
        1.7362,-1.1231; 1.7829,-1.1231; 1.9224,-1.1237; 1.9854,-1.1237;
        2.1263,-1.1242; 2.1892,-1.1242; 2.3287,-1.1237; 2.4519,-1.1237;
        2.5149,-1.1233; 2.5772,-1.1233; 2.7172,-1.1244; 2.8572,-1.1244;
        2.92,-1.124; 2.983,-1.124; 3.1216,-1.124; 3.1686,-1.124; 3.3263,-1.1239;
        3.3872,-1.1239; 3.4982,-1.124; 3.5606,-1.124; 3.6846,-1.124;
        3.7625,-1.1237; 3.9023,-1.1234; 3.9658,-1.1234; 4.0898,-1.1231;
        4.1514,-1.1231; 4.2926,-1.1231; 4.3557,-1.1241; 4.4647,-1.1241;
        4.5267,-1.1233; 4.6495,-1.1233; 4.7408,-1.1208; 4.8767,-1.1208;
        4.9367,-1.1428; 5.076,-1.1428; 5.1382,-1.1387; 5.2952,-1.1387;
        5.3413,-1.1399; 5.4658,-1.1399; 5.5451,-1.1405; 5.6549,-1.1405;
        5.7328,-1.1402; 5.8727,-1.1402; 5.9357,-1.1395; 5.9826,-1.1395;
        6.105,-1.1401; 6.1514,-1.1401; 6.2914,-1.1401; 6.3524,-1.1394;
        6.4761,-1.1395; 6.5537,-1.1395; 6.6954,-1.1398; 6.7588,-1.1398;
        6.8844,-1.1394; 6.9623,-1.1394; 7.0855,-1.14; 7.1333,-1.14;
        7.2726,-1.14; 7.3348,-1.1397; 7.4924,-1.1397; 7.5559,-1.14;
        7.6977,-1.1401; 7.7767,-1.1401; 7.8877,-1.1398; 7.9491,-1.1398;
        8.0867,-1.1398; 8.1497,-1.1407; 8.3168,-1.1401; 8.3793,-1.1401;
        8.4871,-1.1396; 8.5497,-1.1396],
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
  Modelica.Blocks.Sources.CombiTimeTable EXPERIMENT_IAngle(table=[0.1315,
        -1.1242; 0.17779,-1.1242; 0.31613,-1.124; 0.37821,-1.124; 0.48649,
        -1.1228; 0.5345,-1.1228; 0.66053,-1.1228; 0.74055,-1.1234;
        0.88155,-1.1234; 0.94375,-1.1236; 1.0853,-1.1236; 1.1483,-1.1238;
        1.3031,-1.1234; 1.3658,-1.1234; 1.4732,-1.1251; 1.5354,-1.1251;
        1.6574,-1.1251; 1.7362,-1.1231; 1.7829,-1.1231; 1.9224,-1.1237;
        1.9854,-1.1237; 2.1263,-1.1242; 2.1892,-1.1242; 2.3287,-1.1237;
        2.4519,-1.1237; 2.5149,-1.1233; 2.5772,-1.1233; 2.7172,-1.1244;
        2.8572,-1.1244; 2.92,-1.124; 2.983,-1.124; 3.1216,-1.124; 3.1686,
        -1.124; 3.3263,-1.1239; 3.3872,-1.1239; 3.4982,-1.124; 3.5606,-1.124;
        3.6846,-1.124; 3.7625,-1.1237; 3.9023,-1.1234; 3.9658,-1.1234;
        4.0898,-1.1231; 4.1514,-1.1231; 4.2926,-1.1231; 4.3557,-1.1241;
        4.4647,-1.1241; 4.5267,-1.1233; 4.6495,-1.1233; 4.7408,-1.1208;
        4.8767,-1.1208; 4.9367,-1.1428; 5.076,-1.1428; 5.1382,-1.1387;
        5.2952,-1.1387; 5.3413,-1.1399; 5.4658,-1.1399; 5.5451,-1.1405;
        5.6549,-1.1405; 5.7328,-1.1402; 5.8727,-1.1402; 5.9357,-1.1395;
        5.9826,-1.1395; 6.105,-1.1401; 6.1514,-1.1401; 6.2914,-1.1401;
        6.3524,-1.1394; 6.4761,-1.1395; 6.5537,-1.1395; 6.6954,-1.1398;
        6.7588,-1.1398; 6.8844,-1.1394; 6.9623,-1.1394; 7.0855,-1.14;
        7.1333,-1.14; 7.2726,-1.14; 7.3348,-1.1397; 7.4924,-1.1397;
        7.5559,-1.14; 7.6977,-1.1401; 7.7767,-1.1401; 7.8877,-1.1398;
        7.9491,-1.1398; 8.0867,-1.1398; 8.1497,-1.1407; 8.3168,-1.1401;
        8.3793,-1.1401; 8.4871,-1.1396; 8.5497,-1.1396],
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
  Modelica.Blocks.Sources.CombiTimeTable V1(table=[0.1315,1; 0.17779,1;
        0.31613,0.99998; 0.37821,0.99998; 0.48649,0.99998; 0.5345,0.99998;
        0.66053,0.99998; 0.74055,0.99999; 0.88155,0.99999; 0.94375,1;
        1.0853,1; 1.1483,0.99999; 1.3031,0.99999; 1.3658,0.99999; 1.4732,
        0.99999; 1.5354,1; 1.6574,1; 1.7362,0.99998; 1.7829,0.99998;
        1.9224,0.99999; 1.9854,0.99999; 2.1263,1; 2.1892,1; 2.3287,
        0.99998; 2.4519,0.99998; 2.5149,1; 2.5772,1; 2.7172,1; 2.8572,1;
        2.92,0.99998; 2.983,0.99998; 3.1216,0.99999; 3.1686,0.99999;
        3.3263,0.99999; 3.3872,0.99999; 3.4982,1; 3.5606,1; 3.6846,1;
        3.7625,0.99999; 3.9023,0.99999; 3.9658,0.99999; 4.0898,0.99999;
        4.1514,0.99998; 4.2926,0.99998; 4.3557,1; 4.4647,1; 4.5267,
        0.99998; 4.6495,0.99998; 4.7408,0.99732; 4.8767,0.99732; 4.9367,
        0.94631; 5.076,0.94631; 5.1382,0.94601; 5.2952,0.94601; 5.3413,
        0.94603; 5.4658,0.94603; 5.5451,0.94604; 5.6549,0.94604; 5.7328,
        0.94604; 5.8727,0.94604; 5.9357,0.94603; 5.9826,0.94603; 6.105,
        0.94603; 6.1514,0.94603; 6.2914,0.94603; 6.3524,0.94604; 6.4761,
        0.94604; 6.5537,0.94604; 6.6954,0.94604; 6.7588,0.94602; 6.8844,
        0.94602; 6.9623,0.94603; 7.0855,0.94603; 7.1333,0.94603; 7.2726,
        0.94603; 7.3348,0.94602; 7.4924,0.94602; 7.5559,0.94602; 7.6977,
        0.94602; 7.7767,0.94601; 7.8877,0.94601; 7.9491,0.94601; 8.0867,
        0.94601; 8.1497,0.94602; 8.3168,0.94602; 8.3793,0.946; 8.4871,
        0.946; 8.5497,0.946],
      extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint)
    annotation (Placement(transformation(extent={{100,0},{80,20}})));
  Modelica.Blocks.Sources.CombiTimeTable A1(table=[0.1315,-1.1242;
        0.17779,-1.1242; 0.31613,-1.124; 0.37821,-1.124; 0.48649,-1.1228;
        0.5345,-1.1228; 0.66053,-1.1228; 0.74055,-1.1234; 0.88155,-1.1234;
        0.94375,-1.1236; 1.0853,-1.1236; 1.1483,-1.1238; 1.3031,-1.1234;
        1.3658,-1.1234; 1.4732,-1.1251; 1.5354,-1.1251; 1.6574,-1.1251;
        1.7362,-1.1231; 1.7829,-1.1231; 1.9224,-1.1237; 1.9854,-1.1237;
        2.1263,-1.1242; 2.1892,-1.1242; 2.3287,-1.1237; 2.4519,-1.1237;
        2.5149,-1.1233; 2.5772,-1.1233; 2.7172,-1.1244; 2.8572,-1.1244;
        2.92,-1.124; 2.983,-1.124; 3.1216,-1.124; 3.1686,-1.124; 3.3263,-1.1239;
        3.3872,-1.1239; 3.4982,-1.124; 3.5606,-1.124; 3.6846,-1.124;
        3.7625,-1.1237; 3.9023,-1.1234; 3.9658,-1.1234; 4.0898,-1.1231;
        4.1514,-1.1231; 4.2926,-1.1231; 4.3557,-1.1241; 4.4647,-1.1241;
        4.5267,-1.1233; 4.6495,-1.1233; 4.7408,-1.1208; 4.8767,-1.1208;
        4.9367,-1.1428; 5.076,-1.1428; 5.1382,-1.1387; 5.2952,-1.1387;
        5.3413,-1.1399; 5.4658,-1.1399; 5.5451,-1.1405; 5.6549,-1.1405;
        5.7328,-1.1402; 5.8727,-1.1402; 5.9357,-1.1395; 5.9826,-1.1395;
        6.105,-1.1401; 6.1514,-1.1401; 6.2914,-1.1401; 6.3524,-1.1394;
        6.4761,-1.1395; 6.5537,-1.1395; 6.6954,-1.1398; 6.7588,-1.1398;
        6.8844,-1.1394; 6.9623,-1.1394; 7.0855,-1.14; 7.1333,-1.14;
        7.2726,-1.14; 7.3348,-1.1397; 7.4924,-1.1397; 7.5559,-1.14;
        7.6977,-1.1401; 7.7767,-1.1401; 7.8877,-1.1398; 7.9491,-1.1398;
        8.0867,-1.1398; 8.1497,-1.1407; 8.3168,-1.1401; 8.3793,-1.1401;
        8.4871,-1.1396; 8.5497,-1.1396],
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
  Modelica.Blocks.Sources.CombiTimeTable V2(table=[0.1315,1; 0.17779,1;
        0.31613,0.99998; 0.37821,0.99998; 0.48649,0.99998; 0.5345,0.99998;
        0.66053,0.99998; 0.74055,0.99999; 0.88155,0.99999; 0.94375,1;
        1.0853,1; 1.1483,0.99999; 1.3031,0.99999; 1.3658,0.99999; 1.4732,
        0.99999; 1.5354,1; 1.6574,1; 1.7362,0.99998; 1.7829,0.99998;
        1.9224,0.99999; 1.9854,0.99999; 2.1263,1; 2.1892,1; 2.3287,
        0.99998; 2.4519,0.99998; 2.5149,1; 2.5772,1; 2.7172,1; 2.8572,1;
        2.92,0.99998; 2.983,0.99998; 3.1216,0.99999; 3.1686,0.99999;
        3.3263,0.99999; 3.3872,0.99999; 3.4982,1; 3.5606,1; 3.6846,1;
        3.7625,0.99999; 3.9023,0.99999; 3.9658,0.99999; 4.0898,0.99999;
        4.1514,0.99998; 4.2926,0.99998; 4.3557,1; 4.4647,1; 4.5267,
        0.99998; 4.6495,0.99998; 4.7408,0.99732; 4.8767,0.99732; 4.9367,
        0.94631; 5.076,0.94631; 5.1382,0.94601; 5.2952,0.94601; 5.3413,
        0.94603; 5.4658,0.94603; 5.5451,0.94604; 5.6549,0.94604; 5.7328,
        0.94604; 5.8727,0.94604; 5.9357,0.94603; 5.9826,0.94603; 6.105,
        0.94603; 6.1514,0.94603; 6.2914,0.94603; 6.3524,0.94604; 6.4761,
        0.94604; 6.5537,0.94604; 6.6954,0.94604; 6.7588,0.94602; 6.8844,
        0.94602; 6.9623,0.94603; 7.0855,0.94603; 7.1333,0.94603; 7.2726,
        0.94603; 7.3348,0.94602; 7.4924,0.94602; 7.5559,0.94602; 7.6977,
        0.94602; 7.7767,0.94601; 7.8877,0.94601; 7.9491,0.94601; 8.0867,
        0.94601; 8.1497,0.94602; 8.3168,0.94602; 8.3793,0.946; 8.4871,
        0.946; 8.5497,0.946],            extrapolation=Modelica.Blocks.Types.Extrapolation.LastTwoPoints)
    annotation (Placement(transformation(extent={{100,-120},{80,-100}})));
  Modelica.Blocks.Sources.CombiTimeTable A2(table=[0.1315,-1.1242;
        0.17779,-1.1242; 0.31613,-1.124; 0.37821,-1.124; 0.48649,-1.1228;
        0.5345,-1.1228; 0.66053,-1.1228; 0.74055,-1.1234; 0.88155,-1.1234;
        0.94375,-1.1236; 1.0853,-1.1236; 1.1483,-1.1238; 1.3031,-1.1234;
        1.3658,-1.1234; 1.4732,-1.1251; 1.5354,-1.1251; 1.6574,-1.1251;
        1.7362,-1.1231; 1.7829,-1.1231; 1.9224,-1.1237; 1.9854,-1.1237;
        2.1263,-1.1242; 2.1892,-1.1242; 2.3287,-1.1237; 2.4519,-1.1237;
        2.5149,-1.1233; 2.5772,-1.1233; 2.7172,-1.1244; 2.8572,-1.1244;
        2.92,-1.124; 2.983,-1.124; 3.1216,-1.124; 3.1686,-1.124; 3.3263,-1.1239;
        3.3872,-1.1239; 3.4982,-1.124; 3.5606,-1.124; 3.6846,-1.124;
        3.7625,-1.1237; 3.9023,-1.1234; 3.9658,-1.1234; 4.0898,-1.1231;
        4.1514,-1.1231; 4.2926,-1.1231; 4.3557,-1.1241; 4.4647,-1.1241;
        4.5267,-1.1233; 4.6495,-1.1233; 4.7408,-1.1208; 4.8767,-1.1208;
        4.9367,-1.1428; 5.076,-1.1428; 5.1382,-1.1387; 5.2952,-1.1387;
        5.3413,-1.1399; 5.4658,-1.1399; 5.5451,-1.1405; 5.6549,-1.1405;
        5.7328,-1.1402; 5.8727,-1.1402; 5.9357,-1.1395; 5.9826,-1.1395;
        6.105,-1.1401; 6.1514,-1.1401; 6.2914,-1.1401; 6.3524,-1.1394;
        6.4761,-1.1395; 6.5537,-1.1395; 6.6954,-1.1398; 6.7588,-1.1398;
        6.8844,-1.1394; 6.9623,-1.1394; 7.0855,-1.14; 7.1333,-1.14;
        7.2726,-1.14; 7.3348,-1.1397; 7.4924,-1.1397; 7.5559,-1.14;
        7.6977,-1.1401; 7.7767,-1.1401; 7.8877,-1.1398; 7.9491,-1.1398;
        8.0867,-1.1398; 8.1497,-1.1407; 8.3168,-1.1401; 8.3793,-1.1401;
        8.4871,-1.1396; 8.5497,-1.1396],                  extrapolation=
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
        0.1315,3.0431; 0.17779,3.0431; 0.31613,3.0398; 0.37821,3.0398;
        0.48649,3.0398; 0.5345,3.0365; 0.66053,3.0365; 0.74055,3.0431;
        0.88155,3.0431; 0.94375,3.0431; 1.0853,3.0431; 1.1483,3.0431;
        1.3031,3.0431; 1.3658,3.0398; 1.4732,3.0398; 1.5354,3.0431;
        1.6574,3.0431; 1.7362,3.0398; 1.7829,3.0398; 1.9224,3.0398;
        1.9854,3.0398; 2.1263,3.0464; 2.1892,3.0464; 2.3287,3.0398;
        2.4519,3.0398; 2.5149,3.0431; 2.5772,3.0431; 2.7172,3.0431;
        2.8572,3.0431; 2.92,3.0398; 2.983,3.0398; 3.1216,3.0431; 3.1686,
        3.0431; 3.3263,3.0431; 3.3872,3.0398; 3.4982,3.0398; 3.5606,
        3.0398; 3.6846,3.0398; 3.7625,3.0431; 3.9023,3.0431; 3.9658,
        3.0398; 4.0898,3.0398; 4.1514,3.0398; 4.2926,3.0398; 4.3557,
        3.0431; 4.4647,3.0431; 4.5267,3.0398; 4.6495,3.0398; 4.7408,
        3.1331; 4.8767,3.1331; 4.9367,3.2932; 5.076,3.2932; 5.1382,3.2399;
        5.2952,3.2399; 5.3413,3.2399; 5.4658,3.2399; 5.5451,3.2365;
        5.6549,3.2365; 5.7328,3.2365; 5.8727,3.2365; 5.9357,3.2365;
        5.9826,3.2365; 6.105,3.2365; 6.1514,3.2365; 6.2914,3.2365; 6.3524,
        3.2365; 6.4761,3.2365; 6.5537,3.2365; 6.6954,3.2365; 6.7588,
        3.2365; 6.8844,3.2366; 6.9623,3.2366; 7.0855,3.2366; 7.1333,
        3.2399; 7.2726,3.2399; 7.3348,3.2365; 7.4924,3.2365; 7.5559,
        3.2365; 7.6977,3.2365; 7.7767,3.2365; 7.8877,3.2365; 7.9491,
        3.2365; 8.0867,3.2365; 8.1497,3.2399; 8.3168,3.2399; 8.3793,
        3.2365; 8.4871,3.2366; 8.5497,3.2399],
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
  Modelica.Blocks.Sources.CombiTimeTable VOLTAGE(table=[0.1315,354.33;
        0.17779,354.33; 0.31613,354.32; 0.37821,354.32; 0.48649,354.32;
        0.5345,354.32; 0.66053,354.32; 0.74055,354.32; 0.88155,354.32;
        0.94375,354.33; 1.0853,354.33; 1.1483,354.32; 1.3031,354.32;
        1.3658,354.32; 1.4732,354.32; 1.5354,354.33; 1.6574,354.33;
        1.7362,354.32; 1.7829,354.32; 1.9224,354.32; 1.9854,354.32;
        2.1263,354.33; 2.1892,354.33; 2.3287,354.32; 2.4519,354.32;
        2.5149,354.33; 2.5772,354.33; 2.7172,354.33; 2.8572,354.33; 2.92,
        354.32; 2.983,354.32; 3.1216,354.32; 3.1686,354.32; 3.3263,354.32;
        3.3872,354.32; 3.4982,354.33; 3.5606,354.33; 3.6846,354.33;
        3.7625,354.32; 3.9023,354.32; 3.9658,354.32; 4.0898,354.32;
        4.1514,354.32; 4.2926,354.32; 4.3557,354.33; 4.4647,354.33;
        4.5267,354.32; 4.6495,354.32; 4.7408,353.38; 4.8767,353.38;
        4.9367,335.3; 5.076,335.3; 5.1382,335.2; 5.2952,335.2; 5.3413,
        335.2; 5.4658,335.2; 5.5451,335.21; 5.6549,335.21; 5.7328,335.21;
        5.8727,335.21; 5.9357,335.2; 5.9826,335.2; 6.105,335.2; 6.1514,
        335.2; 6.2914,335.2; 6.3524,335.21; 6.4761,335.21; 6.5537,335.21;
        6.6954,335.21; 6.7588,335.2; 6.8844,335.2; 6.9623,335.2; 7.0855,
        335.2; 7.1333,335.2; 7.2726,335.2; 7.3348,335.2; 7.4924,335.2;
        7.5559,335.2; 7.6977,335.2; 7.7767,335.2; 7.8877,335.2; 7.9491,
        335.2; 8.0867,335.2; 8.1497,335.2; 8.3168,335.2; 8.3793,335.19;
        8.4871,335.19; 8.5497,335.19],
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
<p> Run the simulation for t=8.55 seconds. </p>
</html>"));
end VoltageVariation_350_to_330_V;
