import Vapor

struct Pessoa: Content {
    let nome: String
    let idade: Int
    let formacao: String
}

func routes(_ app: Application) throws {
    
    app.get { req in
        return Pessoa(nome: "Bruno", idade: 21, formacao: "Sistemas de Informação")
    }
    
    app.post("add-movie") { req -> Pessoa in
        let pessoa = try? req.content.decode(Pessoa.self)
        return pessoa!
    }

    app.get("hello") { req -> String in
        return "Hello, world!"
    }
}
