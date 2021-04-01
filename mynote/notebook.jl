### A Pluto.jl notebook ###
# v0.12.21

using Markdown
using InteractiveUtils

# ╔═╡ cb402178-8d6c-11eb-0162-0929b93a7cdb
sqrt(2)

# ╔═╡ 1b81c7a4-8d6d-11eb-1fff-050c4510b871
f = sqrt∘sum

# ╔═╡ 3652cce0-8d6d-11eb-204f-6d4f9f3e16ff
f([1,2])

# ╔═╡ 3ce8e698-8d6d-11eb-1666-5d62cbf21d1b
sum([1,2,3]) |> abs |> sqrt

# ╔═╡ 4cae5ade-8d6d-11eb-0169-7154cca2b874
([1,2,3])<| sum

# ╔═╡ 8b124a94-8d6d-11eb-0bb1-9f777e1d98f6
map(x -> x +1 ,[1,2,3]) == [2,3,4]

# ╔═╡ 24c947fa-8d6e-11eb-1b1b-dfdea765d7e6
foreach(println,[1,2,3])

# ╔═╡ 571228d8-8d6e-11eb-381f-4bb319df187f
foldl(=>,1:4) == (1 => 2 => 3 => 4)

# ╔═╡ 9943f8f0-8d6e-11eb-1bd0-4f90bdfb4543
foldl(=>,1:4)

# ╔═╡ 8e198494-8d6f-11eb-012d-034e88313e4e
begin
	a = 1
	b = 2
end

# ╔═╡ faa90d6c-8d6f-11eb-06b1-530a08ed4846
⊗(a,b) = kron(a,b)

# ╔═╡ 168e6272-8d70-11eb-2f8b-4dabdadaa454
⊗([1,2],[2,3])

# ╔═╡ 28272208-8d70-11eb-12ad-8fc5c7f16c98
foldl(⊗,[[1,2],[1,2],[1,2]])

# ╔═╡ 7c054e56-8d70-11eb-043d-cfebcc74b872
g(x) = (x==1||x==2) ? "x=1" : "x=2"

# ╔═╡ 62a9c638-8d72-11eb-253a-cb0f833dc233
g(2)

# ╔═╡ 9b18de58-8d77-11eb-335b-4b1775144c05


# ╔═╡ ae4013f2-8d77-11eb-13f6-3fd35a98cf09


# ╔═╡ Cell order:
# ╠═cb402178-8d6c-11eb-0162-0929b93a7cdb
# ╠═1b81c7a4-8d6d-11eb-1fff-050c4510b871
# ╠═3652cce0-8d6d-11eb-204f-6d4f9f3e16ff
# ╠═3ce8e698-8d6d-11eb-1666-5d62cbf21d1b
# ╠═4cae5ade-8d6d-11eb-0169-7154cca2b874
# ╠═8b124a94-8d6d-11eb-0bb1-9f777e1d98f6
# ╠═24c947fa-8d6e-11eb-1b1b-dfdea765d7e6
# ╠═571228d8-8d6e-11eb-381f-4bb319df187f
# ╠═9943f8f0-8d6e-11eb-1bd0-4f90bdfb4543
# ╠═8e198494-8d6f-11eb-012d-034e88313e4e
# ╠═faa90d6c-8d6f-11eb-06b1-530a08ed4846
# ╠═168e6272-8d70-11eb-2f8b-4dabdadaa454
# ╠═28272208-8d70-11eb-12ad-8fc5c7f16c98
# ╠═7c054e56-8d70-11eb-043d-cfebcc74b872
# ╠═62a9c638-8d72-11eb-253a-cb0f833dc233
# ╠═9b18de58-8d77-11eb-335b-4b1775144c05
# ╠═ae4013f2-8d77-11eb-13f6-3fd35a98cf09
