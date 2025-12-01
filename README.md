# Intro to Numerical Differential Equations

An interactive Pluto.jl notebook introducing the fundamentals of numerical
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

**Note:** Codespaces provides 120 core-hours/month free for individual GitHub accounts.

---

### Option 2: Docker

**Prerequisites:** [Docker](https://www.docker.com/get-started) installed on your system

**Using Pre-built Image:**

```bash
# Pull the pre-built image
docker pull ghcr.io/ucl-arc/nde:main
```

On macOS or Linux you can start the notebook inside the container with

```bash
docker run -p 1234:1234 -ti ghcr.io/ucl-arc/nde:main julia -e 'using Pluto; Pluto.run(; host="0.0.0.0", port=1234)'
```

or if using PowerShell on Windows with

```powershell
docker run -p 1234:1234 -ti ghcr.io/ucl-arc/nde:main julia -e 'using Pluto; Pluto.run(; host=""""0.0.0.0"""", port=1234)'
```

This will launch Pluto within the container, and if successful you should see a message similar to

```
[ Info: Loading...
┌ Info:
└ Go to http://0.0.0.0:1234/?secret=hgY7as1X in your browser to start writing ~ have fun!
```

where `hgY7as1X` in the URL will be replaced with another random alphanumeric string. The Pluto notebook environment is accessed as a web app, so you should open a browser window and navigate to the URL indicated in the message to open the Pluto interface. If you get `Unable to connect` message or similar when trying to open the URL, you may need to replace the `0.0.0.0` component with `localhost`, so for the example above you would navigate to `http://localhost:1234/?secret=hgY7as1X`. 

Once you have the Pluto interface open in your browser, you will need to load the notebook saved at `/root/NDE.jl`. To open the notebook, find the `Open a 

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

**Prerequisites:** [Julia 1.12+](https://julialang.org/downloads/) installed

```bash
# Clone the repository
git clone https://github.com/UCL-ARC/NDE.git
cd NDE

# Start Julia
julia --project
```
Then, in the Julia REPL, install and start Pluto
```julia-repl
julia> using Pkg
julia> Pkg.instantiate()
julia> using Pluto
julia> Pluto.run()
```

When Pluto opens in your browser, navigate to and open `NDE.jl`.

**Alternative (one-liner):**

```bash
julia --project -e 'using Pkg; Pkg.instantiate(); using Pluto; Pluto.run()'
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
