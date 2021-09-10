rm -r ../lib/generated-swagger-files

groovy swagger-codegen-script.groovy generate \
    -i ./sample_swagger.yaml \
    -l DartRetrofitClientCodegen \
    -o ../lib/generated-swagger-files \
    -t ./template \

# swagger-codegen generate \
#     -i ./sample_swagger.yaml \
#     -l dart \
#     -o ../lib/generated-swagger-files \
    # -t ./template \

# java -jar swagger-codegen-cli-2.4.21.jar generate \
#     -i ./sample_swagger.yaml \
#     -l dart \
#     -o ../lib/generated-swagger-files \