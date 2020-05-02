import 'dart:typed_data';

import 'package:nfc_manager/nfc_manager.dart';

final NfcTag kTag1 = NfcTag(
  handle: '1',
  data: {
    'type': 'miFare',
    'mifareFamily': 2,
    'identifier': Uint8List.fromList([0x04, 0xf6, 0x01, 0x42, 0x89, 0x5d, 0x84]),
    'historicalBytes': Uint8List.fromList([]),
    'ndef': {
      'cachedMessage': {
        'records': [{
          'typeNameFormat': 0x01,
          'type': Uint8List.fromList([0x54]),
          'identifier': Uint8List.fromList([]),
          'payload': Uint8List.fromList('enHello World'.codeUnits),
        }, {
          'typeNameFormat': 0x01,
          'type': Uint8List.fromList([0x55]),
          'identifier': Uint8List.fromList([]),
          'payload': Uint8List.fromList([0x04] + 'example.com'.codeUnits),
        }],
      },
    },
  },
);