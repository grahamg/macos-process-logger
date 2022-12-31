# macos-process-logger
Logs differences in state changes using `launchctl list` command for later analysis to a log file.

`$ bash ./process-logger.sh &`

`$ watch cat /tmp/process-logger.log`
> New processes detected:
> 
> 58d57
> 
> < 37536	0	com.apple.mdworker.shared.01000000-0300-0000-0000-000000000000
> 
> 68d66
> 
> < 37537	0	com.apple.mdworker.shared.0B000000-0300-0000-0000-000000000000
> 
> 128d125
> 
> < 37531	0	com.apple.mdworker.shared.10000000-0400-0000-0000-000000000000
> 
> 132d128
> 
> < 36174	0	com.apple.mdworker.shared.0D000000-0200-0000-0000-000000000000
> 
> 165c161
> 
> < -	0	com.microsoft.VSCode.ShipIt
