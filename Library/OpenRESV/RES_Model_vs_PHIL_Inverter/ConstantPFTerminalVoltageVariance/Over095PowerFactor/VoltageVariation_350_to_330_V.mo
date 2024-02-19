within OpenRESV.RES_Model_vs_PHIL_Inverter.ConstantPFTerminalVoltageVariance.Over095PowerFactor;
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
  Modelica.Blocks.Sources.CombiTimeTable EXPERIMENT_P(table=[0.071127,
        921.67; 0.19514,921.67; 0.25713,920.82; 0.32015,920.82; 0.44515,
        920.65; 0.50815,921.75; 0.61667,921.79; 0.67969,921.8; 0.81674,
        921.82; 0.90878,920.73; 1.0468,920.99; 1.1989,922.1; 1.2598,
        921.74; 1.3078,921.74; 1.4757,921.56; 1.6018,920.46; 1.6954,
        920.66; 1.8212,920.93; 1.9,920.93; 2.0261,920.65; 2.0897,921.75;
        2.2312,921.93; 2.2951,921.93; 2.4041,921.95; 2.4986,921.99;
        2.6069,921.99; 2.6842,921.54; 2.7925,921.54; 2.8868,920.73;
        3.0287,920.73; 3.0757,921.94; 3.2012,921.94; 3.2642,921.7; 3.3266,
        921.7; 3.4816,921.62; 3.6055,921.72; 3.6843,964.79; 3.7921,964.79;
        3.8845,917.86; 4.0262,917.84; 4.0886,919.99; 4.2282,919.83;
        4.2739,919.85; 4.3206,919.85; 4.4885,919.73; 4.6301,919.74;
        4.6928,919.72; 4.8308,919.74; 4.9085,920.02; 5.0465,920; 5.1387,
        920; 5.2469,918.89; 5.3089,918.89; 5.4359,918.8; 5.5146,919.87;
        5.6534,920.05; 5.7297,920.05; 5.8535,918.78; 5.9162,918.78;
        6.0566,918.72; 6.1329,918.73; 6.2436,919.97],
                        extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint)
    annotation (Placement(transformation(extent={{-68,180},{-48,200}})));
  Modelica.Blocks.Sources.CombiTimeTable EXPERIMENT_Q(table=[0.071127,
        333.8; 0.19514,333.8; 0.25713,332.68; 0.32015,332.68; 0.44515,
        333.11; 0.50815,333.53; 0.61667,333.41; 0.67969,333.42; 0.81674,
        333.36; 0.90878,332.89; 1.0468,332.19; 1.1989,332.61; 1.2598,
        333.52; 1.3078,333.52; 1.4757,334.06; 1.6018,333.64; 1.6954,
        333.11; 1.8212,332.36; 1.9,332.35; 2.0261,333.1; 2.0897,333.52;
        2.2312,333.04; 2.2951,333.04; 2.4041,332.99; 2.4986,332.88;
        2.6069,332.88; 2.6842,334.12; 2.7925,334.12; 2.8868,332.95;
        3.0287,332.95; 3.0757,332.98; 3.2012,332.98; 3.2642,333.69;
        3.3266,333.69; 3.4816,333.91; 3.6055,333.64; 3.6843,343.23;
        3.7921,343.23; 3.8845,357.13; 4.0262,357.18; 4.0886,351.63;
        4.2282,352.05; 4.2739,352.06; 4.3206,352.06; 4.4885,352.38;
        4.6301,352.39; 4.6928,352.44; 4.8308,352.39; 4.9085,351.69;
        5.0465,351.75; 5.1387,351.75; 5.2469,351.53; 5.3089,351.53;
        5.4359,351.79; 5.5146,352.19; 5.6534,351.71; 5.7297,351.71;
        5.8535,351.91; 5.9162,351.91; 6.0566,352.07; 6.1329,352.07;
        6.2436,351.99],
                 extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint)
    annotation (Placement(transformation(extent={{-38,180},{-18,200}})));
  Modelica.Blocks.Sources.CombiTimeTable V(table=[0.071127,1; 0.19514,1;
        0.25713,0.99998; 0.32015,0.99998; 0.44515,0.99998; 0.50815,
        0.99998; 0.61667,0.99998; 0.67969,0.99999; 0.81674,0.99999;
        0.90878,0.99998; 1.0468,0.99998; 1.1989,0.99999; 1.2598,0.99998;
        1.3078,0.99998; 1.4757,0.99998; 1.6018,0.99998; 1.6954,0.99998;
        1.8212,0.99998; 1.9,0.99998; 2.0261,0.99998; 2.0897,0.99998;
        2.2312,0.99998; 2.2951,0.99998; 2.4041,0.99998; 2.4986,0.99998;
        2.6069,0.99998; 2.6842,0.99999; 2.7925,0.99999; 2.8868,0.99999;
        3.0287,0.99999; 3.0757,0.99997; 3.2012,0.99997; 3.2642,0.99999;
        3.3266,0.99999; 3.4816,0.99999; 3.6055,0.99999; 3.6843,0.98873;
        3.7921,0.98873; 3.8845,0.94558; 4.0262,0.94558; 4.0886,0.94559;
        4.2282,0.94559; 4.2739,0.94562; 4.3206,0.94562; 4.4885,0.94562;
        4.6301,0.94562; 4.6928,0.94563; 4.8308,0.94563; 4.9085,0.94564;
        5.0465,0.94564; 5.1387,0.94564; 5.2469,0.94564; 5.3089,0.94564;
        5.4359,0.94564; 5.5146,0.94567; 5.6534,0.94567; 5.7297,0.94567;
        5.8535,0.94567; 5.9162,0.94567; 6.0566,0.94567; 6.1329,0.94568;
        6.2436,0.94569],
      extrapolation=Modelica.Blocks.Types.Extrapolation.LastTwoPoints)
    annotation (Placement(transformation(extent={{100,120},{80,140}})));
  Modelica.Blocks.Sources.CombiTimeTable A(table=[0.071127,-0.8713;
        0.19514,-0.8713; 0.25713,-0.87053; 0.32015,-0.87053; 0.44515,-0.871;
        0.50815,-0.87102; 0.61667,-0.87083; 0.67969,-0.87083; 0.81674,-0.87083;
        0.90878,-0.87076; 1.0468,-0.87; 1.1989,-0.87002; 1.2598,-0.87096;
        1.3078,-0.87096; 1.4757,-0.8716; 1.6018,-0.87158; 1.6954,-0.871;
        1.8212,-0.87017; 1.9,-0.87017; 2.0261,-0.87099; 2.0897,-0.87101;
        2.2312,-0.87043; 2.2951,-0.87043; 2.4041,-0.87043; 2.4986,-0.87031;
        2.6069,-0.87031; 2.6842,-0.87165; 2.7925,-0.87165; 2.8868,-0.87082;
        3.0287,-0.87082; 3.0757,-0.87043; 3.2012,-0.87043; 3.2642,-0.87119;
        3.3266,-0.87119; 3.4816,-0.87142; 3.6055,-0.87142; 3.6843,-0.86591;
        3.7921,-0.86591; 3.8845,-0.89507; 4.0262,-0.89507; 4.0886,-0.88902;
        4.2282,-0.88943; 4.2739,-0.88943; 4.3206,-0.88943; 4.4885,-0.88978;
        4.6301,-0.88978; 4.6928,-0.88983; 4.8308,-0.88983; 4.9085,-0.88908;
        5.0465,-0.88914; 5.1387,-0.88914; 5.2469,-0.88927; 5.3089,-0.88927;
        5.4359,-0.88955; 5.5146,-0.88954; 5.6534,-0.88902; 5.7297,-0.88902;
        5.8535,-0.88967; 5.9162,-0.88967; 6.0566,-0.88984; 6.1329,-0.88984;
        6.2436,-0.88937],
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
        0.071127,-0.8713; 0.19514,-0.8713; 0.25713,-0.87053; 0.32015,-0.87053;
        0.44515,-0.871; 0.50815,-0.87102; 0.61667,-0.87083; 0.67969,-0.87083;
        0.81674,-0.87083; 0.90878,-0.87076; 1.0468,-0.87; 1.1989,-0.87002;
        1.2598,-0.87096; 1.3078,-0.87096; 1.4757,-0.8716; 1.6018,-0.87158;
        1.6954,-0.871; 1.8212,-0.87017; 1.9,-0.87017; 2.0261,-0.87099;
        2.0897,-0.87101; 2.2312,-0.87043; 2.2951,-0.87043; 2.4041,-0.87043;
        2.4986,-0.87031; 2.6069,-0.87031; 2.6842,-0.87165; 2.7925,-0.87165;
        2.8868,-0.87082; 3.0287,-0.87082; 3.0757,-0.87043; 3.2012,-0.87043;
        3.2642,-0.87119; 3.3266,-0.87119; 3.4816,-0.87142; 3.6055,-0.87142;
        3.6843,-0.86591; 3.7921,-0.86591; 3.8845,-0.89507; 4.0262,-0.89507;
        4.0886,-0.88902; 4.2282,-0.88943; 4.2739,-0.88943; 4.3206,-0.88943;
        4.4885,-0.88978; 4.6301,-0.88978; 4.6928,-0.88983; 4.8308,-0.88983;
        4.9085,-0.88908; 5.0465,-0.88914; 5.1387,-0.88914; 5.2469,-0.88927;
        5.3089,-0.88927; 5.4359,-0.88955; 5.5146,-0.88954; 5.6534,-0.88902;
        5.7297,-0.88902; 5.8535,-0.88967; 5.9162,-0.88967; 6.0566,-0.88984;
        6.1329,-0.88984; 6.2436,-0.88937],
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
  Modelica.Blocks.Sources.CombiTimeTable V1(table=[0.071127,1; 0.19514,1;
        0.25713,0.99998; 0.32015,0.99998; 0.44515,0.99998; 0.50815,
        0.99998; 0.61667,0.99998; 0.67969,0.99999; 0.81674,0.99999;
        0.90878,0.99998; 1.0468,0.99998; 1.1989,0.99999; 1.2598,0.99998;
        1.3078,0.99998; 1.4757,0.99998; 1.6018,0.99998; 1.6954,0.99998;
        1.8212,0.99998; 1.9,0.99998; 2.0261,0.99998; 2.0897,0.99998;
        2.2312,0.99998; 2.2951,0.99998; 2.4041,0.99998; 2.4986,0.99998;
        2.6069,0.99998; 2.6842,0.99999; 2.7925,0.99999; 2.8868,0.99999;
        3.0287,0.99999; 3.0757,0.99997; 3.2012,0.99997; 3.2642,0.99999;
        3.3266,0.99999; 3.4816,0.99999; 3.6055,0.99999; 3.6843,0.98873;
        3.7921,0.98873; 3.8845,0.94558; 4.0262,0.94558; 4.0886,0.94559;
        4.2282,0.94559; 4.2739,0.94562; 4.3206,0.94562; 4.4885,0.94562;
        4.6301,0.94562; 4.6928,0.94563; 4.8308,0.94563; 4.9085,0.94564;
        5.0465,0.94564; 5.1387,0.94564; 5.2469,0.94564; 5.3089,0.94564;
        5.4359,0.94564; 5.5146,0.94567; 5.6534,0.94567; 5.7297,0.94567;
        5.8535,0.94567; 5.9162,0.94567; 6.0566,0.94567; 6.1329,0.94568;
        6.2436,0.94569],
      extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint)
    annotation (Placement(transformation(extent={{100,0},{80,20}})));
  Modelica.Blocks.Sources.CombiTimeTable A1(table=[0.071127,-0.8713;
        0.19514,-0.8713; 0.25713,-0.87053; 0.32015,-0.87053; 0.44515,-0.871;
        0.50815,-0.87102; 0.61667,-0.87083; 0.67969,-0.87083; 0.81674,-0.87083;
        0.90878,-0.87076; 1.0468,-0.87; 1.1989,-0.87002; 1.2598,-0.87096;
        1.3078,-0.87096; 1.4757,-0.8716; 1.6018,-0.87158; 1.6954,-0.871;
        1.8212,-0.87017; 1.9,-0.87017; 2.0261,-0.87099; 2.0897,-0.87101;
        2.2312,-0.87043; 2.2951,-0.87043; 2.4041,-0.87043; 2.4986,-0.87031;
        2.6069,-0.87031; 2.6842,-0.87165; 2.7925,-0.87165; 2.8868,-0.87082;
        3.0287,-0.87082; 3.0757,-0.87043; 3.2012,-0.87043; 3.2642,-0.87119;
        3.3266,-0.87119; 3.4816,-0.87142; 3.6055,-0.87142; 3.6843,-0.86591;
        3.7921,-0.86591; 3.8845,-0.89507; 4.0262,-0.89507; 4.0886,-0.88902;
        4.2282,-0.88943; 4.2739,-0.88943; 4.3206,-0.88943; 4.4885,-0.88978;
        4.6301,-0.88978; 4.6928,-0.88983; 4.8308,-0.88983; 4.9085,-0.88908;
        5.0465,-0.88914; 5.1387,-0.88914; 5.2469,-0.88927; 5.3089,-0.88927;
        5.4359,-0.88955; 5.5146,-0.88954; 5.6534,-0.88902; 5.7297,-0.88902;
        5.8535,-0.88967; 5.9162,-0.88967; 6.0566,-0.88984; 6.1329,-0.88984;
        6.2436,-0.88937],
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
  Modelica.Blocks.Sources.CombiTimeTable V2(table=[0.071127,1; 0.19514,1;
        0.25713,0.99998; 0.32015,0.99998; 0.44515,0.99998; 0.50815,
        0.99998; 0.61667,0.99998; 0.67969,0.99999; 0.81674,0.99999;
        0.90878,0.99998; 1.0468,0.99998; 1.1989,0.99999; 1.2598,0.99998;
        1.3078,0.99998; 1.4757,0.99998; 1.6018,0.99998; 1.6954,0.99998;
        1.8212,0.99998; 1.9,0.99998; 2.0261,0.99998; 2.0897,0.99998;
        2.2312,0.99998; 2.2951,0.99998; 2.4041,0.99998; 2.4986,0.99998;
        2.6069,0.99998; 2.6842,0.99999; 2.7925,0.99999; 2.8868,0.99999;
        3.0287,0.99999; 3.0757,0.99997; 3.2012,0.99997; 3.2642,0.99999;
        3.3266,0.99999; 3.4816,0.99999; 3.6055,0.99999; 3.6843,0.98873;
        3.7921,0.98873; 3.8845,0.94558; 4.0262,0.94558; 4.0886,0.94559;
        4.2282,0.94559; 4.2739,0.94562; 4.3206,0.94562; 4.4885,0.94562;
        4.6301,0.94562; 4.6928,0.94563; 4.8308,0.94563; 4.9085,0.94564;
        5.0465,0.94564; 5.1387,0.94564; 5.2469,0.94564; 5.3089,0.94564;
        5.4359,0.94564; 5.5146,0.94567; 5.6534,0.94567; 5.7297,0.94567;
        5.8535,0.94567; 5.9162,0.94567; 6.0566,0.94567; 6.1329,0.94568;
        6.2436,0.94569],                 extrapolation=Modelica.Blocks.Types.Extrapolation.LastTwoPoints)
    annotation (Placement(transformation(extent={{100,-120},{80,-100}})));
  Modelica.Blocks.Sources.CombiTimeTable A2(table=[0.071127,-0.8713;
        0.19514,-0.8713; 0.25713,-0.87053; 0.32015,-0.87053; 0.44515,-0.871;
        0.50815,-0.87102; 0.61667,-0.87083; 0.67969,-0.87083; 0.81674,-0.87083;
        0.90878,-0.87076; 1.0468,-0.87; 1.1989,-0.87002; 1.2598,-0.87096;
        1.3078,-0.87096; 1.4757,-0.8716; 1.6018,-0.87158; 1.6954,-0.871;
        1.8212,-0.87017; 1.9,-0.87017; 2.0261,-0.87099; 2.0897,-0.87101;
        2.2312,-0.87043; 2.2951,-0.87043; 2.4041,-0.87043; 2.4986,-0.87031;
        2.6069,-0.87031; 2.6842,-0.87165; 2.7925,-0.87165; 2.8868,-0.87082;
        3.0287,-0.87082; 3.0757,-0.87043; 3.2012,-0.87043; 3.2642,-0.87119;
        3.3266,-0.87119; 3.4816,-0.87142; 3.6055,-0.87142; 3.6843,-0.86591;
        3.7921,-0.86591; 3.8845,-0.89507; 4.0262,-0.89507; 4.0886,-0.88902;
        4.2282,-0.88943; 4.2739,-0.88943; 4.3206,-0.88943; 4.4885,-0.88978;
        4.6301,-0.88978; 4.6928,-0.88983; 4.8308,-0.88983; 4.9085,-0.88908;
        5.0465,-0.88914; 5.1387,-0.88914; 5.2469,-0.88927; 5.3089,-0.88927;
        5.4359,-0.88955; 5.5146,-0.88954; 5.6534,-0.88902; 5.7297,-0.88902;
        5.8535,-0.88967; 5.9162,-0.88967; 6.0566,-0.88984; 6.1329,-0.88984;
        6.2436,-0.88937],                                 extrapolation=
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
        0.071127,2.7731; 0.19514,2.7731; 0.25713,2.7698; 0.32015,2.7698;
        0.44515,2.7697; 0.50815,2.7731; 0.61667,2.7731; 0.67969,2.7731;
        0.81674,2.7731; 0.90878,2.7697; 1.0468,2.7698; 1.1989,2.7731;
        1.2598,2.773; 1.3078,2.773; 1.4757,2.7731; 1.6018,2.7697; 1.6954,
        2.7697; 1.8212,2.7698; 1.9,2.7698; 2.0261,2.7697; 2.0897,2.7731;
        2.2312,2.7731; 2.2951,2.7731; 2.4041,2.7731; 2.4986,2.7731;
        2.6069,2.7731; 2.6842,2.7731; 2.7925,2.7731; 2.8868,2.7698;
        3.0287,2.7698; 3.0757,2.7731; 3.2012,2.7731; 3.2642,2.773; 3.3266,
        2.773; 3.4816,2.7731; 3.6055,2.7731; 3.6843,2.9299; 3.7921,2.9299;
        3.8845,2.9465; 4.0262,2.9465; 4.0886,2.9465; 4.2282,2.9465;
        4.2739,2.9465; 4.3206,2.9465; 4.4885,2.9465; 4.6301,2.9465;
        4.6928,2.9465; 4.8308,2.9465; 4.9085,2.9465; 5.0465,2.9465;
        5.1387,2.9465; 5.2469,2.9432; 5.3089,2.9432; 5.4359,2.9432;
        5.5146,2.9465; 5.6534,2.9465; 5.7297,2.9465; 5.8535,2.9432;
        5.9162,2.9432; 6.0566,2.9432; 6.1329,2.9432; 6.2436,2.9465],
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
  Modelica.Blocks.Sources.CombiTimeTable VOLTAGE(table=[0.071127,353.49;
        0.19514,353.49; 0.25713,353.49; 0.32015,353.49; 0.44515,353.49;
        0.50815,353.49; 0.61667,353.49; 0.67969,353.49; 0.81674,353.49;
        0.90878,353.49; 1.0468,353.49; 1.1989,353.49; 1.2598,353.49;
        1.3078,353.49; 1.4757,353.49; 1.6018,353.49; 1.6954,353.49;
        1.8212,353.49; 1.9,353.48; 2.0261,353.48; 2.0897,353.48; 2.2312,
        353.48; 2.2951,353.48; 2.4041,353.48; 2.4986,353.49; 2.6069,
        353.49; 2.6842,353.49; 2.7925,353.49; 2.8868,353.49; 3.0287,
        353.49; 3.0757,353.48; 3.2012,353.48; 3.2642,353.49; 3.3266,
        353.49; 3.4816,353.49; 3.6055,353.49; 3.6843,349.51; 3.7921,
        349.51; 3.8845,334.26; 4.0262,334.26; 4.0886,334.26; 4.2282,
        334.26; 4.2739,334.27; 4.3206,334.27; 4.4885,334.27; 4.6301,
        334.27; 4.6928,334.27; 4.8308,334.27; 4.9085,334.28; 5.0465,
        334.28; 5.1387,334.28; 5.2469,334.28; 5.3089,334.28; 5.4359,
        334.28; 5.5146,334.29; 5.6534,334.29; 5.7297,334.29; 5.8535,
        334.29; 5.9162,334.29; 6.0566,334.29; 6.1329,334.29; 6.2436,
        334.29],        extrapolation=Modelica.Blocks.Types.Extrapolation.LastTwoPoints)
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
<p> Run the simulation for t=6.24 seconds. </p>
</html>"));
end VoltageVariation_350_to_330_V;
