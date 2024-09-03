test:
go test ./.
-v lint-deps: curl
https://raw.githubusercontent.com/AlexSSD7/aslint/master/
lint-deps.sh | bash
lint:
./bin/golang
ci -lint 
run |
-c bin/.golangci.yml
security -check
-deps:
go 
install 
github.com/securego
/gosec/v2/
cmd/gosec
@latestsecurity
-check: gosec 
./...
