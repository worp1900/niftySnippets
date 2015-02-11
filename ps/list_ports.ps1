$proc = @{};
Get-Process | ForEach-Object { $proc.Add($_.Id, $_) };
netstat -aon | Select-String "\s*([^\s]+)\s+([^\s]+):([^\s]+)\s+([^\s]+):([^\s]+)\s+([^\s]+)?\s+([^\s]+)" | ForEach-Object {
    $g = $_.Matches[0].Groups;
    New-Object PSObject | 
        Add-Member @{ Protocol =           $g[1].Value  } -PassThru |
        Add-Member @{ LocalAddress =       $g[2].Value  } -PassThru |
        Add-Member @{ LocalPort =     [int]$g[3].Value  } -PassThru |
        Add-Member @{ RemoteAddress =      $g[4].Value  } -PassThru |
        Add-Member @{ RemotePort =         $g[5].Value  } -PassThru |
        Add-Member @{ State =              $g[6].Value  } -PassThru |
        Add-Member @{ PID =           [int]$g[7].Value  } -PassThru |
        Add-Member @{ Process = $proc[[int]$g[7].Value] } -PassThru;
#} | Format-Table Protocol,LocalAddress,LocalPort,RemoteAddress,RemotePort,State -GroupBy @{Name='Process';Expression={$p=$_.Process;@{$True=$p.ProcessName; $False=$p.MainModule.FileName}[$p.MainModule -eq $Null] + ' PID: ' + $p.Id}} -AutoSize
} | Sort-Object PID | Out-GridView