{
  networking = {
    networkmanager.enable = true; # network manager
    nameservers = [
      "1.1.1.1"
      "8.8.8.8"
    ]; # dns
    # Настройка моста
    # bridges = {
    #   myBridge = {
    #     interfaces = [ "ens33" ];  # Укажите интерфейс, который будет частью моста
    #     # Вы можете добавить дополнительные настройки, если необходимо
    #     };
    #   };
    # };
    # Включаем IP-Forwarding
    #boot.kernel.sysctl."net.ipv4.ip_forward" = 1;
  };
}
