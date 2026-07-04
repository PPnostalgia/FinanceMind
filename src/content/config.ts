import { defineCollection, z } from 'astro:content';

const wechat = defineCollection({
  type: 'content',
  schema: z.object({
    title: z.string(),
    source_article: z.string().optional(),
    source_issue: z.string(),
    article_type: z.enum(['weekly', 'curated']).default('weekly'),
    discipline: z.string().optional(),
    tags: z.array(z.string()).default([]),
    date: z.coerce.date(),
    publish: z.boolean().default(false),
  }),
});

const kb = defineCollection({
  type: 'content',
  schema: z.object({
    title: z.string(),
    title_en: z.string().optional(),
    discipline: z.string(),
    tags: z.array(z.string()).default([]),
    related: z.array(z.string()).default([]),
    source_issue: z.string().optional(),
    date: z.coerce.date(),
    publish: z.boolean().default(false),
  }),
});

export const collections = { wechat, kb };
