import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:campaneo_app/widgets/campaign_tile.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:campaneo_app/data/models.dart';

import '../data/campaign_fetch.dart';

class AllCampaignsPage extends StatelessWidget {
  static const String routeName = '/allcampaigns';
  static const String pageTitle = 'AllCampaigns';

  //TODO: replace hardcoded tiles with actual tiles
  @override
  Widget build(BuildContext context) {

    return Query(
      options: QueryOptions(
        documentNode: gql(CampaignFetch.fetchAll),
      ),
      // ignore: missing_return
      builder: (QueryResult result,
        {VoidCallback refetch, FetchMore fetchMore}) {
        if (result.hasException) {
          return Text(result.exception.toString());
        }
        if (result.loading) {
          return Text('Loading');
        }
      // ignore: missing_return

        List campaigns = result.data['getCreatedCampaigns2'];
        return campaigns.isNotEmpty
            ? Scrollbar(
          child: GridView.builder(
            itemCount: campaigns.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              childAspectRatio: 1.85
            ),
            itemBuilder: (BuildContext context, int index) =>
              CampaignTile(Campaign.fromLazyCacheMap(campaigns[index])),
          ),
        )
        : Container();
      }
    );

    /**return MediaQuery.removePadding(
        context: context,
        removeTop: true,
        child: Scrollbar(
          child: GridView.builder(
            itemCount: 20,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  childAspectRatio: 1.85
              ),
              itemBuilder: (BuildContext context, int index) => CampaignTile('Verkehrsanalyse in Innsbruck $index')
          ),
        ),
    );*/
  }
}
