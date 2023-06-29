# Testowanie Prędkości Samochodu (FiveM)

To repozytorium zawiera skrypt dla serwerów FiveM, który umożliwia testowanie prędkości samochodu. Po aktywowaniu testu, gracze mogą sprawdzić czas, w jakim samochód osiąga prędkość 100 km/h.

## Jak to działa?

Po zainstalowaniu tego skryptu na serwerze FiveM i uruchomieniu go, gracze mogą użyć komendy `/cartest`, aby rozpocząć lub zakończyć testowanie prędkości samochodu. Po rozpoczęciu testu, gracze muszą nacisnąć klawisz "W" podczas jazdy samochodem, aby sprawdzić, czy osiąga prędkość 100 km/h. Jeśli tak, w czacie pojawi się wiadomość z informacją o czasie osiągnięcia 100 km/h w milisekundach.

## Instalacja

1. Pobierz repozytorium
2. Umieść folder `cartest` w folderze `/resources`
3. Dodaj wpis `start cartest` do pliku `server.cfg`

## Użycie
1. W grze, wpisz komendę `/cartest`, aby rozpocząć lub zakończyć testowanie prędkości samochodu.
2. Podczas jazdy samochodem, naciśnij klawisz "W", aby sprawdzić czas osiągnięcia prędkości 100 km/h.
3. W czacie pojawi się wiadomość z informacją o czasie osiągnięcia 100 km/h w sekundach.

## Informacje dodatkowe

Ten skrypt został stworzony języku LUA. Możesz dostosować go według swoich potrzeb, np. zmieniając komendę, którą można użyć do rozpoczęcia testu.

**Autor:** bae
