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

## 1. Real-Time MRI / Fast MRI (Cardiovascular)

#### Asymmetric-Echo Radial Sampling (i.e. Partial Fourier)

    {% include figure.liquid loading="eager" path="/assets/research/seq_asym-echo.png" title="example image" class="img-fluid rounded z-depth-1" %}

- Asymmetric-echo readout shortens echo time and is beneficial when combined with flow-compensation and -encoding gradients.

- Overlapping of flow gradients with pre-dephasing and/or slice-rewinder gradients further reduces TE.

#### Aortic Blood Flow Quantification

    {% include figure.liquid loading="eager" path="/assets/research/recon_flow.png" title="example image" class="img-fluid rounded z-depth-1" %}

- The model-based reconstruction directly and jointly estimates the magnitude and the phase-difference image from acquired _k_-space data.

- With proper regularization on the phase-difference map, the model-based reconstruction largely removes random phase noise in the background, which appears from the conventional phase difference calculation between two images.

## 2. Multi-Echo Radial Sampling

    {% include figure.liquid loading="eager" path="assets/research/seq_multi-echo_stack-of-radial.png" title="example image" class="img-fluid rounded z-depth-1" %}

- In analogy with the famous echo-planar imaging (EPI), multi-echo radial samples multiple echoes at different k-space radial spokes per radio frequency (RF) excitation.

- It can be applied to water/fat separation, functional MRI, quantitative T2\* mapping, and even diffusion/susceptibility imaging (under development).

- Multi-echo radial sampling has been integrated with [stack-of-stars](http://www.koreascience.or.kr/article/JAKO201430754387343.page) as well as symmetric echo acquisition for volumetric and multi-dimensional imaging. See below for an example of the stack-of-stars acquisition on the NIST phantom and NUFFT reconstruction:

<div class="row justify-content-sm-center">
  <div class="col-sm-4 mt-3 mt-md-0">
    {% include figure.liquid path="/assets/research/NIST_cor_loop.gif" title="example image" class="img-fluid rounded z-depth-1" %}
  </div>
</div>

#### Application #1: Liver Fat, R2\* and B0 Field Mapping

    {% include figure.liquid loading="eager" path="assets/research/recon_multi-echo_liver.png" title="example image" class="img-fluid rounded z-depth-1" %}

- Joint estimation based on [iteratively regularized Gauß-Newton method (IRGNM)](https://onlinelibrary.wiley.com/doi/full/10.1002/mrm.21691) and [alternating direction method of multipliers (ADMM)](https://stanford.edu/~boyd/papers/pdf/admm_distr_stats.pdf) to allow for generalized regularization.

- Free-breathing liver fat and R2\* mapping in 2 minutes for 3D acquisition.

- Respiratory motion is resolved with the [SSA-FARY](https://ieeexplore.ieee.org/document/9057630) self-gating technique.

#### Application #2: T2\*-weighted imaging (Brain)

    {% include figure.liquid loading="eager" path="assets/research/recon_multi-echo_brain.gif" title="example image" class="img-fluid rounded z-depth-1" %}

## 3. Brain Diffusion MRI at 7T (Neuro)

    {% include figure.liquid loading="eager" path="assets/research/seq_naviepi.png" class="img-fluid rounded z-depth-1" %}

- [NAViEPI](https://github.com/ZhengguoTan/NAViEPI): _where interleaved EPI meets readout-segmented EPI_

- Generalized joint k-q-slice reconstruction

- Data: hosted on [Zenodo](https://zenodo.org/records/10474402)
