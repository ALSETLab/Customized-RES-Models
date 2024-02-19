within OpenRESV.RES_Model_vs_PHIL_Inverter_Examples.VoltVarMode;
model AlsetLabInverter_Volt_Var_Control_343V_361V
  extends Modelica.Icons.Example;
  OpenRESV.Electrical.Renewables.PSSE.PV pV(
    V_b=352.01,
    P_0(displayUnit="W") = 2850.55/3,
    Q_0(displayUnit="V.A") = 99.49/3,
    angle_0=0,
    QFunctionality=2,
    redeclare OpenRESV.Electrical.Renewables.PSSE.InverterInterface.REGCA1
      RenewableGenerator,
    redeclare
      OpenRESV.Electrical.Renewables.PSSE.ElectricalController.REECB1
      RenewableController(
      Kqp=0.01,
      Kqi=0.2,
      Kvp=1,
      Kvi=0),
    redeclare OpenRESV.Electrical.Renewables.PSSE.PlantController.REPCA1
      PlantController)
    annotation (Placement(transformation(extent={{-70,20},{-50,40}})));
  OpenRESV.Electrical.Buses.Bus InverterBus(V_b=352.01, angle_0=0)
    annotation (Placement(transformation(extent={{-40,20},{-20,40}})));
  OpenRESV.Electrical.Branches.PSSE.TwoWindingTransformer twoWindingTransformer(
    R=0.0,
    X=0.034,
    G=0,
    B=0,
    VNOM1(displayUnit="V") = 352.01,
    VB1(displayUnit="V") = 600,
    VNOM2(displayUnit="V") = 140.80,
    VB2(displayUnit="V") = 240)
    annotation (Placement(transformation(extent={{-10,20},{10,40}})));
  OpenRESV.Electrical.Buses.Bus GridBus(V_b=281.61)
    annotation (Placement(transformation(extent={{20,20},{40,40}})));
  OpenRESV.Electrical.Machines.PSSE.GENCLS INF(
    V_b=281.61,
    P_0(displayUnit="W"),
    angle_0=-0.5246459731495,
    X_d=0) annotation (Placement(transformation(extent={{70,20},{50,40}})));
  OpenRESV.Electrical.Renewables.PSSE.PV pV1(
    V_b=352.01,
    P_0(displayUnit="W") = 2850.55/3,
    Q_0(displayUnit="V.A") = 99.49/3,
    v_0=0.9854,
    angle_0=-0.5235987755983,
    QFunctionality=1,
    redeclare OpenRESV.Electrical.Renewables.PSSE.InverterInterface.REGCA1
      RenewableGenerator(Lvplsw=false),
    redeclare
      OpenRESV.Electrical.Renewables.PSSE.ElectricalController.REECB1_modified
      RenewableController(
      dbd1=-0.018,
      dbd2=0.021,
      Kqv=0.6,
      Iqh1=0.02,
      Iql1=-0.0148,
      vref0=0,
      dPmax=0.0003,
      dPmin=-0.0002),
    redeclare OpenRESV.Electrical.Renewables.PSSE.PlantController.REPCA1
      PlantController)
    annotation (Placement(transformation(extent={{-94,-40},{-74,-20}})));
  OpenRESV.Electrical.Buses.Bus InverterBus1(
    V_b=352.01,
    v_0=0.9839,
    angle_0=-0.5235987755983)
    annotation (Placement(transformation(extent={{-76,-40},{-56,-20}})));
  OpenRESV.Electrical.Branches.PSSE.TwoWindingTransformer twoWindingTransformer1(
    R=0,
    X=0.034,
    G=0,
    B=0,
    VNOM1(displayUnit="V") = 352.01,
    VB1(displayUnit="V") = 600,
    VNOM2(displayUnit="V") = 140.80,
    VB2(displayUnit="V") = 240)
    annotation (Placement(transformation(extent={{-20,-40},{0,-20}})));
  OpenRESV.Electrical.Buses.Bus GridBus1(V_b=281.61)
    annotation (Placement(transformation(extent={{-4,-40},{16,-20}})));
  OpenRESV.Electrical.Sources.VoltageSourceReImInput voltageSourceReImInput(V_b=
        281.61)
    annotation (Placement(transformation(extent={{66,-40},{46,-20}})));
  inner OpenRESV.Electrical.SystemBase SysData(fn=60, S_b(displayUnit="V.A")
       = 30000)
    annotation (Placement(transformation(extent={{-88,74},{-48,94}})));
  OpenRESV.Electrical.Branches.PwLine pwLine(
    R=0,
    X=0.000000001,
    G=0,
    B=0) annotation (Placement(transformation(extent={{10,-40},{30,-20}})));
  OpenRESV.Electrical.Buses.Bus GridBus2(V_b=281.61, angle_0=-0.53407075111026)
    annotation (Placement(transformation(extent={{26,-40},{46,-20}})));
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
    annotation (Placement(transformation(extent={{-58,-40},{-38,-20}})));
  OpenRESV.Electrical.Buses.Bus InverterBus2(
    V_b=352.01,
    v_0=0.9839,
    angle_0=-0.5235987755983)
    annotation (Placement(transformation(extent={{-40,-40},{-20,-20}})));
  Modelica.Blocks.Math.Atan angle_high
    annotation (Placement(transformation(extent={{40,-80},{60,-60}})));
  Modelica.Blocks.Sources.RealExpression current_high_side1(y=pwLine1.is.im
        /pwLine1.is.re)
    annotation (Placement(transformation(extent={{0,-80},{20,-60}})));
  Modelica.Blocks.Sources.Constant r(k=0.944938967)
    annotation (Placement(transformation(extent={{60,60},{80,80}})));
  Modelica.Blocks.Sources.CombiTimeTable VM(table=[0.053123,346.9182298;
        0.17773,346.9182298; 0.257001,346.9240033; 0.380201,346.9240033;
        0.426588,346.9066827; 0.561962,346.9066827; 0.621839,346.9182298;
        0.682443,346.9182298; 0.818895,346.9182298; 0.881614,346.9182298;
        1.022585,346.9182298; 1.147102,346.9182298; 1.207116,346.9124562;
        1.268273,346.9124562; 1.389714,346.9124562; 1.436449,346.9124562;
        1.575531,346.9124562; 1.637582,346.9240033; 1.7623,346.9240033;
        1.83951,346.9009092; 1.949185,346.9009092; 2.026916,346.9009092;
        2.15236,346.9009092; 2.230221,346.9066827; 2.278131,346.9066827;
        2.385887,346.9066827; 2.446209,346.9066827; 2.595931,346.9066827;
        2.641486,346.9182298; 2.775575,346.9182298; 2.837601,346.9066827;
        2.961117,346.9066827; 3.039811,346.9066827; 3.163629,346.9066827;
        3.239631,346.9124562; 3.360377,346.9124562; 3.421155,346.9124562;
        3.563148,346.9124562; 3.625793,346.9182298; 3.749571,346.9182298;
        3.811601,346.9066827; 3.889068,346.9066827; 4.030219,346.9182298;
        4.078241,346.9182298; 4.186079,346.9182298; 4.247059,346.9182298;
        4.388061,346.9182298; 4.449873,346.9066827; 4.599923,346.9066827;
        4.660124,346.9182298; 4.779791,346.9182298; 4.855692,346.9124562;
        4.979655,346.9124562; 5.042722,346.9182298; 5.184094,346.9182298;
        5.245565,346.9124562; 5.385996,346.9124562; 5.44603,346.9124562;
        5.617014,346.9124562; 5.679522,346.9066827; 5.820445,346.9066827;
        5.867386,346.9066827; 5.975912,346.9066827; 6.067971,346.9182298;
        6.175896,346.9182298; 6.23818,346.9182298; 6.363556,346.9182298;
        6.424382,346.9009092; 6.545653,346.9009092; 6.650659,346.9066827;
        6.785247,346.9066827; 6.845545,346.9124562; 6.956601,346.9124562;
        7.049742,346.9009092; 7.17128,346.9009092; 7.234036,346.9066827;
        7.373844,346.9066827; 7.434878,346.9066827; 7.588774,346.9066827;
        7.666832,346.9124562; 7.82186,346.9124562; 7.947452,346.9182298;
        8.041053,346.9066827; 8.182714,346.9066827; 8.245787,346.9066827;
        8.387312,346.9066827; 8.450337,346.9066827; 8.623814,346.9066827;
        8.747813,346.9124562; 8.841029,346.9124562; 8.966886,346.9124562;
        9.057213,346.9066827; 9.177676,346.9066827; 9.236857,346.9124562;
        9.373149,346.9124562; 9.435809,346.9182298; 9.560693,346.9182298;
        9.654746,346.9066827; 9.794658,346.9066827; 9.87059,346.9066827;
        9.978732,346.9066827; 10.05608,346.9124562; 10.212396,346.9124562;
        10.289602,346.9124562; 10.398289,346.9124562; 10.460445,346.9124562;
        10.601229,346.9124562; 10.663607,346.9182298; 10.786379,346.9182298;
        10.846385,346.9066827; 10.965955,346.9066827; 11.042625,346.9182298;
        11.183477,346.9182298; 11.245907,346.9124562; 11.388063,346.9124562;
        11.464257,346.9009092; 11.601143,346.9009092; 11.663744,346.9124562;
        11.786969,346.9124562; 11.847932,346.9066827; 11.971735,346.9066827;
        12.066004,346.9066827; 12.206586,346.9066827; 12.285739,346.9182298;
        12.410786,346.9009092; 12.472213,346.9009092; 12.595086,346.9009092;
        12.670361,346.9066827; 12.790733,346.9066827; 12.866127,346.9240033;
        12.988614,346.9240033; 13.082993,346.9066827; 13.207901,346.9124562;
        13.286044,346.9124562; 13.411616,346.9124562; 13.471131,346.9124562;
        13.598303,346.9124562; 13.675301,346.9124562; 13.830432,346.9124562;
        13.878428,346.9124562; 13.987557,346.9240033; 14.066134,346.9240033;
        14.206283,346.9240033; 14.283967,346.9124562; 14.406227,346.9066827;
        14.468255,346.9066827; 14.592814,346.9066827; 14.652772,346.9182298;
        14.803787,346.9182298; 14.878818,346.9124562; 15.000576,346.9182298;
        15.077988,346.9182298; 15.219048,346.9182298; 15.282515,346.9182298;
        15.389248,346.9066827; 15.451277,346.9066827; 15.574373,346.9066827;
        15.637185,346.9124562; 15.776438,346.9124562; 15.837167,346.9124562;
        15.962069,346.9124562; 16.041818,346.9182298; 16.182476,346.9182298;
        16.244654,346.9124562; 16.369801,346.9124562; 16.432837,346.9009092;
        16.573512,346.9009092; 16.633962,346.9124562; 16.78496,346.9124562;
        16.8455,346.9124562; 16.968586,346.9124562; 17.029602,346.9124562;
        17.154738,346.9124562; 17.232485,346.9066827; 17.358654,346.9066827;
        17.418759,346.9124562; 17.480376,346.9124562; 17.603812,346.9182298;
        17.681528,346.9182298; 17.821562,346.9066827; 17.947695,346.9066827;
        18.026705,346.9124562; 18.152416,346.9124562; 18.229717,346.9124562;
        18.354995,346.9124562; 18.417475,346.9182298; 18.480205,346.9182298;
        18.589617,346.9066827; 18.649683,346.9066827; 18.799825,346.9066827;
        18.859573,346.9240033; 18.981788,346.9240033; 19.043019,363.4304474;
        19.183978,363.4304474; 19.246213,364.3484344; 19.385288,364.3484344;
        19.444529,364.3484344; 19.583247,364.3484344; 19.64455,364.3484344;
        19.800906,364.3484344; 19.863029,364.3484344; 19.972391,364.3484344;
        20.052174,364.3080199; 20.207905,364.3080199; 20.269721,364.0770798;
        20.377361,364.0770798; 20.440531,363.8865542; 20.563975,363.8865542;
        20.624741,363.7595371; 20.774179,363.7595371; 20.833883,363.6267465;
        20.953688,363.6267465; 21.01537,363.505503; 21.076692,363.505503;
        21.201475,363.3958064; 21.264596,363.3958064; 21.386893,363.3958064;
        21.446679,363.2861099; 21.567824,363.2861099; 21.629299,363.1937338;
        21.770016,363.1937338; 21.847722,363.1129048; 21.957104,363.1129048;
        22.020502,363.0609433; 22.081087,363.0609433; 22.207356,363.0609433;
        22.270423,363.0609433; 22.381646,363.0609433; 22.426886,363.0551698;
        22.553538,363.0551698; 22.613913,363.0667168; 22.689378,363.0667168;
        22.825338,363.0493963; 22.947506,363.0493963; 22.993869,363.0378493;
        23.054664,363.0378493; 23.179792,363.0378493; 23.258238,363.0493963;
        23.366391,363.0493963; 23.426761,363.0436228; 23.549492,363.0436228;
        23.610965,363.0493963; 23.673608,363.0493963; 23.811733,363.0493963;
        23.889436,363.0378493; 24.011181,363.0493963; 24.0732,363.0493963;
        24.200245,363.0493963; 24.263849,363.0436228; 24.372007,363.0436228;
        24.419243,363.0609433; 24.54634,363.0609433; 24.605359,363.0551698;
        24.665378,363.0551698; 24.829576,363.0551698; 24.964038,363.0436228;
        25.024742,363.0551698; 25.148525,363.0551698; 25.257735,363.0551698;
        25.381787,363.0551698; 25.443254,363.0551698; 25.581241,363.0551698;
        25.656764,363.0551698; 25.780979,363.0551698; 25.85774,363.0609433;
        25.967254,363.0609433; 26.013878,363.0609433; 26.152047,363.0609433;
        26.214084,363.0551698; 26.351753,363.0551698; 26.431238,363.0667168;
        26.477897,363.0667168; 26.616765,363.0551698; 26.661797,363.0551698;
        26.79631,363.0551698; 26.870745,363.0609433; 26.976781,363.0609433;
        27.039256,363.0551698; 27.163342,363.0551698; 27.210402,363.0667168;
        27.3504,363.0667168; 27.427997,363.0551698; 27.551335,363.0551698;
        27.629614,363.0551698; 27.753407,363.0551698; 27.84484,363.0609433;
        27.969617,363.0609433; 28.033046,363.0667168; 28.173546,363.0667168;
        28.236344,363.0609433; 28.408022,363.0609433; 28.455,363.0609433;
        28.593675,363.0609433; 28.65408,363.0551698; 28.803844,363.0551698;
        28.878021,363.0493963; 28.9998,363.0551698; 29.091872,363.0551698;
        29.185777,363.0551698; 29.248806,363.0551698; 29.419815,363.0551698;
        29.480805,363.0493963; 29.603646,363.0609433; 29.663665,363.0609433;
        29.786792,363.0609433; 29.877824,363.0551698; 29.986534,363.0609433;
        30.064584,363.0609433; 30.189621,363.0609433; 30.282673,363.0667168;
        30.436508,363.0551698; 30.561803,363.0551698; 30.623046,363.0493963;
        30.682914,363.0493963; 30.847831,363.0493963; 30.95327,363.0493963;
        31.014264,363.0667168; 31.152775,363.0667168; 31.214368,363.0551698;
        31.356463,363.0551698; 31.43322,363.0551698; 31.555695,363.0551698;
        31.631466,363.0609433; 31.756528,363.0609433; 31.863868,363.0493963;
        31.971719,363.0493963; 32.017598,363.0609433; 32.079678,363.0609433;
        32.18855,363.0609433; 32.234263,363.0609433; 32.39406,363.0609433;
        32.456437,363.0493963; 32.597843,363.0493963; 32.658221,363.0551698;
        32.777331,363.0551698; 32.867217,363.0609433; 32.972376,363.0609433;
        33.033202,363.0493963; 33.155971,363.0493963; 33.218657,363.0609433;
        33.357374,363.0609433; 33.435707,363.0609433; 33.558681,363.0609433;
        33.621549,363.0609433; 33.683104,363.0609433; 33.835744,363.0609433;
        33.959693,363.0609433; 34.022625,363.0551698; 34.162718,363.0551698;
        34.225544,363.0551698; 34.380258,363.0551698; 34.474757,363.0609433;
        34.61701,363.0609433; 34.67703,363.0609433; 34.85731,363.0551698;
        34.961638,363.0551698; 35.023606,363.0609433; 35.147311,363.0609433;
        35.209335,363.0609433; 35.287351,363.0609433; 35.396219,363.0609433;
        35.456675,363.0609433; 35.581691,363.0609433; 35.657789,363.0609433;
        35.780529,363.0609433; 35.858511,363.0667168; 35.967632,363.0667168;
        36.027768,363.0493963; 36.152648,363.0493963; 36.215744,363.0609433;
        36.293317,363.0609433; 36.401441,363.0667168; 36.463118,363.0667168;
        36.571491,363.0667168; 36.634582,363.0609433; 36.755704,363.0609433;
        36.844599,363.0551698; 36.964506,363.0551698; 37.024835,363.0609433;
        37.149706,363.0609433; 37.212726,363.0667168; 37.274757,363.0667168;
        37.411599,363.0436228; 37.549374,363.0436228; 37.609942,363.0667168;
        37.671549,363.0667168; 37.812938,363.0667168; 37.876096,363.0609433;
        37.984756,363.0609433; 38.047469,363.0493963; 38.157708,363.0493963;
        38.204623,363.0551698; 38.266948,363.0551698; 38.391036,363.0551698;
        38.453784,363.0609433; 38.591108,363.0609433; 38.653979,363.0667168;
        38.788028,363.0667168; 38.863052,362.6452511; 38.983921,362.6452511;
        39.04263,359.210017; 39.152097,359.210017; 39.214117,359.2157905;
        39.276134,359.2157905; 39.417182,359.2157905; 39.476198,359.2157905;
        39.599768,359.210017; 39.673765,359.210017; 39.795349,359.210017;
        39.872373,359.210017; 39.996801,359.210017; 40.058169,359.2157905])
    annotation (Placement(transformation(extent={{98,-34},{90,-26}})));
  Modelica.Blocks.Math.Gain gain1(k=0.4*cos(-3.1415/6)/140.80)
    annotation (Placement(transformation(extent={{80,-22},{76,-18}})));
  Modelica.Blocks.Math.Gain gain2(k=0.4*sin(-3.1415/6)/140.80)
    annotation (Placement(transformation(extent={{80,-42},{76,-38}})));
  Modelica.Blocks.Sources.CombiTimeTable Q_experiment(table=[0.053123,
        100.18; 0.17773,100.18; 0.257001,100.1; 0.380201,100.1; 0.426588,
        100.35; 0.561962,100.35; 0.621839,100.31; 0.682443,100.31; 0.818895,
        100.9; 0.881614,100.9; 1.022585,100.94; 1.147102,100.94; 1.207116,
        100.45; 1.268273,100.45; 1.389714,100.45; 1.436449,99.43; 1.575531,
        99.43; 1.637582,100.28; 1.7623,100.28; 1.83951,100.66; 1.949185,
        100.66; 2.026916,98.69; 2.15236,98.69; 2.230221,99.86; 2.278131,
        99.86; 2.385887,99.95; 2.446209,99.95; 2.595931,99.95; 2.641486,102;
        2.775575,102; 2.837601,100.05; 2.961117,100.05; 3.039811,100.11;
        3.163629,100.11; 3.239631,98.64; 3.360377,98.64; 3.421155,100.36;
        3.563148,100.36; 3.625793,101.33; 3.749571,101.33; 3.811601,99.56;
        3.889068,99.56; 4.030219,99.31; 4.078241,99.31; 4.186079,100.79;
        4.247059,100.79; 4.388061,100.79; 4.449873,98.17; 4.599923,98.17;
        4.660124,101.4; 4.779791,101.4; 4.855692,100.34; 4.979655,100.34;
        5.042722,99.8; 5.184094,99.8; 5.245565,100.7; 5.385996,100.7;
        5.44603,99.58; 5.617014,99.58; 5.679522,100.56; 5.820445,98.78;
        5.867386,98.78; 5.975912,98.78; 6.067971,98.91; 6.175896,98.91;
        6.23818,99.38; 6.363556,99.38; 6.424382,100.45; 6.545653,100.45;
        6.650659,97.8; 6.785247,97.8; 6.845545,99.16; 6.956601,99.16;
        7.049742,98.85; 7.17128,98.85; 7.234036,99.27; 7.373844,99.27;
        7.434878,101.63; 7.588774,101.63; 7.666832,100.23; 7.82186,100.23;
        7.947452,99.34; 8.041053,99.03; 8.182714,99.03; 8.245787,99.78;
        8.387312,99.78; 8.450337,99.67; 8.623814,99.67; 8.747813,99.31;
        8.841029,99.96; 8.966886,99.96; 9.057213,100.1; 9.177676,100.1;
        9.236857,101; 9.373149,101; 9.435809,100.16; 9.560693,100.16;
        9.654746,100.51; 9.794658,100.51; 9.87059,98.48; 9.978732,98.48;
        10.05608,100.41; 10.212396,100.41; 10.289602,100.34; 10.398289,
        100.35; 10.460445,100.35; 10.601229,100.35; 10.663607,99.31;
        10.786379,99.31; 10.846385,100.9; 10.965955,100.9; 11.042625,99.73;
        11.183477,99.73; 11.245907,99; 11.388063,99; 11.464257,100.37;
        11.601143,100.37; 11.663744,100.71; 11.786969,100.71; 11.847932,
        102.06; 11.971735,102.06; 12.066004,100.41; 12.206586,100.41;
        12.285739,99.98; 12.410786,101; 12.472213,101; 12.595086,101;
        12.670361,99.55; 12.790733,99.55; 12.866127,99.88; 12.988614,99.88;
        13.082993,100.07; 13.207901,99.83; 13.286044,99.83; 13.411616,99.44;
        13.471131,99.44; 13.598303,99.44; 13.675301,100.75; 13.830432,99.18;
        13.878428,99.18; 13.987557,101.2; 14.066134,101.2; 14.206283,101.2;
        14.283967,98.64; 14.406227,101.93; 14.468255,101.93; 14.592814,
        101.93; 14.652772,100.34; 14.803787,100.34; 14.878818,100.35;
        15.000576,97.9; 15.077988,97.9; 15.219048,99.82; 15.282515,99.82;
        15.389248,99.7; 15.451277,99.7; 15.574373,99.7; 15.637185,100.57;
        15.776438,100.57; 15.837167,99.56; 15.962069,99.56; 16.041818,99.47;
        16.182476,99.47; 16.244654,101.45; 16.369801,101.45; 16.432837,99.1;
        16.573512,99.1; 16.633962,99.53; 16.78496,99.53; 16.8455,99.27;
        16.968586,99.27; 17.029602,100.81; 17.154738,100.81; 17.232485,99.9;
        17.358654,99.9; 17.418759,99.9; 17.480376,99.9; 17.603812,99.73;
        17.681528,99.73; 17.821562,100.42; 17.947695,100.42; 18.026705,
        100.47; 18.152416,100.47; 18.229717,100.77; 18.354995,100.77;
        18.417475,99.94; 18.480205,99.94; 18.589617,100.62; 18.649683,
        100.62; 18.799825,100.62; 18.859573,101.77; 18.981788,101.77;
        19.043019,35.26; 19.183978,35.26; 19.246213,46.94; 19.385288,46.94;
        19.444529,50.88; 19.583247,50.88; 19.64455,48.2; 19.800906,48.2;
        19.863029,48.07; 19.972391,48.07; 20.052174,-1.37; 20.207905,-1.37;
        20.269721,-239.57; 20.377361,-239.57; 20.440531,-420.76; 20.563975,
        -420.76; 20.624741,-563.83; 20.774179,-563.83; 20.833883,-701.91;
        20.953688,-701.91; 21.01537,-822.7; 21.076692,-822.7; 21.201475,-934.92;
        21.264596,-934.92; 21.386893,-934.92; 21.446679,-1034.7; 21.567824,
        -1034.7; 21.629299,-1132.39; 21.770016,-1132.39; 21.847722,-1213.67;
        21.957104,-1213.67; 22.020502,-1262.75; 22.081087,-1262.75;
        22.207356,-1262.45; 22.270423,-1262.45; 22.381646,-1262.45;
        22.426886,-1265.94; 22.553538,-1265.94; 22.613913,-1266.91;
        22.689378,-1266.91; 22.825338,-1269.44; 22.947506,-1269.44;
        22.993869,-1270.13; 23.054664,-1270.13; 23.179792,-1270.13;
        23.258238,-1269.68; 23.366391,-1269.68; 23.426761,-1269.83;
        23.549492,-1269.83; 23.610965,-1271.43; 23.673608,-1271.43;
        23.811733,-1271.43; 23.889436,-1273.39; 24.011181,-1269.25; 24.0732,
        -1269.25; 24.200245,-1269.25; 24.263849,-1269.27; 24.372007,-1269.27;
        24.419243,-1265.35; 24.54634,-1265.35; 24.605359,-1266.66;
        24.665378,-1266.66; 24.829576,-1266.66; 24.964038,-1264.49;
        25.024742,-1271.3; 25.148525,-1271.3; 25.257735,-1266.36; 25.381787,
        -1266.36; 25.443254,-1264.91; 25.581241,-1264.91; 25.656764,-1269.47;
        25.780979,-1269.47; 25.85774,-1262.85; 25.967254,-1262.85;
        26.013878,-1267.26; 26.152047,-1267.26; 26.214084,-1269.11;
        26.351753,-1269.11; 26.431238,-1270.73; 26.477897,-1270.73;
        26.616765,-1274.68; 26.661797,-1274.68; 26.79631,-1274.68;
        26.870745,-1272.07; 26.976781,-1272.07; 27.039256,-1270.37;
        27.163342,-1270.37; 27.210402,-1273.55; 27.3504,-1273.55; 27.427997,
        -1276.83; 27.551335,-1276.83; 27.629614,-1270.48; 27.753407,-1270.48;
        27.84484,-1269.98; 27.969617,-1269.98; 28.033046,-1274.83;
        28.173546,-1274.83; 28.236344,-1268.77; 28.408022,-1268.77; 28.455,
        -1266.35; 28.593675,-1266.35; 28.65408,-1272.8; 28.803844,-1272.8;
        28.878021,-1269.44; 28.9998,-1266.49; 29.091872,-1266.49; 29.185777,
        -1270.37; 29.248806,-1270.37; 29.419815,-1270.37; 29.480805,-1271.28;
        29.603646,-1267.44; 29.663665,-1267.44; 29.786792,-1267.44;
        29.877824,-1267.42; 29.986534,-1268.46; 30.064584,-1268.46;
        30.189621,-1268.46; 30.282673,-1267.33; 30.436508,-1268.52;
        30.561803,-1268.52; 30.623046,-1275.41; 30.682914,-1275.41;
        30.847831,-1276.83; 30.95327,-1276.83; 31.014264,-1268.73;
        31.152775,-1268.73; 31.214368,-1270.12; 31.356463,-1270.12;
        31.43322,-1270.44; 31.555695,-1270.44; 31.631466,-1267.15;
        31.756528,-1267.15; 31.863868,-1269.19; 31.971719,-1269.19;
        32.017598,-1270.64; 32.079678,-1270.64; 32.18855,-1271.45;
        32.234263,-1271.45; 32.39406,-1271.45; 32.456437,-1272.28;
        32.597843,-1272.28; 32.658221,-1274.21; 32.777331,-1274.21;
        32.867217,-1268.33; 32.972376,-1268.33; 33.033202,-1273.18;
        33.155971,-1273.18; 33.218657,-1265.49; 33.357374,-1265.49;
        33.435707,-1267.64; 33.558681,-1267.64; 33.621549,-1266.78;
        33.683104,-1266.78; 33.835744,-1266.86; 33.959693,-1266.86;
        34.022625,-1270.5; 34.162718,-1270.5; 34.225544,-1270.52; 34.380258,
        -1270.52; 34.474757,-1272.47; 34.61701,-1272.47; 34.67703,-1268.88;
        34.85731,-1272.48; 34.961638,-1272.48; 35.023606,-1269.69;
        35.147311,-1269.69; 35.209335,-1267.04; 35.287351,-1267.04;
        35.396219,-1268.52; 35.456675,-1268.52; 35.581691,-1268.52;
        35.657789,-1273.88; 35.780529,-1273.88; 35.858511,-1267.49;
        35.967632,-1267.49; 36.027768,-1273.03; 36.152648,-1273.03;
        36.215744,-1271.04; 36.293317,-1271.04; 36.401441,-1273.88;
        36.463118,-1273.88; 36.571491,-1273.88; 36.634582,-1266.36;
        36.755704,-1266.36; 36.844599,-1267.54; 36.964506,-1267.54;
        37.024835,-1268.62; 37.149706,-1268.62; 37.212726,-1270.18;
        37.274757,-1270.18; 37.411599,-1270.63; 37.549374,-1270.63;
        37.609942,-1266.71; 37.671549,-1266.71; 37.812938,-1266.71;
        37.876096,-1270.62; 37.984756,-1270.62; 38.047469,-1271.34;
        38.157708,-1271.34; 38.204623,-1267.99; 38.266948,-1267.99;
        38.391036,-1267.99; 38.453784,-1273.71; 38.591108,-1273.71;
        38.653979,-1269.84; 38.788028,-1269.84; 38.863052,-696.23;
        38.983921,-696.23; 39.04263,213.73; 39.152097,213.73; 39.214117,
        200.28; 39.276134,200.28; 39.417182,200.45; 39.476198,200.45;
        39.599768,200.35; 39.673765,200.35; 39.795349,200.35; 39.872373,
        200.27; 39.996801,200.27; 40.058169,200.23])
    annotation (Placement(transformation(extent={{72,-74},{80,-66}})));
  Modelica.Blocks.Math.Gain Q_experiment_per_phase(k=1/3)
    annotation (Placement(transformation(extent={{88,-72},{92,-68}})));
