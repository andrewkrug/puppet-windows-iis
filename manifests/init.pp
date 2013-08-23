class windows-iis{
		include windows-iis::firewall
		include windows-iis::files

		dism { 
			'IIS-WebServerRole': ensure => present,
		}
	        dism {
			'IIS-WebServer': ensure => present,
		}
		dism {
			'IIS-CommonHttpFeatures': ensure => present,
		}
	 	dism {	
			'IIS-StaticContent': ensure => present,
		}
		
		dism {
			'IIS-DefaultDocument': ensure => present,
		}
 		dism {
			'IIS-DirectoryBrowsing': ensure => present,
		}	
	 	dism {	
			'IIS-HttpErrors': ensure => present,
		}
		dism {		
			'IIS-HttpRedirect': ensure => present,
		}
		dism {
			'IIS-ApplicationDevelopment': ensure => present,
		}	
                dism {		
			'IIS-ASPNET': ensure => present,
		}	
		dism {
			'IIS-NetFxExtensibility': ensure => present,
		}
                dism {
			'IIS-ASP': ensure => present,
		}		
                dism {
			'IIS-CGI': ensure => present,
		}	
                dism {		
			'IIS-ISAPIExtensions': ensure => present,
		}
                dism {	
			'IIS-ISAPIFilter': ensure => present,
                }
		dism {		
			'IIS-ServerSideIncludes': ensure => present,
		}	
                dism {
			'IIS-HealthAndDiagnostics': ensure => present,
		}
                dism {
			'IIS-HttpLogging': ensure => present,
		}
                dism {
			'IIS-LoggingLibraries': ensure => present,
		}			
		dism {
			'IIS-RequestMonitor': ensure => present,
		}
                dism {		
			'IIS-HttpTracing': ensure => present,	
		}
                dism {		
			'IIS-CustomLogging': ensure => present,
		}
                dism {			
			'IIS-ODBCLogging': ensure => present,
		}		
                dism {
			'IIS-Security': ensure => present,
		}
                dism {			
			'IIS-BasicAuthentication': ensure => present,	
		}
                dism {
			'IIS-WindowsAuthentication': ensure => present,
		}
                dism {
			'IIS-DigestAuthentication': ensure => present,
		}
                dism {		
			'IIS-ClientCertificateMappingAuthentication': ensure => present,
		}
                dism {
			'IIS-IISCertificateMappingAuthentication': ensure => present,
		}
                dism {
			'IIS-URLAuthorization': ensure => present,
		}
                dism {
			'IIS-RequestFiltering': ensure => present,
                }
		dism {
			'IIS-IPSecurity': ensure => present,
                }
		dism {	
			'IIS-Performance': ensure => present,
                }
		dism {
			'IIS-HttpCompressionStatic': ensure => present,
		}        
 	        dism {
			'IIS-HttpCompressionDynamic': ensure => present,
                }
		dism {
			'IIS-WebServerManagementTools': ensure => present,
                }
		dism {
			'IIS-ManagementConsole': ensure => present,
                }
		dism {
			'IIS-ManagementScriptingTools': ensure => present,
		}                
		dism {
			'IIS-ManagementService': ensure => present,
		}
                dism {
			'IIS-IIS6ManagementCompatibility': ensure => present,
		}
                dism {
			'IIS-Metabase': ensure => present,
		}
                dism {
			'IIS-WMICompatibility': ensure => present,
		}
                dism {
			'IIS-LegacyScripts': ensure => present,
		}
                dism {
			'IIS-LegacySnapIn': ensure => present,
		}
                dism {
			'WAS-WindowsActivationService': ensure => present,
		}
                dism {
			'WAS-ProcessModel': ensure => present,
		}
                dism {
			'WAS-NetFxEnvironment': ensure => present,
		}        	
	        dism {
			'WAS-ConfigurationAPI': ensure => present,	
                }

		#.NET Setup Bits
		dism {
                        'NetFx3': ensure => present,
                }
}


