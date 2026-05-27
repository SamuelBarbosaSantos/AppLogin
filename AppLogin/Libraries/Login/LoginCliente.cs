using AppLogin.Models;
using Newtonsoft.Json;

namespace AppLogin.Libraries.Login
{
    public class LoginCliente
    {
        private string Key = "Login.Cliente";
        private Sessao.Sessao _sesssao;

        public LoginCliente(Sessao.Sessao sesssao)
        {
            _sesssao = sesssao;
        }

        public void Login(Cliente cliente)
        {
            string clienteJSONString = JsonConvert.SerializeObject(cliente);
            _sesssao.Cadastrar(Key, clienteJSONString);
        }
    
        
    public Cliente GetCliente()
        {
            if (_sesssao.Existe(Key))
            {
                string clienteJSONString = _sesssao.Consultar(Key);
                return JsonConvert.DeserializeObject<Cliente>(clienteJSONString);
            }
            else
            {
                return();
            }
        }
    }
}
