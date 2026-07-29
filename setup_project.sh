#!/bin/bash
# ============================================
# Script : setup_project.sh
# Role   : Preparer automatiquement un
#          environnement de projet IA
# Auteur : Khadija
# ============================================

# Demander le nom du projet a l'utilisateur
echo "=========================================="
read -p "Entrez le nom du projet : " PROJET
echo "Creation du projet : $PROJET"

# ----- BONUS : fonction de journalisation -----
# Cree le dossier logs et une fonction qui ecrit
# chaque etape a l'ecran ET dans logs/setup.log avec la date
mkdir -p $PROJET/logs
LOGFILE="$PROJET/logs/setup.log"

log() {
    # $(date '+%Y-%m-%d %H:%M:%S') = date et heure actuelles
    echo "$(date '+%Y-%m-%d %H:%M:%S') - $1" | tee -a "$LOGFILE"
}

log "Debut de l'installation du projet $PROJET"



# ----- 2. Creation de l'arborescence -----
log "Creation de l'arborescence..."
mkdir -p $PROJET/datasets/brut
mkdir -p $PROJET/datasets/clean
mkdir -p $PROJET/config
mkdir -p $PROJET/logs
mkdir -p $PROJET/scripts
mkdir -p $PROJET/models
mkdir -p $PROJET/backup




# ----- 3. Creation du fichier de configuration -----
log "Creation du fichier de configuration..."
cat > $PROJET/config/settings.conf << FIN
PROJECT_NAME=$PROJET
DATA_PATH=datasets/brut
MODEL_PATH=models
LOG_LEVEL=INFO
FIN



# ----- 4. Installation des outils -----
log "Installation des outils..."
sudo apt update
sudo apt install -y git curl wget htop tree python3 python3-pip unzip






# ----- 5. Telechargement du dataset -----
log "Telechargement du dataset..."
wget -O $PROJET/datasets/brut/iris.csv https://raw.githubusercontent.com/mwaskom/seaborn-data/master/iris.csv





# ----- 6. Compression du projet -----
log "Creation de l'archive..."
tar -czf $PROJET/backup/$PROJET.tar.gz $PROJET





# ----- 7. Resume final -----
echo "=========================="
echo "Projet cree"
echo "Nom : $PROJET"
echo "Arborescence : OK"
echo "Fichier de config : OK"
echo "Logiciels : OK"
echo "Datasets : OK"
echo "Archive : $PROJET/backup/$PROJET.tar.gz"
echo "Installation terminee."
echo "=========================="




log "Fin de l'installation - archive creee dans $PROJET/backup/"
