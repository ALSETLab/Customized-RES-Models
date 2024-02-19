within OpenRESV.RES_Model_vs_PHIL_Inverter_Examples.ConstantPFTerminalVoltageVariance.Under090PowerFactor;
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
  Modelica.Blocks.Sources.CombiTimeTable EXPERIMENT_P(table=[0.069642,
        1015.9; 0.19227,1015.4; 0.30289,1014.3; 0.42789,1014.4; 0.47472,
        1014.4; 0.60079,1014.4; 0.66325,1013.4; 0.77445,1013.4; 0.86835,
        1015; 0.99378,1014.3; 1.0568,1013.2; 1.1978,1013.2; 1.259,1015.8;
        1.4168,1015.7; 1.4798,1015.6; 1.6068,1015.3; 1.6708,1013.2;
        1.7947,1013.4; 1.8735,1014.4; 1.9846,1014.4; 2.0476,1013.3;
        2.1735,1013.3; 2.2512,1013.5; 2.3765,1013.5; 2.4384,1013.7;
        2.5634,1013.7; 2.6419,1014.3; 2.7669,1014.3; 2.8445,1014.8;
        2.9713,1014.8; 3.0183,1013.2; 3.0968,1013.2; 3.2535,1016; 3.3949,
        1016; 3.4573,1013.2; 3.5987,1013.2; 3.6616,1014.8; 3.7869,1014.8;
        3.8639,1015.5; 3.9899,1019.3; 4.0528,1049.7; 4.179,1049.9; 4.2585,
        1010.9; 4.3996,1010.8; 4.4618,1012; 4.5712,1012; 4.6483,1011.8;
        4.7735,1011.8; 4.8696,1011.9; 4.9948,1011.9; 5.0577,1011.9;
        5.1981,1011.9; 5.2759,1012.1; 5.4157,1011.9; 5.4779,1011.9;
        5.6198,1011.9; 5.6822,1011.9; 5.8102,1012; 5.889,1012; 5.9998,
        1012; 6.0629,1011.9; 6.1888,1012.1; 6.267,1012.1; 6.4098,1012.1;
        6.4884,1012.1; 6.6299,1012.3; 6.6928,1011.3; 6.8495,1012.1],
                        extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint)
    annotation (Placement(transformation(extent={{-68,180},{-48,200}})));
  Modelica.Blocks.Sources.CombiTimeTable EXPERIMENT_Q(table=[0.069642,-426.47;
        0.19227,-427.71; 0.30289,-427.24; 0.42789,-426.95; 0.47472,-426.95;
        0.60079,-426.9; 0.66325,-426.44; 0.77445,-426.44; 0.86835,-425.46;
        0.99378,-427.29; 1.0568,-426.83; 1.1978,-426.83; 1.259,-426.64;
        1.4168,-427.06; 1.4798,-427.05; 1.6068,-427.81; 1.6708,-426.89;
        1.7947,-426.43; 1.8735,-426.87; 1.9846,-426.93; 2.0476,-426.48;
        2.1735,-426.48; 2.2512,-426.08; 2.3765,-426.08; 2.4384,-425.73;
        2.5634,-425.73; 2.6419,-427.14; 2.7669,-427.14; 2.8445,-426.11;
        2.9713,-426.11; 3.0183,-426.79; 3.0968,-426.79; 3.2535,-426.17;
        3.3949,-426.17; 3.4573,-426.78; 3.5987,-426.78; 3.6616,-426.11;
        3.7869,-426.11; 3.8639,-427.42; 3.9899,-418.32; 4.0528,-430.91;
        4.179,-430.36; 4.2585,-418.57; 4.3996,-418.81; 4.4618,-409.98;
        4.5712,-410.1; 4.6483,-410.55; 4.7735,-410.55; 4.8696,-410.25;
        4.9948,-410.19; 5.0577,-410.2; 5.1981,-410.26; 5.2759,-409.72;
        5.4157,-410.19; 5.4779,-410.19; 5.6198,-410.19; 5.6822,-410.19;
        5.8102,-409.96; 5.889,-409.96; 5.9998,-410.02; 6.0629,-410.01;
        6.1888,-409.54; 6.267,-409.54; 6.4098,-409.72; 6.4884,-409.72;
        6.6299,-409.25; 6.6928,-408.83; 6.8495,-409.66],
                 extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint)
    annotation (Placement(transformation(extent={{-38,180},{-18,200}})));
  Modelica.Blocks.Sources.CombiTimeTable V(table=[0.069642,1; 0.19227,1;
        0.30289,0.99996; 0.42789,0.99998; 0.47472,0.99998; 0.60079,
        0.99998; 0.66325,0.99999; 0.77445,0.99999; 0.86835,0.99999;
        0.99378,0.99999; 1.0568,0.99997; 1.1978,0.99997; 1.259,0.99999;
        1.4168,0.99999; 1.4798,0.99998; 1.6068,0.99998; 1.6708,0.99997;
        1.7947,0.99997; 1.8735,0.99997; 1.9846,0.99997; 2.0476,0.99997;
        2.1735,0.99997; 2.2512,0.99998; 2.3765,0.99998; 2.4384,0.99999;
        2.5634,0.99999; 2.6419,0.99998; 2.7669,0.99998; 2.8445,0.99999;
        2.9713,0.99999; 3.0183,0.99999; 3.0968,0.99999; 3.2535,1; 3.3949,
        1; 3.4573,0.99996; 3.5987,0.99996; 3.6616,0.99999; 3.7869,0.99999;
        3.8639,1; 3.9899,1; 4.0528,0.99497; 4.179,0.99497; 4.2585,0.94482;
        4.3996,0.94482; 4.4618,0.94483; 4.5712,0.94483; 4.6483,0.94479;
        4.7735,0.94479; 4.8696,0.94478; 4.9948,0.94478; 5.0577,0.94479;
        5.1981,0.94479; 5.2759,0.94478; 5.4157,0.94478; 5.4779,0.94478;
        5.6198,0.94478; 5.6822,0.94478; 5.8102,0.94478; 5.889,0.94479;
        5.9998,0.94479; 6.0629,0.94477; 6.1888,0.94477; 6.267,0.94478;
        6.4098,0.94478; 6.4884,0.94478; 6.6299,0.94478; 6.6928,0.9448;
        6.8495,0.94477],
      extrapolation=Modelica.Blocks.Types.Extrapolation.LastTwoPoints)
    annotation (Placement(transformation(extent={{100,120},{80,140}})));
  Modelica.Blocks.Sources.CombiTimeTable A(table=[0.069642,-0.52337;
        0.19227,-0.52337; 0.30289,-0.52337; 0.42789,-0.52337; 0.47472,-0.52337;
        0.60079,-0.52337; 0.66325,-0.52337; 0.77445,-0.52337; 0.86835,-0.52337;
        0.99378,-0.52337; 1.0568,-0.52337; 1.1978,-0.52337; 1.259,-0.52337;
        1.4168,-0.52337; 1.4798,-0.52337; 1.6068,-0.52337; 1.6708,-0.52337;
        1.7947,-0.52337; 1.8735,-0.52337; 1.9846,-0.52337; 2.0476,-0.52337;
        2.1735,-0.52337; 2.2512,-0.52337; 2.3765,-0.52337; 2.4384,-0.52337;
        2.5634,-0.52337; 2.6419,-0.52337; 2.7669,-0.52337; 2.8445,-0.52337;
        2.9713,-0.52337; 3.0183,-0.52337; 3.0968,-0.52337; 3.2535,-0.52337;
        3.3949,-0.52337; 3.4573,-0.52337; 3.5987,-0.52337; 3.6616,-0.52337;
        3.7869,-0.52337; 3.8639,-0.52337; 3.9899,-0.5236; 4.0528,-0.5236;
        4.179,-0.52308; 4.2585,-0.52308; 4.3996,-0.52331; 4.4618,-0.52331;
        4.5712,-0.52342; 4.6483,-0.52342; 4.7735,-0.52342; 4.8696,-0.52342;
        4.9948,-0.52348; 5.0577,-0.52348; 5.1981,-0.52354; 5.2759,-0.52354;
        5.4157,-0.52348; 5.4779,-0.52348; 5.6198,-0.52348; 5.6822,-0.52348;
        5.8102,-0.52342; 5.889,-0.52342; 5.9998,-0.52348; 6.0629,-0.52348;
        6.1888,-0.52342; 6.267,-0.52342; 6.4098,-0.52342; 6.4884,-0.52342;
        6.6299,-0.52348; 6.6928,-0.52348; 6.8495,-0.52342],
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
        0.069642,-0.12592; 0.19227,-0.1247; 0.30289,-0.12469; 0.42789,-0.12498;
        0.47472,-0.12498; 0.60079,-0.12504; 0.66325,-0.12505; 0.77445,-0.12505;
        0.86835,-0.12646; 0.99378,-0.12466; 1.0568,-0.12465; 1.1978,-0.12465;
        1.259,-0.12574; 1.4168,-0.12534; 1.4798,-0.12534; 1.6068,-0.12458;
        1.6708,-0.12459; 1.7947,-0.12505; 1.8735,-0.12506; 1.9846,-0.12501;
        2.0476,-0.125; 2.1735,-0.125; 2.2512,-0.1254; 2.3765,-0.1254;
        2.4384,-0.12575; 2.5634,-0.12575; 2.6419,-0.1248; 2.7669,-0.1248;
        2.8445,-0.12582; 2.9713,-0.12582; 3.0183,-0.12471; 3.0968,-0.12471;
        3.2535,-0.12621; 3.3949,-0.12621; 3.4573,-0.12471; 3.5987,-0.12471;
        3.6616,-0.12582; 3.7869,-0.12582; 3.8639,-0.12499; 3.9899,-0.13415;
        4.0528,-0.13405; 4.179,-0.13405; 4.2585,-0.13051; 4.3996,-0.13051;
        4.4618,-0.13841; 4.5712,-0.13841; 4.6483,-0.13795; 4.7735,-0.13795;
        4.8696,-0.13824; 4.9948,-0.13835; 5.0577,-0.13835; 5.1981,-0.13835;
        5.2759,-0.13888; 5.4157,-0.13835; 5.4779,-0.13835; 5.6198,-0.13835;
        5.6822,-0.13835; 5.8102,-0.13853; 5.889,-0.13853; 5.9998,-0.13853;
        6.0629,-0.13853; 6.1888,-0.13893; 6.267,-0.13893; 6.4098,-0.13876;
        6.4884,-0.13876; 6.6299,-0.13928; 6.6928,-0.1393; 6.8495,-0.13882],
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
  Modelica.Blocks.Sources.CombiTimeTable V1(table=[0.069642,1; 0.19227,1;
        0.30289,0.99996; 0.42789,0.99998; 0.47472,0.99998; 0.60079,
        0.99998; 0.66325,0.99999; 0.77445,0.99999; 0.86835,0.99999;
        0.99378,0.99999; 1.0568,0.99997; 1.1978,0.99997; 1.259,0.99999;
        1.4168,0.99999; 1.4798,0.99998; 1.6068,0.99998; 1.6708,0.99997;
        1.7947,0.99997; 1.8735,0.99997; 1.9846,0.99997; 2.0476,0.99997;
        2.1735,0.99997; 2.2512,0.99998; 2.3765,0.99998; 2.4384,0.99999;
        2.5634,0.99999; 2.6419,0.99998; 2.7669,0.99998; 2.8445,0.99999;
        2.9713,0.99999; 3.0183,0.99999; 3.0968,0.99999; 3.2535,1; 3.3949,
        1; 3.4573,0.99996; 3.5987,0.99996; 3.6616,0.99999; 3.7869,0.99999;
        3.8639,1; 3.9899,1; 4.0528,0.99497; 4.179,0.99497; 4.2585,0.94482;
        4.3996,0.94482; 4.4618,0.94483; 4.5712,0.94483; 4.6483,0.94479;
        4.7735,0.94479; 4.8696,0.94478; 4.9948,0.94478; 5.0577,0.94479;
        5.1981,0.94479; 5.2759,0.94478; 5.4157,0.94478; 5.4779,0.94478;
        5.6198,0.94478; 5.6822,0.94478; 5.8102,0.94478; 5.889,0.94479;
        5.9998,0.94479; 6.0629,0.94477; 6.1888,0.94477; 6.267,0.94478;
        6.4098,0.94478; 6.4884,0.94478; 6.6299,0.94478; 6.6928,0.9448;
        6.8495,0.94477],
      extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint)
    annotation (Placement(transformation(extent={{100,0},{80,20}})));
  Modelica.Blocks.Sources.CombiTimeTable A1(table=[0.069642,-0.52337;
        0.19227,-0.52337; 0.30289,-0.52337; 0.42789,-0.52337; 0.47472,-0.52337;
        0.60079,-0.52337; 0.66325,-0.52337; 0.77445,-0.52337; 0.86835,-0.52337;
        0.99378,-0.52337; 1.0568,-0.52337; 1.1978,-0.52337; 1.259,-0.52337;
        1.4168,-0.52337; 1.4798,-0.52337; 1.6068,-0.52337; 1.6708,-0.52337;
        1.7947,-0.52337; 1.8735,-0.52337; 1.9846,-0.52337; 2.0476,-0.52337;
        2.1735,-0.52337; 2.2512,-0.52337; 2.3765,-0.52337; 2.4384,-0.52337;
        2.5634,-0.52337; 2.6419,-0.52337; 2.7669,-0.52337; 2.8445,-0.52337;
        2.9713,-0.52337; 3.0183,-0.52337; 3.0968,-0.52337; 3.2535,-0.52337;
        3.3949,-0.52337; 3.4573,-0.52337; 3.5987,-0.52337; 3.6616,-0.52337;
        3.7869,-0.52337; 3.8639,-0.52337; 3.9899,-0.5236; 4.0528,-0.5236;
        4.179,-0.52308; 4.2585,-0.52308; 4.3996,-0.52331; 4.4618,-0.52331;
        4.5712,-0.52342; 4.6483,-0.52342; 4.7735,-0.52342; 4.8696,-0.52342;
        4.9948,-0.52348; 5.0577,-0.52348; 5.1981,-0.52354; 5.2759,-0.52354;
        5.4157,-0.52348; 5.4779,-0.52348; 5.6198,-0.52348; 5.6822,-0.52348;
        5.8102,-0.52342; 5.889,-0.52342; 5.9998,-0.52348; 6.0629,-0.52348;
        6.1888,-0.52342; 6.267,-0.52342; 6.4098,-0.52342; 6.4884,-0.52342;
        6.6299,-0.52348; 6.6928,-0.52348; 6.8495,-0.52342],
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
  Modelica.Blocks.Sources.CombiTimeTable V2(table=[0.069642,1; 0.19227,1;
        0.30289,0.99996; 0.42789,0.99998; 0.47472,0.99998; 0.60079,
        0.99998; 0.66325,0.99999; 0.77445,0.99999; 0.86835,0.99999;
        0.99378,0.99999; 1.0568,0.99997; 1.1978,0.99997; 1.259,0.99999;
        1.4168,0.99999; 1.4798,0.99998; 1.6068,0.99998; 1.6708,0.99997;
        1.7947,0.99997; 1.8735,0.99997; 1.9846,0.99997; 2.0476,0.99997;
        2.1735,0.99997; 2.2512,0.99998; 2.3765,0.99998; 2.4384,0.99999;
        2.5634,0.99999; 2.6419,0.99998; 2.7669,0.99998; 2.8445,0.99999;
        2.9713,0.99999; 3.0183,0.99999; 3.0968,0.99999; 3.2535,1; 3.3949,
        1; 3.4573,0.99996; 3.5987,0.99996; 3.6616,0.99999; 3.7869,0.99999;
        3.8639,1; 3.9899,1; 4.0528,0.99497; 4.179,0.99497; 4.2585,0.94482;
        4.3996,0.94482; 4.4618,0.94483; 4.5712,0.94483; 4.6483,0.94479;
        4.7735,0.94479; 4.8696,0.94478; 4.9948,0.94478; 5.0577,0.94479;
        5.1981,0.94479; 5.2759,0.94478; 5.4157,0.94478; 5.4779,0.94478;
        5.6198,0.94478; 5.6822,0.94478; 5.8102,0.94478; 5.889,0.94479;
        5.9998,0.94479; 6.0629,0.94477; 6.1888,0.94477; 6.267,0.94478;
        6.4098,0.94478; 6.4884,0.94478; 6.6299,0.94478; 6.6928,0.9448;
        6.8495,0.94477],                 extrapolation=Modelica.Blocks.Types.Extrapolation.LastTwoPoints)
    annotation (Placement(transformation(extent={{100,-120},{80,-100}})));
  Modelica.Blocks.Sources.CombiTimeTable A2(table=[0.069642,-0.52337;
        0.19227,-0.52337; 0.30289,-0.52337; 0.42789,-0.52337; 0.47472,-0.52337;
        0.60079,-0.52337; 0.66325,-0.52337; 0.77445,-0.52337; 0.86835,-0.52337;
        0.99378,-0.52337; 1.0568,-0.52337; 1.1978,-0.52337; 1.259,-0.52337;
        1.4168,-0.52337; 1.4798,-0.52337; 1.6068,-0.52337; 1.6708,-0.52337;
        1.7947,-0.52337; 1.8735,-0.52337; 1.9846,-0.52337; 2.0476,-0.52337;
        2.1735,-0.52337; 2.2512,-0.52337; 2.3765,-0.52337; 2.4384,-0.52337;
        2.5634,-0.52337; 2.6419,-0.52337; 2.7669,-0.52337; 2.8445,-0.52337;
        2.9713,-0.52337; 3.0183,-0.52337; 3.0968,-0.52337; 3.2535,-0.52337;
        3.3949,-0.52337; 3.4573,-0.52337; 3.5987,-0.52337; 3.6616,-0.52337;
        3.7869,-0.52337; 3.8639,-0.52337; 3.9899,-0.5236; 4.0528,-0.5236;
        4.179,-0.52308; 4.2585,-0.52308; 4.3996,-0.52331; 4.4618,-0.52331;
        4.5712,-0.52342; 4.6483,-0.52342; 4.7735,-0.52342; 4.8696,-0.52342;
        4.9948,-0.52348; 5.0577,-0.52348; 5.1981,-0.52354; 5.2759,-0.52354;
        5.4157,-0.52348; 5.4779,-0.52348; 5.6198,-0.52348; 5.6822,-0.52348;
        5.8102,-0.52342; 5.889,-0.52342; 5.9998,-0.52348; 6.0629,-0.52348;
        6.1888,-0.52342; 6.267,-0.52342; 6.4098,-0.52342; 6.4884,-0.52342;
        6.6299,-0.52348; 6.6928,-0.52348; 6.8495,-0.52342],
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
        0.069642,3.1364; 0.19227,3.1365; 0.30289,3.1331; 0.42789,3.1331;
        0.47472,3.1331; 0.60079,3.1331; 0.66325,3.1298; 0.77445,3.1298;
        0.86835,3.1331; 0.99378,3.1331; 1.0568,3.1298; 1.1978,3.1298;
        1.259,3.1364; 1.4168,3.1364; 1.4798,3.1364; 1.6068,3.1364; 1.6708,
        3.1298; 1.7947,3.1298; 1.8735,3.1331; 1.9846,3.1331; 2.0476,
        3.1298; 2.1735,3.1298; 2.2512,3.1298; 2.3765,3.1298; 2.4384,
        3.1298; 2.5634,3.1298; 2.6419,3.1331; 2.7669,3.1331; 2.8445,
        3.1331; 2.9713,3.1331; 3.0183,3.1298; 3.0968,3.1298; 3.2535,
        3.1364; 3.3949,3.1364; 3.4573,3.1298; 3.5987,3.1298; 3.6616,
        3.1331; 3.7869,3.1331; 3.8639,3.1364; 3.9899,3.1364; 4.0528,
        3.2463; 4.179,3.2463; 4.2585,3.2966; 4.3996,3.2966; 4.4618,3.2898;
        4.5712,3.2898; 4.6483,3.2898; 4.7735,3.2898; 4.8696,3.2898;
        4.9948,3.2898; 5.0577,3.2898; 5.1981,3.2898; 5.2759,3.2898;
        5.4157,3.2898; 5.4779,3.2898; 5.6198,3.2898; 5.6822,3.2898;
        5.8102,3.2898; 5.889,3.2898; 5.9998,3.2898; 6.0629,3.2898; 6.1888,
        3.2898; 6.267,3.2898; 6.4098,3.2898; 6.4884,3.2898; 6.6299,3.2898;
        6.6928,3.2865; 6.8495,3.2898],
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
  Modelica.Blocks.Sources.CombiTimeTable VOLTAGE(table=[0.069642,351.29;
        0.19227,351.29; 0.30289,351.27; 0.42789,351.28; 0.47472,351.28;
        0.60079,351.28; 0.66325,351.29; 0.77445,351.29; 0.86835,351.28;
        0.99378,351.28; 1.0568,351.28; 1.1978,351.28; 1.259,351.28;
        1.4168,351.28; 1.4798,351.28; 1.6068,351.28; 1.6708,351.28;
        1.7947,351.28; 1.8735,351.28; 1.9846,351.28; 2.0476,351.28;
        2.1735,351.28; 2.2512,351.28; 2.3765,351.28; 2.4384,351.29;
        2.5634,351.29; 2.6419,351.28; 2.7669,351.28; 2.8445,351.28;
        2.9713,351.28; 3.0183,351.29; 3.0968,351.29; 3.2535,351.29;
        3.3949,351.29; 3.4573,351.27; 3.5987,351.27; 3.6616,351.29;
        3.7869,351.29; 3.8639,351.29; 3.9899,351.29; 4.0528,349.52; 4.179,
        349.52; 4.2585,331.9; 4.3996,331.9; 4.4618,331.91; 4.5712,331.91;
        4.6483,331.89; 4.7735,331.89; 4.8696,331.89; 4.9948,331.89;
        5.0577,331.89; 5.1981,331.89; 5.2759,331.89; 5.4157,331.89;
        5.4779,331.89; 5.6198,331.89; 5.6822,331.89; 5.8102,331.89; 5.889,
        331.89; 5.9998,331.89; 6.0629,331.89; 6.1888,331.89; 6.267,331.89;
        6.4098,331.89; 6.4884,331.89; 6.6299,331.89; 6.6928,331.9; 6.8495,
        331.89],        extrapolation=Modelica.Blocks.Types.Extrapolation.LastTwoPoints)
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
<p> Run the simulation for t=6.85 seconds. </p>
</html>"));
end VoltageVariation_350_to_330_V;
