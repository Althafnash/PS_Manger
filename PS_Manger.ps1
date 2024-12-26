function Welcome {
    Write-Host '_________  _________'                                             
    Write-Host '\______   \/   _____/   _____ _____    ____    ____   ___________ '
    Write-Host '|     ___/\_____  \   /     \\__  \  /    \  / ___\_/ __ \_  __ \'
    Write-Host '|    |    /        \ |  Y Y  \/ __ \|   |  \/ /_/  >  ___/|  | \/'
    Write-Host '|____|   /_______  / |__|_|  (____  /___|  /\___  / \___  >__|  ' 
    Write-Host  '                \/        \/     \/     \//_____/      \/   '    
}

function ChangeDerictory {
   Write-Host 'Changing derictories'
    $Derictory = Read-Host 'Enter the path to chnage'
    Set-Location $Derictory
}

function CopyFiles {
    Write-Host 'Moving files'
    $Path = Read-Host 'Enter the path to the folder to move : '
    $File = Read-Host 'Enter the file name : '
    Copy-Item $File $Path    
}

function MoveFiles {
    Write-Host 'Moving files'
    $Path = Read-Host 'Enter the path to the folder to move : '
    $File = Read-Host 'Enter the file name : '
    Move-Item $File $Path
}

function RemoveFiles {
    Write-Host 'Moving files'
    $Path = Read-Host 'Enter the path to the folder to move : '
    $File = Read-Host 'Enter the file name : '
    Remove-Item $File $Path
}

function RemoveFolders {
    Write-Host 'Removing a folder '
    $Path = Read-Host 'Enter the path of the folder'
    Remove-Item -Path $Path -Recurse -Force 
}

function Remame {
    Write-Host 'Craeting a file'
    $Path = Read-Host 'Enter the new path for the file : '
    $NewName = Read-Host 'Enter the name of the file : '
    Rename-Item -Path $Path -NewName $NewName
}

function FolderScanner {
    Write-Host 'Folder scanner'
    $Path = Read-Host 'What is the folder path : '
    Get-ChildItem -Path $Path
}

function FolderDeepScanner {
    Write-Host 'Folder scanner with subfolders'
    Get-ChildItem -Recurse     
}

function CreatingFolder {
    Write-Host 'Craeting a Folder'
    $Path = Read-Host 'Enter the new path for the Folder : '
    New-Item -Path $Path -ItemType Directory
}

function CreatingFiles {
    Write-Host 'Craeting a file'
    $Path = Read-Host 'Enter the new path for the file : '
    New-Item -Path $Path -ItemType File
}

function Processes {
    Write-Host 'These are all the processes in the machine'
    Get-Process
}

function  StartProcess{
    Write-Host 'Starting a process'
    $Name = Read-Host 'What is the process name : '
    Start-Process -Name $Name
}

function StopProcess {
    Write-Host 'Stopping a process'
    $Name = Read-Host 'What is the process name : '
    Stop-Process -Name $Name    
}

function FolderPermission {
    Write-Host 'Folder permisiion'
    $Path = Read-Host 'Folder Path :' 
    Get-Acl $Path
}

function ScheduleTask {
    Write-Host 'All the scheduled Task'
    Get-ScheduledTask  
}

function NetworkAdapters {
    Write-Host 'All network Adapters'
    Get-NetAdapter      
}
function FirewallRules {
    Write-Host 'Get firewall Rules'
    Get-netfirewallrule    
}

function Trace {
    Write-Host 'Trace a Domain'
    $Domain = Read-Host 'What is the domain name :'
    Test-Connection -Traceroute -ComputerName $Domain
}

function DNSCacheClaer {
    Write-Host 'Claer DNS Cache'
    Clear-DnsClientCache
}

function IPConfig {
    Write-Host 'Show all the IP address configuration'
    Get-NetIPConfiguration
}

function IPAddress {
    Write-Host 'Get detailed IP Adress information'
    Get-NetIPAddress    
}

function DNSCache {
    Write-Host 'Get DNS Cache'
    Get-DnsClientCache 
}

function ARPTable {
    Write-Host 'Dispalying ARP Table'
    Get-NetNeighbor  
}

function RouteTables {
    write-Host 'Getting routing tables'
    Get-NetRoute 
}

function PortScanner {
    Write-Host 'Port scnner'
    $IP = Read-Host 'IP Adress :'
    $PortNumber = Read-Host 'Port Number :'
    Test-NetConnection -ComputerName $IP -Port $PortNumber    
}

function HTTPDownload {
    Write-Host 'Downloads webpage'
    $URL = Read-Host 'URL : '
    $outputFile = Read-Host 'Outputfile name'
    Write-Host 'Eg : Output.html'
    Invoke-WebRequest -Uri $URL -OutFile $outputFile 
}

function APIData {
    Write-Host 'Download API data'
    $API_URL = Read-Host 'Enter API URL : '
    Invoke-RestMethod -Uri $API_URL   
}

function WIFIAdapter {
    Write-Host 'wifi Adapters'
    Get-NetAdapter -InterfaceDescription *Wi-Fi* 
}

