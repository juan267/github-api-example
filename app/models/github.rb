module Github
  class Client
    include HTTParty

    base_uri "https://api.github.com"

    # 1.Crear un metodo para cada endpoint que quiera usar

    # 2. Crear dos metodos uno gets y otros posts que reciban como primer argumento el endpoint de la api que quiero usar.

    def members(org)
      p self.class
      headers = {access_token: "28c129ed075d1c81ec9cd4b37e2c7b80edbf457b", user_agent: "juan"}
      response = self.class.get("/orgs/#{org}/members?per_page=100", headers)
      return response
    end

    def gets(endpoint)
      headers = {access_token: ENV["ACCESS_TOKEN"], user_agent: "juan"}
      response = self.class.get(endpoint, headers)
      return response
    end
3
    def posts(endpoint)

    end

  end
end