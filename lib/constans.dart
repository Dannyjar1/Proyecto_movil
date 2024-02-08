String ipServicio = '18.207.214.130';
int puertoServicio = 5000;
String urlServicio = 'http://$ipServicio:$puertoServicio';
//String urlServicio = 'https://api-denuncias.herokuapp.com/api-denuncias';
//String urlServicio ='https://0066-45-164-66-53.ngrok-free.app';
var headers = { 'content-type': 'application/json', 'auth' : 'Authorization' };
var headers2 = {'content-type': 'multipart/form-data'};