# Deployment e Testing Automatizzato di rApp e xApp in O-RAN

Questo repository contiene il codice e la documentazione relativi al progetto di tesi triennale in Ingegneria Informatica presso l'Università di Bologna (A.A. 2024-2025). Il progetto si focalizza sull'automazione del ciclo di vita dei componenti chiave dell'architettura O-RAN utilizzando metodologie DevOps.

## 📌 Descrizione del Progetto
L'obiettivo principale è superare le complessità e la rigidità delle reti RAN tradizionali ("black-box") adottando il paradigma **Open Radio Access Network (O-RAN)**. La tesi propone una pipeline di automazione basata su **Ansible** per gestire il deployment e il testing di:
* **Non-Real Time RIC** (Nodo di Controllo).
* **Near-Real Time RIC**.
* **rApp** e **xApp** (Applicazioni intelligenti per l'ottimizzazione della rete).

## 🏗️ Architettura del Sistema
Il sistema è implementato su tre macchine virtuali che riflettono il modello **Cloud-Edge Continuum**:
1. **Nodo Non-RT RIC**: Funge da *Control Node* dell'automazione, ospitando Ansible e gestendo l'orchestrazione degli altri nodi.
2. **Nodo Near-RT RIC**: Nodo gestito che opera in tempo quasi reale.
3. **Nodo SMO (Service Management and Orchestration)**: Gestisce l'orchestrazione principale del servizio.

L'ambiente Kubernetes è gestito tramite **K3s**, scelto per la sua leggerezza in ambienti distribuite.

## 🛠️ Tecnologie e Strumenti
* **Automazione**: Ansible (Playbooks e Inventory).
* **Orchestrazione Container**: Kubernetes (K3s), Helm.
* **Repository**: ChartMuseum per la gestione dei chart Helm.
* **Framework O-RAN**: Software della O-RAN Software Community (O-RAN SC).
* **Comunicazione**: Interfaccia A1 per lo scambio di policy tra i RIC.

## 📂 Struttura dei Playbook
L'automazione è divisa in tre fasi principali per ciascun nodo:
* **Installazione Ambiente**: Setup di K3s, Helm, E2 Simulator e componenti core del RIC.
* **Verifica Connettività A1**: Validazione della comunicazione tra Non-RT RIC e Near-RT RIC.
* **Deployment Applicazioni**: Onboarding e installazione automatica di rApp (su Non-RT RIC) e xApp (su Near-RT RIC).

## 📊 Risultati
L'analisi comparativa ha dimostrato una chiara superiorità della procedura automatizzata:
* **Efficienza**: Il deployment del Non-RT RIC ha mostrato un risparmio medio di oltre **80 secondi** rispetto alla procedura manuale.
* **Affidabilità**: Una volta superata l'anomalia iniziale, la varianza dei tempi di esecuzione automatizzata è risultata significativamente inferiore, garantendo stabilità e prevedibilità.
