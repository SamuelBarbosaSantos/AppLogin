using AppLogin.Models;
using X.PagedList;

namespace AppLogin.Repository.Contract
{
    public interface IColaboradorRepository
    {
        // Login Colaborador
        Colaborador Login(string Email, string Senha);

        //CRUD
        void Cadastrar(Colaborador colaborador);
        void Atualizar(Colaborador colaborador);
        void AtualizarSenha(Colaborador colaborador);
        void Excluir(int Id);
        Colaborador ObterColaborador(int Id);

        List<Colaborador>ObterColaboradorPorEmail(string email);
        IEnumerable<Colaborador> ObterColaboradorPorEmail();
        IPagedList<Cliente> ObterTodosColaboradores(int? pagina, string pesquisa);
    }
}
