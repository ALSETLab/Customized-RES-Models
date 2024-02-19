within OpenRESV.Electrical.Renewables.PSSE;
model PV_with_inputs
  "Framework for a photovoltaic plant including controllers"

    replaceable
    OpenRESV.Electrical.Renewables.PSSE.InverterInterface.BaseClasses.BaseREGC
    RenewableGenerator(
    M_b=M_b,
    P_0=P_0,
    Q_0=Q_0,
    v_0=v_0,
    angle_0=angle_0) annotation (
    Dialog(group="Model Selection"),
    choicesAllMatching=true,
    Placement(transformation(extent={{40,-20},{80,20}})));
  replaceable
    OpenRESV.Electrical.Renewables.PSSE.ElectricalController.BaseClasses.BaseREECB
    RenewableController(
    pfflag=pfflag,
    vflag=vflag,
    qflag=qflag,
    pqflag=false) annotation (
    Dialog(group="Model Selection"),
    choicesAllMatching=true,
    Placement(transformation(extent={{-16,-20},{24,20}})));
  OpenRESV.Interfaces.PwPin pwPin
    annotation (Placement(transformation(extent={{90,-10},{110,10}})));
  replaceable
    OpenRESV.Electrical.Renewables.PSSE.PlantController.BaseClasses.BaseREPC
    PlantController(
    M_b=M_b,
    P_0=P_0,
    Q_0=Q_0,
    v_0=v_0,
    angle_0=angle_0,
    fflag=fflag,
    refflag=refflag) if QFunctionality >= 4 annotation (
    Dialog(group="Model Selection"),
    choicesAllMatching=true,
    Placement(transformation(extent={{-78,-20},{-38,20}})));

parameter OpenRESV.Types.ApparentPower M_b=RenewableGenerator.SysData.S_b
    "Machine base power" annotation (Dialog(group="Power flow data"));
