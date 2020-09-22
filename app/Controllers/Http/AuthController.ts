import { HttpContextContract } from '@ioc:Adonis/Core/HttpContext'
import User from 'App/Models/User'

export default class AuthController {
  public async register({ request }: HttpContextContract) {
    const data = request.only(['username', 'email', 'password'])
    const user = await User.create(data)
    return user
  }

  public async authenticate({ request, auth }: HttpContextContract) {
    const { email, password } = request.all()
    const token = await auth.attempt(email, password)
    return token
  }
}
