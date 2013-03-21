class timezone::config {

    file { "/etc/localtime":
		ensure  => 'link',
		target  => "/usr/share/zoneinfo/${timezone::timezone}",
		require => Package["tzdata"]
    }
}
