
build:
	bash scripts/build.sh

convert_one:
	openssl x509 -inform der -in ios/certs/67Y28R8553.cer -out ios/cert.pem
	openssl pkcs12 -in ios/certs/67Y28R8553.p12 -clcerts -nokeys -out ios/key.pem

convert_two:
	openssl pkcs12 -export -out "ios/combined.p12" -inkey "ios/key.pem" -in "ios/cert.pem" -password pass:"misha"
	# openssl pkcs12 -export -out ios/combined.p12 -inkey ios/certs/67Y28R8553.p12 -in ios/67Y28R8553.pem -password pass:""

load:
	bash scripts/install-apple-certs.sh

install:
	bundle exec fastlane install_expo_credentials

export_certs:
	security export -k "/Users/mykhailoherasimov/Library/Keychains/login.keychain" -t 'certs' -f pkcs12 -P "" -o "ios/certs/67Y28R8553.p12"ß




# openssl pkcs12 -in ios/certs/67Y28R8553.cer -nocerts -out private_key.pem -nodes -password pass:fastlane

# openssl pkcs12 -in ios/certs/67Y28R8553.p12 -out output_file.pem -password pass:fastlane
