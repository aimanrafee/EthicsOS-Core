# EthicsOS-Core Architecture Map

## 1. System Philosophy
EthicsOS-Core operates on a **Micro-kernel architecture**. The goal is to keep the privileged code as small as possible to ensure stability and security on legacy hardware.

## 2. Memory Management (No-Lag Logic)
- **Static Allocation**: Priority given to static memory allocation to prevent fragmentation.
- **Garbage Collection**: Minimalist, deterministic GC to avoid CPU spikes.
- **Swap Strategy**: Optimized for slow storage (SD Cards/Old HDDs) to prevent system freezing.

## 3. Thermal Governance
- **Idle State**: CPU clock downscaled to minimum during inactivity.
- **Heat Ceiling**: Internal logic limits high-frequency bursts if sensors detect temperatures approaching 35°C.

## 4. Integration with Foundation Kit
- This core utilizes the logic structures defined in `master-logic.js` but optimized for C/Assembly execution.
