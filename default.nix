with import <nixpkgs> {};

stdenv.mkDerivation {
  name = "yggdrasil-build";

  # Укажите исходный код, если требуется скачать репозиторий
  src = ./.;

  # Зависимости для сборки и выполнения
  buildInputs = [
    go
  ];

  # Команды сборки
  buildPhase = ''
    ./build
    #mkdir -p build
    #cd build
    #cmake ..
    #make
  '';

  # Установочная фаза (если требуется)
  installPhase = ''
   #mkdir -p $out/bin
   #cp build/yggdrasil $out/bin/
  '';

  # Опционально: включите документацию или конфигурации
  meta = with lib; {
    description = "Build environment for Yggdrasil configuration and binaries";
    license = licenses.mit;
    maintainers = [ maintainers.you ];
  };
}
