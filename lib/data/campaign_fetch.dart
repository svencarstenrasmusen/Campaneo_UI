class CampaignFetch {
  static final String fetchAll = """
    query { 
      getCampaigns {
        id
        name
      } 
    }
  """;

  static final String fetchById = """
    query (\$id: String!) {
      getCampaign (campaign_id: \$id) {
        __typename
        id
        description
        image_url
        name
        valid_from
        valid_to
        organization {
          id
          name
          country
          city
          contact_email
          phone_number
          street
          street_number
        }
      }
    }
  """;
}
