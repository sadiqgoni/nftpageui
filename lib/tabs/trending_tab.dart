import 'package:flutter/cupertino.dart';

import '../component/nft_card.dart';

class TrendingTab extends StatelessWidget {
  const TrendingTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: NftCard(imagePath: 'lib/images/apiens_3.png',)
    );
  }
}
