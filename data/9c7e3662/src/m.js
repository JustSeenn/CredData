{{={= =}=}}
import _ from 'lodash'

const env = process.env.NODE_ENV || 'development'

// TODO:
//   - Use dotenv library to consume env vars from a file.
//   - Use convict library to define schema and validate env vars.
//  https://codingsans.com/blog/node-config-best-practices

const config = {
  all: {
    env,
    port: parseInt(process.env.PORT) || 3001,
    {=# isAuthEnabled =}
    auth: {
      jwtSecret: undefined
    }
    {=/ isAuthEnabled =}
  },
  development: {
    {=# isAuthEnabled =}
    auth: {
      jwtSecret: 'DEVJWTSECRET'
    }
    {=/ isAuthEnabled =}
  },
  production: {
    {=# isAuthEnabled =}
    auth: {
      jwtSecret: process.env.JWT_SECRET
    }
    {=/ isAuthEnabled =}
  }
}

const resolvedConfig = _.merge(config.all, config[env])
export default resolvedConfig
