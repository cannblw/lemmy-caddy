# Lemmy with Caddy

## Setup steps
- Run init.sh to create the volume directories owned by the correct user.
- Move .postgres.env.example to .postgres.env and replace the values with yours.
- Search "{{your" in all the project an replace them with your values.
  - The Pictrs API key can be found in 2 places, they need to be the same.
- Open volumes/lemmy_data/lemmy.hjson and replace the DB information there too, with the user/pass of the .env file.
  - The `host` should be left as `postgres` as this is the Docker container name.

## Security considerations
- The API key and passwords are hardcoded in the project. Action item: put them somewhere else.
- The docker-compose.yml file uses `latest` instead of fixed versions whenever possible. We should use fixed versions for security reasons but I wanted to have an easier time every time I updated the container images.

## Other considerations
- Pictrs uses the server's disk to store the media, it can be configured to use a S3-compatible storage.
