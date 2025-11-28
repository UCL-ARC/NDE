# Intro to Numerical Differential Equations

An interactive Pluto.jl notebook introducing the fundementals of numerical
methods for solving differential equations.

Designed for a mixed background audience of Research Technical Professionals.

The notebook is written as part of the UCL ARC Computational Method Exchange
(ACME) initiative, aimed at sharing principles of different computational
methods across disciplines.

## What's Covered

This notebook introduces some glimpses into:

- **What are differential equations?**
- **Core numerical methods:**
   - Forward Euler
   - Backward Euler
   - Midpoint method
- **Method comparison** - Accuracy and performance trade-offs
- **Stability** - Understanding when methods break down and why
- **Higher-order equations** - 1D second-order ODEs (oscillators, pendulums)

All concepts are explained with interactive visualizations and minimal
mathematical prerequisites.  

To this extent, the goals are to build a shared appreciation of the introduced
methodologies and provide just enough background to understand the
terminologies.
Manny corners were cut and rigour mostly thrown our the window.  

Please view it with this in mind.

---

## Running the Notebook Interactively

Several options are provided for interacting with the notebooks:

### Option 1: GitHub Codespaces (Easiest - No Installation Required, but slow!)

[![Open in GitHub Codespaces](https://github.com/codespaces/badge.svg)](https://codespaces.new/UCL-ARC/NDE)

1. Click the badge above or go to the repository and click **Code → Codespaces →
   Create codespace on main**
2. Wait for the environment to build (~2-3 minutes on first launch)
3. Pluto will automatically start and open in your browser
4. Click on `NDE.jl` to open the notebook

**Note:** Codespaces provides 60 hours/month free for individual GitHub accounts (Need to verify!).

---

### Option 2: Docker

**Prerequisites:** [Docker](https://www.docker.com/get-started) installed on your system

**Using Pre-built Image:**

```bash
# Pull the pre-built image
docker pull ghcr.io/ucl-arc/nde:main

# Run the container
docker run -p 1234:1234 ghcr.io/ucl-arc/nde:main

# Open your browser to http://localhost:1234
```

**Building Locally:**

```bash
# Clone the repository
git clone https://github.com/UCL-ARC/NDE.git
cd NDE

# Build the Docker image
docker build -t nde-notebook .

# Run the container
docker run -p 1234:1234 nde-notebook

# Open your browser to http://localhost:1234
```

Once Pluto is running, click on `NDE.jl` in the Pluto interface to open the notebook.

---

### Option 3: Native Julia Installation  (Recommended for Local Use)

**Prerequisites:** [Julia 1.11+](https://julialang.org/downloads/) installed

```bash
# Clone the repository
git clone https://github.com/UCL-ARC/NDE.git
cd NDE

# Start Julia
julia

# In the Julia REPL, install and start Pluto
julia> using Pkg
julia> Pkg.add("Pluto")
julia> using Pluto
julia> Pluto.run()
```

When Pluto opens in your browser, navigate to and open `NDE.jl`.

**Alternative (one-liner):**

```bash
julia -e 'using Pkg; Pkg.add("Pluto"); using Pluto; Pluto.run()'
```

---

### Option 4: Non-interactive Static Webpage

The simplest way to read through the materials is on GitHub Pages.
This version provides a read-only view without interactive sliders and visualizations.

This version is **not recommended** as interactivity is fundamental to
understanding the concepts through experience and experimentation with the
provided examples. Please only use this method to either have a quick preview or
if all else fails.

**[Static notebook on GitHub Pages →](https://ucl-arc.github.io/NDE/)**

---

## Contributing

Issues and pull requests are most welcome!  

This notebook is intended for teaching. Any contributions to making the material
clearer and more accessibile would be greatly appriciated.

### Future Developments

This notebook is envisioned as a first in a series of follow-up introductory
notebooks on:

1. Partial Differential Equations and the Finite Differences method
2. Finite Volumes and Computational Fluid Dynamics
3. Finite Elements and Computational Mechanics
4. Smoothed Particle Hydrodynamics

Please get in touch if you would like to help with any of these, or have other
Numerical Differential Equation topics you would like to introduce!

---

## License

This project is licensed under an [MIT LICENSE](LICENSE).

---

## Links

- **GitHub Repository:** https://github.com/UCL-ARC/NDE
- **GitHub Pages (Static):** https://ucl-arc.github.io/NDE/
- **Pluto.jl Documentation:** https://plutojl.org/
- **Julia Language:** https://julialang.org/
