#import "conf.typ": conf

#show : doc => conf(
  lab-number: 0,
  title: [Measurement of the Acceleration Due to Gravity],
  name: [Jane Doe],
  studentID: 12345678,
  doc,
)

= Introduction
<introduction>
#set text(fill: blue);
This part should include a brief description of the experiment: its objectives, underlying physical model and phenomena, and equations that you will use in your calculations. It may be a bit longer than that below, but you should not simply copy the lab manual or quote long passages from textbooks.
#set text(fill: black);

The objective of the experiment was to find the value of the acceleration due to gravity, based on measurements of the period of a simple physical pendulum and the dependence of the period on the length of the pendulum.

A simple pendulum consists of a point mass m suspended on a mass less in extensible thread with length l, placed in a uniform gravitational field characterized by acceleration g. If a simple pendulum is displaced from the equilibrium position by a small angle $alpha$, it may be approximately treated as a harmonic oscillator, and the solution of its equation motion is a periodic function of time (cosine) with the period.
#math.equation[
$ T eq 2 pi sqrt(l / g) $] Hence, by measuring the period T and the
length of l a pendulum it is possible to find the value of the
acceleration due to gravity as

#math.equation[$ g eq frac(4 pi^2 l, T^2) $]

= Experimental setup
<experimental-setup>
#text(
  fill: blue,
  "A sketch and a description of the measurement setup should be simple, understandable and — first of all — conform to the setup used in the experiment. The information about measurement instruments used (type, class, measurement range, precision, etc.) should be given here.",
)


The pendulum used in the experiment is a metal ball attached to a fine
light thread of adjustable length. The thread is suspended on a solid
bar attached to the wall. The measurement system consists of an
optoelectronic sensor OS connected to a digital timer MCR–21. The
diagram of the experimental setup is presented in @img_setup.

#figure(
  placement: auto,
  image("setup.png"),
  caption: [
    Experimental setup.
  ],
)
<img_setup>

The optoelectronic sensor generates an impulse each time the thread
passes through the gate of the sensor. The timer is a digital device
allowing measurements with maximum uncertainty of $0.01 s$. It starts
the measurement after the first impulse from the sensor, skips the next
impulse, and ends the measurement when the third impulse arrives, thus
measuring the time of one period of oscillations.

The length of the pendulum was determined by using a measurement tape
with maximum uncertainty $1 m m$. However, the precision of this
measurement was smaller. This is because the distance from the point the
thread was attached to the ball and the ball’s center could only be
determined approximately. Therefore the maximum uncertainty of the
thread length measurement has been estimated at $5 m m$.

The length of the thread can be adjusted

= Measurements
<measurements>
#text(
  fill: blue,
  "This part should describe the measurement procedure (it can be also merged	with the previous section into a single section). This is also the section, where any comments/observations regarding the measurements should be made. These include, but are not limited to: abnormal functioning of measurement devices, instability of readings, etc.
",
)
== Measurements of the period of oscillations
<sec_measurement>
The position of the sensor was adjusted so that the pendulum placed out
of the equilibrium was able to trigger a signal. After the digital timer
was reset, the pendulum was displaced from the equilibrium position and
released. The reading on the timer was recorded. The above measurement
of the period of 3 oscillations was repeated ten times and the obtained
data is presented in @tb_measurement.

Then, the length of the thread was measured by measuring the distance
between the suspension point and the center of the ball. Because of the
fact that the position of the ball’s center was determined only
approximately, the uncertainty of this measurement is much larger than
the maximum uncertainty of the measurement tape.

The period of oscillations was measured for different lengths of the
pendulum \(cf. @tb_measurement\).

  #figure(
    caption: [ Data for the dependence of the oscillation period on the length of the pendulum.],
    table(
        stroke: none,
        [$M e a s u r e m e n t$],
        table.vline(start: 0),
        [$l lr([m]) plus.minus 0.005 lr([m])$],
        table.vline(start: 0),
        [$T lr([s]) plus.minus 0.01 lr([s])$],
        table.vline(start: 0),
        [$T^2 lr([s^2])$],
        table.vline(start: 0),
        [$mu_T^2 lr([s^2])$],
        table.hline(start: 0),
        [1], [0.500], [1.38], [1.90], [0.03],
        [2], [0.700], [1.68], [2.82], [0.03],
      )
  )<tb_measurement>