extends OpenRESV.Electrical.Essentials.pfComponent(
    final enablefn=false,
    final enableV_b=false,
    final enableangle_0=true,
    final enablev_0=true,
    final enableQ_0=true,
    final enableP_0=true,
    final enabledisplayPF=true,
    final enableS_b=true);

  // Parameters for selection
  parameter Integer QFunctionality = 0 "BESS Reactive Power Control Options" annotation (Dialog(group= "Reactive Power Control Options"), choices(choice=0 "Constant local PF control", choice=1 "Constant local Q control", choice=2 "Local V control", choice=3 "Local coordinated V/Q control", choice=4 "Plant level Q control", choice=5 "Plant level V control", choice=6 "Plant level Q control + local coordinated V/Q control", choice=7 "Plant level V control + local coordinated V/Q control"));
  parameter Integer PFunctionality = 0 "BESS Real Power Control Options" annotation (Dialog(group= "Active Power Control Options", enable=(QFunctionality >=4)), choices(choice=0 "No governor response", choice=1 "Governor response with up and down regulation"));

  // Irradiance to Power parameter selection
  parameter Boolean Irr2Pow = false "Irradiance to Power Options" annotation (Dialog(group= "Irradiance to Power Add-On Capability"));

  // External Qref
  parameter Boolean QrefExt = false "Enable external Qref" annotation (Dialog(group= "External Qref Capability"));

  Modelica.Blocks.Math.Gain gain(k=1) if QFunctionality < 4 and not Irr2Pow
    annotation (Placement(transformation(
        extent={{-7,-7},{7,7}},
        rotation=180,
        origin={35,-57})));
  Modelica.Blocks.Math.Gain gain1(k=1) if QFunctionality < 4 and not QrefExt
    annotation (Placement(transformation(
        extent={{-7,-7},{7,7}},
        rotation=180,
        origin={35,-79})));
  Modelica.Blocks.Sources.Constant freq_ref(k=SysData.fn) if QFunctionality >= 4
    annotation (Placement(transformation(extent={{-70,-60},{-80,-50}})));
  Modelica.Blocks.Interfaces.RealInput FREQ if QFunctionality >= 4
    "Connection Point Frequency"
    annotation (Placement(transformation(extent={{-140,-80},{-100,-40}}),
        iconTransformation(extent={{-140,-80},{-100,-40}})));

  Modelica.Blocks.Interfaces.RealInput branch_ir if QFunctionality >= 4 "Measured Branch Real Current"
    annotation (Placement(transformation(
        extent={{-20,-20},{20,20}},
        rotation=270,
        origin={-80,120}),iconTransformation(
        extent={{-20,-20},{20,20}},
        rotation=90,
        origin={60,-100})));
  Modelica.Blocks.Interfaces.RealInput branch_ii if QFunctionality >= 4 "Measured Branch Imaginary Current"
    annotation (Placement(transformation(
        extent={{-20,-20},{20,20}},
        rotation=270,
        origin={-40,120}),iconTransformation(
        extent={{-20,-20},{20,20}},
        rotation=90,
        origin={-60,-100})));
  Modelica.Blocks.Interfaces.RealInput regulate_vr if QFunctionality >= 4 "Regulated Branch Real Voltage"
    annotation (Placement(transformation(
        extent={{-20,-20},{20,20}},
        rotation=270,
        origin={40,120}),iconTransformation(
        extent={{-20,-20},{20,20}},
        rotation=270,
        origin={-60,100})));
  Modelica.Blocks.Interfaces.RealInput regulate_vi if QFunctionality >= 4 "Regulated Branch Imaginary Voltage"
    annotation (Placement(transformation(
        extent={{-20,-20},{20,20}},
        rotation=270,
        origin={80,120}),iconTransformation(
        extent={{-20,-20},{20,20}},
        rotation=270,
        origin={60,100})));
  Modelica.Blocks.Interfaces.RealInput Pinput if Irr2Pow
    "Irradiance to Power input" annotation (Placement(transformation(extent={{-140,
            -20},{-100,20}}),iconTransformation(extent={{-140,-20},{-100,20}})));
  Modelica.Blocks.Math.Gain gain2(k=1) if Irr2Pow and QFunctionality < 4
    annotation (Placement(transformation(
        extent={{-6,-6},{6,6}},
        rotation=0,
        origin={-86,58})));
  Modelica.Blocks.Math.Gain gain3(k=1) if Irr2Pow and QFunctionality >= 4
    annotation (Placement(transformation(
        extent={{-6,-6},{6,6}},
        rotation=0,
        origin={-86,40})));
  Modelica.Blocks.Math.Gain gain4(k=1) if QFunctionality >= 4 and not Irr2Pow
    annotation (Placement(transformation(
        extent={{-6,-6},{6,6}},
        rotation=180,
        origin={-60,-86})));
  Modelica.Blocks.Interfaces.RealInput Qinput if QrefExt
    "Irradiance to Power input" annotation (Placement(transformation(extent={{-140,
            60},{-100,100}}), iconTransformation(extent={{-140,40},{-100,80}})));
  Modelica.Blocks.Math.Gain gain5(k=1) if QrefExt and QFunctionality < 4
    annotation (Placement(transformation(
        extent={{-6,-6},{6,6}},
        rotation=0,
        origin={-86,92})));
  Modelica.Blocks.Math.Gain gain6(k=1) if QrefExt and QFunctionality >= 4
    annotation (Placement(transformation(
        extent={{-6,-6},{6,6}},
        rotation=0,
        origin={-86,74})));
  Modelica.Blocks.Math.Gain gain7(k=1) if QFunctionality >= 4 and not QrefExt
    annotation (Placement(transformation(
        extent={{-6,-6},{6,6}},
        rotation=180,
        origin={-82,-96})));
  Modelica.Blocks.Interfaces.RealOutput P0 "Initial Active Power" annotation (
      Placement(transformation(
        extent={{-10,-10},{10,10}},
        rotation=0,
        origin={110,-60})));
  Modelica.Blocks.Interfaces.RealOutput Q0 "Initial Reactive Power"  annotation (
     Placement(transformation(
        extent={{-10,-10},{10,10}},
        rotation=0,
        origin={110,60})));
protected
      parameter Boolean pfflag = (if QFunctionality == 0 then true else false);
      parameter Boolean vflag = (if QFunctionality == 3 or QFunctionality == 6 or QFunctionality == 7 then true else false);
      parameter Boolean qflag = (if QFunctionality == 2 or QFunctionality == 3 or QFunctionality == 6 or QFunctionality == 7 then true else false);
      parameter Boolean refflag = (if QFunctionality == 5 or QFunctionality == 7 then true else false);
      parameter Boolean fflag = (if PFunctionality == 1 then true else false);
equation

