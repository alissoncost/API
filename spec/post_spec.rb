
describe "Teste de API" do
    it "novo usuario" do
        result = HTTParty.post(
            "http://165.227.93.41/lojinha/usuario",
            body: { usuarionome: "teste601", usuariologin: "teste301", usuariosenha: "Teste123"}.to_json,
            headers: { "Content-Type" => "application/jason",},
        )
        puts result
        expect(result.response.code).to eql "200, 201"
    end

    it "Login" do
        result = HTTParty.post(
            "http://165.227.93.41/lojinha/login",
            body: {
                usuariologin: "alissonteste",
                usuariosenha: "Senha123*"
               },
            headers: { "Content-Type" => "application/jason",},
        )
        puts result
        expect(result.response.code).to eql "200, 201"
    end

    it "Criar Produto" do
        result = HTTParty.post(
            "http://165.227.93.41/lojinha/produto/",
            body: {produtonome: "PS5",
                produtovalor: 450.00,
                produtocores: [
                "Cinza", "Azul"
                ],
                componentes: [
                    {componentenome: "Controle",
                    componentequantidade: 2
                    },
                    {
                    componentenome: "Micro",
                    componentequantidade: 1
                    }
                    ] 
                }.to_json,
            headers: {"Content-Type" => "application/jason", 
            "token" => "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c3VhcmlvaWQiOiIxNjI4IiwidXN1YXJpb2xvZ2luIjoiYWxpc3NvbnRlc3RlIiwidXN1YXJpb25vbWUiOiJBbGlzc29uIENvc3RhIn0.q4VDVb-qmUS1pHDQFtPGklWCOh969BHG7RpxzNm3wzc",
            },
        )
        puts result
        expect(result.response.code).to eql "200, 201"
    end

    it "Buscar Produto" do
        result = HTTParty.get(
            "http://165.227.93.41/lojinha​/produto",
            headers: {"Content-Type" => "application/jason",
            "token" => "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c3VhcmlvaWQiOiIxNjI4IiwidXN1YXJpb2xvZ2luIjoiYWxpc3NvbnRlc3RlIiwidXN1YXJpb25vbWUiOiJBbGlzc29uIENvc3RhIn0.q4VDVb-qmUS1pHDQFtPGklWCOh969BHG7RpxzNm3wzc",
            },
        )
        puts result
        expect(result.response.code).to eql "200, 201"
    end
end

    