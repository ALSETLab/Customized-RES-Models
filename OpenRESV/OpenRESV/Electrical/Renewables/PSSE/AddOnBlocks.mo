within OpenRESV.Electrical.Renewables.PSSE;
package AddOnBlocks
  "This package contains additional add ons that can be added to the original renewable models."
  model IrradianceToPower "PV Array Power Output from Irradiance."

    parameter Modelica.Units.SI.ApparentPower M_b = 100000000;
    parameter Modelica.Units.SI.ActivePower Ypv = 1000 "Rated capacity of the PV array";
    parameter Modelica.Units.SI.Temperature Tcstc = 25 "PV cell temperature under standard test conditions";
    parameter Real fpv = 0.9 "PV derating factor";
    parameter Real ap = -0.48 "Temperature coefficient of power";
    parameter Modelica.Units.SI.RadiantEnergyFluenceRate Gtstc = 1000;

    Modelica.Blocks.Interfaces.RealOutput Ppv
      annotation (Placement(transformation(extent={{100,-10},{120,10}})));
    Modelica.Blocks.Sources.CombiTimeTable SolarRadiation(table=
          SolarRadiationTable)
      annotation (Placement(transformation(extent={{-80,40},{-60,60}})));
    Modelica.Blocks.Sources.CombiTimeTable SolarArrayTemperature(table=
          SolarArrayTemperatureTable)
      annotation (Placement(transformation(extent={{-80,-60},{-60,-40}})));

    parameter Real SolarRadiationTable[:,:]=fill(0.0, 0, 2)
      "Table matrix (time = first column; e.g., table=[0, 0; 1, 1; 2, 4])";
    parameter Real SolarArrayTemperatureTable[:,:]=fill(0.0, 0, 2)
      "Table matrix (time = first column; e.g., table=[0, 0; 1, 1; 2, 4])";
  equation

    Ppv = (Ypv/M_b)*fpv*(SolarRadiation.y[1]/Gtstc)*(1 + ap*(SolarArrayTemperature.y[1] - Tcstc));

    annotation (Icon(coordinateSystem(preserveAspectRatio=false), graphics={
          Rectangle(extent={{-100,100},{100,-100}}, lineColor={28,108,200}),
          Polygon(
            points={{-100,-60},{-60,-100},{-100,-100},{-100,-60}},
            lineColor={0,0,0},
            fillColor={255,170,85},
            fillPattern=FillPattern.Solid),
          Polygon(
            points={{-100,-20},{-20,-100},{-60,-100},{-100,-60},{-100,-20}},
            lineColor={0,0,0},
            fillColor={255,255,170},
            fillPattern=FillPattern.Solid),
          Polygon(
            points={{-100,20},{20,-100},{-20,-100},{-100,-20},{-100,20}},
            lineColor={0,0,0},
            fillColor={255,170,85},
            fillPattern=FillPattern.Solid),
          Polygon(
            points={{-100,60},{60,-100},{20,-100},{-100,20},{-100,60}},
            lineColor={0,0,0},
            fillColor={255,255,170},
            fillPattern=FillPattern.Solid),
          Polygon(
            points={{-100,100},{100,-100},{60,-100},{-100,60},{-100,100}},
            lineColor={0,0,0},
            fillColor={255,170,85},
            fillPattern=FillPattern.Solid),
          Polygon(
            points={{-100,100},{100,-100},{100,-60},{-60,100},{-100,100}},
            lineColor={0,0,0},
            fillColor={255,255,170},
            fillPattern=FillPattern.Solid),
          Polygon(
            points={{-20,100},{100,-20},{100,-60},{-60,100},{-20,100}},
            lineColor={0,0,0},
            fillColor={255,170,85},
            fillPattern=FillPattern.Solid),
          Polygon(
            points={{-20,100},{100,-20},{100,20},{20,100},{-20,100}},
            lineColor={0,0,0},
            fillColor={255,255,170},
            fillPattern=FillPattern.Solid),
          Polygon(
            points={{60,100},{100,60},{100,20},{20,100},{60,100}},
            lineColor={0,0,0},
            fillColor={255,170,85},
            fillPattern=FillPattern.Solid),
          Polygon(
            points={{60,100},{100,60},{100,60},{100,100},{60,100}},
            lineColor={0,0,0},
            fillColor={255,255,170},
            fillPattern=FillPattern.Solid),
          Text(
            extent={{-100,100},{100,-100}},
            textColor={0,0,255},
            textString="Irradiance 
to 
Power")}));
  end IrradianceToPower;

  model VoltageRideThrough
    "A voltage ride through logic that can be used to emulate real world inverters"
    Modelica.Blocks.Logical.LessEqualThreshold lessEqualThreshold1(threshold=
          MinThreshold)
      annotation (Placement(transformation(extent={{-120,-40},{-100,-20}})));
    Modelica.Blocks.Continuous.Integrator integrator1(use_reset=true)
      annotation (Placement(transformation(extent={{-34,-10},{-14,10}})));
    Modelica.Blocks.Logical.Switch switch2
      annotation (Placement(transformation(extent={{-62,-10},{-42,10}})));
    Modelica.Blocks.Sources.Constant const3(k=1)
      annotation (Placement(transformation(extent={{-92,40},{-72,60}})));
    Modelica.Blocks.Sources.Constant const4(k=0)
      annotation (Placement(transformation(extent={{-90,-40},{-70,-20}})));
    Modelica.Blocks.Logical.GreaterEqualThreshold FirstCheck(threshold=Time_t)
      annotation (Placement(transformation(extent={{-6,-10},{14,10}})));
    Modelica.Blocks.Logical.Switch switch3
      annotation (Placement(transformation(extent={{22,-10},{42,10}})));
    Modelica.Blocks.Sources.Constant const5(k=1)
      annotation (Placement(transformation(extent={{-4,30},{16,50}})));
    Modelica.Blocks.Sources.Constant const6(k=0)
      annotation (Placement(transformation(extent={{-4,-50},{16,-30}})));
    Modelica.Blocks.Continuous.Integrator integrator2(use_reset=true)
      annotation (Placement(transformation(extent={{50,-10},{70,10}})));
    Modelica.Blocks.Sources.BooleanExpression booleanExpression2(y=if integrator2.y >
          Time_c then true else false)
      annotation (Placement(transformation(extent={{32,-46},{52,-26}})));
    Modelica.Blocks.Logical.Switch switch1
      annotation (Placement(transformation(extent={{112,-10},{132,10}})));
    Modelica.Blocks.Logical.GreaterThreshold greaterThreshold(threshold=0.0001)
      annotation (Placement(transformation(extent={{80,-10},{100,10}})));
    Modelica.Blocks.Sources.Constant const1(k=1)
      annotation (Placement(transformation(extent={{80,-50},{100,-30}})));
    Modelica.Blocks.Sources.Constant const2(k=0)
      annotation (Placement(transformation(extent={{80,30},{100,50}})));
    Modelica.Blocks.Sources.BooleanExpression booleanExpression1(y=if integrator1.y <
          Time_t and lessEqualThreshold1.y == false then true else false)
      annotation (Placement(transformation(extent={{-82,-70},{-62,-50}})));
    Modelica.Blocks.Logical.Or or1
      annotation (Placement(transformation(extent={{-46,-70},{-26,-50}})));
    Modelica.Blocks.Interfaces.RealOutput VRT_out_logic
      "Signal that multiplies to Pref and Qref"
      annotation (Placement(transformation(extent={{100,-10},{120,10}}),
          iconTransformation(extent={{100,-10},{120,10}})));
    Modelica.Blocks.Interfaces.RealInput Vmag "Voltage magnitude input"
      annotation (Placement(transformation(extent={{-140,-20},{-100,20}}),
          iconTransformation(extent={{-140,-20},{-100,20}})));
    Modelica.Blocks.Logical.GreaterEqualThreshold
                                               greaterEqualThreshold(threshold=
          Max_Threshold)
      annotation (Placement(transformation(extent={{-120,20},{-100,40}})));
    parameter Real Max_Threshold=375 "Max Voltage Threshold [V]";
    parameter Real MinThreshold=325 "Min Voltage Threshold [V]";
    Modelica.Blocks.Logical.Or or2
      annotation (Placement(transformation(extent={{-92,-10},{-72,10}})));
    parameter Real Time_t=20 "Threshold time which triggers cessation [s]";
    parameter Real Time_c=120 "Cessation period [s]";
  equation
    connect(switch2.y,integrator1. u)
      annotation (Line(points={{-41,0},{-36,0}}, color={0,0,127}));
    connect(const3.y,switch2. u1)
      annotation (Line(points={{-71,50},{-64,50},{-64,8}}, color={0,0,127}));
    connect(const4.y,switch2. u3) annotation (Line(points={{-69,-30},{-64,-30},{-64,
            -8}},      color={0,0,127}));
    connect(integrator1.y,FirstCheck. u)
      annotation (Line(points={{-13,0},{-8,0}},color={0,0,127}));
    connect(FirstCheck.y,switch3. u2)
      annotation (Line(points={{15,0},{20,0}}, color={255,0,255}));
    connect(const5.y,switch3. u1)
      annotation (Line(points={{17,40},{20,40},{20,8}}, color={0,0,127}));
    connect(const6.y,switch3. u3)
      annotation (Line(points={{17,-40},{20,-40},{20,-8}}, color={0,0,127}));
    connect(switch3.y,integrator2. u)
      annotation (Line(points={{43,0},{48,0}}, color={0,0,127}));
    connect(integrator2.reset,booleanExpression2. y) annotation (Line(points={{66,-12},
            {66,-36},{53,-36}},             color={255,0,255}));
    connect(integrator2.y,greaterThreshold. u)
      annotation (Line(points={{71,0},{78,0}},   color={0,0,127}));
    connect(greaterThreshold.y,switch1. u2)
      annotation (Line(points={{101,0},{110,0}}, color={255,0,255}));
    connect(const1.y,switch1. u3) annotation (Line(points={{101,-40},{106,-40},{106,
            -8},{110,-8}},
                       color={0,0,127}));
    connect(const2.y,switch1. u1)
      annotation (Line(points={{101,40},{106,40},{106,8},{110,8}},
                                                           color={0,0,127}));
    connect(booleanExpression1.y,or1. u1)
      annotation (Line(points={{-61,-60},{-48,-60}}, color={255,0,255}));
    connect(or1.u2,booleanExpression2. y) annotation (Line(points={{-48,-68},{-56,
            -68},{-56,-76},{60,-76},{60,-36},{53,-36}},
                                                   color={255,0,255}));
    connect(or1.y,integrator1. reset) annotation (Line(points={{-25,-60},{-18,-60},
            {-18,-12}},    color={255,0,255}));
    connect(switch1.y, VRT_out_logic)
      annotation (Line(points={{133,0},{110,0}}, color={0,0,127}));
    connect(lessEqualThreshold1.u, Vmag) annotation (Line(points={{-122,-30},{-134,
            -30},{-134,0},{-120,0}}, color={0,0,127}));
    connect(greaterEqualThreshold.u, Vmag) annotation (Line(points={{-122,30},{-134,
            30},{-134,0},{-120,0}}, color={0,0,127}));
    connect(lessEqualThreshold1.y, or2.u2) annotation (Line(points={{-99,-30},{-94,
            -30},{-94,-8}}, color={255,0,255}));
    connect(or2.y, switch2.u2)
      annotation (Line(points={{-71,0},{-64,0}}, color={255,0,255}));
    connect(greaterEqualThreshold.y, or2.u1)
      annotation (Line(points={{-99,30},{-94,30},{-94,0}}, color={255,0,255}));
    annotation (Icon(coordinateSystem(preserveAspectRatio=false, extent={{-100,-100},
              {100,100}}), graphics={Rectangle(
            extent={{-100,100},{100,-100}},
            lineColor={28,108,200},
            fillPattern=FillPattern.Solid,
            fillColor={135,135,135}), Text(
            extent={{-80,60},{76,-60}},
            textColor={255,255,255},
            textString="VRT",
            textStyle={TextStyle.Bold})}),
                                 Diagram(coordinateSystem(preserveAspectRatio=false,
            extent={{-100,-100},{100,100}})));
  end VoltageRideThrough;
end AddOnBlocks;
