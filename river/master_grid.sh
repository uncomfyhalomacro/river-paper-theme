#!/usr/bin/env bash


riverctl send-layout-cmd stacktile "all_primary false"
riverctl send-layout-cmd stacktile "primary_sublayout full"
riverctl send-layout-cmd stacktile "primary_position left"
riverctl send-layout-cmd stacktile "primary_count 1"
riverctl send-layout-cmd stacktile "primary_ratio 0.5"
riverctl send-layout-cmd stacktile "outer_padding 0"
riverctl send-layout-cmd stacktile "inner_padding 3"
riverctl send-layout-cmd stacktile "secondary_sublayout grid"
riverctl send-layout-cmd stacktile "secondary_count 9"
riverctl send-layout-cmd stacktile "secondary_ratio 0.5"
riverctl send-layout-cmd stacktile "remainder_sublayout rows"

