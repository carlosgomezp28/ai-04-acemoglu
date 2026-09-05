import Mathlib.Data.Real.Basic

/-!
# Algebraic sign checks for AI, cognition, and knowledge collapse

This file verifies a small algebraic layer of the reading notes for Acemoglu,
Kong, and Ozdaglar (2026). It deliberately does not formalize Gaussian
derivatives, optimization, equilibrium, or the full dynamic model. Values such
as `gX`, `gY`, and `gPrimeY` stand for evaluations whose signs are supplied as
hypotheses.

The declarations marked **PAPER CLAIM** encode the algebraic sign implications
underlying Observation 1. Declarations marked **OUR PROPOSED EXTENSION** concern
the repository's relaxation of the paper's maintained assumption `DeltaI = 0`.
-/

namespace KnowledgeCollapse

/-! ## Part A: paper claims underlying Observation 1 -/

/-- **PAPER CLAIM.** The paper-facing algebraic expression for the
general-knowledge/effort cross-partial, `DeltaX * lambdaI * g(X) * g(Y)`.

This is only the sign implication underlying Observation 1; it is not a formal
derivation of the Gaussian derivatives. -/
def paperGeneralKnowledgeEffortCrossPartial
    (deltaX lambdaI gX gY : ℝ) : ℝ :=
  deltaX * lambdaI * gX * gY

/-- **PAPER CLAIM.** Positive complementarity, learning productivity, and
positive values of `g(X)` and `g(Y)` make the algebraic expression for the
general-knowledge/effort cross-partial strictly positive. -/
theorem paper_general_knowledge_effort_cross_partial_pos
    {deltaX lambdaI gX gY : ℝ}
    (hDeltaX : 0 < deltaX)
    (hLambdaI : 0 < lambdaI)
    (hGX : 0 < gX)
    (hGY : 0 < gY) :
    0 < paperGeneralKnowledgeEffortCrossPartial deltaX lambdaI gX gY := by
  unfold paperGeneralKnowledgeEffortCrossPartial
  exact mul_pos (mul_pos (mul_pos hDeltaX hLambdaI) hGX) hGY

/-- **PAPER CLAIM.** The paper-facing algebraic expression for the
AI/effort cross-partial, `DeltaX * G(X) * lambdaI * g'(Y)`.

This is only the sign implication underlying Observation 1; it assumes the
negative sign of `g'(Y)` rather than formalizing or deriving that derivative. -/
def paperAIEffortCrossPartial
    (deltaX GX lambdaI gPrimeY : ℝ) : ℝ :=
  deltaX * GX * lambdaI * gPrimeY

/-- **PAPER CLAIM.** Positive complementarity, success probability, and
learning productivity, together with `g'(Y) < 0`, make the algebraic expression
for the AI/effort cross-partial strictly negative. -/
theorem paper_ai_effort_cross_partial_neg
    {deltaX GX lambdaI gPrimeY : ℝ}
    (hDeltaX : 0 < deltaX)
    (hGX : 0 < GX)
    (hLambdaI : 0 < lambdaI)
    (hGPrimeY : gPrimeY < 0) :
    paperAIEffortCrossPartial deltaX GX lambdaI gPrimeY < 0 := by
  unfold paperAIEffortCrossPartial
  exact mul_neg_of_pos_of_neg
    (mul_pos (mul_pos hDeltaX hGX) hLambdaI) hGPrimeY

/-! ## Part B: our proposed production-side extension -/

/-- **OUR PROPOSED EXTENSION — NOT IN THE PAPER.** The private-return weight
`B(X) = DeltaI + DeltaX * G(X)` after allowing `DeltaI > 0`. -/
def extensionPrivateReturnWeight (deltaI deltaX GX : ℝ) : ℝ :=
  deltaI + deltaX * GX

/-- **OUR PROPOSED EXTENSION — NOT IN THE PAPER.** Standalone context value is
enough to make `B(X)` strictly positive when complementarity and `G(X)` are
nonnegative. -/
theorem extension_private_return_weight_pos
    {deltaI deltaX GX : ℝ}
    (hDeltaI : 0 < deltaI)
    (hDeltaX : 0 < deltaX)
    (hGX : 0 ≤ GX) :
    0 < extensionPrivateReturnWeight deltaI deltaX GX := by
  unfold extensionPrivateReturnWeight
  exact add_pos_of_pos_of_nonneg hDeltaI (mul_nonneg hDeltaX.le hGX)

/-- **OUR PROPOSED EXTENSION — NOT IN THE PAPER.** The modified algebraic
AI/effort cross-partial `B(X) * lambdaI * g'(Y)`. -/
def extensionAIEffortCrossPartial
    (privateReturnWeight lambdaI gPrimeY : ℝ) : ℝ :=
  privateReturnWeight * lambdaI * gPrimeY

