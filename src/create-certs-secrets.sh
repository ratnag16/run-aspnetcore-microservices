mkdir -p /ASP.NET/Https
mkdir -p /Microsoft/UserSecrets
dotnet dev-certs https -ep /ASP.NET/Https/localhost.pfx -p developer
dotnet user-secrets -p WebApps/Shopping.Web/Shopping.Web.csproj set "Kestrel:Certificates:Default:Path" "/home/app/.aspnet/https/localhost.pfx" 
dotnet user-secrets -p WebApps/Shopping.Web/Shopping.Web.csproj set "Kestrel:Certificates:Default:Password" "developer" 
dotnet user-secrets -p Services/Basket/Basket.API/Basket.API.csproj set "Kestrel:Certificates:Default:Path" "/home/app/.aspnet/https/localhost.pfx"  
dotnet user-secrets -p Services/Basket/Basket.API/Basket.API.csproj set "Kestrel:Certificates:Default:Password" "developer" 
dotnet user-secrets -p Services/Catalog/Catalog.API/Catalog.API.csproj set "Kestrel:Certificates:Default:Path" "/home/app/.aspnet/https/localhost.pfx"  
dotnet user-secrets -p Services/Catalog/Catalog.API/Catalog.API.csproj set "Kestrel:Certificates:Default:Password" "developer" 
dotnet user-secrets -p Services/Discount/Discount.Grpc/Discount.Grpc.csproj set "Kestrel:Certificates:Default:Path" "/home/app/.aspnet/https/localhost.pfx"  
dotnet user-secrets -p Services/Discount/Discount.Grpc/Discount.Grpc.csproj set "Kestrel:Certificates:Default:Password" "developer"
dotnet user-secrets -p Services/Ordering/Ordering.API/Ordering.API.csproj set "Kestrel:Certificates:Default:Path" "/home/app/.aspnet/https/localhost.pfx"
dotnet user-secrets -p Services/Ordering/Ordering.API/Ordering.API.csproj set "Kestrel:Certificates:Default:Password" "developer" 
dotnet user-secrets -p ApiGateways/YarpApiGateway/YarpApiGateway.csproj set "Kestrel:Certificates:Default:Path" "/home/app/.aspnet/https/localhost.pfx"
dotnet user-secrets -p ApiGateways/YarpApiGateway/YarpApiGateway.csproj set "Kestrel:Certificates:Default:Password" "developer" 
cp -fR ${HOME}/.microsoft/usersecrets/* /Microsoft/UserSecrets/ 
chmod -R 777 /ASP.NET/
chmod -R 777 /Microsoft/