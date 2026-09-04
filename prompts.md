# Raw analytical interactions

## 1. HALLUCINATION TEST

### USER PROMPT

Without inspecting any files in this repository, without using web search,
and without using external tools, answer the following from your existing
knowledge only.

The designated paper is:

Acemoglu, D., Kong, D., & Ozdaglar, A. (2026).
"AI, Human Cognition and Knowledge Collapse."
NBER Working Paper 34910.

Please answer:

1. What is the exact static optimization problem in Section 2?
2. What are all primitives and parameters needed for that problem?
3. What exactly is Observation 1 in Section 3.4?
4. Is welfare necessarily increasing in AI accuracy?
5. Which assumptions do the authors relax in Section 5?
6. What production-side assumption do the authors never relax anywhere in the paper?

IMPORTANT:

- Do not inspect repository files.
- Do not browse the web.
- Do not use tools.
- If you do not know something exactly, say so.
- Do not infer equations or assumptions from the title.
- Do not modify any files.

### CODEX RAW ANSWER

I don’t have the paper’s contents in my existing knowledge with enough precision to answer these questions reliably.

1. Exact static optimization problem in Section 2: **I do not know.**
2. All primitives and parameters: **I do not know.**
3. Exact wording/content of Observation 1 in Section 3.4: **I do not know.**
4. Whether welfare is necessarily increasing in AI accuracy: **I cannot determine this without the paper and will not infer it from the title.**
5. Assumptions relaxed in Section 5: **I do not know.**
6. Production-side assumption never relaxed: **I do not know.**

Any more specific response would risk inventing equations or claims. I did not inspect files, browse, use tools, or modify anything.

---

## 2. SOURCE-FAITHFUL PAPER ANALYSIS

### USER PROMPT

Now you may inspect the repository and use tools.

The exact primary source is:

paper/07-acemoglu-kong-ozdaglar-2026-knowledge-collapse.pdf

This is the 69-page course-designated PDF for:

Acemoglu, D., Kong, D., & Ozdaglar, A. (2026),
"AI, Human Cognition and Knowledge Collapse,"
NBER Working Paper 34910.

IMPORTANT SOURCE RULE:
Use THIS PDF as the primary and controlling source.
Do not substitute another NBER, MIT, SSRN, arXiv, or later/earlier version.
If you use any outside source at all, clearly label it as secondary and do not use it to overwrite the PDF.

Do NOT modify any repository files yet.

The instructor explicitly says to prioritize:
- Section 2: the static problem
- Section 3.4
- Observation 1

The dynamic equilibrium, steady states, collapse thresholds, and welfare dynamics are READ-ONLY context:
understand what they claim, but do not attempt to reproduce their full proofs.

I need a source-faithful mathematical analysis.

PART A — VERSION AND SOURCE CHECK

1. Give the exact title, authors, date/version information, and working-paper information printed in THIS PDF.
2. Confirm that this PDF has 69 pages.
3. Whenever possible, give page numbers, equation numbers, proposition/observation numbers, and section references from THIS PDF.

PART B — COMPLETE NOTATION FOR THE STATIC MODEL

4. Build a complete notation table for every object needed for Section 2 and Observation 1.
5. For each symbol give:
   - mathematical role,
   - economic interpretation,
   - whether it is a choice variable, state, parameter, signal, precision, payoff, or cost.

Be especially careful to distinguish:
- human learning effort,
- general knowledge,
- context-specific/private information,
- AI accuracy/precision,
- human signal precision,
- payoff from decision quality,
- effort cost,
- any aggregation/production technology.

PART C — SECTION 2: STATIC AGENT PROBLEM

6. Write the exact static optimization problem in the paper's notation.
7. Reconstruct the agent's information structure before the optimization problem:
   - prior,
   - signals,
   - precisions,
   - what the agent learns from own effort,
   - what AI contributes.
8. Derive the expected payoff/objective step by step.
9. Derive the first-order condition for human effort step by step.
10. Derive the marginal cost of effort from the paper's exact cost function.
11. State all assumptions required for:
   - concavity,
   - existence,
   - uniqueness,
   - interiority,
   - any possible corner solution.
12. Explain every term in the FOC economically.

PART D — SECTION 3.4 AND OBSERVATION 1

13. Reproduce Observation 1 faithfully.
14. Do not paraphrase first: state the mathematical result as printed, then explain it.
15. Derive the two central cross-partials step by step.
16. Identify exactly which one establishes:

   (a) general knowledge complements human effort,

   and which one establishes:

   (b) agentic AI substitutes for human effort.

17. For each sign, state ALL conditions required for the inequality.
18. Check whether the result is global, local, interior-only, or subject to any parameter restrictions.
19. Explain the economics of each cross-partial in plain language.

PART E — THE INSTRUCTOR'S WELFARE TRAP

20. Answer the question:

   "Is welfare increasing in AI accuracy?"

Do not answer from intuition.

Instead:
- locate the exact relevant welfare statements/results in THIS PDF,
- state what notion of welfare is being used,
- distinguish private/static benefit from equilibrium/dynamic welfare,
- state all conditions,
- identify any non-monotonicity or ambiguity,
- explain why the intuitive answer can fail.

PART F — SECTION 5 ASSUMPTION AUDIT

21. Read Section 5 carefully.
22. List every baseline assumption that the authors explicitly relax.
23. For each relaxation state:
   - baseline assumption,
   - modified assumption,
   - what result changes or survives.

24. Then inspect the rest of the entire 69-page PDF and identify the production-side assumption that the authors NEVER relax anywhere.

This is an instructor-specified trap, so be extremely careful.

For this final item:
- quote or cite the relevant baseline formulation by page/equation,
- explain why it is a production-side assumption,
- show that the Section 5 extensions do not relax it,
- distinguish clearly between something explicitly noted by the authors and your own inference.

PART G — CLAIM MAP FOR LATER LEAN FORMALIZATION

25. Build a compact claim map containing only the static reproduction scope:
   - exact claim,
   - source location,
   - assumptions,
   - conclusion,
   - proof idea,
   - whether it looks suitable for Lean formalization.

Do NOT formalize anything yet.

PART H — FINAL CHECK

26. End with three clearly separated categories:

A. Directly stated by the paper.
B. Derived from the paper's equations but not separately stated.
C. Your own interpretation/inference.

Do NOT modify README.md, prompts.md, extensions.md, presentation.tex, or any other repository file yet.

Return only the analysis.

### CODEX RAW ANSWER

# Source-faithful analysis

All references below are to the course-designated [69-page PDF](/mnt/c/Users/cjuni/Documents/Github/ai-04-acemoglu/paper/07-acemoglu-kong-ozdaglar-2026-knowledge-collapse.pdf). I used no outside source.

Page convention: “PDF p.” means the physical page in the 69-page file; “printed p.” means the page number printed in the paper. The two differ by two pages in the main text.

## Part A — Version and source check

The PDF prints:

- Title: “AI, Human Cognition and Knowledge Collapse”
- Authors: Daron Acemoglu, Dingwen Kong, and Asuman Ozdaglar
- Date: February 2026
- Series: NBER Working Paper Series
- Number: Working Paper 34910 on the cover; “NBER Working Paper No. 34910” on the abstract page
- JEL codes: D80, D83
- Copyright: © 2026 by Daron Acemoglu, Dingwen Kong, and Asuman Ozdaglar

These appear on PDF pp. 1–2. No more specific draft date, revision date, or version identifier is printed.

The file contains exactly 69 physical PDF pages. Its final physical page is numbered B-18 in the online appendix.

Important numbering discrepancy: in this PDF, Section 2 is “Related Literature.” The model is Section 3, and the static agent problem is in §§3.3–3.5. Thus, there is no static optimization problem in Section 2 of this controlling version.

## Part B — Complete notation for the static model and Observation 1

### Population, time, and states

| Symbol | Mathematical role | Economic interpretation | Type |
|---|---|---|---|
| \(t=1,2,\ldots\) | Time index | Cohort/period | Index |
| \(i\in[0,M]\) | Agent index | A short-lived decision-maker | Index |
| \(M>0\) | Total mass of agents per period | Population size | Parameter |
| \(m\) | Island index | Information-sharing community | Index |
| \(I>0\) | Mass of each island | Aggregation capacity or scale | Parameter |
| \(K=M/I\) | Number of islands | Number of separate information communities | Derived parameter |
| \(I_m=[mI,(m+1)I)\) | Island \(m\) | Set of agents sharing public knowledge | Set |
| \(m(i)\) | Island containing \(i\) | Agent’s information community | Mapping |
| \(\theta_t\) | Common latent state | Frontier of general knowledge relevant to everyone | State |
| \(\theta_{t+1}=\theta_t+\varepsilon_t\) | State transition | Evolution of the general-knowledge frontier | Law of motion |
| \(\theta_1\sim N(0,\Sigma_0^2)\) | Initial prior | Initial uncertainty about the common state | Prior |
| \(\varepsilon_t\sim N(0,\Sigma^2)\) | Innovation | Obsolescence/change in general knowledge | Shock |
| \(\Sigma_0^2,\Sigma^2\) | Variances | Initial uncertainty and ongoing state drift | Parameters |
| \(\theta_{i,t}\overset{\mathrm{iid}}{\sim}N(0,\sigma^2)\) | Individual latent state | Context-specific/private circumstances | State |
| \(\sigma^2\), \(\sigma^{-2}\) | Prior variance and precision | Prior uncertainty/information about private context | Parameter/precision |

### Decisions, production, and payoff

| Symbol | Mathematical role | Economic interpretation | Type |
|---|---|---|---|
| \(x_{i,t}\) | Prediction of \(\theta_t\) | Decision based on general knowledge | Choice variable |
| \(y_{i,t}\) | Prediction of \(\theta_{i,t}\) | Context-specific decision/recommendation | Choice variable |
| \(\mathbf 1\{\cdot\}\) | Indicator | Whether a prediction is within the unit tolerance band | Function |
| \(f:\{0,1\}^2\to\mathbb R\) | Task-production function | Output as a function of correct general and context-specific predictions | Production/payoff technology |
| \(f(0,0)\) | Baseline output | Payoff with neither prediction successful | Payoff constant |
| \(\Delta_G=f(1,0)-f(0,0)\) | General-information increment | Value of general knowledge alone | Payoff parameter |
| \(\Delta_I=f(0,1)-f(0,0)\) | Idiosyncratic-information increment | Value of context-specific knowledge alone | Payoff parameter |
| \(\Delta_X=f(1,1)-f(1,0)-f(0,1)+f(0,0)\) | Cross-difference | Complementarity between the two forms of knowledge | Production parameter |
| \(e_{i,t}\ge0\) | Learning effort | Human investment in cognition/information acquisition | Choice variable |
| \(c(e)=e^\alpha/\alpha\) | Effort cost | Private cost of human learning | Cost function |
| \(\alpha>1\) | Cost curvature | Governs convexity and effort elasticity | Parameter |
| \(u_{i,t}\) | Realized payoff | Task output minus effort cost | Payoff |
| \(U_{i,t}=\mathbb E[u_{i,t}]\) | Expected payoff | Static objective after integrating over prediction errors | Expected payoff |

The normalization is

\[
f(1,1)-f(0,0)=1
\quad\Longrightarrow\quad
\Delta_G+\Delta_I+\Delta_X=1.
\]

Assumption 1 is

\[
\Delta_I=0,\qquad \Delta_X>0.
\]

### Signals, aggregation, and precisions

