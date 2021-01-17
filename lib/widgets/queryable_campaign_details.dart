import 'package:campaneo_app/data/models.dart';
import 'package:campaneo_app/data/campaign_fetch.dart';
import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

import 'package:campaneo_app/widgets/campaign_info_dialog.dart';

import 'campaign_info_dialog.dart';

class QueryableCampaignDetails extends StatelessWidget {
  final String id;

  QueryableCampaignDetails({@required this.id});

  @override
  Widget build(BuildContext context) {
    return Query(
      options: QueryOptions(
        documentNode: gql(CampaignFetch.fetchById),
        variables: {"id": id},
      ),
      builder: (QueryResult result,
          {VoidCallback refetch, FetchMore fetchMore}) {
        if (result.hasException) {
          return Text(result.exception.toString());
        }
        if (result.loading) {
          return Text('Loading');
        }
        final data = result.data['getCampaign2'];
        final campaignDetails = Campaign.fromLazyCacheMap(data);
        return CampaignInfoDialog(
          campaignDetails
        );
      },
    );
  }
}
