# 🐧 Atelier Linux — Préparation d'un environnement pour un projet d'IA
## 📖 Présentation

Ce dépôt regroupe la réalisation d'un **atelier Linux** dont l'objectif est de préparer, de bout en bout, un environnement de travail complet pour un projet d'Intelligence Artificielle. L'atelier a été réalisé sous **Ubuntu (via WSL 2)** et couvre l'organisation des données, la gestion des utilisateurs et des permissions, l'installation des outils, la supervision des processus et l'automatisation via un script Bash.

## 🎯 Objectifs

- Organiser les données et créer l'arborescence d'un projet.
- Manipuler les fichiers : lecture, recherche, copie, archivage, restauration.
- Gérer les utilisateurs, les groupes et les permissions (sécurité).
- Installer les outils nécessaires et récupérer un dataset depuis Internet.
- Lancer et superviser des traitements (processus).
- Automatiser toute la préparation à l'aide d'un script Bash commenté.

## 🗂️ Contenu du dépôt

| Fichier | Description |
|---|---|
| `setup_project.sh` | Script Bash automatisant toute la préparation de l'environnement (livrable principal). |
| `Atelier_Linux_Compte_Rendu.pdf` | Compte rendu illustré de la réalisation, avec captures d'écran. |
| `README.md` | Présentation du projet. |

## ⚙️ Le script `setup_project.sh`

Le script automatise en une seule exécution :

1. la saisie du nom du projet ;
2. la création de l'arborescence ;
3. la génération d'un fichier de configuration ;
4. l'installation des outils (git, curl, wget, htop, tree, python3…) ;
5. le téléchargement d'un dataset ;
6. la compression du projet en archive ;
7. l'affichage d'un résumé.

Il intègre également une **journalisation horodatée** (fonction `log()`) qui enregistre chaque étape dans `logs/setup.log`.

### ▶️ Utilisation

```bash
chmod +x setup_project.sh
./setup_project.sh
```

## 🧰 Compétences et outils mobilisés

Système de fichiers · Utilisateurs & groupes · Permissions (`chmod`, `chown`, `chgrp`) · Gestion des processus · Bash scripting · Git & GitHub · WSL 2

## 👩‍💻 Auteur

**Khadija Ngom** — Développeuse Full Stack & étudiante en Intelligence Artificielle
📧 khadijangom1997@gmail.com · 🔗 [LinkedIn](https://www.linkedin.com/in/khadija-ngom-49a81817b)
