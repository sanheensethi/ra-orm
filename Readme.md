pgadmin:

docker run -d \
  --name pgadmin \
  -e PGADMIN_DEFAULT_EMAIL=admin@admin.com \
  -e PGADMIN_DEFAULT_PASSWORD=admin123 \
  -p 5050:8081 \ 
  dpage/pgadmin4

Migration:
npx prisma migrate dev --name init



NOTE:
Prisma ke connection string me username/password me special characters (! @ # $ %) ko URL encode karna padta hai.

Aapko DATABASE_URL ko encode karna hoga:

! → %21
@ → %40
# → %23
$ → %24
% → %25