P0 = RenewableGenerator.p_0;
Q0 = RenewableGenerator.q_0;

  connect(RenewableController.Iqcmd, RenewableGenerator.Iqcmd)
    annotation (Line(points={{24.6667,11.3333},{23.9048,11.3333},{23.9048,
          11.4286},{37.1429,11.4286}},                   color={0,0,127}));
  connect(RenewableGenerator.IQ0, RenewableController.iq0) annotation (Line(
        points={{42.8571,-21.4286},{42.8571,-28},{20,-28},{20,-21.3333}},
        color={0,0,127}));
  connect(RenewableGenerator.IP0, RenewableController.ip0) annotation (Line(
        points={{51.4286,-21.4286},{51.4286,-32},{12,-32},{12,-21.3333}},
                                                                        color=
         {0,0,127}));
  connect(RenewableGenerator.V_0, RenewableController.v0) annotation (Line(
        points={{60,-21.4286},{60,-36},{4,-36},{4,-21.3333}}, color={0,0,127}));
  connect(RenewableGenerator.q_0, RenewableController.q0) annotation (Line(
        points={{68.5714,-21.4286},{68.5714,-40},{-4,-40},{-4,-21.3333}},
                                                                        color={0,
          0,127}));
  connect(RenewableGenerator.p_0, RenewableController.p0) annotation (Line(
        points={{77.1429,-21.4286},{77.1429,-44},{-12,-44},{-12,-21.3333}},
        color={0,0,127}));
  connect(RenewableGenerator.V_t, RenewableController.Vt) annotation (Line(
        points={{48.5714,21.4286},{48.5714,26},{-26,26},{-26,10.6667},{-17.3333,
          10.6667}}, color={0,0,127}));
  connect(RenewableGenerator.Pgen, RenewableController.Pe) annotation (Line(
        points={{60,21.4286},{60,30},{-28,30},{-28,5.33333},{-17.3333,5.33333}},
        color={0,0,127}));
  connect(RenewableGenerator.Qgen, RenewableController.Qgen) annotation (Line(
        points={{71.4286,21.4286},{71.4286,34},{-30,34},{-30,0},{-17.3333,
          0}},
        color={0,0,127}));
  connect(PlantController.Qext, RenewableController.Qext) annotation (Line(
        points={{-37,10},{-32,10},{-32,-5.33333},{-17.3333,-5.33333}}, color={0,
          0,127}));
  connect(PlantController.Pref, RenewableController.Pref) annotation (Line(
        points={{-37,-10.6},{-38,-10.6},{-38,-10.6667},{-17.3333,-10.6667}},
                                                                         color={
          0,0,127}));
  connect(PlantController.p0, RenewableController.p0) annotation (Line(points={{-72,-22},
          {-72,-44},{-12,-44},{-12,-21.3333}},                    color={0,0,127}));
  connect(PlantController.v0, RenewableController.v0) annotation (Line(points={{-44,-22},
          {-44,-36},{4,-36},{4,-21.3333}},          color={0,0,127}));
  connect(PlantController.q0, RenewableController.q0) annotation (Line(points={{-58,-22},
          {-58,-40},{-4,-40},{-4,-21.3333}},          color={0,0,127}));
  connect(gain1.y, RenewableController.Qext) annotation (Line(points={{27.3,
          -79},{-28,-79},{-28,-5.33333},{-17.3333,-5.33333}},
                                                         color={0,0,127}));
  connect(freq_ref.y, PlantController.Freq_ref) annotation (Line(points={{-80.5,
          -55},{-88,-55},{-88,-12},{-80,-12}}, color={0,0,127}));
  connect(RenewableGenerator.p, pwPin)
    annotation (Line(points={{80,0},{100,0}}, color={0,0,255}));
  connect(PlantController.Freq, FREQ) annotation (Line(points={{-80,-4},{-92,-4},
          {-92,-60},{-120,-60}},
                             color={0,0,127}));
  connect(PlantController.branch_ii, branch_ii) annotation (Line(points={{-62,22},{-62,96},{-40,96},{-40,120}},
                                           color={0,0,127}));
  connect(PlantController.branch_ir, branch_ir) annotation (Line(points={{-72,22},{-72,96},{-80,96},{-80,120}},
                                           color={0,0,127}));
  connect(PlantController.regulate_vr, regulate_vr) annotation (Line(points={{-52,22},{-52,94},{40,94},{40,120}},
                                         color={0,0,127}));
  connect(PlantController.regulate_vi, regulate_vi) annotation (Line(points={{-44,22},{-44,92},{80,92},{80,120}},
                                         color={0,0,127}));
  connect(RenewableController.Ipcmd, RenewableGenerator.Ipcmd) annotation (Line(points={{24.6667,
          -11.3333},{23.9048,-11.3333},{23.9048,-11.4286},{37.1429,-11.4286}},                                                                                        color={0,0,127}));
  connect(Pinput, gain2.u) annotation (Line(points={{-120,0},{-96,0},{-96,58},{-93.2,
          58}},        color={0,0,127}));
  connect(gain2.y, RenewableController.Pref) annotation (Line(points={{-79.4,
          58},{-36,58},{-36,22},{-34,22},{-34,-10.6667},{-17.3333,-10.6667}},
                                                                  color={0,0,127}));
  connect(gain3.u, Pinput)
    annotation (Line(points={{-93.2,40},{-106,40},{-106,0},{-120,0}},
                                                    color={0,0,127}));
  connect(gain4.u, RenewableGenerator.p_0) annotation (Line(points={{-52.8,
          -86},{-40,-86},{-40,-94},{77.1429,-94},{77.1429,-21.4286}},
                                                                 color={0,0,127}));
  connect(gain4.y, PlantController.Plant_pref) annotation (Line(points={{-66.6,-86},
          {-94,-86},{-94,4},{-80,4}}, color={0,0,127}));
  connect(gain3.y, PlantController.Plant_pref) annotation (Line(points={{-79.4,40},
          {-76,40},{-76,30},{-90,30},{-90,4},{-80,4}}, color={0,0,127}));
  connect(Qinput, gain5.u) annotation (Line(points={{-120,80},{-96,80},{-96,92},
          {-93.2,92}}, color={0,0,127}));
  connect(gain6.u, Qinput) annotation (Line(points={{-93.2,74},{-96,74},{-96,80},
          {-120,80}}, color={0,0,127}));
  connect(gain5.y, RenewableController.Qext) annotation (Line(points={{-79.4,
          92},{-52,92},{-52,78},{-17.3333,78},{-17.3333,-5.33333}},
                                                                color={0,0,127}));
  connect(gain6.y, PlantController.Qref) annotation (Line(points={{-79.4,74},{-74,
          74},{-74,12},{-80,12}}, color={0,0,127}));
  connect(gain7.u, RenewableGenerator.q_0) annotation (Line(points={{-74.8,
          -96},{68.5714,-96},{68.5714,-21.4286}},
                                             color={0,0,127}));
  connect(gain7.y, PlantController.Qref) annotation (Line(points={{-88.6,-96},{-96,
          -96},{-96,12},{-80,12}}, color={0,0,127}));
  connect(P0, P0)
    annotation (Line(points={{110,-60},{110,-60}}, color={0,0,127}));
  connect(gain.y, RenewableController.Pref) annotation (Line(points={{27.3,
          -57},{-24,-57},{-24,-10.6667},{-17.3333,-10.6667}},
                                                         color={0,0,127}));
  connect(gain.u, RenewableGenerator.p_0) annotation (Line(points={{43.4,
          -57},{72,-57},{77.1429,-57},{77.1429,-21.4286},{77.1429,-21.4286}},
                                                                     color={0,0,
          127}));
  connect(gain1.u, RenewableGenerator.q_0) annotation (Line(points={{43.4,
          -79},{68,-79},{68,-78},{68.5714,-78},{68.5714,-21.4286},{68.5714,
          -21.4286}},
        color={0,0,127}));
  annotation (Icon(graphics={      Ellipse(
          extent={{-100,100},{100,-100}},
          lineColor={0,0,0},
          fillColor= {255,255,170},
          fillPattern=FillPattern.Solid),
                         Text(
          extent={{-40,20},{40,-20}},
          lineColor={0,0,0},
          textString="%name"), Line(
          points={{-20,20},{-44,42},{-66,32},{-80,0}},
          color={0,0,0},
          smooth=Smooth.Bezier), Line(
          points={{20,-20},{44,-42},{66,-32},{80,0}},
          color={0,0,0},
          smooth=Smooth.Bezier)}),
    Documentation(info="<html>
   <p>
      This model is meant as a simple framework to create a photovoltaic power plant that consists of:
   </p>
   <ul>
      <li>Generator/Converter</li>
      <li>Electrical Controller</li>
      <li>Plant Controller</li>
   </ul>
   <p>
      The type of each can be selected via a drop down list where also
      a deactivation is provided (normally via feed through).
   </p>
   <p>
      The type of control configuration can also be selected via drop down list.
   </p>
</html>"));
end PV_with_inputs;
