class profile:r10k {
  class { 'r10k' :
    remote => 'https://github.com/nithin-rk/control-repo',
  }
  class {'r10k::webhook::config' :
    use_mcollective => false,
    enable_ssl      => false,
  }
  class {'r10k::webhook' :
    uuser => 'root',
    group => 'root',
  }
}
