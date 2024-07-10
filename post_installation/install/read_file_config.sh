#!/bin/bash

function add_extension() {
    local group="$1"
    echo "groupe:" $group

    # Vérifie si le tableau associatif est déclaré
    if [[ -z ${extensions} ]]; then
        declare -A extensions
    fi
    # Ajoute l'extension au groupe existant ou crée un nouveau groupe si nécessaire
    if [[ -n ${extensions[$group]} ]]; then
        local ext="$2"
        extensions["$group"]+=(",${ext}")
    else
        extensions["$group"]=("")
    fi
}

function read_file() {
    while IFS= read -r line; do
        # echo "1" + $line
        if [[ ! $line =~ ^\s*#.* ]]; then # Ignorer les commentaires
            if [[ $line =~ \s*[^\s]*:\s* ]]; then
                local group=$(echo "$line" | sed 's/\s*\[\([^:]*\)\]:*/\1/')
                add_extension $group
            elif [[ $line =~ \s*-\s[^\s]*\s* ]]; then
                local name=$(echo "$line" | sed 's/\s*-\s\[\([^\s]*\)\].*/\1/')
                add_extension $group $name
            else # Extension
                # echo "5" + $line
                continue
            fi
        fi
    done < "$file"
}

function parse_yaml_to_array() {
    local file="$1"
    declare -A extensions

    # Fonction interne pour ajouter une extension à un groupe existant
    read_file "$file"
    return 0
}

# Exemple d'utilisation
parse_yaml_to_array $1
echo "${extensions[@]}"
