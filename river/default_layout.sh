#!/usr/bin/env bash

# Default Layout
riverctl send-layout-cmd stacktile "all_primary false"
riverctl send-layout-cmd stacktile "primary_sublayout stack"
riverctl send-layout-cmd stacktile "primary_position left"
riverctl send-layout-cmd stacktile "primary_count 2"
riverctl send-layout-cmd stacktile "primary_ratio 0.60"
riverctl send-layout-cmd stacktile "outer_padding 0"
riverctl send-layout-cmd stacktile "inner_padding 1"
riverctl send-layout-cmd stacktile "secondary_sublayout rows"
riverctl send-layout-cmd stacktile "secondary_count 3"
riverctl send-layout-cmd stacktile "secondary_ratio 0.5"
riverctl send-layout-cmd stacktile "remainder_sublayout stack"