| Symbol | Mathematical role | Economic interpretation | Type |
|---|---|---|---|
| \(s^H_{i,t}\) | Human private signal | Context-specific information learned through own effort | Signal |
| \(\lambda_Ie_{i,t}\) | Precision of \(s^H_{i,t}\) | Effectiveness of human effort in learning own context | Precision |
| \(\lambda_I>0\) | Private-learning productivity | Precision generated per unit of effort | Technology parameter |
| \(s^A_{i,t}\) | Agentic-AI signal | Personalized/context-specific AI recommendation | Signal |
| \(\tau_A\ge0\) | Precision of \(s^A_{i,t}\) | Agentic-AI accuracy | Precision/parameter |
| \(s^C_{m,t}\) | Aggregated public signal | Human-produced general knowledge shared with later cohorts | Signal |
| \(\lambda_GE_{m,t}\) | Precision of \(s^C_{m,t}\) | Aggregate informativeness of current human learning | Precision |
| \(\lambda_G>0\) | Public-learning productivity | General knowledge generated per unit of aggregate effort | Technology parameter |
| \(E_{m,t}=\int_{I_m}e_{i,t}\,di\) | Aggregate effort | Total human learning on island \(m\) | Aggregate choice |
| \(\mathcal I_{i,t}\) | Agent’s information set | Private and AI signals plus inherited public history | Information |
| \(\mathcal I_{m,t}\) | Public history | Earlier public signals on island \(m\) | Information/state |
| \(V_t=\operatorname{Var}(\theta_t\mid\mathcal I_t)\) | Posterior variance | Remaining uncertainty about the common state | State |
| \(X_t=V_t^{-1}\) | Public precision | Current stock of general knowledge | State/precision |
| \(Y_{i,t}=\sigma^{-2}+\lambda_Ie_{i,t}+\tau_A\) | Posterior private precision | Total context-specific information | Precision |
| \(e(X,\tau_A)\) | Unique best response | Human effort at public precision \(X\) and AI precision \(\tau_A\) | Policy/choice function |

The baseline signal technologies are, on PDF pp. 11–12 (printed pp. 9–10),

\[
s^H_{i,t}\sim N\!\left(\theta_{i,t},\frac{1}{\lambda_Ie_{i,t}}\right),
\]

\[
s^A_{i,t}\sim N\!\left(\theta_{i,t},\frac{1}{\tau_A}\right),
\]

and

\[
s^C_{m,t}\sim N\!\left(\theta_t,\frac{1}{\lambda_GE_{m,t}}\right). \tag{1}
\]

### Probability functions

For \(Z\sim N(0,\tau^{-1})\),

\[
G(\tau)=\Pr(|Z|\le1)=2\Phi(\sqrt{\tau})-1,
\]

\[
g(\tau)=G'(\tau)=\frac{\phi(\sqrt{\tau})}{\sqrt{\tau}}.
\]

Here \(\Phi\) and \(\phi\) are the standard normal CDF and density, and \(\tau\) is a dummy precision argument. Consequently,

\[
g'(\tau)
=-\frac{g(\tau)}2\left(1+\frac1\tau\right)<0
\qquad(\tau>0).
\]

## Part C — Static agent problem

### 1. Information structure before optimization

The initial common-state prior and evolution are

\[
\theta_1\sim N(0,\Sigma_0^2),\qquad
\theta_{t+1}=\theta_t+\varepsilon_t,\qquad
\varepsilon_t\sim N(0,\Sigma^2).
\]

At the beginning of period \(t\), the agent observes the history of public signals produced by earlier cohorts. The resulting conditional variance and precision are

\[
V_t=\operatorname{Var}(\theta_t\mid\mathcal I_t),
\qquad X_t=V_t^{-1}.
\]

Thus \(\theta_t\) is the state of general knowledge, while \(X_t\)—precision about that state—is the stock of usable general knowledge.

The private state has prior

\[
\theta_{i,t}\sim N(0,\sigma^2).
\]

After choosing \(e_{i,t}\), the agent receives the human signal \(s^H_{i,t}\) and, post-AI, \(s^A_{i,t}\). Their combined posterior precision is Equation (4):

\[
Y_{i,t}=\sigma^{-2}+\lambda_Ie_{i,t}+\tau_A. \tag{4}
\]

The implied posterior mean for the idiosyncratic state is

\[
\mathbb E[\theta_{i,t}\mid s^H_{i,t},s^A_{i,t}]
=
\frac{\lambda_Ie_{i,t}s^H_{i,t}+\tau_As^A_{i,t}}
     {\sigma^{-2}+\lambda_Ie_{i,t}+\tau_A},
\]

where this displayed weighted-average formula is derived from the stated Gaussian structure rather than separately printed by the paper.

Human effort also creates a signal about \(\theta_t\), but the individual is atomistic and that signal is aggregated only after current decisions. It benefits future cohorts rather than entering the current agent’s private marginal return. Agentic AI contributes only context-specific precision in the baseline.

The timing on PDF p. 12 (printed p. 10) is:

1. Observe inherited public history and choose effort.
2. Observe the human private signal.
3. Receive the AI recommendation.
4. Choose predictions and receive payoff.
5. Aggregate current human-generated general knowledge for future cohorts.

### 2. Predictions

The paper states in Equation (5):

\[
x_{i,t}=\mathbb E[\theta_t\mid\mathcal I_{i,t}],
\qquad
y_{i,t}=\mathbb E[\theta_{i,t}\mid\mathcal I_{i,t}]. \tag{5}
\]

These posterior means maximize the probability that the respective Gaussian prediction error lies within the unit tolerance band.

### 3. Exact effort optimization problem

After substituting the Bayesian predictions, the paper’s expected payoff is Equation (6):

\[
U_{i,t}
=
f(0,0)
+G(X_t)\Delta_G
+G(X_t)G(Y_{i,t})\Delta_X
-\frac1\alpha e_{i,t}^{\alpha}, \tag{6}
\]

where

\[
Y_{i,t}=\sigma^{-2}+\lambda_Ie_{i,t}+\tau_A.
\]

Thus the exact static effort problem in §§3.3–3.5 is

\[
\boxed{
\max_{e_{i,t}\ge0}
\left\{
f(0,0)+G(X_t)\Delta_G
+G(X_t)G(\sigma^{-2}+\lambda_Ie_{i,t}+\tau_A)\Delta_X
-\frac1\alpha e_{i,t}^{\alpha}
\right\}.
}
\]

The agent takes \(X_t\) and \(\tau_A\) as given.

### 4. Derivation of the expected objective

Let

\[
A=\mathbf 1\{|x_{i,t}-\theta_t|\le1\},\qquad
B=\mathbf 1\{|y_{i,t}-\theta_{i,t}|\le1\}.
\]

From the definitions of the cross-differences,

\[
f(A,B)
=f(0,0)+\Delta_GA+\Delta_IB+\Delta_XAB.
\]

Under the posterior-mean predictions,

\[
\Pr(A=1)=G(X_t),\qquad
\Pr(B=1)=G(Y_{i,t}).
\]

The factorization used by the paper gives

\[
\mathbb E[AB]=G(X_t)G(Y_{i,t}).
\]

Therefore,

\[
\mathbb E[f(A,B)]
=f(0,0)
+\Delta_GG(X_t)
+\Delta_IG(Y_{i,t})
+\Delta_XG(X_t)G(Y_{i,t}).
\]

Assumption 1 sets \(\Delta_I=0\), producing Equation (6) after subtracting effort cost.

### 5. First-order condition

Differentiate \(Y_{i,t}\):

\[
\frac{\partial Y_{i,t}}{\partial e_{i,t}}=\lambda_I.
\]

Differentiate the complementarity term:

\[
\frac{\partial}{\partial e_{i,t}}
\left[\Delta_XG(X_t)G(Y_{i,t})\right]
=
\Delta_XG(X_t)g(Y_{i,t})\lambda_I.
\]

The cost derivative is

\[
\frac{d}{de_{i,t}}\left(\frac1\alpha e_{i,t}^{\alpha}\right)
=e_{i,t}^{\alpha-1}.
\]

Hence

\[
\frac{\partial U_{i,t}}{\partial e_{i,t}}
=
\Delta_XG(X_t)\lambda_I
g(\sigma^{-2}+\lambda_Ie_{i,t}+\tau_A)
-e_{i,t}^{\alpha-1}.
\]

For an interior optimum, the FOC is

\[
\boxed{
\Delta_XG(X_t)\lambda_I
g(\sigma^{-2}+\lambda_Ie_{i,t}+\tau_A)
=e_{i,t}^{\alpha-1}.
}
\]

The paper defines

\[
e(X,\tau_A)
:=
\left\{
e\ge0:
\Delta_XG(X)\lambda_I
g(\sigma^{-2}+\lambda_Ie+\tau_A)
=e^{\alpha-1}
\right\}.
\]

### 6. Economic meaning of every FOC term

- \(\Delta_X\): extra output created by successfully combining general and context-specific knowledge.
- \(G(X_t)\): probability that the general-state prediction is successful.
- \(\lambda_I\): context-specific precision generated by one additional unit of effort.
- \(g(Y_{i,t})\): marginal increase in the probability of a successful context-specific prediction from more precision.
- \(e_{i,t}^{\alpha-1}\): marginal effort cost.

Neither \(\Delta_G\), \(\lambda_G\), nor \(I\) appears directly in the private FOC. Current effort cannot change inherited \(X_t\), and the public information produced by the agent is an uninternalized benefit to future cohorts.

### 7. Concavity, existence, uniqueness, and corners

For \(e_{i,t}>0\),

\[
\frac{\partial^2U_{i,t}}{\partial e_{i,t}^2}
=
\Delta_XG(X_t)\lambda_I^2g'(Y_{i,t})
-(\alpha-1)e_{i,t}^{\alpha-2}<0.
\]

The relevant assumptions are:

- \(\alpha>1\), so marginal cost is strictly increasing.
- \(\lambda_I>0\).
- \(\Delta_X>0\), from Assumption 1.
- \(X_t\ge0\) and \(\tau_A\ge0\).
- \(g\) is decreasing on positive precisions.

Existence follows because the objective is continuous and the cost forces it to \(-\infty\) as \(e\to\infty\). Strict concavity gives uniqueness.

If \(X_t>0\), then

\[
\left.\frac{\partial U_{i,t}}{\partial e_{i,t}}\right|_{e=0}
=
\Delta_XG(X_t)\lambda_Ig(\sigma^{-2}+\tau_A)>0
\]

for a positive finite initial idiosyncratic precision. Since the derivative eventually becomes negative, the unique optimum is interior.

At \(X_t=0\), \(G(X_t)=0\), effort produces no private benefit, and the unique optimum is

\[
e_{i,t}=0.
\]

Footnote 4 on PDF p. 16 (printed p. 14) states this corner explicitly. Starting from \(X_1>0\), the equilibrium recursion keeps \(X_t>0\) at every finite date, so equilibrium effort is interior along that path.

## Part D — Section 3.4 and Observation 1

### Observation 1 as printed

On PDF p. 15 (printed p. 13):

> “Public precision \(X_t\) complements human effort, while agentic-AI precision \(\tau_A\) substitutes for human effort. That is:”

\[
\boxed{
\frac{\partial^2U_{i,t}}{\partial e_{i,t}\partial X_t}>0,
\qquad
\frac{\partial^2U_{i,t}}{\partial e_{i,t}\partial\tau_A}<0.
}
\]

### First cross-partial: general knowledge and effort

Start from

\[
U_{i,t}
=f(0,0)+G(X_t)\Delta_G
+G(X_t)G(Y_{i,t})\Delta_X-\frac1\alpha e_{i,t}^{\alpha}.
\]

The marginal return to effort is

\[
U_e
=\Delta_XG(X_t)\lambda_Ig(Y_{i,t})-e_{i,t}^{\alpha-1}.
\]

Differentiate with respect to \(X_t\):

\[
U_{eX}
=
\Delta_X\lambda_IG'(X_t)g(Y_{i,t})
=
\boxed{\Delta_X\lambda_Ig(X_t)g(Y_{i,t})>0.}
\]

This is the cross-partial establishing that general knowledge complements human effort.

Its strict sign requires:

- \(\Delta_X>0\);
- \(\lambda_I>0\);
- \(X_t>0\), so \(g(X_t)\) is finite and positive;
- \(Y_{i,t}>0\), so \(g(Y_{i,t})>0\).

Economically, greater public precision makes an improvement in private/context-specific precision more valuable because the two successful predictions are complementary in production.

### Second cross-partial: agentic AI and effort

Again begin with

\[
U_e=\Delta_XG(X_t)\lambda_Ig(Y_{i,t})-e_{i,t}^{\alpha-1}.
\]

Since

\[
\frac{\partial Y_{i,t}}{\partial\tau_A}=1,
\]

we obtain

\[
U_{e\tau_A}
=
\boxed{
\Delta_XG(X_t)\lambda_Ig'(Y_{i,t})<0.
}
\]

Using the Gaussian formula,

