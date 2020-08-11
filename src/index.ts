import Koa from "koa"
import Router from "koa-router"

const main = async () => {
  const port = process.env.port || 5000
  const app = new Koa()
  const router = new Router()
  router.get("/", async (ctx) => {
    ctx.body = ctx.headers
    ctx.type = "json"
  })
  app.use(router.routes())
  app.listen(port, () => console.log(`listen on http://localhost:${port}`))
}
main()
