#!/bin/bash
grep -E "] \(WW\)" /var/log/Xorg.1.log | sed -E "s/\(WW\)/Warning: /" > pull.log
grep -E "] \(II\)" /var/log/Xorg.1.log | sed -E "s/\(II\)/Information: /" >> pull.log
cat pull.log
