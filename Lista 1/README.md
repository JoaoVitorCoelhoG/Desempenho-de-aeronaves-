# Lista 1 - Mecanica de Voo e Operacoes (MVO)

Scripts MATLAB para calculo de parametros atmosfericos e de performance de aeronaves, usando o modelo de Atmosfera Padrao Internacional (ISA).

## Estrutura

```
Lista 1/
├── Q1/   - Funcoes ISA e ISA com desvio de temperatura
├── Q2/   - Altitude de pressao e correcoes atmosfericas
├── Q3/   - Altitude de densidade, numero de Mach e Reynolds
├── Q4/   - Conversao entre velocidades (CAS, EAS, TAS) e altitude
└── Q5/   - Calculo de arrasto (D0 e Di) em regimes subsônico e supersônico
```

## Questoes

### Q1 — Funcoes ISA
- **`ISA.m`** — Funcao principal: dado uma altitude `h` (m), retorna `[rho, T, P, a, mu]` para as tres camadas atmosfericas (troposfera ate 32 000 m).
- **`ISA_DeltaT.m`** — Versao com desvio de temperatura `ΔT` em relacao a ISA padrao.

### Q2 — Altitude de Pressao e Correcoes
- **`Q2A.m`** — Calcula a altitude de pressao equivalente a 92 000 Pa e aplica correcao de temperatura (ISA+ΔT) para 50 000 ft.
- **`Q2b.m`** — Determina altitude de densidade a partir de altitudes de pressao e densidade distintas; calcula Mach, viscosidade e Reynolds.
- **`Q2c.m`** — Calcula altimetro corrigido (altitude indicada) para desvios de temperatura de +15 K e -15 K a 5 000 ft.

### Q3 — Altitude de Densidade, Mach e Reynolds
- **`Q3.m`** — A partir de pressao a 30 000 ft e densidade a 32 000 ft, determina temperatura modificada, velocidade do som, Mach e Reynolds para corda de 4 m.

### Q4 — Conversao de Velocidades
- **`Q4.m`** — Dado CAS = 350 kt e Mach = 0,82, calcula altitude de pressao, EAS e TAS via relacoes isentropicas.

### Q5 — Calculo de Arrasto
- **`Q5a.m`** — Calcula Mach, TAS e EAS para CAS = 250 kt a 5 000 ft.
- **`Q5b.m`** — Calcula Mach, TAS e EAS para CAS supersônico a 35 000 ft.
- **`Q5c.m`** — Calcula arrasto total (D0 + Di) nos regimes subsônico (a) e supersônico (b) para a aeronave com S = 27,87 m².

## Dependencias

Todos os scripts de Q2 a Q5 dependem das funcoes em **Q1**. O caminho e adicionado via `addpath` no inicio de cada script:

```matlab
addpath('/home/user/Área de trabalho/MVO/Lista 1/Q1')
```

Ajuste o caminho conforme necessario antes de executar.

## Como executar

1. Abra o MATLAB.
2. Navegue ate a pasta da questao desejada.
3. Certifique-se de que o `addpath` aponta para a pasta `Q1` correta.
4. Execute o script `.m` correspondente.
