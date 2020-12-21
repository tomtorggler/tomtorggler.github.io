---
author: tto
category: TAK
date: 2020-12-21
excerpt: '
Connect-Exchange [-Server] <Object> [-Credential <pscredential>] [-ProxyType <ProxyAccessType>] [<CommonParameters>]

Connect-Exchange [-Credential <pscredential>] [-Online] [-ProxyType <ProxyAccessType>] [<CommonParameters>]

Connect-Exchange [-Credential <pscredential>] [-Protection] [-ProxyType <ProxyAccessType>] [<CommonParameters>]
'
external help file: tak-help.xml
layout: post
Module Name: TAK
online version:
schema: 2.0.0
tags: OnlineHelp PowerShell
title: Connect-Exchange
---

# Connect-Exchange

## SYNOPSIS
{{ Fill in the Synopsis }}

## SYNTAX

### Server
```
Connect-Exchange [-Server] <Object> [-Credential <PSCredential>] [-ProxyType <ProxyAccessType>]
 [<CommonParameters>]
```

### Online
```
Connect-Exchange [-Credential <PSCredential>] [-Online] [-ProxyType <ProxyAccessType>] [<CommonParameters>]
```

### Protection
```
Connect-Exchange [-Credential <PSCredential>] [-Protection] [-ProxyType <ProxyAccessType>] [<CommonParameters>]
```

## DESCRIPTION
{{ Fill in the Description }}

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -Credential
{{ Fill Credential Description }}

```yaml
Type: PSCredential
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Online
{{ Fill Online Description }}

```yaml
Type: SwitchParameter
Parameter Sets: Online
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Protection
{{ Fill Protection Description }}

```yaml
Type: SwitchParameter
Parameter Sets: Protection
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ProxyType
{{ Fill ProxyType Description }}

```yaml
Type: ProxyAccessType
Parameter Sets: (All)
Aliases:
Accepted values: None, IEConfig, WinHttpConfig, AutoDetect, NoProxyServer

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Server
{{ Fill Server Description }}

```yaml
Type: Object
Parameter Sets: Server
Aliases:

Required: True
Position: 0
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### System.Object

## OUTPUTS

### System.Object
## NOTES

## RELATED LINKS