function WIFIProfiles {
    Write-Host 'WIFI networks'
    netsh wlan show networks  
}

function ConncetWiFi {
    Write-Host 'Connect to WiFi'
    $WiFi = Read-Host 'Name of the WiFi : '
    netsh wlan connect name=$WiFi   
}

function TCP {
    Write-Host 'Active TCP connections'
    Get-NetTCPConnection  
}

function UDP {
    Write-Host 'UDP endpoints'
    Get-NetUDPEndpoint  
}

function SharedFolders {
    Write-Host 'Shared Folders'
    Get-SmbShare  
}

function NetAdpaterStats {
    Write-Host 'Network Adapter Stats'
    Get-NetAdapterStatistics    
}

function Main {
   Welcome
   while ($true) {
        $Command = Read-Host 'Command :'
        Clear-Host
        if ($Command -eq 'ChangeDerictory') {
            ChangeDerictory
        } elseif ($Command -eq 'Copy') {
            CopyFiles
        } elseif ($Command -eq 'Delete') {
            RemoveFiles
        } elseif ($Command -eq 'RemoveDir') {
            RemoveFolders
        } elseif ($Command -eq 'Remame') {
            Remame
        } elseif ($Command -eq 'FolderScanner') {
            FolderScanner
        } elseif ($Command -eq 'CreateFolder') {
            CreatingFolder
        } elseif ($Command -eq 'CreateFiles') {
            CreatingFiles  
        } elseif ($Command -eq 'System') {
            Processes
        } elseif ($Command -eq 'StartProcess') {
            StartProcess
        } elseif ($Command -eq 'StopProcess') {
            StopProcess
        } elseif ($Command -eq 'ScheduleTask') {
            ScheduleTask
        } elseif ($Command -eq 'NetworkAdapters') {
            NetworkAdapters
        } elseif ($Command -eq 'FirewallRules') {
            FirewallRules
        } elseif ($Command -eq 'Trace') {
            Trace  
        } elseif ($Command -eq 'DNSCacheClaer') {
            DNSCacheClaer  
        } elseif ($Command -eq 'IPConfig') {
            IPConfig  
        } elseif ($Command -eq 'IPAddress') {
            IPAddress  
        } elseif ($Command -eq 'DNSCache') {
            DNSCache  
        } elseif ($Command -eq 'ARPTable') {
            ARPTable  
        } elseif ($Command -eq 'RouteTables') {
            RouteTables  
        } elseif ($Command -eq 'PortScanner') {
            PortScanner  
        } elseif ($Command -eq 'HTTPDownload') {
            HTTPDownload  
        } elseif ($Command -eq 'APIData') {
            APIData  
        } elseif ($Command -eq 'WIFIAdapter') {
            WIFIAdapter  
        } elseif ($Command -eq 'WIFIProfiles') {
            WIFIProfiles  
        } elseif ($Command -eq 'ConncetWiFi') {
            ConncetWiFi  
        } elseif ($Command -eq 'TCP') {
            TCP  
        } elseif ($Command -eq 'UDP') {
            UDP  
        } elseif ($Command -eq 'SharedFolders') {
            SharedFolders  
        } elseif ($Command -eq 'NetAdpaterStats') {
            NetAdpaterStats  
        }elseif ($Command -eq 'Help') {
            Write-Host 'ChangeDerictory - Change derictory'
            Write-Host 'Copy - Copy Files'
            Write-Host 'Delete - Delete Files'
            Write-Host 'RemoveDir - Delete derictory'
            Write-Host 'Remame - Rename Files'
            Write-Host 'FolderScanner - Scans the root derictory'
            Write-Host 'CreateFolder - Create derictory'
            Write-Host 'CreateFiles - Create files'
            Write-Host 'System - System Process'
            Write-Host 'StartProcess - Start a Process'
            Write-Host 'StopProcess - Stop a Process'
            Write-Host 'ScheduleTask - Scheuled Tasks'
            Write-Host 'NetworkAdapters - Network Adapters'
            Write-Host 'FirewallRules - Firewall Rules'
            Write-Host 'Trace - Trace a domain'
            Write-Host 'DNSCacheClaer - Resolves DNS cache'
            Write-Host 'IPConfig - IP Address configuration'
            Write-Host 'IPAddress - IP Address' 
            Write-Host 'DNSCache - Shows DNS cache'
            Write-Host 'ARPTable - ARP Table'
            Write-Host 'RouteTables - Route Table'
            Write-Host 'PortScanner - Port scanner'
            Write-Host 'HTTPDownload - HTTP Download'
            Write-Host 'APIData - API Data downloader'
            Write-Host 'WIFIAdapter - Wifi Adapters'
            Write-Host 'WIFIProfiles - Wifi network Profiles '
            Write-Host 'ConncetWiFi - Connect to a Wifi'
            Write-Host 'TCP - TCP Endpoints'
            Write-Host 'UDP - UDP Endpoints'
            Write-Host 'SharedFolders - Shared folders on the network'
            Write-Host 'NetAdpaterStats - Network Adapter Stats'
        }elseif ($Command -eq 'Exit') {
            break
        }

    }
}

Main