class nova::packages {
    package { ["libvirt-bin", "python-libvirt", "qemu-kvm", "kvm", "qemu-utils", "dnsmasq-utils", "python-m2crypto"]:
        ensure => installed,
    }

    service { "libvirt-bin":
        ensure => running,
        enable => true,
        hasstatus => true,
        hasrestart => true,
    }
}
