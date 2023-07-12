
# Create
curl -L \
  -X PUT \
  -H "Accept: application/vnd.github+json" \
  -H "Authorization: Bearer <token>"\
  -H "X-GitHub-Api-Version: 2022-11-28" \
  -d '{"lock_branch":true, "enforce_admins":true,"required_pull_request_reviews":null,"required_status_checks":null,"restrictions":null}' \
  https://api.github.com/repos/dil-ntoth/actions_test/branches/$GITHUB_REF_NAME/protection


# Delete
curl -L \
  -X DELETE \
  -H "Accept: application/vnd.github+json" \
  -H "Authorization: Bearer <token>"\
  -H "X-GitHub-Api-Version: 2022-11-28" \
  https://api.github.com/repos/dil-ntoth/actions_test/branches/$GITHUB_REF_NAME/protection
