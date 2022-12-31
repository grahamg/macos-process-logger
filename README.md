# macos-process-logger
Logs differences in state changes using `launchctl list` command for later analysis to a log file.

$ bash ./process-logger.sh &
$ watch cat /tmp/process-logger.log
New processes detected:
58d57
< 37536	0	com.apple.mdworker.shared.01000000-0300-0000-0000-000000000000
68d66
< 37537	0	com.apple.mdworker.shared.0B000000-0300-0000-0000-000000000000
128d125
< 37531	0	com.apple.mdworker.shared.10000000-0400-0000-0000-000000000000
132d128
< 36174	0	com.apple.mdworker.shared.0D000000-0200-0000-0000-000000000000
165c161
< -	0	com.microsoft.VSCode.ShipIt
---
> 39383	0	com.microsoft.VSCode.ShipIt
185d180
< 37543	0	com.apple.mdworker.shared.05000000-0700-0000-0000-000000000000
251d245
< 37532	0	com.apple.mdworker.shared.0A000000-0400-0000-0000-000000000000
461d454
< 37535	0	com.apple.mdworker.shared.03000000-0300-0000-0000-000000000000
New processes detected:
126d125
< 37731	0	com.apple.mdworker.shared.04000000-0300-0000-0000-000000000000
186d184
< 37555	0	com.apple.mdworker.shared.08000000-0400-0000-0000-000000000000
321d318
< 37849	0	com.apple.mdworker.shared.0F000000-0000-0000-0000-000000000000
325d321
< 37850	0	com.apple.mdworker.shared.07000000-0200-0000-0000-000000000000
330d325
< 37549	0	com.apple.mdworker.shared.0C000000-0300-0000-0000-000000000000
377d371
< 37730	0	com.apple.mdworker.shared.09000000-0000-0000-0000-000000000000
445d438
< 37847	0	com.apple.mdworker.shared.06000000-0600-0000-0000-000000000000
New processes detected:
126d125
< 38023	0	com.apple.mdworker.shared.02000000-0700-0000-0000-000000000000
179a179
> 39805	0	com.apple.mdworker.shared.07000000-0300-0000-0000-000000000000
236a237
> 39806	0	com.apple.mdworker.shared.02000000-0000-0000-0000-000000000000
New processes detected:
60d59
< 37941	0	com.apple.mdworker.shared.0E000000-0000-0000-0000-000000000000
179d177
< 39805	0	com.apple.mdworker.shared.07000000-0300-0000-0000-000000000000
237d234
< 39806	0	com.apple.mdworker.shared.02000000-0000-0000-0000-000000000000
New processes detected:
159c159
< -	0	com.if.AmphetamineEnhancer-CDMManager
---
> 40406	0	com.if.AmphetamineEnhancer-CDMManager
New processes detected:
159c159
< 40406	0	com.if.AmphetamineEnhancer-CDMManager
---
> -	0	com.if.AmphetamineEnhancer-CDMManager
New processes detected:
237d236
< 40652	0	com.apple.mdworker.shared.09000000-0100-0000-0000-000000000000
327d325
< 40760	0	com.apple.mdworker.shared.04000000-0500-0000-0000-000000000000
New processes detected:
127a128
> 41081	0	com.apple.mdworker.shared.09000000-0200-0000-0000-000000000000
New processes detected:
188d187
< 40938	0	com.apple.mdworker.shared.0D000000-0500-0000-0000-000000000000
