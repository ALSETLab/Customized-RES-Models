within OpenRESV.RES_Model_vs_PHIL_Inverter_Examples.BaseClasses;
partial model TGTestBase "Base class for tests involving turbine governors."
  OpenRESV.Electrical.Loads.PSAT.PQ pwLoadPQ1(
    angle_0=0,
    P_0=80000,
    Q_0=60000,
    v_0=1) annotation (Placement(transformation(
        origin={120.071,10},
        extent={{-5.92912,-6.00002},{5.92911,6.00001}})));
  OpenRESV.Electrical.Branches.PwLine pwLineFault(
    B=0.001/2,
    G=0,
    R=0.01,
    X=0.1,
    t1=8,
    t2=8.1) annotation (Placement(transformation(
        origin={86,30},
        extent={{-10,-10},{10,10}})));
  OpenRESV.Electrical.Branches.PwLine pwLine3(
    B=0.001/2,
    G=0,
    R=0.01,
    X=0.1) annotation (Placement(transformation(
        origin={86,10},
        extent={{-10,-10},{10,10}})));
  OpenRESV.Electrical.Branches.PwLine pwLine4(
    B=0.001/2,
    G=0,
    R=0.01,
    X=0.1) annotation (Placement(transformation(
        origin={86,-10},
        extent={{-10,-10},{10,10}})));
  OpenRESV.Electrical.Loads.PSAT.PQ pwLoadPQ2(
    angle_0=0,
    P_0=80000,
    Q_0=60000,
    v_0=1) annotation (Placement(transformation(
        origin={118,-26},
        extent={{-6,-6},{6,6}})));
  OpenRESV.Electrical.Branches.PwLine pwLine1(
    B=0.001/2,
    G=0,
    R=0.01,
    X=0.1,
    displayPF=false) annotation (Placement(transformation(
        origin={50,10},
        extent={{-10.0,-10.0},{10.0,10.0}})));
  OpenRESV.Electrical.Branches.PwLine pwLine2(
    B=0.001/2,
    G=0,
    R=0.01,
    X=0.1) annotation (Placement(transformation(
        origin={50,-10},
        extent={{-10.0,-10.0},{10.0,10.0}})));
  OpenRESV.Electrical.Events.PwFaultPQ pwFault(
    X=0.001,
    t1=3,
    t2=3.1,
    R=10) annotation (Placement(transformation(extent={{96,-36},{84,-24}})));
  parameter Real p0=0.160352698692006 "Power flow, node active power";
  inner OpenRESV.Electrical.SystemBase SysData
    annotation (Placement(transformation(extent={{-100,80},{-60,100}})));

  OpenRESV.Electrical.Buses.Bus bus1 annotation (Placement(transformation(
          origin={32,0}, extent={{-10,-10},{10,10}})));
  OpenRESV.Electrical.Buses.Bus bus2 annotation (Placement(transformation(
          origin={68,0}, extent={{-10,-10},{10,10}})));
  OpenRESV.Electrical.Buses.Bus bus3 annotation (Placement(transformation(
          origin={106,-10}, extent={{-10,-10},{10,10}})));
  OpenRESV.Electrical.Buses.Bus bus4 annotation (Placement(transformation(
          origin={106,20}, extent={{-10,-10},{10,10}})));
equation

  connect(gen.vf0, gen.vf) annotation (Line(points={{-16,22},{-16,28},{-32,28},{-32,10},{-24,10}}, color={0,0,127}));
  connect(gen.p, bus1.p)
    annotation (Line(points={{20,0},{32,0}}, color={0,0,255}));
  connect(bus1.p, pwLine1.p)
    annotation (Line(points={{32,0},{36,0},{36,10},{41,10}}, color={0,0,255}));
  connect(bus1.p, pwLine2.p) annotation (Line(points={{32,0},{36,0},{36,-10},{41,
          -10}}, color={0,0,255}));
  connect(bus2.p, pwLine1.n)
    annotation (Line(points={{68,0},{64,0},{64,10},{59,10}}, color={0,0,255}));
  connect(bus2.p, pwLine2.n) annotation (Line(points={{68,0},{64,0},{64,-10},{59,
          -10}}, color={0,0,255}));
  connect(bus2.p, pwLine3.p)
    annotation (Line(points={{68,0},{72,0},{72,10},{77,10}}, color={0,0,255}));
  connect(bus2.p, pwLine4.p) annotation (Line(points={{68,0},{72,0},{72,-10},{77,
          -10}}, color={0,0,255}));
  connect(pwLine4.n, bus3.p)
    annotation (Line(points={{95,-10},{106,-10}}, color={0,0,255}));
  connect(bus3.p, pwLoadPQ2.p)
    annotation (Line(points={{106,-10},{118,-10},{118,-20}}, color={0,0,255}));
  connect(bus4.p, pwLine3.n) annotation (Line(points={{106,20},{100,20},{100,10},
          {95,10}}, color={0,0,255}));
  connect(bus4.p, pwLoadPQ1.p) annotation (Line(points={{106,20},{120.071,20},{120.071,
          16}}, color={0,0,255}));
  connect(bus4.p, pwLineFault.n) annotation (Line(points={{106,20},{100,20},{100,
          30},{95,30}}, color={0,0,255}));
  connect(bus3.p, pwFault.p) annotation (Line(points={{106,-10},{102,-10},{102,-30},
          {97,-30}}, color={0,0,255}));
  connect(pwLineFault.p, pwLine3.p) annotation (Line(points={{77,30},{72,30},{72,
          10},{77,10}}, color={0,0,255}));
  annotation (Diagram(coordinateSystem(extent={{-100,-100},{140,100}})));
end TGTestBase;
