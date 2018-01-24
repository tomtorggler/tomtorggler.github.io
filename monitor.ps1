# pull latest changes
cd tomtorggler.github.io
git pull

# dot source the functions 

. ./MiningStats.ps1

function Get-MiningResults {

    # safe keys/addresses in json formatted file like
    <#
        {
        "btcApiKey":  "my-api-key",
        "ltcApiKey":  "my-api-key"
        }
    #>
    $keys = Get-Content ../keys.json | ConvertFrom-Json

    $nh = Get-NiceHashResults -Address $keys.nhAddr | Select-Object -ExpandProperty result | Select-Object -ExpandProperty stats | Where-Object algo -eq 1
    $ltc = Get-LiteCoinResults -Key $keys.ltcApiKey | Select-Object -ExpandProperty user
    $xmr = Get-SupportXmrResults -Address $keys.xmrAddr
    $btc = Get-BitcoinComResults -Key $keys.btcApiKey

    $out = [ordered]@{
        "BTC" = $nh.balance
        "BCH" = $btc.bitcoinCashBalance
        "LTC" = $ltc.unpaid_rewards
        "XMR" = $xmr.amtDue
    }

    Write-Output (New-Object -TypeName psobject -Property $out) 
}

# Get Information from the API
$s9stats = Get-AntMinerStats -ComputerName s91,s92 -Type S9
$l3stats = Get-AntMinerStats -ComputerName l31,l32 -Type l3

# Create output html tables 
$out = $l3stats | Select-Object Host,Uptime,HashRate,'T. max',Fan*,'ASIC'
$out += $s9stats | Select-Object Host,Uptime,HashRate,'T. max',Fan*,'ASIC'
$out += Get-M01Stats

$outTemp= $l3stats | Select-Object Host,Temp*,Fan*
$outTemp += $s9stats | Select-Object Host,Temp*,Fan*

$outHw= $l3stats | Select-Object Host,Freq,*Errors
$outHw += $s9stats | Select-Object Host,Freq,*Errors

$outAsic = $l3stats | Select-Object Host,*Status
$outAsic += $s9stats | Select-Object Host,*Status

$mainTable = $out | ConvertTo-Html -Fragment
$unpaidTable = Get-MiningResults | ConvertTo-Html -Fragment -As List
$tempTable = $outTemp | ConvertTo-Html -Fragment
$hardwareTable = $outHw | ConvertTo-Html -Fragment
$asicTable = $outAsic | ConvertTo-Html -Fragment -As List 

# write html to file
$index = ConvertTo-Html -Body "$unpaidTable $mainTable"
@"
---
layout: default
title: Mining Statistics
date: $(get-date -Format "yyyy-MM-dd HH:mm:ss")
---

"@ | Set-Content -Path index.html
$index | Add-Content index.html

$hardware = ConvertTo-Html -Body "<h2>Temperature Detail</h2> $tempTable <h2>ASIC Errors</h2> $hardwareTable <h2>ASIC Status</h2> $asicTable"  
@"
---
layout: default
title: Hardware Details
date: $(get-date -Format "yyyy-MM-dd HH:mm:ss")
permalink: /hw/
---

"@ | Set-Content hw.html
$hardware | Add-Content hw.html


# commit and push to github
git add .
git commit -m "updates index"
git push

#"<meta http-equiv='refresh' content='900'>"