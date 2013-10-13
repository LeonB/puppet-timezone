class timezone::config {

    file { "/etc/localtime":
		source => "file:///usr/share/zoneinfo/${timezone::timezone}",
		links  => follow, # because source is a symlink
		require => Package["tzdata"]
    }
}
