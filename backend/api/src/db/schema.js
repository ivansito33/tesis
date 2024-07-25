import { pgTable, serial, text, timestamp, varchar, foreignKey } from 'drizzle-orm/pg-core';
import { blob } from 'drizzle-orm/sqlite-core';

export const roles = pgTable('roles', {
  id: serial('id').primaryKey({ autoIncrement: true }),
  rolename: varchar('rolename', 50).unique(),
});

export const statuses = pgTable('statuses', {
  id: serial('id').primaryKey({ autoIncrement: true }),
  statusName: varchar('status_name', 50),
});

export const priorities = pgTable('priorities', {
  id: serial('id').primaryKey({ autoIncrement: true }),
  priorityName: varchar('priority_name', 50),
});

export const categories = pgTable('categories', {
  id: serial('id').primaryKey({ autoIncrement: true }),
  categoryName: varchar('category_name', 25),
});

export const users = pgTable('users', {
  id: serial('id').primaryKey({ autoIncrement: true }),
  username: varchar('username', 50).unique(),
  email: varchar('email', 60).unique(),
  passwordHash: varchar('password_hash', 255),
  registrationDate: timestamp('registration_date'),
  roleId: serial('role_id').references(() => roles.id),
  salt: varchar('salt', { length: 64 })
});

export const clients = pgTable('clients', {
  id: serial('id').primaryKey({ autoIncrement: true }),
  clientName: varchar('client_name', 50),
  contact: varchar('contact', 50),
  statusId: serial('status_id').references(() => statuses.id),
  userId: serial('user_id').references(() => users.id),
});

export const reports = pgTable('reports', {
  id: serial('id').primaryKey({ autoIncrement: true }),
  description: text('description'),
  createdDate: timestamp('created_date'),
  clientId: serial('client_id').references(() => clients.id),
  categoryId: serial('category_id').references(() => categories.id),
  userId: serial('user_id').references(() => users.id),
  statusId: serial('status_id').references(() => statuses.id),
});

export const reportDetails = pgTable('report_details', {
  id: serial('id').primaryKey({ autoIncrement: true }),
  detail: text('detail'),
  attachments: varchar('attachments', 250),
  reportId: serial('report_id').references(() => reports.id),
  priorityId: serial('priority_id').references(() => priorities.id),
});

export const messages = pgTable('messages', {
  id: serial('id').primaryKey({ autoIncrement: true }),
  content: text('content'),
  timestamp: timestamp('timestamp'),
  senderId: serial('sender_id').references(() => users.id),
  recipientId: serial('recipient_id').references(() => users.id),
  reportId: serial('report_id').references(() => reports.id),
});

