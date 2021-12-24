def get_requester(conn) do
  case get_claims(conn) do
    %{"sub" => <<auth0_client_id::bytes-size(32)>> <> "@clients"} -> Repo.get_by(APIClient, auth0_client_id: auth0_client_id)
    %{"sub" => auth0_user_id} -> Repo.get_by(User, auth0_user_id: auth0_user_id)
  end
end
