
# ML4adhesion4Matlab

A MATLAB-compatible version of the machine learning framework from the paper:

Maghami, Ali, Merten Stender, and Antonio Papangelo. "Pull-off force prediction in viscoelastic adhesive Hertzian contact by physics augmented machine learning." arXiv preprint arXiv:2505.11685 (2025).
> [[arXiv:2505.11685](https://arxiv.org/abs/2505.11685)](https://arxiv.org/abs/2505.11685)

---

## 🔍 About

This repository brings the predictive of the original [ML4adhesion](https://github.com/alimaghamii/ML4adhesion) Python models to the MATLAB environment — enabling broad accessibility in the **mechanics, materials science**, and **adhesion modeling** communities that primarily use MATLAB.

It leverages pretrained `scikit-learn` models (e.g., Random Forest, XGBoost) and replicates core workflows such as:

- Prediction of normalized effective surface energy
- Parametric studies on loading rate, material properties (`μ`, `k`, `n`)
- Reproduction of figures from the reference paper


## 🚀 Getting Started

### 🔧 Requirements

- MATLAB R2022b or later
- Python 3.11 (must be CPython)
- Installed Python packages:
  ```bash
  pip install numpy pandas scikit-learn joblib
  ```

### 🔗 Link MATLAB to Python

Inside MATLAB, configure your Python interpreter:

```matlab
pyenv('Version', 'C:/Path/To/Python311/python.exe')
```

Check that it loaded correctly:

```matlab
pyenv
```

---

## 📊 Running the Code

Simply run the main script:

```matlab
>> MATLAB_main
```

This will:
- Load trained models (`.pkl`)
- Process test data
- Run predictions on a range of inputs
- Generate and save publication-quality plots

---

## 🧠 Citation

If you use this code or model, please cite the original paper:

```bibtex
@article{maghami2025pull,
  title={Pull-off force prediction in viscoelastic adhesive Hertzian contact by physics augmented machine learning},
  author={Maghami, Ali and Stender, Merten and Papangelo, Antonio},
  journal={arXiv preprint arXiv:2505.11685},
  year={2025}
}

```

---

## 🤝 Acknowledgments

- This MATLAB version is based on the original Python implementation [ML4adhesion](https://github.com/alimaghamii/ML4adhesion).
---

## 📬 Contact

For issues, feature requests, or contributions, please reach out to the authors via the original paper.

---
