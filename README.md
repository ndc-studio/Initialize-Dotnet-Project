# Comment initialiser un projet dotnet facilement

# Explication
- Aller à l'emplacement désiré pour créer le dossier (ou cloner le repository)
- Ouvrir un invite de commande (Pour le cas présent j'utiliserais git bash)
- créer un dossier 
    ```bash
    mkdir MonProjet1
    ```

- créer une Solution qui contiendra le projet dotnet
    ```bash
    mkdir Solution
    ```
- Aller dans le dossier de projet Solution 
    ```bash
    cd Solution
    ```

- Initialiser le projet .NET
    ```bash
    dotnet new console
    ```

- créer un fichier .sln
    ```bash
    dotnet new sln -n SolutionTest
    ```

- lier le fichier.sln à la Solution
    ```bash
    dotnet sln add "c:\Ton\Chemin\D.acces\Absolu"
    # ou
    dotnet sln add ./Ton/Chemin/D.acces/Relatif
    ```

- créer un Projet de test (Ici j'utiliserais xunit par facilité)
    ```bash
    dotnet new xunit -n Tests
    ```

# Plan de structure finale
```lua
'racine/'
    ├─► 'MonProjet1/'
    |       ├─► 'Solution.sln'
    |       ├─► 'Solution/'
    |       |       ├─► 'obj/' -- contient les fichiers relatifs au projet
    |       |       ├─► 'Program.cs' -- le fichier Main
    |       |       └─► 'Solution.csproj' -- le fichier de projet .NET
    |       └─► 'Tests/'
    |               ├─► 'obj/' -- contient les fichiers relatifs au projet de test unitaires
    |               ├─► 'UnitTest1.cs' -- un premier fichier de test generé par dotnet lors de l'initialisation de xunit
    |               └─► 'Tests.csproj' -- le fichier de projet test .NET xunit
    |
    └─► 'MonProjet2/'
            └─► -- Même marche a suivre 

``` 