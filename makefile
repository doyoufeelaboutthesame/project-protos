PROTOS := proto/task/task.proto proto/user/user.proto
OUT_DIR := proto/generated

generate:
	protoc \
		--proto_path=proto \
		--go_out=$(OUT_DIR) --go_opt=paths=source_relative \
		--go-grpc_out=$(OUT_DIR) --go-grpc_opt=paths=source_relative \
		$(PROTOS)

clean:
	del /s /q proto/generated/*.pb.go
