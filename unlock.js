import { Octokit } from "octokit";
// Octokit.js
// https://github.com/octokit/core.js#readme
const octokit = new Octokit({
    auth: process.env.GHTOKEN
});


  
await octokit.request('DELETE /repos/{owner}/{repo}/branches/{branch}/protection', {
    owner: 'dil-ntoth',
    repo: 'actions_test',
    branch: 'integration',
    headers: {
        'X-GitHub-Api-Version': '2022-11-28'
    }
})