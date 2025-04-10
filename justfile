SPOON_NAME := "AdminTimer.spoon"

default:
    just --summary

clean:
    @echo "🧹 Suppression de l'archive précédente"
    @rm -f Spoons/{{SPOON_NAME}}.zip

zip: clean
    @echo "📦 Création de l'archive Spoons/{{SPOON_NAME}}.zip depuis Sources/{{SPOON_NAME}}..."
    @mkdir -p Spoons
    @cd Sources/{{SPOON_NAME}} && zip -r ../../Spoons/{{SPOON_NAME}}.zip * > /dev/null
    @echo "✅ Archive créée : Spoons/{{SPOON_NAME}}.zip"

check:
    @unzip -l Spoons/{{SPOON_NAME}}.zip
