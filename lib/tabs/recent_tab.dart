import 'package:flutter/cupertino.dart';

import '../component/nft_card.dart';

class RecentTab extends StatelessWidget {
  const RecentTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      child: NftCard(imagePath: 'lib/images/apiens_1.png',)
    );
  }
}
