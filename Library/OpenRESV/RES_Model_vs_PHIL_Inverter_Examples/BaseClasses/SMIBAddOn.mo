within OpenRESV.RES_Model_vs_PHIL_Inverter_Examples.BaseClasses;
partial model SMIBAddOn
  "SMIB - Single Machine Infinite Base system with one load for renewable source validation."
  extends Modelica.Icons.Example;
  OpenRESV.Electrical.Branches.PwLine pwLine(
    R=2.50000E-2,
    X=2.50000E-2,
    G=0,
    B=0.05000/2) annotation (Placement(transformation(extent={{40,-4},{60,16}})));
  OpenRESV.Electrical.Branches.PwLine pwLine1(
    R=2.50000E-2,
    X=2.50000E-2,
    G=0,
    B=0.05000/2) annotation (Placement(transformation(extent={{40,-16},{60,4}})));
  OpenRESV.Electrical.Branches.PwLine pwLine2(
    G=0,
    B=0,
    R=2.50000E-3,
    X=2.50000E-3)
    annotation (Placement(transformation(extent={{4,-10},{24,10}})));
  OpenRESV.Electrical.Events.PwFault pwFault(
    R=0.5,
    X=0.5,
    t1=2.00,
    t2=2.15)
            annotation (Placement(transformation(extent={{42,-36},{58,-20}})));
  inner OpenRESV.Electrical.SystemBase SysData(fn=50, S_b=100000000) annotation (Placement(transformation(extent={{-80,70},
            {-40,90}})));
  OpenRESV.Electrical.Buses.Bus PV_BUS
    annotation (Placement(transformation(extent={{-10,-10},{10,10}})));
  OpenRESV.Electrical.Buses.Bus FAULT
    annotation (Placement(transformation(extent={{18,-10},{38,10}})));
  OpenRESV.Electrical.Buses.Bus GEN2
    annotation (Placement(transformation(extent={{60,-10},{80,10}})));
  OpenRESV.Electrical.Machines.PSSE.GENCLS GRID(
    angle_0=-1.570655e-05,
    R_a=0,
    X_d=2.00000E-1,
    M_b=100000000,
    V_b=100000,
    P_0=-1498800,
    Q_0=-4334000,
    v_0=1.00000)
    annotation (Placement(transformation(extent={{98,-10},{78,10}})));
equation
  connect(FAULT.p,pwLine. p)
    annotation (Line(points={{28,0},{36,0},{36,6},{41,6}},   color={0,0,255}));
  connect(pwLine1.p,pwLine. p) annotation (Line(points={{41,-6},{36,-6},{36,6},
          {41,6}},               color={0,0,255}));
  connect(pwFault.p,FAULT. p) annotation (Line(points={{40.6667,-28},{32,-28},
          {32,0},{28,0}},color={0,0,255}));
  connect(pwLine.n,GEN2. p)
    annotation (Line(points={{59,6},{64,6},{64,0},{70,0}},   color={0,0,255}));
  connect(pwLine1.n,GEN2. p) annotation (Line(points={{59,-6},{64,-6},{64,0},{
          70,0}},  color={0,0,255}));
  connect(pwLine2.n, FAULT.p)
    annotation (Line(points={{23,0},{28,0}}, color={0,0,255}));
  connect(PV_BUS.p, pwLine2.p)
    annotation (Line(points={{0,0},{5,0}}, color={0,0,255}));
  connect(GEN2.p, GRID.p)
    annotation (Line(points={{70,0},{78,0}}, color={0,0,255}));
  annotation (Icon(coordinateSystem(preserveAspectRatio=false, extent={{-100,
            -100},{120,100}})),                                  Diagram(
        coordinateSystem(preserveAspectRatio=false, extent={{-100,-100},{100,
            100}})));
end SMIBAddOn;
