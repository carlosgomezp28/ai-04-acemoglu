# Proposed extension — not in the paper

> **Provenance.** Everything labeled **OUR PROPOSED EXTENSION** below is our own
> modification. Acemoglu, Kong & Ozdaglar (2026) maintain
> \(\Delta_I=0\) throughout; they do not state or prove our proposition.

## Motivation

The paper's production-side Assumption 1 is

\[
\Delta_I=0,\qquad \Delta_X>0.
\]

It makes context-specific knowledge completely unproductive unless the general
prediction also succeeds. In applications such as medical triage or investment
screening, information about the individual may retain some value even when
general understanding is poor.

**OUR PROPOSED EXTENSION** relaxes only the zero restriction:

\[
\Delta_I>0,\qquad
\Delta_X>0,\qquad
\Delta_G=1-\Delta_I-\Delta_X\ge0.
\]

Strict complementarity remains. The last restriction preserves the paper's
normalization and weak monotonicity of the four-outcome production function.

## Four-outcome derivation

Start from the paper's definitions

\[
\Delta_G=f(1,0)-f(0,0),\qquad
\Delta_I=f(0,1)-f(0,0),
\]

\[
\Delta_X=f(1,1)-f(1,0)-f(0,1)+f(0,0).
\]

Writing \(f_{00}:=f(0,0)\), the four output levels are

| General success | Context success | Output |
|---:|---:|---:|
| 0 | 0 | \(f_{00}\) |
| 1 | 0 | \(f_{00}+\Delta_G\) |
| 0 | 1 | \(f_{00}+\Delta_I\) |
| 1 | 1 | \(f_{00}+\Delta_G+\Delta_I+\Delta_X\) |

Let \(p_G=G(X)\) and \(p_I=G(Y)\). Retaining the paper's factorization of
common and idiosyncratic prediction success,

\[
\begin{aligned}
\mathbb E[f]
={}&f_{00}(1-p_G)(1-p_I)
+(f_{00}+\Delta_G)p_G(1-p_I)\\
&+(f_{00}+\Delta_I)(1-p_G)p_I
+(f_{00}+\Delta_G+\Delta_I+\Delta_X)p_Gp_I\\
={}&f_{00}+\Delta_Gp_G+\Delta_Ip_I+\Delta_Xp_Gp_I.
\end{aligned}
\]

Therefore **OUR PROPOSED EXTENSION** has expected utility

\[
\boxed{
U(e;X,\tau_A)
=f_{00}+\Delta_GG(X)+\Delta_IG(Y)+\Delta_XG(X)G(Y)
-\frac{e^\alpha}{\alpha},
}
\]

where

\[
Y=\sigma^{-2}+\lambda_Ie+\tau_A.
\]

Define

\[
B(X):=\Delta_I+\Delta_XG(X)>0.
\]

Then the effort-dependent part is \(B(X)G(Y)-e^\alpha/\alpha\).

## Modified optimum and FOC

**OUR PROPOSED EXTENSION** assumes

\[
\Delta_I>0,\quad \Delta_X>0,\quad
\Delta_G=1-\Delta_I-\Delta_X\ge0,
\]

\[
\alpha>1,\qquad \lambda_I>0,
\]

and finite nonnegative \(X,\tau_A,\sigma^{-2}\). Effort is continuously
divisible, has no fixed participation cost, and remains bundled with public
learning as in the paper's baseline.

Differentiation gives

\[
U_e=B(X)\lambda_Ig(Y)-e^{\alpha-1}.
\]

The exact FOC is

\[
\boxed{
[\Delta_I+\Delta_XG(X)]\lambda_Ig(Y)=e^{\alpha-1}.
}
\]

For \(e>0\),

\[
U_{ee}=B(X)\lambda_I^2g'(Y)-(\alpha-1)e^{\alpha-2}<0.
\]

The information benefit is bounded, while
\(-e^\alpha/\alpha\to-\infty\) as \(e\to\infty\), so a finite maximizer exists.
Strict concavity makes it unique. If the finite initial precision satisfies
\(\sigma^{-2}+\tau_A>0\), the marginal information benefit at \(e=0\) is
positive. If \(\sigma^{-2}+\tau_A=0\), it diverges to \(+\infty\). Because
\(\alpha>1\), marginal cost at \(e=0\) is zero, so the maximizer is interior in
both cases.

## Comparative statics

Let \(e^*\) be the unique optimum, \(Y^*=\sigma^{-2}+\lambda_Ie^*+\tau_A\), and
define the audited positive denominator

\[
\boxed{
D:=(\alpha-1)(e^*)^{\alpha-2}
-[\Delta_I+\Delta_XG(X)]\lambda_I^2g'(Y^*)>0.
}
\]

The implicit-function theorem gives, for \(X>0\),

\[
\boxed{
e_X^*
=\frac{\Delta_X\lambda_Ig(X)g(Y^*)}{D}>0,
}
\]

and, for \(\tau_A>0\),

