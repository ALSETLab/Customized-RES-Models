within OpenRESV.Types;
operator record ComplexVoltage = Modelica.Units.SI.ComplexVoltage (re(
        nominal=1e4, displayUnit="kV"), im(nominal=1e4, displayUnit="kV"))                                                   "Voltage phasor in cartesian representation";
