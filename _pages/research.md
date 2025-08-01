---
layout: page
permalink: /research/
title: research
description:
nav: true
nav_order: 3
toc:
  sidebar: left
---

# 1. Real-Time MRI / Fast MRI (Cardiovascular)

### Asymmetric-Echo Radial Sampling (i.e. Partial Fourier)

    {% include figure.liquid loading="eager" path="/assets/research/seq_asym-echo.png" title="asymmetric-echo radial sequence" class="img-fluid rounded z-depth-1" %}

- Asymmetric-echo readout shortens echo time and is beneficial when combined with flow-compensation and -encoding gradients.

- Overlapping of flow gradients with pre-dephasing and/or slice-rewinder gradients further reduces TE.

### Aortic Blood Flow Quantification

    {% include figure.liquid loading="eager" path="/assets/research/recon_flow.png" title="model-based flow reconstruction" class="img-fluid rounded z-depth-1" %}

- The model-based reconstruction directly and jointly estimates the magnitude and the phase-difference image from acquired _k_-space data.

- With proper regularization on the phase-difference map, the model-based reconstruction largely removes random phase noise in the background, which appears from the conventional phase difference calculation between two images.

# 2. Multi-Echo Radial Sampling

    {% include figure.liquid loading="eager" path="assets/research/seq_multi-echo_stack-of-radial.png" title="multi-echo radial sequence" class="img-fluid rounded z-depth-1" %}

- In analogy with the famous echo-planar imaging (EPI), multi-echo radial samples multiple echoes at different k-space radial spokes per radio frequency (RF) excitation.

- It can be applied to water/fat separation, functional MRI, quantitative T2\* mapping, and even diffusion/susceptibility imaging (under development).

- Multi-echo radial sampling has been integrated with [stack-of-stars](https://doi.org/10.13104/jksmrm.2014.18.2.87) as well as symmetric echo acquisition for volumetric and multi-dimensional imaging. See below for an example of the stack-of-stars acquisition on the NIST phantom and NUFFT reconstruction:

<div class="row justify-content-sm-center">
  <div class="col-sm-4 mt-3 mt-md-0">
    {% include figure.liquid path="/assets/research/NIST_cor_loop.gif" title="NIST" class="img-fluid rounded z-depth-1" %}
  </div>
</div>

## Application #1: Liver Fat, R2\* and B0 Field Mapping

    {% include figure.liquid loading="eager" path="assets/research/recon_multi-echo_liver.png" title="multi-echo liver" class="img-fluid rounded z-depth-1" %}

- Joint estimation based on [iteratively regularized Gauß-Newton method (IRGNM)](https://onlinelibrary.wiley.com/doi/full/10.1002/mrm.21691) and [alternating direction method of multipliers (ADMM)](https://stanford.edu/~boyd/papers/pdf/admm_distr_stats.pdf) to allow for generalized regularization.

- Free-breathing liver fat and R2\* mapping in 2 minutes for 3D acquisition.

- Respiratory motion is resolved with the [SSA-FARY](https://ieeexplore.ieee.org/document/9057630) self-gating technique.

## Application #2: T2\*-weighted imaging (Brain)

    {% include figure.liquid loading="eager" path="assets/research/recon_multi-echo_brain.gif" title="multi-echo brain" class="img-fluid rounded z-depth-1" %}

# 3. Brain Diffusion MRI at 7T (Neuro)

    {% include figure.liquid loading="eager" path="assets/research/seq_naviepi.png" title="NAViEPI sequence" class="img-fluid rounded z-depth-1" %}

- [NAViEPI](https://github.com/ZhengguoTan/NAViEPI) with consistent ESP between imaging and navigator echoes: _where interleaved EPI meets readout-segmented EPI_

- NAViEPI enables:

  - minimal distortion mismatch between echoes;
  - flexible number of shots for sub-millimeter mesoscale resolution;
  - reliable shot-to-shot phase estimation from navigators.

    {% include figure.liquid loading="eager" path="assets/research/diff_fwd.png" title="Forward modeling of multi-shot multi-band EPI" class="img-fluid rounded z-depth-1" %}

- Generalized joint k-q-slice reconstruction

  {% include figure.liquid loading="eager" path="assets/research/recon_diff_brain.png" title="NAViEPI brain" class="img-fluid rounded z-depth-1" %}

- Data: hosted on [Zenodo](https://zenodo.org/records/10474402)
