HUGO ?= hugo
HUGO_BUILD_FLAGS ?= --minify --gc --cleanDestinationDir

.PHONY: server build clean deploy

# Run the local development server on all interfaces.
server:
	$(HUGO) server --bind 0.0.0.0

# Build the production site into public/.
build:
	$(HUGO) $(HUGO_BUILD_FLAGS)

# Remove generated site files and Hugo's generated image cache.
clean:
	rm -rf public resources/_gen .hugo_build.lock

# Build locally. Configure and uncomment a deployment command below when ready.
deploy: build
	@echo "Deployment commands are disabled; configure one of the examples in Makefile."
	# docker build -t your-registry/your-site:latest .
	# docker push your-registry/your-site:latest
	# ssh user@host 'cd /path/to/site && docker compose pull && docker compose up -d'