== Relation between the period of oscillations and the pendulum length
<relation-between-the-period-of-oscillations-and-the-pendulum-length>
The measurements of the period of oscillations were analogous to those
in the previous section. For each length of the thread one measurement
of the period was performed. The length of the thread was increased from
0.5 to 2.1 m in steps of 0.2 m. The results of the measurements are
presented in Table 2 \(columns 1 through 3).

= Results
<results>
#text(
  fill: blue,
  "In this section the results of your measurements should be presented. Usually tables and graphs are the best ways to present the results. The values of all physical quantities (both: measured and calculated based on the measurements) must be expressed using the appropriate SI units. This section should also include calculations with all intermediate steps (in case of repeated calculations, one sample calculation is enough). If any values are calculated by data analysis software (e.g. Origin, QtiPlot, R), it should be clearly indicated.",
)

== Measurements of the period of oscillations
<measurements-of-the-period-of-oscillations>
The period of oscillations was measured in the procedure described in
@sec_measurement and the average value was
calculated based on the results presented in @tb_measurement
as

$ T^(‾) eq 1 / 10 sum_(i eq 1)^10 T_i eq 2.21 plus.minus 0.02 s $

Using the value of the slope from the linear in the relation \(3), the
acceleration due to gravity can be found as
$ g eq frac(4 pi^2, alpha) eq frac(4 dot.op 3.14159^2, 4.00) eq 9.88 plus.minus 0.11 m slash s^2 $

#figure(
  [#box(width: 355.46853146853147pt, image("image.png"))],
  caption: [
    Measurement data \(dots) with error bars \(red for $l$, blue for
    $T^2$) and a linear fit to the data \(solid line) for the relation
    between the period of oscillations squared and the pendulum’s
    length. The value of $R^2$ for the obtained fit is 0.999.
  ],
)

== Relation between the period of oscillations and the pendulum length
<relation-between-the-period-of-oscillations-and-the-pendulum-length-1>
= Conclusions and discussion
<conclusions-and-discussion>
In the experiment the acceleration due to gravity was found first by
measuring the period of oscillations for a fixed length of the pendulum,
and then by measuring the period for different lengths and finding the
acceleration due to gravity from the slope of the $T^2$ vs. $l$ line.
The two methods yielded the values
$ g eq 9.82 plus.minus 0.08 m slash s #text("and") g eq 9.88 plus.minus 0.11 m slash s #text(",") $
respectively, with the former method yielding the result with slightly
smaller uncertainty. Both values conform \(within the uncertainty range)
to the value $9.81 plus.minus 0.07 m slash s 2$ quoted for Happy Town in
the paper A. Smith, Journal of Experimental Physics, 18 1234 \(2001).

The fundamental source of inaccuracy of both methods is the fact that
the formula for the period of oscillations \(1) is valid only under the
assumption that the motion is harmonic, what in the case of a simple
pendulum is only approximately valid for small angles. In general, for a
simple pendulum, the period depends on the amplitude, and for different
angular displacements from the equilibrium position, the measured values
of the period differ.

The other factors that have been neglected in the model yielding the
formula \(1) include: the fact that the thread is not perfectly in
extensible; viscous air and other dissipative forces dampen the
pendulum’s motion; non-inertiality of the earth \(the latter, however,
being a small effect that can usually be safely neglected).

The precision of the measurements, can be further increased by
redesigning the measurement of the pendulum’s length. The uncertainty of
this measurement, which is greater than the resolution of the
measurement tape, is mainly due to the fact that the distance to the
center of the ball cannot be measured accurately. Instead of measuring
the total distance between the suspension point and the center of the
ball by a measurement tape, the radius of the ball may be measured
separately \(e.g. in a calliper measurement).

#pagebreak()

#counter(heading).update(0)
#heading(numbering: "A  ", "Datasheet")
<datasheet>
#text(fill: blue, "
Please remember to attach the original data sheet signed by your instructor.")
