
# Create
curl -L \
  -X PUT \
  -H "Accept: application/vnd.github+json" \
  -H "Authorization: Bearer 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"\
  -H "X-GitHub-Api-Version: 2022-11-28" \
  https://api.github.com/repos/dil-ntoth/actions_test/branches/integration/protection \
  -d '{"lock_branch":true, "enforce_admins":true,"required_pull_request_reviews":null,"required_status_checks":null,"restrictions":{users: [], teams: []}}'

# Delete

curl -L \
  -X DELETE \
  -H "Accept: application/vnd.github+json" \
  -H "Authorization: Bearer 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"\
  -H "X-GitHub-Api-Version: 2022-11-28" \
  https://api.github.com/repos/dil-ntoth/actions_test/branches/integration/protection
