#!/bin/bash
export DATABASE_URL='postgresql://postgres.ntxoglxwkwwrzypdiaes:VJouRHkXdXSJQQ30@aws-1-ap-northeast-1.pooler.supabase.com:5432/postgres'
export DIRECT_URL='postgresql://postgres.ntxoglxwkwwrzypdiaes:VJouRHkXdXSJQQ30@aws-1-ap-northeast-1.pooler.supabase.com:5432/postgres'
npx next dev -p 3000 2>&1 | tee dev.log
