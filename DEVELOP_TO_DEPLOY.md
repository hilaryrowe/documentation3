## Developing + building + deploying the "Documentation" GitBook repository
See [README.md](README.md) for more information on what Documentation is used for.

### Developing
To develop our Gitbook we're using docker.  Docker will run the 'gitbook serve' command on port 4000 on your local host.  It will also mount the documentation repository at ~/code/documentation.  Any time a file changes in ~/code/documentation, gitbook will reload the server and your changes will be rendered.

0. [Install Docker](URL TO CONFLUENCE)
0. cd ~/code/documentation

#### Run in foreground
0. cd ~/code/documentation
0. docker-compose up
  - Use Ctrl + C to stop

#### Run in background
0. cd ~/code/documentation
0. docker-compose up -d
0. docker-compose stop

### Building
0. cd ~/code/documentation
0. script/build.sh
0. a ```_book``` directory will be generated in ~/code/documentation

### Deploying
0. Commit your changes to master
0. Navigate to [Jenkins](http://jenkins.int.sightmachine.com/)
0. Find the Job X
0. Promote using this process, or pipeline, or ... whatever we decide to do here...

### Support/Troubleshooting

Please Join #devops in Slack!
