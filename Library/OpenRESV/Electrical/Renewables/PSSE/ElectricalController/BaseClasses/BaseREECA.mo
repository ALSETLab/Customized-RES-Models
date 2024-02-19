within OpenRESV.Electrical.Renewables.PSSE.ElectricalController.BaseClasses;
partial model BaseREECA "Base renewable energy electrical controller model A"

  parameter Boolean pfflag=true "Constant output value" annotation (Dialog(tab="Control"));
  parameter Boolean vflag=true "Constant output value" annotation (Dialog(tab="Control"));
  parameter Boolean qflag=true "Constant output value" annotation (Dialog(tab="Control"));
  parameter Boolean pqflag=true "Constant output value" annotation (Dialog(tab="Control"));
  parameter Boolean pflag=true "Constant output value" annotation (Dialog(tab="Control"));

  Modelica.Blocks.Interfaces.RealInput Vt "Terminal Voltage Magnitude"
    annotation (Placement(transformation(extent={{-340,180},{-300,220}})));
  Modelica.Blocks.Interfaces.RealInput Pe "Active Power Generated"
    annotation (Placement(transformation(extent={{-340,100},{-300,140}})));
  Modelica.Blocks.Interfaces.RealInput Qext
    "Reactive Power Reference"
    annotation (Placement(transformation(extent={{-340,-60},{-300,-20}})));
  Modelica.Blocks.Interfaces.RealInput Qgen "Reactive Power Generated"
    annotation (Placement(transformation(extent={{-340,20},{-300,60}})));
  Modelica.Blocks.Interfaces.RealInput Pref "Active Power Reference" annotation (Placement(
        transformation(extent={{-340,-140},{-300,-100}})));
  Modelica.Blocks.Interfaces.RealInput ip0 "Initial Real Current" annotation (Placement(transformation(
        extent={{-20,-20},{20,20}},
        rotation=90,
        origin={120,-320})));
  Modelica.Blocks.Interfaces.RealInput iq0 "Initial Imaginary Current" annotation (Placement(transformation(
        extent={{-20,-20},{20,20}},
        rotation=90,
        origin={240,-320})));
  Modelica.Blocks.Interfaces.RealOutput Iqcmd "Reactice Command Current"
    annotation (Placement(transformation(extent={{300,160},{320,180}})));
  Modelica.Blocks.Interfaces.RealOutput Ipcmd "Real Command Current"
    annotation (Placement(transformation(extent={{300,-180},{320,-160}})));
  Modelica.Blocks.Interfaces.RealInput Wg "Rotational Speed Generator" annotation (Placement(
        transformation(extent={{-340,-220},{-300,-180}})));

  Modelica.Blocks.Interfaces.RealInput v0 "Initial Terminal Voltage Magnitude" annotation (Placement(transformation(
        extent={{-20,-20},{20,20}},
        rotation=90,
        origin={0,-320})));
  Modelica.Blocks.Interfaces.RealInput p0 "Initial Active Power" annotation (Placement(transformation(
        extent={{-20,-20},{20,20}},
        rotation=90,
        origin={-240,-320})));
  Modelica.Blocks.Interfaces.RealInput q0 "Initial Reactive Power" annotation (Placement(transformation(
        extent={{-20,-20},{20,20}},
        rotation=90,
        origin={-120,-320})));
  annotation (Icon(coordinateSystem(extent={{-300,-300},
            {300,300}}), graphics={Rectangle(extent={{-300,300},{300,-300}},
            lineColor={0,0,255}),
        Text(
          extent={{-280,220},{-220,180}},
          textColor={0,0,255},
          textString="VT"),
        Text(
          extent={{-280,140},{-168,100}},
          textColor={0,0,255},
          textString="PGEN"),
        Text(
          extent={{-280,60},{-168,20}},
          textColor={0,0,255},
          textString="QGEN"),
        Text(
          extent={{-280,-20},{-168,-60}},
          textColor={0,0,255},
          textString="QEXT"),
        Text(
          extent={{-280,-100},{-168,-140}},
          textColor={0,0,255},
          textString="PREF"),
        Text(
          extent={{-270,-180},{-210,-220}},
          textColor={0,0,255},
          textString="WG"),
        Text(
          extent={{-260,-254},{-200,-294}},
          textColor={0,0,255},
          textString="P0"),
        Text(
          extent={{-150,-254},{-90,-294}},
          textColor={0,0,255},
          textString="Q0"),
        Text(
          extent={{-30,-254},{30,-294}},
          textColor={0,0,255},
          textString="V0"),
        Text(
          extent={{90,-254},{150,-294}},
          textColor={0,0,255},
          textString="IP0"),
        Text(
          extent={{204,-254},{264,-294}},
          textColor={0,0,255},
          textString="IQ0"),
        Text(
          extent={{-140,98},{160,-100}},
          textColor={0,0,255},
          textString="REECA1"),
        Text(
          extent={{178,168},{290,128}},
          textColor={0,0,255},
          textString="IQCMD"),
        Text(
          extent={{178,-132},{290,-172}},
          textColor={0,0,255},
          textString="IPCMD")}),
        Diagram(coordinateSystem(extent={{-300,-300},{300,300}})),
    Documentation(info="<html>
<p>
The BaseREECA model is the base class that is extended to create the <a href=\"modelica://OpenRESV.Electrical.Renewables.PSSE.ElectricalController.REECA1\">REECA1</a> component.
</p>
</html>"));

end BaseREECA;
