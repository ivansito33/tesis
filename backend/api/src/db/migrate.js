import{drizzle} from 'drizzle-orm/postgres-js';
import{migrate} from 'drizzle-orm/postgres-js/migrator';
import postgres from 'postgres';

const migrationcLient= postgres(process.env.CONNECTION_STRING,{
    max:1
})

const db= drizzle(migrationcLient);
const main= async()=>{
    try {
        await migrate(db, {
            migrationsFolder:'src/db/migrations',
        })
        console.log('FINALIZADO♥');
        process.exit(0);
    } catch (error) {
        console.log('EROR', error);
        process.exit(1);

        
    }
}
main();