\[
\boxed{
e_{\tau_A}^*
=\frac{[\Delta_I+\Delta_XG(X)]\lambda_Ig'(Y^*)}{D}<0.
}
\]

At \(\tau_A=0\), this expression is interpreted as a right derivative.

For the comparative static in \(\Delta_I\), hold \(\Delta_X\) fixed and adjust
\(\Delta_G=1-\Delta_I-\Delta_X\) to preserve normalization. Then

\[
\boxed{
e_{\Delta_I}^*
=\frac{\lambda_Ig(Y^*)}{D}>0.
}
\]

The cross-partials underlying the first two results are

\[
U_{eX}=\Delta_X\lambda_Ig(X)g(Y)>0,
\]

\[
U_{e\tau_A}
=[\Delta_I+\Delta_XG(X)]\lambda_Ig'(Y)<0.
\]

Thus the paper's complement/substitute signs survive on the positive-precision
domain. At \(X=0\), \(U_{e\tau_A}<0\) still holds whenever \(Y>0\), because
\(B(0)=\Delta_I>0\). By contrast, \(U_{eX}\) does not have the same ordinary
finite-derivative expression at \(X=0\), because \(g(X)\to+\infty\) as
\(X\to0^+\).

## Boundary result at zero public knowledge

At \(X=0\), \(G(0)=0\) and the FOC in **OUR PROPOSED EXTENSION** becomes

\[
\Delta_I\lambda_I
g(\sigma^{-2}+\lambda_Ie+\tau_A)=e^{\alpha-1}.
\]

Under \(\Delta_I>0\), \(\lambda_I>0\), \(\alpha>1\), and finite
\(\sigma^{-2},\tau_A\), it has a unique positive solution:

\[
\boxed{e^*(0,\tau_A)>0.}
\]

Finiteness matters. As \(\tau_A\to\infty\), diminishing marginal information
value implies \(e^*(0,\tau_A)\to0\).

## Dynamic implication under additional assumptions

The paper's baseline precision transition is

\[
X_{t+1}
=\left[(X_t+\lambda_GE_t)^{-1}+\Sigma^2\right]^{-1},
\qquad E_t=I e^*(X_t,\tau_A).
\]

Only after additionally assuming

\[
\lambda_G>0,\qquad I>0,\qquad \Sigma^2<\infty
\]

does positive effort at zero imply

\[
\boxed{
F_{\Delta_I}(0)
=\left[(\lambda_GI e^*(0,\tau_A))^{-1}+\Sigma^2\right]^{-1}>0.
}
\]

**OUR PROPOSED EXTENSION therefore removes the exact zero fixed point for every
finite AI precision. It does not prove that knowledge collapse is eliminated in
general.** A low positive steady state may remain, may be arbitrarily close to
zero, and may coexist with other steady states.

## Difference from the paper's extensions

### Section 5.2: synthetic data

The paper retains \(\Delta_I=0\), so \(e(0,\tau_A)=0\), but inserts an exogenous
public signal \(\tau_{\mathrm{syn}}>0\):

\[
F_{\mathrm{syn}}(0)
=\left[\tau_{\mathrm{syn}}^{-1}+\Sigma^2\right]^{-1}>0.
\]

Section 5.2 and **OUR PROPOSED EXTENSION** therefore share the outcome that zero
is not fixed, but not the mechanism. Synthetic data supplies public precision
despite zero human effort; our production relaxation gives private value to
effort at \(X=0\), and that endogenous effort produces the public signal. Our
floor shrinks as AI crowds out effort.

### Section 5.3: imperfect separability

Section 5.3 changes the public contribution from \(e\) to \(e^\beta\) but leaves
the private best response and \(\Delta_I=0\) unchanged. For the \(\beta>0\)
case covered by Proposition 16 and Appendix B.10,

\[
e(0,\tau_A)=0,\qquad F_\beta(0)=0.
\]

The endpoint \(\beta=0\) makes public input independent of changes in effort and
can mechanically yield a positive public-information intercept, but Proposition
16's continuation results apply only to \(\beta>0\). Our mechanism instead keeps
the baseline linear public-learning technology and changes the production payoff.

## Small numerical illustration

Take

\[
\alpha=2,\quad
\lambda_I=\lambda_G=I=\Sigma^2=1,\quad
\sigma^{-2}=0.5,
\]

\[
\Delta_I=0.25,\quad
\Delta_X=0.5,\quad
\Delta_G=0.25.
\]

Numerically solving the one-dimensional FOC gives

| \(X\) | \(\tau_A\) | \(e^*\) |
|---:|---:|---:|
| \(0\) | \(0\) | \(0.09591\) |
| \(0.25\) | \(0\) | \(0.15653\) |
| \(0\) | \(2\) | \(0.01785\) |

The first two rows illustrate complementarity with public knowledge; the first
and third illustrate AI crowd-out while preserving positive effort at every
finite precision. At \(X=0,\tau_A=0\),

\[
F_{\Delta_I}(0)
=\left[(e^*)^{-1}+1\right]^{-1}
\approx0.08752>0.
\]

> **AI claim that required correction**
>
> The initial claim “\(\Delta_I>0\) eliminates knowledge collapse” was too
> strong. The audited conclusion is narrower: under the listed static and
> public-learning assumptions, \(\Delta_I>0\) removes the **exact zero fixed
> point** for finite AI precision. It does not rule out a very low positive
> steady state, multiplicity, path dependence, or severe welfare loss.
