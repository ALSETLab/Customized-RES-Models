within OpenRESV.NonElectrical.Logical;
block HV_GATE "Passes through the higher value of the two inputs"
  extends Modelica.Blocks.Math.Max;
  annotation (Icon(graphics={Polygon(
          points={{-100,100},{40,100},{100,0},{40,-100},{-100,-100},{-100,100}},
          lineColor={28,108,200},
          fillColor={255,255,255},
          fillPattern=FillPattern.Solid), Text(
          extent={{-100,40},{60,-40}},
          lineColor={0,0,255},
          fillColor={255,255,255},
          fillPattern=FillPattern.None,
          textString="HV
GATE")}));
end HV_GATE;
