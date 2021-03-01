FROM haskell
WORKDIR /app
COPY . /app
RUN cabal update
CMD ["cabal", "run"]
