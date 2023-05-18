import { Octokit } from "octokit";
// Octokit.js
// https://github.com/octokit/core.js#readme
const octokit = new Octokit({
  auth: process.env.GHTOKEN
});

// const { data: { login }, } = await octokit.rest.users.getAuthenticated();
// console.log("Hello, %s", login);

await octokit.request('PUT /repos/{owner}/{repo}/branches/{branch}/protection', {
  owner: 'dil-ntoth',
  repo: 'actions_test',
  branch: 'integration',
  "required_pull_request_reviews": {
    "dismiss_stale_reviews": true,
    "require_code_owner_reviews": true,
    "required_approving_review_count": 1
  },
  "required_status_checks": {
    "strict": false,
    "contexts": []
  },
  "restrictions": null,
  "required_signatures": false,
  "enforce_admins": true,
  "required_linear_history": false,
  "allow_force_pushes": false,
  "allow_deletions": false,
  "required_conversation_resolution": true
})
