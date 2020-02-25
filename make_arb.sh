#!/usr/bin/env bash

flutter pub run intl_translation:extract_to_arb \
    --output-dir=lib/src/arb/                   \
    --output-file=intl_ru.arb                   \
    --locale=ru                                 \
    lib/src/intl/app_localizations.dart