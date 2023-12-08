# Criando um bucket pela AWS CLI:
# s3api: especifica o serviço que estamos manipulado, no caso o s3;
# create-bucket: define a ação que queremos executar no serviço, no caso criar um bucket;
# --bucket: define o nome do bucket que estamos criando (deve ser um nome único);
# --profile: define o usuário que está executando o comando;
# --region: define a região em que o bucket será criado.
# Comando completo:
# aws s3api create-bucket --bucket <NAME_BUCKET> --profile <PROFILE_USER>

# Criando instancia EC2 pela AWS CLI:
# ec2: especifica o serviço que estamos manipulado, no caso o ec2;
# run-instances: define a ação que queremos executar no serviço, no caso criar uma instancia;
# --image-id: define a imagem que será utilizada para criação da instancia, por meio do id da imagem;
# --count: define o número de instancias, iguais a esta, que serão criadas;
# --instance-type: define o tipo de instancia (hardware), que será utilizada;
# --region: define a região em que a instancia será criada;
# --key-name: define a chave ssh que a instancia utilizará;
# --security-group-ids: define os grupos de segurança que a instancia utilizará, por meio do id do grupo;
# --subnet-id: define a subnet em que a instancia será criada, por meio do id da subnet;
# --profile: define o usuário que está executando o comando.
# Comando completo:
# aws ec2 run-instances --image-id <ID_IMAGE> --count <NUM_INSTANCES> --instance-type <TYPE_INSTANCES> --region <REGIAO> --key-name <KEY_SSH> --security-group-ids <ID_SECURITY_GROUP> --subnet-id <ID_SUBNET> --profile <PROFILE_USER>

NAME_BUCKET=joaoaf-bucket
ID_IMAGE=ami-0b6c2d49148000cd5
NUM_INSTANCES=1
TYPE_INSTANCES=t2.micro
KEY_SSH=ec2-key
ID_SECURITY_GROUP=sg-03f19eb3c04a735b8
ID_SUBNET=subnet-018d03fdb55f0990a
REGIAO=sa-east-1

aws s3api create-bucket --bucket $NAME_BUCKET --profile dev

aws ec2 run-instances --image-id $ID_IMAGE --count $NUM_INSTANCES --instance-type $TYPE_INSTANCES --region $REGIAO --key-name $KEY_SSH --security-group-ids $ID_SECURITY_GROUP --profile devops