/-- **OUR PROPOSED EXTENSION — NOT IN THE PAPER.** A positive private-return
weight and learning productivity preserve the strictly negative AI/effort sign
when `g'(Y) < 0`. -/
theorem extension_ai_effort_cross_partial_neg
    {privateReturnWeight lambdaI gPrimeY : ℝ}
    (hWeight : 0 < privateReturnWeight)
    (hLambdaI : 0 < lambdaI)
    (hGPrimeY : gPrimeY < 0) :
    extensionAIEffortCrossPartial privateReturnWeight lambdaI gPrimeY < 0 := by
  unfold extensionAIEffortCrossPartial
  exact mul_neg_of_pos_of_neg (mul_pos hWeight hLambdaI) hGPrimeY

/-- **OUR PROPOSED EXTENSION — NOT IN THE PAPER.** At zero general knowledge,
the marginal information benefit reduces to `DeltaI * lambdaI * g(Y)`. -/
def extensionBoundaryMarginalInformationBenefit
    (deltaI lambdaI gY : ℝ) : ℝ :=
  deltaI * lambdaI * gY

/-- **OUR PROPOSED EXTENSION — NOT IN THE PAPER.** Positive standalone context
value makes the boundary marginal information benefit strictly positive. -/
theorem extension_boundary_marginal_information_benefit_pos
    {deltaI lambdaI gY : ℝ}
    (hDeltaI : 0 < deltaI)
    (hLambdaI : 0 < lambdaI)
    (hGY : 0 < gY) :
    0 < extensionBoundaryMarginalInformationBenefit deltaI lambdaI gY := by
  unfold extensionBoundaryMarginalInformationBenefit
  exact mul_pos (mul_pos hDeltaI hLambdaI) hGY

/-- The marginal information benefit before imposing either the paper's
baseline boundary values or our proposed extension. -/
def marginalInformationBenefit
    (deltaI deltaX GX lambdaI gY : ℝ) : ℝ :=
  (deltaI + deltaX * GX) * lambdaI * gY

/-- **PAPER BASELINE CONTRAST.** If `DeltaI = 0` and the complementarity term
is multiplied by `G(0) = 0`, then the boundary marginal information benefit is
zero. This is algebra only, not a formal evaluation of the Gaussian `G` at zero. -/
theorem paper_baseline_boundary_marginal_information_benefit_eq_zero
    {deltaI deltaX GZero lambdaI gY : ℝ}
    (hDeltaI : deltaI = 0)
    (hGZero : GZero = 0) :
    marginalInformationBenefit deltaI deltaX GZero lambdaI gY = 0 := by
  simp [marginalInformationBenefit, hDeltaI, hGZero]

/-! ## Part C: public-knowledge implication of our proposed extension -/

/-- **OUR PROPOSED EXTENSION — NOT IN THE PAPER.** Public precision one period
after starting from zero, using the paper's baseline transition technology:
`((lambdaG * I * e0)⁻¹ + Sigma²)⁻¹`.

The argument `innovationVariance` represents `Sigma²`; `islandMass` represents
the paper's aggregation scale `I`. -/
noncomputable def extensionPublicKnowledgeAtZero
    (lambdaG islandMass e0 innovationVariance : ℝ) : ℝ :=
  ((lambdaG * islandMass * e0)⁻¹ + innovationVariance)⁻¹

/-- **OUR PROPOSED EXTENSION — NOT IN THE PAPER.** Positive public-learning
productivity, aggregation scale, and boundary effort imply positive next-period
public precision when innovation variance is nonnegative.

This theorem proves only `F_DeltaI(0) > 0`. It does not claim that knowledge
collapse is eliminated generally. -/
theorem extension_public_knowledge_at_zero_pos
    {lambdaG islandMass e0 innovationVariance : ℝ}
    (hLambdaG : 0 < lambdaG)
    (hIslandMass : 0 < islandMass)
    (hE0 : 0 < e0)
    (hInnovationVariance : 0 ≤ innovationVariance) :
    0 < extensionPublicKnowledgeAtZero
      lambdaG islandMass e0 innovationVariance := by
  unfold extensionPublicKnowledgeAtZero
  have hProduct : 0 < lambdaG * islandMass * e0 :=
    mul_pos (mul_pos hLambdaG hIslandMass) hE0
  have hDenominator : 0 < (lambdaG * islandMass * e0)⁻¹ + innovationVariance :=
    add_pos_of_pos_of_nonneg (inv_pos.mpr hProduct) hInnovationVariance
  exact inv_pos.mpr hDenominator

end KnowledgeCollapse
