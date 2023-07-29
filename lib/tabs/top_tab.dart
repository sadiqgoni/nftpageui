import 'package:flutter/cupertino.dart';

import '../component/nft_card.dart';

class TopTab extends StatelessWidget {
  const TopTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: NftCard(imagePath: 'lib/images/apiens_2.png',)
    );
  }
}