\[
g'(Y)
=-\frac{g(Y)}2\left(1+\frac1Y\right)<0
\quad (Y>0).
\]

This is the cross-partial establishing that agentic AI substitutes for human effort.

Its strict sign requires:

- \(\Delta_X>0\);
- \(\lambda_I>0\);
- \(X_t>0\), so \(G(X_t)>0\);
- \(Y_{i,t}>0\), so \(g'(Y_{i,t})<0\).

Economically, AI precision and human effort both raise the same context-specific precision \(Y_{i,t}\). Because prediction success has diminishing returns to precision, more AI precision reduces the marginal payoff from self-acquired precision.

### Scope and boundary qualification

These are pointwise/global sign properties of the objective on the positive-precision domain, not merely local results at an optimum. They do not themselves require that the FOC hold.

They are not strictly valid at the knowledge-collapse boundary in the form printed:

- At \(X_t=0\), \(G(X_t)=0\), so the AI-effort cross-effect is zero rather than strictly negative.
- \(g(X_t)\) is not finite at \(X_t=0\), so the ordinary general-knowledge cross-derivative requires a positive-domain or one-sided interpretation.
- The optimal effort at that boundary is the corner \(e=0\).

For \(X_1>0\), the equilibrium remains in the positive domain at all finite dates, so the displayed strict signs apply along the interior equilibrium path.

Observation 2 then uses monotone comparative statics to conclude that \(e(X,\tau_A)\) is increasing in \(X\) and decreasing in \(\tau_A\), strictly for \(X>0\) (PDF p. 16, printed p. 14).

## Part E — Is welfare increasing in AI accuracy?

No. The paper’s long-run welfare is not necessarily increasing in agentic-AI accuracy.

### Welfare concept

Section 4 defines welfare as the steady-state expected utility of a representative cohort, measured relative to \(f(0,0)\). For a steady state \((\bar X,\bar e,\bar Y)\),

\[
\bar U
=
G(\bar X)\Delta_G
+G(\bar X)G(\bar Y)\Delta_X
-\frac1\alpha\bar e^\alpha.
\]

Equation (10) writes it as

\[
\bar U(\bar X,\tau_A)
=
G(\bar X)\Delta_G
+
\max_{e'\ge0}
\left[
G(\sigma^{-2}+\lambda_Ie'+\tau_A)
G(\bar X)\Delta_X
-\frac1\alpha(e')^\alpha
\right]. \tag{10}
\]

When a high-knowledge steady state exists,

\[
\bar U^+=\bar U(\bar X_h,\tau_A).
\]

### Private/static effect

Holding \(X\) fixed, more AI precision raises the value of the private static problem. By the envelope theorem,

\[
\left.
\frac{\partial\bar U(X,\tau_A)}{\partial\tau_A}
\right|_X
=
g(Y)G(X)\Delta_X\ge0,
\]

strictly when \(X>0\). This is the contemporaneous benefit of a better personalized recommendation.

### Dynamic/equilibrium effect

At the high-knowledge steady state, Section 4.3 obtains

\[
\frac{\partial\bar U^+}{\partial\tau_A}
=
\underbrace{g(\bar Y_h)G(\bar X_h)\Delta_X}_{\text{direct effect }\ge0}
+
\underbrace{
\frac{\partial G(\bar X_h)}{\partial\tau_A}
\left[\Delta_G+G(\bar Y_h)\Delta_X\right]
}_{\text{indirect effect }\le0}.
\]

The indirect term is negative because higher AI precision crowds out human effort and thereby lowers the steady-state stock of general knowledge.

### Formal non-monotonicity results

Assumption 2 is

\[
\sigma^{-2}\ge\sqrt2-1.
\]

Under this regularity condition:

- Proposition 10, PDF p. 28 (printed p. 26): if
  \[
  \alpha-1>\frac14,
  \]
  there is a finite \(0\le\tau_A^\star<\infty\) such that \(\bar U^+\) rises on \((0,\tau_A^\star)\), falls on \((\tau_A^\star,\infty)\), and tends to zero as \(\tau_A\to\infty\).

- Proposition 11, same page: if
  \[
  \alpha-1<\frac14,
  \]
  there is a finite \(0\le\tau_A^\star<\tau_A^c\) such that high-state welfare rises below \(\tau_A^\star\), falls between \(\tau_A^\star\) and the collapse threshold, and is zero after complete collapse.

The formal propositions permit \(\tau_A^\star=0\), so an interior positive optimum is not guaranteed by their displayed statements, notwithstanding the abstract’s broader “interior” language.

The knife-edge case \(\alpha-1=1/4\) is not covered by these propositions. If Assumption 2 fails, footnote 6 explicitly warns that welfare can be non-single-peaked, with its derivative changing sign twice.

### Equilibrium selection

When \(\alpha-1<1/4\), welfare is also path-dependent:

- If \(\tau_A<\tau_A^c\) and \(X_1>\bar X_m\), the economy reaches \(\bar X_h\) and obtains \(\bar U^+\).
- If \(X_1<\bar X_m\), it reaches knowledge collapse and obtains zero.
- Higher \(\tau_A\) raises \(\bar X_m\), shrinking the high-knowledge basin.
- Once AI accuracy exceeds the collapse threshold, the high-knowledge steady state disappears.

Thus even before the direct/indirect welfare derivative turns negative, more accurate AI can lower realized welfare by changing equilibrium selection.

The intuitive monotonicity claim fails because the private benefit of better recommendations ignores the public information externality: human effort creates general knowledge for later cohorts, yet individuals choose effort only for its private context-specific benefit.

## Part F — Section 5 assumption audit

Section 5 contains three explicit extensions.

### 5.1 Community versus AI aggregation

Baseline assumption:

- Agentic AI affects only context-specific information.
- Aggregation capacity \(I\) is fixed and independent of AI accuracy.
- AI does not directly change public knowledge or improve its aggregation.

Modification:

\[
I(\tau_A)=I_0+\exp(\eta\tau_A), \tag{11}
\]

where \(I_0>0\) and \(\eta\ge0\). The public-signal precision becomes

\[
\lambda_GI(\tau_A)e_t.
\]

What survives or changes:

- The static substitution effect remains: higher \(\tau_A\) lowers \(e(X,\tau_A)\).
- AI now also has an opposing aggregation/complementarity channel.
- Proposition 14 requires
  \[
  \eta<\eta^{\mathrm{crit}}
  =\frac{1}{2(\alpha-1)}.
  \]
  Under this condition, \(\bar X_h(\tau_A)\downarrow0\) as \(\tau_A\to\infty\), and the welfare-maximizing AI precision remains finite.
- The paper does not claim that conclusion when AI-driven aggregation grows faster than this bound.

### 5.2 Synthetic data

Baseline assumption:

- New general knowledge is generated only by human effort and then aggregated.

Modification:

- Each period produces an additional exogenous common-state signal with finite precision \(\tau_{\mathrm{syn}}\ge0\).
- The law of motion becomes
  \[
  X_{t+1}
  =
  \left[
  (X_t+\lambda_GE_t+\tau_{\mathrm{syn}})^{-1}
  +\Sigma^2
  \right]^{-1}. \tag{12}
  \]

What survives or changes:

- Higher \(\tau_A\) still crowds out \(e(X,\tau_A)\) and human-generated public information.
- If \(0<\tau_{\mathrm{syn}}<\infty\), then \(F_{\mathrm{syn}}(0)>0\), so zero knowledge is no longer a fixed point.
- The former zero-knowledge collapse trap becomes a strictly positive low-knowledge steady state.
- Proposition 15 says both the least and greatest steady-state public precisions and efforts are strictly increasing in \(I\), strictly decreasing in \(\tau_A\), and strictly increasing in \(\tau_{\mathrm{syn}}\).
- The authors qualify robustness by requiring that synthetic data not fully replace human-generated knowledge.

### 5.3 Imperfect separability of effort

Baseline assumption:

- One unit of effort jointly and linearly produces both:
  \[
  \lambda_Ie_{i,t}
  \quad\text{and}\quad
  \lambda_Ge_{i,t}.
  \]
- Thus human learning has a fixed “economy of scope” between private and public information.

Modification:

- Private-signal precision remains \(\lambda_Ie_{i,t}\).
- Public contribution becomes
  \[
  \lambda_Ge_{i,t}^{\beta},
  \qquad \beta\in[0,\infty).
  \]
- Its elasticity with respect to private effort is
  \[
  \frac{d\log(e^\beta)}{d\log e}=\beta.
  \]
- \(\beta=1\) is the baseline; \(\beta=0\) is perfect separability in the paper’s specific sense that changes in \(e\) no longer change public-learning input.

What survives or changes:

- For every \(\beta>0\), Proposition 16 says all baseline results continue to apply.
- The collapse/multiple-steady-state condition changes from
  \[
  \alpha-1<\frac14
  \quad\text{to}\quad
  \alpha-1<\frac{\beta}{4}.
  \]
  Correspondingly, the opposite inequality gives the robust-learning regime.
- Proposition 12’s asymptotics become
  \[
  \lim_{I\to\infty}\frac{\tau_A^c}{\log I}
  =\frac{2(\alpha-1)}{\beta},
  \]
  and
  \[
  \lim_{I\to\infty}\frac{\tau_A^\star}{\log I}
  =\frac{2(\alpha-1)}{\alpha-1+\beta}.
  \]
- Proposition 16 does not extend the “all baseline results” claim to \(\beta=0\).

### Production-side assumption never relaxed

The relevant baseline formulation appears on PDF p. 10 (printed p. 8):

> “Throughout, we impose the following assumption on the production function:
> Assumption 1. \(\Delta_I=0\) and \(\Delta_X>0\).”

This means:

\[
f(0,1)-f(0,0)=0,
\]

so context-specific knowledge alone has no incremental productive value, and

\[
f(1,1)-f(1,0)-f(0,1)+f(0,0)>0,
\]

so general and context-specific knowledge are strict complements.

This is a production-side assumption because it restricts \(f\), the mapping from successful predictions to task output. It is distinct from assumptions about how signals are generated or aggregated.

None of Section 5 relaxes it:

- §5.1 changes \(I\).
- §5.2 adds \(\tau_{\mathrm{syn}}\) to public-signal precision.
- §5.3 changes public information production from \(e\) to \(e^\beta\).
- None permits \(\Delta_I>0\), sets \(\Delta_X\le0\), or replaces the task-production function.

The Leontief specification \(f(x,y)=\min\{x,y\}\) is only an example satisfying Assumption 1; it is not imposed as the production function.

The authors explicitly say “Throughout,” but do not separately announce at the end that Section 5 never relaxes Assumption 1. The conclusion that it remains maintained through all 69 pages is therefore a document-wide audit inference supported by the absence of any replacement assumption and by §5.1’s statement that “all remaining parts of the model stay unchanged.”

## Part G — Static claim map for later Lean formalization

| Exact claim | Source | Assumptions | Conclusion | Proof idea | Lean suitability |
|---|---|---|---|---|---|
| Posterior context precision is additive | Eq. (4), PDF p. 13 | Gaussian prior and signal structure | \(Y=\sigma^{-2}+\lambda_Ie+\tau_A\) | Gaussian conjugacy | Medium; probability infrastructure is substantial |
| Optimal predictions are posterior means | Eq. (5), PDF p. 14 | Gaussian symmetric posterior and unit tolerance loss | \(x=E[\theta_t\mid\mathcal I]\), \(y=E[\theta_{i,t}\mid\mathcal I]\) | Centered interval has maximum Gaussian mass | Medium |
| Expected utility has the separable-plus-complementarity form | Eq. (6), PDF p. 14 | Assumption 1 and stated posterior probabilities | \(U=f_{00}+G(X)\Delta_G+G(X)G(Y)\Delta_X-e^\alpha/\alpha\) | Expand \(f\) by its cross-differences and take expectations | High if probability identities are assumed |
| Static FOC | §3.5, PDF p. 16 | Differentiability and an interior optimum | \(\Delta_XG(X)\lambda_Ig(Y)=e^{\alpha-1}\) | Differentiate Eq. (6) | Very high |
| Unique finite best response | §3.5, PDF p. 16 | \(\alpha>1,\lambda_I>0,\Delta_X>0\), decreasing \(g\) | Unique \(e(X,\tau_A)\) | Marginal benefit decreases; marginal cost strictly increases | Very high |
| Positive public precision implies interior effort | §3.5 and footnote 4 | \(X>0\) and positive signal parameters | \(e(X,\tau_A)>0\) | Positive derivative at zero and negative derivative at infinity | Very high |
| Zero public precision gives a corner | Footnote 4, PDF p. 16 | \(X=0\), Assumption 1 | \(e(0,\tau_A)=0\) | \(G(0)=0\), leaving only effort cost | Very high |
| General knowledge complements effort | Observation 1, PDF p. 15 | \(X,Y>0,\Delta_X>0,\lambda_I>0\) | \(U_{eX}=\Delta_X\lambda_Ig(X)g(Y)>0\) | Direct differentiation | Very high |
| Agentic AI substitutes for effort | Observation 1, PDF p. 15 | \(X,Y>0,\Delta_X>0,\lambda_I>0\) | \(U_{e\tau_A}=\Delta_XG(X)\lambda_Ig'(Y)<0\) | \(g'(Y)<0\) | Very high |
| Best-response monotonicity | Observation 2, PDF p. 16 | Unique maximizer plus Observation 1 | \(e\) rises in \(X\), falls in \(\tau_A\) | Monotone comparative statics | High |

## Part H — Epistemic classification

### A. Directly stated by the paper

- The model is in Section 3, with the static problem in §§3.3–3.5.
- Equations (1)–(6), the Gaussian signal precisions, and the expected-utility formula.
- Assumption 1: \(\Delta_I=0\) and \(\Delta_X>0\).
- Observation 1 and its two displayed cross-partials.
- Strict concavity, existence and uniqueness of the static best response.
- The \(X=0\) effort corner and interiority along paths beginning at \(X_1>0\).
- The steady-state welfare definition and Equation (10).
- Propositions 10–11 establishing non-monotone welfare under their stated conditions.
- The three Section 5 extensions and Propositions 14–16.

### B. Derived from the paper’s equations but not separately stated

- The explicit Gaussian weighted-average formula for \(y_{i,t}\).
- The four-value decomposition
  \[
  f(A,B)=f(0,0)+\Delta_GA+\Delta_IB+\Delta_XAB.
  \]
- The formula
  \[
  g'(\tau)=-\frac{g(\tau)}2(1+\tau^{-1}).
  \]
- The full second derivative of utility with respect to effort.
- Fixed-\(X\) static value is weakly increasing in AI precision.
- The strict-sign domain qualifications \(X>0\) and \(Y>0\).

### C. Interpretation or document-wide inference

- The instructor’s “Section 2 static problem” designation corresponds to a different numbering scheme or version; it does not match this controlling PDF.
- Assumption 1 is the production-side assumption targeted by the final question.
- It is never relaxed anywhere in the 69-page file; “Throughout” is printed, while the conclusion that no later section changes it follows from the full-document audit.
- The Lean-suitability judgments in the claim map.
- The main economic explanation: private AI benefits can coexist with lower long-run welfare because individuals do not internalize the general knowledge their effort creates for future cohorts.

---

## 3. EXTENSION GENERATION

### USER PROMPT

Your source-faithful reconstruction is now accepted as the baseline for the next step.

Do NOT modify repository files yet.

I now want you to act as a modeler rather than a summarizer.

The instructor explicitly encouraged us to let the AI propose an extension and then understand, derive, and audit it ourselves.

Use ONLY the course-designated 69-page PDF as the source for what the authors already do.

TASK — PROPOSE THREE GENUINELY NEW EXTENSIONS

First, restate briefly the three extensions already studied in Section 5 so that you do not reinvent them:

1. AI-enhanced community aggregation,
2. synthetic data,
3. imperfect separability of effort.

Then propose THREE new extensions that are NOT already analyzed in the paper.

IMPORTANT:
At least ONE of the three candidates must explore relaxing the production-side Assumption 1 that the paper maintains throughout:

[
\Delta\_I = 0,\qquad \Delta\_X>0.
]

You may choose whether to relax only (\Delta\_I=0), only the complementarity restriction, or both, but justify the choice.

For EACH candidate extension provide:

1. Motivation.
2. Exact baseline assumption being changed.
3. New mathematical assumption.
4. Modified static expected-utility problem.
5. Modified first-order condition.
6. Whether the original Observation 1 cross-partials still hold, change sign, or require new conditions.
7. At least two nontrivial comparative statics or qualitative insights.
8. Any new corner solution, threshold, maximum, or regime that appears.
9. One candidate proposition stated formally.
10. A proof sketch.
11. Whether the extension has a meaningful dynamic implication for knowledge collapse, WITHOUT reproducing the full dynamic model.
12. Whether it is suitable for:
    - handwritten derivation,
    - Lean formalization,
    - a 5-minute presentation.

Then rank the three extensions from best to worst using:

- economic novelty,
- mathematical tractability,
- connection to the instructor's production-side trap,
- strength of the economic insight,
- ease of formal verification in Lean,
- usefulness for a 5-minute oral exam.

Be skeptical of your own proposals:

- explicitly check that none is already contained in Section 5,
- identify any result that depends on a new assumption rather than following automatically.

Do not modify any files.
Return analysis only.

### CODEX RAW ANSWER

# Modeling analysis

The three candidate extensions below are original proposals, not claims made by the paper. The paper is used only to identify the baseline.

## Section 5 extensions already in the paper

1. **AI-enhanced community aggregation (§5.1).** Fixed aggregation capacity \(I\) becomes
   \[
   I(\tau_A)=I_0+\exp(\eta\tau_A).
   \]
   AI therefore improves both personalized recommendations and public-knowledge aggregation. If \(\eta<1/[2(\alpha-1)]\), the paper’s finite welfare-maximizing AI precision result survives.

2. **Synthetic data (§5.2).** An exogenous common-state signal with precision \(\tau_{\mathrm{syn}}\) is added:
   \[
   X_{t+1}
   =
   \left[(X_t+\lambda_GE_t+\tau_{\mathrm{syn}})^{-1}+\Sigma^2\right]^{-1}.
   \]
   For finite positive \(\tau_{\mathrm{syn}}\), exact zero knowledge ceases to be a steady state and is replaced by a positive low-knowledge state.

3. **Imperfect separability of effort (§5.3).** Private precision remains \(\lambda_Ie\), while an agent’s public contribution becomes
   \[
   \lambda_Ge^\beta.
   \]
   For \(\beta>0\), the qualitative baseline results survive, with the stability cutoff changing from \(\alpha-1<1/4\) to \(\alpha-1<\beta/4\).

None of these changes the task-production restriction \(\Delta_I=0,\Delta_X>0\).

---

# Candidate 1 — Give context-specific knowledge standalone value

## 1. Motivation

The maintained assumption \(\Delta_I=0\) is strong: personalized knowledge is completely worthless unless the general-state prediction is also correct. In many applications, context-specific information retains some value even when general understanding is poor. A patient’s symptoms, for example, might still support triage or referral even without a correct diagnosis.

This is the cleanest extension of the instructor’s production-side trap.

## 2. Baseline assumption changed

The paper’s Assumption 1 is

\[
\Delta_I=0,\qquad \Delta_X>0.
\]

I propose relaxing only \(\Delta_I=0\), while retaining strict complementarity \(\Delta_X>0\). This isolates the role of standalone context-specific value without simultaneously reversing the paper’s central complementarity mechanism.

## 3. New mathematical assumption

Assume

\[
\Delta_I>0,\qquad \Delta_X>0,\qquad \Delta_G\ge0,
\]

with the normalization

\[
\Delta_G+\Delta_I+\Delta_X=1.
\]

These restrictions preserve monotonicity of \(f\). Define

\[
B(X):=\Delta_I+\Delta_XG(X)>0.
\]

## 4. Modified static problem

The general four-outcome decomposition gives

\[
U(e;X,\tau_A)
=
f(0,0)+\Delta_GG(X)
+\Delta_IG(Y)
+\Delta_XG(X)G(Y)
-\frac{e^\alpha}{\alpha},
\]

where

\[
Y=\sigma^{-2}+\lambda_Ie+\tau_A.
\]

Equivalently,

\[
\boxed{
\max_{e\ge0}
\left\{
f(0,0)+\Delta_GG(X)
+B(X)G(\sigma^{-2}+\lambda_Ie+\tau_A)
-\frac{e^\alpha}{\alpha}
\right\}.
}
\]

## 5. Modified FOC

For an interior optimum,

\[
\boxed{
B(X)\lambda_Ig(Y)=e^{\alpha-1}.
}
\]

Relative to the paper, \(\Delta_XG(X)\) is replaced by

\[
\Delta_I+\Delta_XG(X).
\]

The second derivative is

\[
U_{ee}
=
B(X)\lambda_I^2g'(Y)-(\alpha-1)e^{\alpha-2}<0,
\]

so the optimum remains unique.

## 6. Observation 1

The general-knowledge cross-partial is unchanged in form:

\[
\boxed{
U_{eX}
=
\Delta_X\lambda_Ig(X)g(Y)>0
}
\]

for \(X,Y>0\). General knowledge still complements effort because \(\Delta_X>0\).

The AI-effort cross-partial becomes

\[
\boxed{
U_{e\tau_A}
=
B(X)\lambda_Ig'(Y)<0.
}
\]

Thus agentic AI remains a substitute for human effort.

The important boundary change is at \(X=0\):

\[
B(0)=\Delta_I>0.
\]

Consequently, AI continues to substitute for effort even when public knowledge is zero. In the original model, this cross-effect vanishes at \(X=0\).

## 7. Comparative statics and insights

Let \(e^*(X,\tau_A,\Delta_I)\) denote the optimum. Implicit differentiation gives

\[
\frac{\partial e^*}{\partial X}>0,\qquad
\frac{\partial e^*}{\partial\tau_A}<0,\qquad
\frac{\partial e^*}{\partial\Delta_I}>0.
\]

Two substantive insights follow.

First, standalone context value creates a human-effort floor. At \(X=0\),

\[
\Delta_I\lambda_I
g(\sigma^{-2}+\lambda_Ie+\tau_A)
=e^{\alpha-1},
\]

which has a unique positive solution for every finite \(\tau_A\). Human learning no longer stops simply because inherited general knowledge is absent.

Second, AI retains useful output in a low-general-knowledge economy. Relative to the paper’s no-information baseline, welfare at \(X=0\) becomes

\[
\max_{e\ge0}
\left[
\Delta_IG(\sigma^{-2}+\lambda_Ie+\tau_A)
-\frac{e^\alpha}{\alpha}
\right]>0.
\]

Thus “knowledge collapse” no longer means that personalized information is socially worthless.

## 8. New corner, threshold, or regime

The exact zero-knowledge steady state disappears for finite \(\tau_A\). Under the baseline public-knowledge law,

\[
F(0)
=
\left[
(\lambda_GI e^*(0,\tau_A))^{-1}+\Sigma^2
\right]^{-1}>0.
\]

The former collapse equilibrium is therefore replaced by a positive low-knowledge equilibrium.

Nevertheless,

\[
e^*(0,\tau_A)\to0
\quad\text{as}\quad
\tau_A\to\infty,
\]

because \(g(\sigma^{-2}+\tau_A)\to0\). Hence the low-knowledge floor can approach zero as AI becomes arbitrarily precise.

This resembles §5.2’s positive low state, but the mechanism is genuinely different: §5.2 injects public information, while this extension changes task production and preserves human effort at low \(X\).

## 9. Candidate proposition

**Proposition C1.** Suppose \(\alpha>1\), \(\lambda_I,\lambda_G,I>0\), \(\Delta_I,\Delta_X>0\), and \(\sigma^{-2}+\tau_A>0\). Then for every \(X\ge0\) and finite \(\tau_A\), the modified static problem has a unique interior solution \(e^*(X,\tau_A)>0\). Moreover,

\[
e_X^*>0\quad(X>0),\qquad
e_{\tau_A}^*<0,\qquad
e_{\Delta_I}^*>0.
\]

Under the paper’s baseline public-learning law, \(F(0)>0\); hence zero public knowledge is not a steady state.

## 10. Proof sketch

Define

\[
H(e,X,\tau_A,\Delta_I)
=
B(X)\lambda_Ig(\sigma^{-2}+\lambda_Ie+\tau_A)-e^{\alpha-1}.
\]

Because \(g'<0\),

\[
H_e
=
B(X)\lambda_I^2g'(Y)-(\alpha-1)e^{\alpha-2}<0.
\]

Also \(H(0)>0\) and \(H(e)\to-\infty\), proving existence, uniqueness, and interiority. The implicit-function theorem gives the comparative statics from

\[
H_X>0,\qquad H_{\tau_A}<0,\qquad H_{\Delta_I}>0.
\]

Finally, \(e^*(0,\tau_A)>0\) implies positive aggregate effort and therefore \(F(0)>0\).

## 11. Dynamic implication

The absorbing knowledge-collapse state is eliminated. Multiple high- and low-knowledge steady states could remain, but the lower state must be strictly positive for finite AI precision. This weakens the paper’s sharp collapse result while preserving AI crowd-out and general-knowledge complementarity.

That conclusion depends critically on \(\Delta_I>0\). Merely replacing \(\Delta_I=0\) with \(\Delta_I\ge0\) would not establish it.

## 12. Suitability

- Handwritten derivation: **Excellent**
- Lean formalization: **Excellent**; one-dimensional strict concavity and implicit signs
- Five-minute presentation: **Excellent**; directly exposes the maintained production assumption

---

# Candidate 2 — Endogenous costly attention to AI

## 1. Motivation

The baseline gives every agent the full AI signal automatically. In practice, people decide whether and how intensively to consult an AI system. Searching, prompting, verifying, and integrating its output consume attention.

Endogenous AI use can create adoption thresholds that exogenous \(\tau_A\) cannot represent.

## 2. Baseline assumption changed

Baseline:

- Every agent receives \(s^A\) at full precision \(\tau_A\).
- AI use has no separate private cost.
- Effective AI precision is independent of the agent’s choice.

## 3. New mathematical assumption

Let

\[
a\in[0,1]
\]

denote AI attention. Effective AI precision is \(a\tau_A\), and attention costs \(\kappa a\), with \(\kappa>0\):

\[
s^A(a)\sim N\!\left(\theta_i,\frac1{a\tau_A}\right).
\]

At \(a=0\), the AI signal is uninformative. Retain the paper’s Assumption 1 and define

\[
Q(X):=\Delta_XG(X).
\]

The linear attention cost is chosen deliberately because it creates transparent non-adoption, interior-use, and full-use regimes.

## 4. Modified static problem

\[
\boxed{
\max_{\substack{e\ge0\\0\le a\le1}}
\left\{
f(0,0)+\Delta_GG(X)
+Q(X)G(Y)
-\frac{e^\alpha}{\alpha}
-\kappa a
\right\},
}
\]

where

\[
Y=\sigma^{-2}+\lambda_Ie+a\tau_A.
\]

## 5. Modified FOCs and KKT conditions

Effort is interior for \(X>0\), so

\[
\boxed{
Q(X)\lambda_Ig(Y)=e^{\alpha-1}.
}
\]

The attention derivative is

\[
U_a=Q(X)\tau_Ag(Y)-\kappa.
\]

Thus:

\[
a=0
\quad\Longleftrightarrow\quad
Q(X)\tau_Ag(\sigma^{-2}+\lambda_Ie)\le\kappa,
\]

\[
0<a<1
\quad\Longrightarrow\quad
\boxed{Q(X)\tau_Ag(Y)=\kappa,}
\]

and

\[
a=1
\quad\Longleftrightarrow\quad
Q(X)\tau_Ag(\sigma^{-2}+\lambda_Ie+\tau_A)\ge\kappa
\]

when evaluated at the corresponding constrained effort optimum.

## 6. Observation 1

Holding \(a\) fixed,

\[
\boxed{
U_{eX}
=
\Delta_X\lambda_Ig(X)g(Y)>0.
}
\]

Thus public knowledge continues to complement human effort.

Holding \(a\) fixed,

\[
\boxed{
U_{e\tau_A}
=
Q(X)\lambda_Ia\,g'(Y)\le0.
}
\]

It is strictly negative when \(a>0\), but zero in the non-adoption regime \(a=0\). Therefore, “AI substitutes for effort” becomes conditional on actual AI use.

Human effort and AI attention are also substitutes:

\[
U_{ea}
=
Q(X)\lambda_I\tau_Ag'(Y)<0.
\]

## 7. Comparative statics and insights

Let \(e_0(X)\) be the optimum conditional on \(a=0\):

\[
Q(X)\lambda_Ig(\sigma^{-2}+\lambda_Ie_0)
=e_0^{\alpha-1}.
\]

Using this FOC, the condition for beginning to use AI is

\[
\frac{\tau_A}{\lambda_I}e_0(X)^{\alpha-1}>\kappa.
\]

Equivalently, the adoption threshold is

\[
\boxed{
\tau_A^{\mathrm{adopt}}(X)
=
\frac{\kappa\lambda_I}{e_0(X)^{\alpha-1}}.
}
\]

Since \(e_0(X)\) increases with \(X\), the adoption threshold falls with general knowledge. AI use is therefore more attractive in already knowledgeable societies.

In the interior-attention regime, divide the two FOCs:

\[
\frac{e^{\alpha-1}}{\kappa}
=
\frac{\lambda_I}{\tau_A}.
\]

Hence

\[
\boxed{
e^*
=
\left(\frac{\kappa\lambda_I}{\tau_A}\right)^{1/(\alpha-1)}.
}
\]

This yields two nontrivial results:

\[
\frac{\partial e^*}{\partial\tau_A}<0,
\qquad
\frac{\partial e^*}{\partial X}=0
\quad\text{within the interior-attention regime}.
\]

The second result does not contradict \(U_{eX}>0\). When \(X\) increases, the agent responds by buying more AI precision rather than increasing human effort.

The attention FOC also implies

\[
g(Y^*)=\frac{\kappa}{Q(X)\tau_A}.
\]

Because \(g\) is decreasing,

\[
Y_X^*>0,\qquad Y_{\tau_A}^*>0.
\]

Effective AI precision satisfies

\[
a^*\tau_A=Y^*-\sigma^{-2}-\lambda_Ie^*,
\]

so it rises with both \(X\) and \(\tau_A\), although raw attention \(a^*\) itself can fall when a more capable AI requires less attention.

## 8. New corners and regimes

There are three static regimes:

1. \(a^*=0\): no adoption.
2. \(0<a^*<1\): partial attention.
3. \(a^*=1\): full attention.

The exact adoption threshold above separates the first two. Full use occurs when the marginal value of attention remains at least \(\kappa\) at \(a=1\).

A simple monotone sequence from no use to partial use to full use is not automatic. Because increased \(\tau_A\) makes each unit of attention more productive, optimal raw attention can decline even while effective AI precision rises.

## 9. Candidate proposition

**Proposition C2.** Suppose \(X>0\), \(\tau_A>0\), \(\kappa>0\), and the paper’s remaining baseline assumptions hold. The extended static problem has a unique optimizer \((e^*,a^*)\). AI is not used if and only if

\[
\tau_A\le
\frac{\kappa\lambda_I}{e_0(X)^{\alpha-1}}.
\]

Whenever \(0<a^*<1\),

\[
e^*
=
\left(\frac{\kappa\lambda_I}{\tau_A}\right)^{1/(\alpha-1)},
\]

so \(e^*_{\tau_A}<0\) and \(e^*_X=0\), while total context-specific precision is strictly increasing in both \(X\) and \(\tau_A\).

## 10. Proof sketch

Because \(G\) is concave in precision, \(Y\) is affine in \((e,a)\), and \(e^\alpha/\alpha\) is strictly convex, the objective is jointly concave and has a unique optimizer.

The no-adoption condition follows from the KKT derivative at \(a=0\). Substitution of the no-adoption effort FOC produces the threshold. In the interior regime, dividing the two FOCs gives the closed-form effort rule. Monotonicity of \(Y\) follows by inverting the strictly decreasing function \(g\).

## 11. Dynamic implication

As \(X\downarrow0\), baseline optimal effort \(e_0(X)\downarrow0\). Consequently,

\[
\tau_A^{\mathrm{adopt}}(X)\to\infty.
\]

For any finite AI capability, agents therefore stop using AI sufficiently close to knowledge collapse. Near \(X=0\), the transition map reverts locally to its no-AI form. Endogenous non-adoption may prevent AI from changing the local stability of the zero state, even though AI can still reduce effort at higher-knowledge states and enlarge the global collapse basin.

This implication requires \(\kappa>0\). With costless attention, the non-adoption region disappears.

## 12. Suitability

- Handwritten derivation: **Good**, but KKT cases must be handled carefully
- Lean formalization: **Moderate**, because of two choices and three boundary regimes
- Five-minute presentation: **Excellent**, especially the adoption threshold

This is adjacent to §4.5’s information design, but not contained in it: §4.5 has a regulator choose signal garbling, whereas this extension has each agent endogenously choose costly AI attention.

---

# Candidate 3 — Human expertise changes AI effectiveness

## 1. Motivation

The baseline makes human effort and AI perfectly additive sources of context-specific precision:

\[
Y=\sigma^{-2}+\lambda_Ie+\tau_A.
\]

But AI recommendations may require human expertise to prompt, interpret, verify, or implement. In that case, more human learning can make the AI signal itself more useful.

This directly tests whether the substitution half of Observation 1 survives a non-additive information technology.

## 2. Baseline assumption changed

Baseline:

\[
\frac{\partial^2Y}{\partial e\,\partial\tau_A}=0.
\]

Human and AI precision are technologically additive even though diminishing returns in \(G\) make them economic substitutes.

## 3. New mathematical assumption

Use the reduced-form posterior precision

\[
\boxed{
Y(e,\tau_A)
=
\sigma^{-2}+\lambda_Ie+\tau_A+\chi e\tau_A,
}
\]

where \(\chi\ge0\) measures the degree to which human expertise improves AI effectiveness.

Then

\[
Y_e=\lambda_I+\chi\tau_A>0,
\qquad
Y_{\tau_A}=1+\chi e>0,
\qquad
Y_{e\tau_A}=\chi.
\]

This is a new information-production assumption, not a consequence of the paper’s independent Gaussian precision formula.

## 4. Modified static problem

Retaining Assumption 1,

\[
\boxed{
\max_{e\ge0}
\left\{
f(0,0)+\Delta_GG(X)
+\Delta_XG(X)
G(\sigma^{-2}+\lambda_Ie+\tau_A+\chi e\tau_A)
-\frac{e^\alpha}{\alpha}
\right\}.
}
\]

## 5. Modified FOC

For an interior optimum,

\[
\boxed{
\Delta_XG(X)g(Y)(\lambda_I+\chi\tau_A)
=e^{\alpha-1}.
}
\]

The second derivative is

\[
U_{ee}
=
\Delta_XG(X)g'(Y)(\lambda_I+\chi\tau_A)^2
-(\alpha-1)e^{\alpha-2}<0.
\]

Thus the problem retains a unique optimum.

## 6. Observation 1

The general-knowledge result survives:

\[
\boxed{
U_{eX}
=
\Delta_Xg(X)g(Y)(\lambda_I+\chi\tau_A)>0.
}
\]

General knowledge remains complementary to effort.

The AI-effort cross-partial becomes

\[
\boxed{
U_{e\tau_A}
=
\Delta_XG(X)
\left[
\chi g(Y)
+
(\lambda_I+\chi\tau_A)(1+\chi e)g'(Y)
\right].
}
\]

Its sign is ambiguous.

Using

\[
-\frac{g'(Y)}{g(Y)}
=
\frac12\left(1+\frac1Y\right),
\]

AI complements effort exactly when

\[
\boxed{
\chi
>
\frac12
(\lambda_I+\chi\tau_A)(1+\chi e)
\left(1+\frac1Y\right).
}
\]

It substitutes for effort when the inequality is reversed. At \(\chi=0\), this reduces to the paper’s strictly negative cross-partial.

## 7. Comparative statics and insights

Because \(U_{ee}<0\), the implicit-function theorem gives

\[
\operatorname{sgn}(e_{\tau_A}^*)
=
\operatorname{sgn}(U_{e\tau_A}).
\]

Therefore:

- In the **crowd-out regime**, diminishing returns dominate and better AI lowers effort.
- In the **crowd-in regime**, expertise–AI synergy dominates and better AI raises effort.

This is a genuine reversal of Observation 1 rather than merely an attenuation.

General knowledge still increases effort:

\[
e_X^*>0.
\]

Moreover, the marginal precision produced by human effort is now

\[
Y_e=\lambda_I+\chi\tau_A,
\]

so better AI can raise the technological productivity of learning even when its direct information contribution produces diminishing returns.

A further qualitative implication is state dependence. Because the sign condition depends on equilibrium \(e\) and \(Y\), the same AI technology can crowd in effort in one parameter/state region and crowd it out in another. A global statement that “AI complements effort whenever \(\chi>0\)” would be false.

## 8. New threshold or regime

Define the regime function

\[
\mathcal T(e,\tau_A,\chi)
=
\chi
-\frac12
(\lambda_I+\chi\tau_A)(1+\chi e)
\left(1+\frac1Y\right).
\]

Then:

\[
\mathcal T>0
\Longrightarrow e_{\tau_A}^*>0,
\]

\[
\mathcal T<0
\Longrightarrow e_{\tau_A}^*<0,
\]

and \(\mathcal T=0\) defines the local crowd-in/crowd-out threshold.

The model does not automatically imply that this threshold is unique in \(\tau_A\). Uniqueness would require an additional monotonicity assumption on \(\mathcal T\) along the optimal-effort path.

## 9. Candidate proposition

**Proposition C3.** Suppose \(X>0\), \(\alpha>1\), \(\lambda_I>0\), \(\chi\ge0\), and Assumption 1 holds. The expertise-dependent static problem has a unique interior optimizer \(e^*(X,\tau_A,\chi)\). Public precision strictly increases optimal effort. Moreover,

\[
e_{\tau_A}^*>0
\]

if and only if

\[
\chi
>
-\frac{g'(Y^*)}{g(Y^*)}
(\lambda_I+\chi\tau_A)(1+\chi e^*),
\]

and \(e_{\tau_A}^*<0\) when the inequality is reversed.

## 10. Proof sketch

For fixed \(\tau_A\), \(Y\) is affine in \(e\). Since \(g'<0\) and effort costs are strictly convex, \(U_{ee}<0\), proving uniqueness. Differentiating the FOC with respect to \(X\) gives \(e_X^*>0\).

Differentiating it with respect to \(\tau_A\) produces \(U_{e\tau_A}\). Since

\[
e_{\tau_A}^*=-\frac{U_{e\tau_A}}{U_{ee}},
\]

and \(U_{ee}<0\), \(e_{\tau_A}^*\) has the same sign as the cross-partial.

## 11. Dynamic implication

In the baseline, the public-knowledge transition map is pointwise decreasing in \(\tau_A\) because AI always lowers effort. Here,

\[
\operatorname{sgn}\!\left(\frac{\partial F(X;\tau_A)}{\partial\tau_A}\right)
=
\operatorname{sgn}(e_{\tau_A}^*)
\]

for fixed \(X>0\), because AI affects public knowledge through effort.

Thus AI can raise the next period’s public precision in the crowd-in regime and lower it in the crowd-out regime. The collapse threshold could consequently become non-monotone in AI capability.

Zero knowledge remains an absorbing state under \(\Delta_I=0\): when \(X=0\), context-specific precision still has no productive value and effort remains zero. This extension can change the basin of collapse without automatically eliminating the collapse state.

The favorable dynamic conclusion does not follow merely from \(\chi>0\); it requires the displayed crowd-in inequality along the relevant equilibrium path.

## 12. Suitability

- Handwritten derivation: **Excellent**
- Lean formalization: **Excellent** for the static sign theorem
- Five-minute presentation: **Good to excellent**, although the reduced-form interaction needs motivation

This is not §5.3. That extension changes the public contribution from \(e\) to \(e^\beta\) while retaining additive private precision. Candidate 3 leaves public production unchanged and introduces an \(e\tau_A\) interaction in private precision.

---

# Ranking

Scores use a five-point scale.

| Rank | Extension | Novelty | Tractability | Production trap | Economic insight | Lean | Oral exam | Total |
|---:|---|---:|---:|---:|---:|---:|---:|---:|
| 1 | Standalone context-specific value | 4 | 5 | 5 | 5 | 5 | 5 | 29 |
| 2 | Expertise-dependent AI effectiveness | 4 | 5 | 2 | 5 | 5 | 4 | 25 |
| 3 | Endogenous costly AI attention | 4 | 4 | 2 | 5 | 3 | 5 | 23 |

## 1. Standalone context-specific value

This is the strongest choice. It directly addresses the assumption the paper deliberately maintains, changes both static welfare and the existence of the zero-knowledge state, and is exceptionally easy to derive and formalize. Its main limitation is that its dynamic conclusion—replacement of zero collapse by a positive low state—resembles §5.2, although it reaches that conclusion through an entirely different production-side mechanism.

## 2. Expertise-dependent AI effectiveness

This gives the sharpest new comparative-static result: Observation 1’s AI-effort sign can reverse. It remains one-dimensional and is well suited to Lean. Its weakness is that \(Y=\sigma^{-2}+\lambda_Ie+\tau_A+\chi e\tau_A\) is reduced-form; the interaction parameter needs a convincing empirical interpretation, and \(\chi>0\) alone does not guarantee crowd-in.

## 3. Endogenous costly AI attention

This is probably the most intuitive oral-exam extension because it produces a clear adoption threshold and explains why AI may be unused near collapse. It ranks third because the KKT cases complicate formal verification, and some clean results—especially \(e_X=0\) under interior adoption—depend specifically on linear attention cost. With a convex attention cost, that result generally disappears.

## Novelty audit

None of the candidates is contained in Section 5:

- Candidate 1 changes \(f\) and relaxes \(\Delta_I=0\); Section 5 never changes production.
- Candidate 2 adds an individual AI-use choice; §5.1 changes aggregation technology, and §4.5 assigns signal garbling to a regulator rather than to users.
- Candidate 3 changes the private precision aggregator by adding human–AI synergy; §5.3 changes only the mapping from effort to public information.

No repository files were modified.

---

## 4. ADVERSARIAL AUDIT OF THE CHOSEN EXTENSION

### USER PROMPT

We will tentatively choose Candidate 1:

"Give context-specific knowledge standalone productive value"

by relaxing the paper's maintained production assumption

[
\Delta\_I=0
]

to

[
\Delta\_I>0,
]

while retaining (\Delta\_X>0).

Do NOT modify repository files yet.

Before we adopt this extension, perform an adversarial mathematical audit.

1. Re-derive the modified expected utility from the four production outcomes, starting from the definition of:
   [
   \Delta\_G,\Delta\_I,\Delta\_X.
   ]

2. Verify carefully that the modified FOC is exactly:
   [
   [\Delta\_I+\Delta\_XG(X)]\lambda\_Ig(Y)=e^{\alpha-1},
   \qquad
   Y=\sigma^{-2}+\lambda\_Ie+\tau\_A.
   ]

3. Prove existence and uniqueness of the optimal effort.
   Be explicit about all assumptions and all boundary cases.

4. Audit the claim:
   [
   e^\*(0,\tau\_A)>0
   ]
   for every finite (\tau\_A).
   State the exact conditions required.

5. Audit the dynamic implication:
   [
   F(0)>0.
   ]
   Reconstruct the paper's baseline transition law and verify that positive effort at (X=0) really implies that zero public knowledge is not a steady state.

6. Check whether this conclusion is already contained, implicitly or explicitly, in:

   - Section 5.2 synthetic data,
   - Section 5.3 imperfect separability,
   - any appendix result.
     Explain precisely how our mechanism differs.

7. Derive the comparative statics:
   [
   e\_X^*,\quad e\_{\tau\_A}^*,\quad e\_{\Delta\_I}^\*
   ]
   using the implicit function theorem.
   Give the numerator and denominator for each derivative, not only their signs.

8. Derive the limiting cases:

   - (\Delta\_I\to0^+),
   - (\tau\_A\to\infty),
   - (X\to0^+),
   - (\alpha\to1^+) if mathematically meaningful.
     Clearly flag any limit that is delicate or not justified.

9. Check whether relaxing (\Delta\_I=0) affects:
   [
   U\_{eX}>0
   ]
   and
   [
   U\_{e\tau\_A}<0.
   ]
   State the exact modified cross-partials.

10. Try to construct a counterexample to any claim you previously made about this extension.
    If a claim is too strong, weaken it.

11. End with a corrected formal proposition for the extension containing every required assumption.

12. Identify:

    - the best handwritten derivation,
    - the best Lean theorem,
    - one simple numerical or SymPy illustration that would add value without reproducing the full dynamic model.

Return analysis only.
Do not modify files.

### CODEX RAW ANSWER

# Adversarial mathematical audit

Write

\[
p_G:=G(X),\qquad
p_I:=G(Y),\qquad
Y:=\sigma^{-2}+\lambda_Ie+\tau_A.
\]

Assume, as in the paper, that the common-state and idiosyncratic-state prediction-success events factor so their joint success probability is \(p_Gp_I\).

## 1. Expected utility from the four production outcomes

The paper defines

\[
\Delta_G=f(1,0)-f(0,0),
\]

\[
\Delta_I=f(0,1)-f(0,0),
\]

\[
\Delta_X=f(1,1)-f(1,0)-f(0,1)+f(0,0).
\]

Therefore,

\[
f(1,0)=f(0,0)+\Delta_G,
\]

\[
f(0,1)=f(0,0)+\Delta_I,
\]

and

\[
f(1,1)=f(0,0)+\Delta_G+\Delta_I+\Delta_X.
\]

Let \(A_G,A_I\in\{0,1\}\) denote successful general and idiosyncratic predictions. The four expected-output terms are

\[
\begin{aligned}
\mathbb E[f(A_G,A_I)]
={}&f(0,0)(1-p_G)(1-p_I)\\
&+f(1,0)p_G(1-p_I)\\
&+f(0,1)(1-p_G)p_I\\
&+f(1,1)p_Gp_I.
\end{aligned}
\]

Substituting the four values and collecting terms gives

\[
\mathbb E[f(A_G,A_I)]
=
f(0,0)+\Delta_Gp_G+\Delta_Ip_I+\Delta_Xp_Gp_I.
\]

Hence the modified expected utility is exactly

\[
\boxed{
U(e;X,\tau_A)
=
f(0,0)+\Delta_GG(X)
+\Delta_IG(Y)
+\Delta_XG(X)G(Y)
-\frac{e^\alpha}{\alpha}.
}
\]

Equivalently, defining

\[
B(X):=\Delta_I+\Delta_XG(X),
\]

we obtain

\[
\boxed{
U(e;X,\tau_A)
=
f(0,0)+\Delta_GG(X)
+B(X)G(Y)-\frac{e^\alpha}{\alpha}.
}
\]

For consistency with the paper’s normalization,

\[
\Delta_G+\Delta_I+\Delta_X=1.
\]

If \(\Delta_I>0\) and \(\Delta_X>0\), weak monotonicity of \(f\) is safely preserved by imposing

\[
\Delta_G=1-\Delta_I-\Delta_X\ge0.
\]

Thus the clean parameter region is

\[
\Delta_I>0,\qquad
\Delta_X>0,\qquad
\Delta_I+\Delta_X\le1.
\]

## 2. Verification of the FOC

Because

\[
Y=\sigma^{-2}+\lambda_Ie+\tau_A,
\qquad
Y_e=\lambda_I,
\]

we have

\[
\frac{\partial U}{\partial e}
=
B(X)G'(Y)\lambda_I-e^{\alpha-1}.
\]

Since \(G'=g\),

\[
U_e
=
B(X)\lambda_Ig(Y)-e^{\alpha-1}.
\]

Therefore the proposed interior FOC is exactly correct:

\[
\boxed{
[\Delta_I+\Delta_XG(X)]\lambda_Ig(Y)
=e^{\alpha-1},
\qquad
Y=\sigma^{-2}+\lambda_Ie+\tau_A.
}
\]

Neither \(\Delta_G\) nor \(\lambda_G\) enters this private FOC. The former multiplies inherited general knowledge, while the latter governs the public information generated for later cohorts.

## 3. Existence and uniqueness

Assume:

\[
\alpha>1,\quad
\lambda_I>0,\quad
\Delta_I>0,\quad
\Delta_X>0,
\]

with finite

\[
X\ge0,\qquad
\tau_A\ge0,\qquad
\sigma^{-2}\ge0.
\]

Also retain the Gaussian function

\[
G(y)=2\Phi(\sqrt y)-1,
\qquad
g(y)=G'(y)=\frac{\phi(\sqrt y)}{\sqrt y}
\quad(y>0).
\]

It satisfies

\[
g(y)>0,\qquad
g'(y)
=-\frac{g(y)}2\left(1+\frac1y\right)<0.
\]

### Concavity

For \(e>0\),

\[
U_{ee}
=
B(X)\lambda_I^2g'(Y)
-(\alpha-1)e^{\alpha-2}.
\]

Both terms are strictly negative, so

\[
\boxed{U_{ee}<0.}
\]

If \(\sigma^{-2}+\tau_A=0\), the derivative is singular at \(e=0\), but the objective remains continuous and strictly concave on \([0,\infty)\). Thus lack of a finite second derivative at that one boundary does not destroy strict concavity.

### Existence

The information benefit is bounded:

\[
0\le B(X)G(Y)\le B(X).
\]

Meanwhile,

\[
-\frac{e^\alpha}{\alpha}\to-\infty
\qquad(e\to\infty).
\]

Therefore,

\[
U(e)\to-\infty,
\]

and continuity gives a finite maximizer on \([0,\infty)\).

### Interiority when \(\sigma^{-2}+\tau_A>0\)

At \(e=0\),

\[
U_e(0)
=
B(X)\lambda_Ig(\sigma^{-2}+\tau_A)>0,
\]

because \(B(X)\ge\Delta_I>0\). Hence \(e=0\) cannot be optimal.

Since \(U_e(e)\to-\infty\) and is strictly decreasing, it crosses zero exactly once. The unique optimizer is therefore finite and strictly positive.

### Boundary \(\sigma^{-2}+\tau_A=0\)

Here \(Y=\lambda_Ie\), and \(g(Y)\to\infty\) as \(e\downarrow0\). Equivalently,

\[
G(\lambda_Ie)
\sim 2\phi(0)\sqrt{\lambda_Ie}.
\]

For sufficiently small \(e>0\),

\[
B(X)G(\lambda_Ie)
\]

is of order \(e^{1/2}\), while effort cost is of order \(e^\alpha\), with \(\alpha>1\). Therefore a sufficiently small positive effort raises utility above its value at zero.

The unique optimizer is again interior.

### Cases in which the conclusion fails

Positive interior effort is not assured if any of the following is permitted:

- \(\Delta_I=0\) and \(X=0\);
- \(\lambda_I=0\);
- perfect context information is already available, represented by an infinite initial or AI precision;
- \(\alpha=1\), where marginal cost at zero is no longer zero;
- a fixed effort cost or discrete minimum effort is introduced.

## 4. Audit of \(e^*(0,\tau_A)>0\)

At \(X=0\),

\[
G(0)=0,
\qquad
B(0)=\Delta_I.
\]

The FOC becomes

\[
\boxed{
\Delta_I\lambda_I
g(\sigma^{-2}+\lambda_Ie+\tau_A)
=e^{\alpha-1}.
}
\]

Thus

\[
\boxed{e^*(0,\tau_A)>0}
\]

for every finite \(\tau_A\), provided:

1. \(\Delta_I>0\);
2. \(\lambda_I>0\);
3. \(\alpha>1\);
4. \(\sigma^{-2}\ge0\) is finite;
5. \(\tau_A\ge0\) is finite;
6. effort remains continuously divisible with no fixed participation cost;
7. the Gaussian \(G\) technology is retained.

The condition \(\Delta_X>0\) is not needed for this particular boundary result because its contribution is multiplied by \(G(0)=0\). It is retained for the paper’s complementarity mechanism.

The phrase “for every finite \(\tau_A\)” is essential. Effort converges to zero as \(\tau_A\to\infty\).

## 5. Audit of \(F(0)>0\)

The paper’s baseline public-signal technology is

\[
s^C_t\sim
N\!\left(\theta_t,\frac1{\lambda_GE_t}\right).
\]

The posterior variance after observing that signal is

\[
(X_t+\lambda_GE_t)^{-1}.
\]

The common state then receives innovation variance \(\Sigma^2\), so

\[
V_{t+1}
=
(X_t+\lambda_GE_t)^{-1}+\Sigma^2.
\]

Because \(X_{t+1}=V_{t+1}^{-1}\),

\[
X_{t+1}
=
\left[
(X_t+\lambda_GE_t)^{-1}+\Sigma^2
\right]^{-1}.
\]

In a symmetric island equilibrium,

\[
E_t=I e^*(X_t,\tau_A).
\]

Therefore the modified transition map is

\[
\boxed{
F_{\Delta_I}(X)
=
\left[
\left(X+\lambda_GI e^*(X,\tau_A)\right)^{-1}
+\Sigma^2
\right]^{-1}.
}
\]

At zero,

\[
F_{\Delta_I}(0)
=
\left[
\left(\lambda_GI e^*(0,\tau_A)\right)^{-1}
+\Sigma^2
\right]^{-1}.
\]

Consequently,

\[
\boxed{F_{\Delta_I}(0)>0}
\]

provided, in addition to the static assumptions,

\[
\lambda_G>0,\qquad I>0,\qquad 0\le\Sigma^2<\infty.
\]

Thus zero public precision is not a fixed point under the baseline public-learning law.

This does not prove that the economy avoids a substantively severe collapse. It proves only that exact zero is not a steady state. A positive low-knowledge steady state can still be arbitrarily close to zero.

## 6. Is this conclusion already in the paper?

### Section 5.2: synthetic data

Section 5.2 explicitly obtains

\[
F_{\mathrm{syn}}(0)>0.
\]

But it uses

\[
F_{\mathrm{syn}}(X)
=
\left[
(X+\lambda_GIe(X,\tau_A)+\tau_{\mathrm{syn}})^{-1}
+\Sigma^2
\right]^{-1}.
\]

Under the maintained \(\Delta_I=0\),

\[
e(0,\tau_A)=0,
\]

so Appendix B.9 obtains

\[
F_{\mathrm{syn}}(0)
=
\left[\tau_{\mathrm{syn}}^{-1}+\Sigma^2\right]^{-1}>0.
\]

The mechanisms differ:

| Synthetic data | Proposed production extension |
|---|---|
| \(e(0,\tau_A)=0\) | \(e^*(0,\tau_A)>0\) |
| Exogenous \(\tau_{\mathrm{syn}}>0\) creates the intercept | Human effort creates the intercept |
| Changes public information supply | Changes the private productive value of context information |
| Floor persists independently of human effort | Floor shrinks when AI crowds out effort |
| Does not relax Assumption 1 | Directly relaxes \(\Delta_I=0\) |

Thus the dynamic outcome “zero is not a steady state” is already present, but its production-side mechanism is not.

### Section 5.3: imperfect separability

For \(\beta>0\), Appendix B.10 states

\[
F_\beta(X)
=
\left[
(X+\lambda_GI e(X,\tau_A)^\beta)^{-1}
+\Sigma^2
\right]^{-1}.
\]

Because the paper retains \(\Delta_I=0\),

\[
e(0,\tau_A)=0,
\]

and hence

\[
F_\beta(0)=0
\qquad(\beta>0).
\]

So the positive-intercept conclusion is not present for the parameter region covered by Proposition 16.

There is, however, a delicate endpoint. Section 5.3 describes \(\beta=0\) as perfect separability and treats \(e^0=1\) as constant. Taken literally, the public input is then positive independently of effort, which can also make \(F_0(0)>0\). Proposition 16 and Appendix B.10 restrict their continuation results to \(\beta>0\), so this endpoint is not developed as a formal positive-intercept proposition.

Again, the mechanism differs:

- At \(\beta=0\), public information appears independently of changes in effort.
- Under \(\Delta_I>0\), public information remains generated by positive endogenous human effort.

### Appendix audit

The only occurrences of \(\Delta_I\) in the PDF define or invoke the baseline restriction. No appendix result allows \(\Delta_I>0\).

Appendix B.9 proves the synthetic-data positive-intercept result. Appendix B.10 proves that zero remains fixed under imperfect separability for \(\beta>0\). No appendix derives positive effort at \(X=0\) from standalone context-specific productive value.

Therefore:

- The static mechanism is new.
- The production-side relaxation is new.
- The broad dynamic outcome \(F(0)>0\) is not unique to this extension.

## 7. Implicit-function comparative statics

Let

\[
H(e,X,\tau_A,\Delta_I)
=
B(X)\lambda_Ig(Y)-e^{\alpha-1}.
\]

At the optimum,

\[
H(e^*,X,\tau_A,\Delta_I)=0.
\]

Define the positive denominator

\[
\boxed{
D
:=
(\alpha-1)(e^*)^{\alpha-2}
-B(X)\lambda_I^2g'(Y^*)>0.
}
\]

Because

\[
H_e=-D,
\]

the implicit-function formulas are as follows.

### Public precision

For \(X>0\),

\[
H_X
=
\Delta_X\lambda_Ig(X)g(Y^*).
\]

Therefore,

\[
\boxed{
e_X^*
=
\frac{\Delta_X\lambda_Ig(X)g(Y^*)}{D}>0.
}
\]

This derivative is not an ordinary finite derivative at \(X=0\), because \(g(X)\to\infty\).

### AI precision

\[
H_{\tau_A}
=
B(X)\lambda_Ig'(Y^*).
\]

Thus

\[
\boxed{
e_{\tau_A}^*
=
\frac{B(X)\lambda_Ig'(Y^*)}{D}<0.
}
\]

At the parameter boundary \(\tau_A=0\), this should be interpreted as a right derivative unless the parameter domain is locally extended.

### Standalone context value

A partial derivative with respect to \(\Delta_I\) requires specifying how the normalization is maintained.

The clean experiment is:

- hold \(\Delta_X\) fixed;
- increase \(\Delta_I\);
- reduce \(\Delta_G=1-\Delta_I-\Delta_X\).

Because \(\Delta_G\) does not enter the effort FOC,

\[
H_{\Delta_I}
=
\lambda_Ig(Y^*).
\]

Hence

\[
\boxed{
e_{\Delta_I}^*
=
\frac{\lambda_Ig(Y^*)}{D}>0.
}
\]

If instead \(\Delta_G\) is held fixed, normalization requires

\[
\Delta_X=1-\Delta_G-\Delta_I,
\]

and

\[
\frac{\partial B(X)}{\partial\Delta_I}=1-G(X).
\]

In that alternative experiment,

\[
\boxed{
e_{\Delta_I}^*
=
\frac{[1-G(X)]\lambda_Ig(Y^*)}{D}\ge0.
}
\]

It is strictly positive for finite \(X\), since \(G(X)<1\).

Thus the earlier unqualified notation \(e_{\Delta_I}^*>0\) was underspecified. The sign is positive under either natural normalization path, but the numerator is not the same.

## 8. Limiting cases

Let

\[
p:=\alpha-1>0,\qquad
s:=\sigma^{-2}+\tau_A.
\]

The FOC is

\[
B(X)\lambda_Ig(s+\lambda_Ie)=e^p.
\]

### \(\Delta_I\to0^+\)

Holding \(X>0\), \(\Delta_X\), and \(\tau_A\) fixed,

\[
B(X)\to\Delta_XG(X)>0.
\]

Continuity and uniqueness imply

\[
\boxed{
e^*_{\Delta_I}(X,\tau_A)
\to e_{\mathrm{baseline}}(X,\tau_A)>0.
}
\]

At \(X=0\), however,

\[
B(0)=\Delta_I\to0.
\]

Therefore,

\[
\boxed{
e^*(0,\tau_A)\to0.
}
\]

If \(s>0\), the small-\(\Delta_I\) asymptotic is

\[
\boxed{
e^*(0,\tau_A)
\sim
\left[\Delta_I\lambda_Ig(s)\right]^{1/(\alpha-1)}.
}
\]

If \(s=0\), \(g(0)\) is singular. Since

\[
g(\lambda_Ie)\sim
\frac{\phi(0)}{\sqrt{\lambda_Ie}},
\]

the appropriate asymptotic is instead

\[
\boxed{
e^*(0,0)
\sim
\left[
\Delta_I\sqrt{\lambda_I}\phi(0)
\right]^{1/(\alpha-\frac12)}.
}
\]

The \(s=0\) case is therefore delicate and cannot use the first approximation.

### \(\tau_A\to\infty\)

Since \(g\) is decreasing,

\[
(e^*)^{\alpha-1}
=
B(X)\lambda_Ig(s+\lambda_Ie^*)
\le
B(X)\lambda_Ig(s).
\]

Because \(g(s)\to0\),

\[
\boxed{
e^*(X,\tau_A)\to0.
}
\]

More precisely,

\[
e^*(X,\tau_A)
\sim
\left[
B(X)\lambda_Ig(\sigma^{-2}+\tau_A)
\right]^{1/(\alpha-1)},
\]

because \(\lambda_Ie^*\to0\). Given

\[
g(y)=\frac{1}{\sqrt{2\pi}}y^{-1/2}e^{-y/2},
\]

effort falls exponentially in AI precision.

For every finite \(\tau_A\), \(F_{\Delta_I}(0)>0\), but

\[
F_{\Delta_I}(0)\to0
\qquad(\tau_A\to\infty).
\]

### \(X\to0^+\)

Since

\[
B(X)\to\Delta_I>0,
\]

continuity of the unique root gives

\[
\boxed{
e^*(X,\tau_A)\to e^*(0,\tau_A)>0.
}
\]

However, \(e^*\) is generally not differentiable with a finite slope at zero. Since

\[
G(X)\sim2\phi(0)\sqrt X,
\qquad
g(X)\sim\frac{\phi(0)}{\sqrt X},
\]

we have

\[
e_X^*\asymp X^{-1/2}.
\]

More precisely, if \(e_0=e^*(0,\tau_A)\), \(Y_0=s+\lambda_Ie_0\), and

\[
D_0
=
(\alpha-1)e_0^{\alpha-2}
-\Delta_I\lambda_I^2g'(Y_0),
\]

then

\[
e^*(X,\tau_A)-e_0
\sim
\frac{2\phi(0)\Delta_X\lambda_Ig(Y_0)}{D_0}\sqrt X.
\]

Thus effort is continuous and strictly increasing at the boundary but generally has an infinite right derivative.

### \(\alpha\to1^+\)

This limit is meaningful, but it is non-uniform because marginal cost changes qualitatively.

Let

\[
m(e):=B(X)\lambda_Ig(s+\lambda_Ie).
\]

For \(\alpha>1\), the FOC is

\[
m(e_\alpha)=e_\alpha^{\alpha-1}.
\]

At \(\alpha=1\), effort cost is linear and the limiting marginal cost is \(1\). The limiting problem is

\[
\max_{e\ge0}
\left[
B(X)G(s+\lambda_Ie)-e
\right].
\]

Let

\[
m_0:=B(X)\lambda_Ig(s).
\]

Then:

- If \(m_0>1\), there is a unique positive \(e_1\) satisfying
  \[
  m(e_1)=1,
  \]
  and
  \[
  e_\alpha\to e_1.
  \]

- If \(m_0<1\), the linear-cost problem has corner solution \(e_1=0\), and
  \[
  e_\alpha\to0.
  \]
  In fact,
  \[
  e_\alpha\approx m_0^{1/(\alpha-1)},
  \]
  which converges to zero extremely rapidly.

- If \(m_0=1\), the limiting optimum is also zero, but convergence is delicate and does not have the preceding simple exponential approximation.

- If \(s=0\), then \(m_0=\infty\), so the limiting linear-cost problem has a positive interior solution satisfying \(m(e_1)=1\).

Thus \(\Delta_I>0\) does not guarantee positive effort when the cost function is changed to \(\alpha=1\). The paper’s strict assumption \(\alpha>1\) is essential to the unconditional positive-effort-at-zero result.

## 9. Modified cross-partials

The effort derivative is

\[
U_e
=
[\Delta_I+\Delta_XG(X)]\lambda_Ig(Y)
-e^{\alpha-1}.
\]

Therefore,

\[
\boxed{
U_{eX}
=
\Delta_X\lambda_Ig(X)g(Y)>0
}
\]

for \(X>0\) and \(Y>0\). Relaxing \(\Delta_I=0\) does not alter this expression because the standalone context term does not depend on \(X\).

The AI cross-partial is

\[
\boxed{
U_{e\tau_A}
=
[\Delta_I+\Delta_XG(X)]\lambda_Ig'(Y)<0.
}
\]

This differs from the paper by adding \(\Delta_I\) to the coefficient. In particular, at \(X=0\),

\[
U_{e\tau_A}
=
\Delta_I\lambda_Ig'(Y)<0.
\]

Thus AI continues to crowd out effort even when general knowledge is zero.

## 10. Counterexamples and corrected claims

### Claim: “\(\Delta_I>0\) eliminates knowledge collapse”

Too strong. It eliminates the exact zero fixed point for finite \(\tau_A\) under the baseline public-learning law. It does not rule out:

- a very small positive steady state;
- multiple steady states;
- path dependence;
- a discontinuous transition between high and low positive states;
- arbitrarily low public precision as \(\tau_A\to\infty\);
- low welfare.

Corrected claim:

> Positive standalone context value replaces exact zero collapse with a strictly positive public-knowledge floor for every finite AI precision, under the baseline effort-to-public-information technology.

### Claim: “\(e_X^*>0\) everywhere”

Too strong as a differentiability statement. At \(X=0\), \(G\) is not differentiable with a finite derivative.

Corrected claim:

> Effort is strictly increasing and continuous in \(X\); \(e_X^*>0\) for \(X>0\), while the right derivative at zero is generally infinite.

### Claim: “\(e_{\Delta_I}^*>0\)” without qualification

Underspecified because the production normalization links \(\Delta_G,\Delta_I,\Delta_X\).

Corrected claim:

> Holding \(\Delta_X\) fixed and adjusting \(\Delta_G\), \(e_{\Delta_I}^*=\lambda_Ig(Y^*)/D>0\). Holding \(\Delta_G\) fixed and adjusting \(\Delta_X\), the numerator becomes \([1-G(X)]\lambda_Ig(Y^*)\).

### Claim: “\(e^*(0,\tau_A)>0\) for every finite \(\tau_A\)”

False without the baseline parameter restrictions. For example:

- If \(\lambda_I=0\), effort cannot improve private precision and \(e^*=0\).
- If \(\alpha=1\) and
  \[
  \Delta_I\lambda_Ig(\sigma^{-2}+\tau_A)\le1,
  \]
  the optimum is \(e^*=0\).
- If context precision is already infinite, \(g(Y)=0\) and effort has no value.

The corrected claim requires \(\alpha>1\), \(\lambda_I>0\), \(\Delta_I>0\), and finite prior-plus-AI precision.

### Claim: “\(F(0)>0\) follows from \(e^*(0)>0\)”

Only under a genuinely positive public-learning technology. If \(\lambda_G=0\) or \(I=0\), positive private effort creates no aggregate public signal and the conclusion fails.

### Claim: “The positive-intercept result is wholly new”

False. Section 5.2 explicitly establishes \(F_{\mathrm{syn}}(0)>0\), and the \(\beta=0\) endpoint of §5.3 can also mechanically create positive public input. The new contribution is the production-side source of the intercept.

## 11. Corrected formal proposition

**Proposition — Standalone context value.**
Let \(f:\{0,1\}^2\to\mathbb R\) be weakly increasing and normalized by

\[
f(1,1)-f(0,0)=1.
\]

Define \(\Delta_G,\Delta_I,\Delta_X\) as in the paper and suppose

\[
\Delta_I>0,\qquad
\Delta_X>0,\qquad
\Delta_G=1-\Delta_I-\Delta_X\ge0.
\]

Suppose also that

\[
\alpha>1,\qquad
\lambda_I>0,
\]

and that \(X\ge0\), \(\tau_A\ge0\), and \(\sigma^{-2}\ge0\) are finite. Retain the paper’s Gaussian signal structure and the conditional factorization of common and idiosyncratic prediction success.

Then:

1. The effort problem
   \[
   \max_{e\ge0}
   \left[
   f(0,0)+\Delta_GG(X)
   +(\Delta_I+\Delta_XG(X))
      G(\sigma^{-2}+\lambda_Ie+\tau_A)
   -\frac{e^\alpha}{\alpha}
   \right]
   \]
   has a unique finite optimizer \(e^*(X,\tau_A,\Delta_I)>0\).

2. The optimizer is characterized by
   \[
   [\Delta_I+\Delta_XG(X)]\lambda_Ig(Y^*)
   =(e^*)^{\alpha-1}.
   \]

3. For \(X>0\),
   \[
   e_X^*
   =
   \frac{\Delta_X\lambda_Ig(X)g(Y^*)}{D}>0.
   \]

4. For an interior value of the parameter \(\tau_A\),
   \[
   e_{\tau_A}^*
   =
   \frac{[\Delta_I+\Delta_XG(X)]\lambda_Ig'(Y^*)}{D}<0.
   \]

5. Holding \(\Delta_X\) fixed and adjusting \(\Delta_G\) to preserve normalization,
   \[
   e_{\Delta_I}^*
   =
   \frac{\lambda_Ig(Y^*)}{D}>0.
   \]

Here

\[
D
=
(\alpha-1)(e^*)^{\alpha-2}
-[\Delta_I+\Delta_XG(X)]\lambda_I^2g'(Y^*)>0.
\]

If, additionally,

\[
\lambda_G>0,\qquad I>0,\qquad 0\le\Sigma^2<\infty,
\]

and the baseline public-learning law is retained, then

\[
F_{\Delta_I}(0)
=
\left[
(\lambda_GI e^*(0,\tau_A))^{-1}
+\Sigma^2
\right]^{-1}>0.
\]

Therefore exact zero public precision is not a steady state for any finite \(\tau_A\). This conclusion does not rule out low positive steady states or severe knowledge decline.

## 12. Best follow-on artifacts

### Best handwritten derivation

The strongest handwritten sequence is:

1. Four-outcome expectation table.
2. Collapse it to
   \[
   U=f_{00}+\Delta_GG(X)+[\Delta_I+\Delta_XG(X)]G(Y)-e^\alpha/\alpha.
   \]
3. Derive the FOC and \(U_{ee}<0\).
4. Define \(D>0\) and display the three IFT derivatives together.
5. Evaluate the FOC and transition map at \(X=0\).

That gives the production relaxation, static comparative statics, and dynamic implication on roughly one page.

### Best Lean theorem

The best first Lean target is an abstract root theorem rather than formalizing Gaussian posteriors:

> If \(B,\lambda,p>0\), \(s\ge0\), and \(g:(0,\infty)\to(0,\infty)\) is continuous, strictly decreasing, and converges to zero at infinity, then
> \[
> B\lambda g(s+\lambda e)=e^p
> \]
> has a unique solution \(e>0\), which is strictly increasing in \(B\) and strictly decreasing in \(s\).

Instantiate

\[
B=\Delta_I+\Delta_XG(X),\qquad
p=\alpha-1,\qquad
s=\sigma^{-2}+\tau_A.
\]

This captures existence, uniqueness, \(e_{\tau_A}<0\), and monotonicity in \(X,\Delta_I\) while avoiding unnecessary probability formalization.

### Best numerical illustration

Use

\[
\alpha=2,\quad
\lambda_I=\lambda_G=I=\Sigma^2=1,
\]

\[
\sigma^{-2}=0.5,\quad
\Delta_I=0.25,\quad
\Delta_X=0.5,\quad
\Delta_G=0.25.
\]

Solving the one-dimensional FOC gives approximately:

| \(X\) | \(\tau_A\) | \(e^*\) |
|---:|---:|---:|
| \(0\) | \(0\) | \(0.09591\) |
| \(0.25\) | \(0\) | \(0.15653\) |
| \(0\) | \(2\) | \(0.01785\) |

At \(X=0,\tau_A=0\),

\[
F(0)
=
\left[(e^*)^{-1}+1\right]^{-1}
\approx0.08752>0.
\]

This compactly illustrates all three core points: positive effort at zero knowledge, complementarity with \(X\), and crowd-out from AI accuracy. No repository files were modified.
