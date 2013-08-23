class windows-iis::files {
	file { 'C:/windows/temp/dotnet45.exe':
		source => 'puppet:///modules/windows-iis/dotnet45.exe',
		owner => 'administrator',
		group => 'administrators',
		mode => 0770,
		notify => Exec["DotNet4Inst"],
	}

	exec { "DotNet4Inst":
		command => "C:/windows/temp/dotnet45.exe /q",
		refreshonly => true,
		require => File["C:/windows/temp/dotnet45.exe"],
	}
}