equation
  connect(pV.pwPin, InverterBus.p)
    annotation (Line(points={{-50,30},{-30,30}}, color={0,0,255}));
  connect(InverterBus.p, twoWindingTransformer.p)
    annotation (Line(points={{-30,30},{-11,30}}, color={0,0,255}));
  connect(twoWindingTransformer.n, GridBus.p)
    annotation (Line(points={{11,30},{30,30}}, color={0,0,255}));
  connect(GridBus.p, INF.p)
    annotation (Line(points={{30,30},{50,30}}, color={0,0,255}));
  connect(pV1.pwPin, InverterBus1.p)
    annotation (Line(points={{-74,-30},{-66,-30}}, color={0,0,255}));
  connect(twoWindingTransformer1.n, GridBus1.p)
    annotation (Line(points={{1,-30},{6,-30}},   color={0,0,255}));
  connect(GridBus1.p, pwLine.p)
    annotation (Line(points={{6,-30},{11,-30}}, color={0,0,255}));
  connect(pwLine.n, GridBus2.p)
    annotation (Line(points={{29,-30},{36,-30}}, color={0,0,255}));
  connect(GridBus2.p, voltageSourceReImInput.p)
    annotation (Line(points={{36,-30},{45,-30}}, color={0,0,255}));
  connect(current_low_side.y, angle_low.u)
    annotation (Line(points={{-59,-70},{-42,-70}}, color={0,0,127}));
  connect(InverterBus2.p, twoWindingTransformer1.p)
    annotation (Line(points={{-30,-30},{-21,-30}}, color={0,0,255}));
  connect(pwLine1.n, InverterBus2.p)
    annotation (Line(points={{-39,-30},{-30,-30}}, color={0,0,255}));
  connect(pwLine1.p, InverterBus1.p)
    annotation (Line(points={{-57,-30},{-66,-30}}, color={0,0,255}));
  connect(current_high_side1.y, angle_high.u)
    annotation (Line(points={{21,-70},{38,-70}}, color={0,0,127}));
  connect(gain1.u, VM.y[1])
    annotation (Line(points={{80.4,-20},{86,-20},{86,-30},{89.6,-30}},
                                                     color={0,0,127}));
  connect(gain1.y, voltageSourceReImInput.vRe) annotation (Line(points={{
          75.8,-20},{74,-20},{74,-26},{68,-26}}, color={0,0,127}));
  connect(gain2.y, voltageSourceReImInput.vIm) annotation (Line(points={{
          75.8,-40},{74,-40},{74,-34},{68,-34}}, color={0,0,127}));
  connect(Q_experiment_per_phase.u, Q_experiment.y[1])
    annotation (Line(points={{87.6,-70},{80.4,-70}}, color={0,0,127}));
  connect(gain1.u, gain2.u) annotation (Line(points={{80.4,-20},{82,-20},{
          82,-40},{80.4,-40}}, color={0,0,127}));
  annotation (Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(
        coordinateSystem(preserveAspectRatio=false)),
    experiment(
      StopTime=30,
      __Dymola_NumberOfIntervals=1000,
      __Dymola_Algorithm="Dassl"));
end AlsetLabInverter_Volt_Var_Control_343V_361V;
