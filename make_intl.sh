#!/usr/bin/env bash

flutter pub run intl_translation:generate_from_arb \
    --output-dir=lib/src/intl/                     \
    lib/src/intl/app_localizations.dart            \
    lib/src/arb/*.arb