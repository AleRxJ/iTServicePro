// import 'package:credit_card_scanner/credit_card_scanner.dart'; // Temporarily disabled
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../core/common/containers/primary_container.dart';
import '../../../core/utils/app_typography.dart';

class CreditCardScanner extends StatefulWidget {
  const CreditCardScanner({super.key});

  @override
  State<CreditCardScanner> createState() => _CreditCardScannerState();
}

class _CreditCardScannerState extends State<CreditCardScanner> {
  // CardDetails? _cardDetails; // Temporarily disabled
  /* CardScanOptions scanOptions = const CardScanOptions( // Temporarily disabled
    scanCardHolderName: true,
    validCardsToScanBeforeFinishingScan: 5,
    possibleCardHolderNamePositions: [
      CardHolderNameScanPosition.aboveCardNumber,
    ],
  ); */

  Future<void> scanCard() async {
    // Temporarily show a placeholder message
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Card scanner temporarily disabled')),
    );
    /* Original code - temporarily disabled
    final CardDetails? cardDetails =
        await CardScanner.scanCard(scanOptions: scanOptions);
    if (!mounted || cardDetails == null) return;
    setState(() {
      _cardDetails = cardDetails;
    });
    */
  }

  @override
  void initState() {
    scanCard();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(),
      ),
      body: Padding(
        padding: EdgeInsets.all(20.h),
        child: PrimaryContainer(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(width: Get.width),
            Text('Card scanner temporarily disabled\nPlease enter card details manually',
                style: AppTypography.kLight15, textAlign: TextAlign.center),
            SizedBox(height: 20.h),
          ],
        )),
      ),
    );
  }
}
