---
title: visualizations-checkpoint
type: textbook
source_path: content/09-macro/.ipynb_checkpoints/visualizations-checkpoint.ipynb
chapter: 9
---

```python
import numpy as np
import pandas as pd
import matplotlib.pyplot as plt
```

# Visualizations

```python
# IS curve
x = np.linspace(0.5, 4.5, 100)
r = list(map(lambda x: -3 * x + 15, x))

plt.figure(figsize=(4, 4))
plt.plot(x, r)
plt.xlim(0, 5)
plt.ylim(0, 15)
plt.ylabel("Real Interest Rate (R)")
plt.xlabel("Output (Y)")
plt.savefig("is_curve.png", dpi=200)
plt.show()
```

```python
# Keynesian Cross
x = np.linspace(0, 5, 100)
output = list(map(lambda x: x, x))
demand = list(map(lambda x: 0.4 * x + 1, x))

plt.figure(figsize=(4, 4))
ax = plt.subplot(111)
ax.plot(x, output)
ax.plot(x, demand)
ax.set_xlim(0, 5)
ax.set_ylim(0, 5)
ax.set_xlabel("Output (Y)")
ax.set_ylabel("AD/Output (Y)")

# plt.grid()
plt.savefig("keynesian_cross.png", dpi=200)
plt.show()
```

```python
# Dynamics of Keynesian Cross
x = np.linspace(0, 5, 100)
output = list(map(lambda x: x, x))
demand_high_r = list(map(lambda x: 0.4 * x + 1, x))
demand_low_r = list(map(lambda x: 0.4 * x + 2, x))

fig, (ax1, ax2) = plt.subplots(2, 1, figsize=(4,8), sharex=True)
ax1.plot(x, output)
ax1.plot(x, demand_high_r, label="R = 10%")
ax1.plot(x, demand_low_r, label="R = 5%")
ax1.axvline(x=5/3, ymin=0, ymax=1/3, color='0', ls=':')
ax1.axvline(x=10/3, ymin=0, ymax=2/3, color='0', ls=':')
ax1.set_xlim(0, 5)
ax1.set_ylim(0, 5)

ax1.set_ylabel("AD/Output")
# ax1.spines['right'].set_visible(False)
# ax1.spines['top'].set_visible(False)

ax1.legend(title="Real interest rate")

r = list(map(lambda x: -3 * x + 15, x))
ax2.plot(x, r)
ax2.axvline(x=5/3, ymin=0, ymax=1, color='0', ls=':')
ax2.axvline(x=10/3, ymin=0, ymax=1, color='0', ls=':')
ax2.axhline(y=5, xmin=0, xmax=2/3, color='0', ls=':')
ax2.axhline(y=10, xmin=0, xmax=1/3, color='0', ls=':')
ax2.set_xlim(0, 5)
ax2.set_ylim(0, 15)
ax2.set_ylabel("Real Interest Rate (R)")
ax2.set_xlabel("Output (Y)")
plt.savefig("is_derivation.png", dpi=200)

plt.show()
```

```python
x = np.linspace(0, 5, 100)
ad1 = list(map(lambda x: -x + 5.5, x))
ad2 = list(map(lambda x: -x + 4.5, x))

fig, (ax1, ax2) = plt.subplots(1, 2, figsize=(8,4), sharey = True)
ax1.plot(x, ad1)
ax1.plot(x, ad2)
ax1.axvline(x=3, color='0')
ax1.axhline(y=1.5, xmin=0, xmax=0.6, color='0', ls=':')
ax1.axhline(y=2.5, xmin=0, xmax=0.6, color='0', ls=':')

ax1.set_xlim(0, 5)
ax1.set_ylim(0, 5)

ax1.set_ylabel("Price level ($\pi$)")
ax1.set_xlabel("Output (Y) \n \n Classical view")

ax2.plot(x, ad1)
ax2.plot(x, ad2)
ax2.axhline(y=3, color='0')
ax2.axvline(x=1.5, ymin=0, ymax=0.6, color='0', ls=':')
ax2.axvline(x=2.5, ymin=0, ymax=0.6, color='0', ls=':')

ax2.set_xlim(0, 5)
ax2.set_ylim(0, 5)
ax2.set_xlabel("Output (Y) \n \n Keynesian view")

plt.savefig("classical_vs_keynesian.png", dpi=200)

plt.show()
```

```python

```
