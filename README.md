# Deployment e Testing Automatizzato di rApp e xApp in O-RAN

Questo repository contiene il codice e la documentazione relativi al progetto di tesi triennale in Ingegneria Informatica presso l'Università di Bologna (A.A. 2024-2025). Il progetto si focalizza sull'automazione del ciclo di vita dei componenti chiave dell'architettura O-RAN utilizzando metodologie DevOps.

## 📌 Descrizione del Progetto
[cite_start]L'obiettivo principale è superare le complessità e la rigidità delle reti RAN tradizionali ("black-box") adottando il paradigma **Open Radio Access Network (O-RAN)**[cite: 371, 372]. La tesi propone una pipeline di automazione basata su **Ansible** per gestire il deployment e il testing di:
* [cite_start]**Non-Real Time RIC** (Nodo di Controllo)[cite: 374, 377].
* [cite_start]**Near-Real Time RIC**[cite: 374, 377].
* [cite_start]**rApp** e **xApp** (Applicazioni intelligenti per l'ottimizzazione della rete)[cite: 375, 377].

## 🏗️ Architettura del Sistema
[cite_start]Il sistema è implementato su tre macchine virtuali che riflettono il modello **Cloud-Edge Continuum**[cite: 85, 86, 109]:
1. [cite_start]**Nodo Non-RT RIC**: Funge da *Control Node* dell'automazione, ospitando Ansible e gestendo l'orchestrazione degli altri nodi[cite: 106, 109].
2. [cite_start]**Nodo Near-RT RIC**: Nodo gestito che opera in tempo quasi reale[cite: 87, 109].
3. [cite_start]**Nodo SMO (Service Management and Orchestration)**: Gestisce l'orchestrazione principale del servizio[cite: 96, 109].

[cite_start]L'ambiente Kubernetes è gestito tramite **K3s**, scelto per la sua leggerezza in ambienti distribuite[cite: 85].

## 🛠️ Tecnologie e Strumenti
* [cite_start]**Automazione**: Ansible (Playbooks e Inventory)[cite: 107].
* [cite_start]**Orchestrazione Container**: Kubernetes (K3s), Helm[cite: 118, 129].
* [cite_start]**Repository**: ChartMuseum per la gestione dei chart Helm[cite: 118, 129].
* [cite_start]**Framework O-RAN**: Software della O-RAN Software Community (O-RAN SC)[cite: 110, 113].
* [cite_start]**Comunicazione**: Interfaccia A1 per lo scambio di policy tra i RIC[cite: 73, 120].

## 📂 Struttura dei Playbook
[cite_start]L'automazione è divisa in tre fasi principali per ciascun nodo[cite: 117, 128]:
* [cite_start]**Installazione Ambiente**: Setup di K3s, Helm, E2 Simulator e componenti core del RIC[cite: 118, 129].
* [cite_start]**Verifica Connettività A1**: Validazione della comunicazione tra Non-RT RIC e Near-RT RIC[cite: 120, 131].
* [cite_start]**Deployment Applicazioni**: Onboarding e installazione automatica di rApp (su Non-RT RIC) e xApp (su Near-RT RIC)[cite: 124, 134].

## 📊 Risultati
[cite_start]L'analisi comparativa ha dimostrato una chiara superiorità della procedura automatizzata[cite: 290]:
* [cite_start]**Efficienza**: Il deployment del Non-RT RIC ha mostrato un risparmio medio di oltre **80 secondi** rispetto alla procedura manuale[cite: 292].
* [cite_start]**Affidabilità**: Una volta superata l'anomalia iniziale, la varianza dei tempi di esecuzione automatizzata è risultata significativamente inferiore, garantendo stabilità e prevedibilità[cite: 295, 296, 298].

## 🎓 Crediti
* [cite_start]**Candidato**: Meriem Laaouaj [cite: 349]
* [cite_start]**Relatore**: Ch.mo Prof. Paolo Bellavista [cite: 343]
* [cite_start]**Correlatore**: Dott.ssa Sofia Montebugnoli [cite: 345]
* [cite_start]**Università**: Alma Mater Studiorum - Università di Bologna [cite: 337]
