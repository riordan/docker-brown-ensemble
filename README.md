Dockerfile for Storycollab (aka Ensemble)
=========================================
Docker image to set up a [Stanford HCI story-collab](https://github.com/StanfordHCI/story-collab) system.

Ensemble was a @BrownInstitute funded project out of @StanfordHCI several years ago. We're interested in reviving it for a collaborative storytelling project about NYC.

# WARNINGS
There is lots of wet paint and broken code. Do not trust me.

This is designed to be used in a standalone context, and is not set to use an external database. That is stupid. Do not trust it.

# TODOS
- [ ] Modify codebase so Facebook keys aren't hardcoded in at build-time, but rather are driven by environment variables
- [ ] Make it play nice with jquery (and possibly other JS libraries), which appears to be failing.

Sadly, this may require a fork.
