-- Add foreign key relationship between items and profiles tables
ALTER TABLE public.items 
ADD CONSTRAINT items_user_id_fkey 
FOREIGN KEY (user_id) REFERENCES auth.users(id) ON DELETE CASCADE;

-- Add foreign key relationship between item_comments and profiles tables  
ALTER TABLE public.item_comments
ADD CONSTRAINT item_comments_user_id_fkey
FOREIGN KEY (user_id) REFERENCES auth.users(id) ON DELETE CASCADE;

-- Add foreign key relationship between item_likes and profiles tables
ALTER TABLE public.item_likes  
ADD CONSTRAINT item_likes_user_id_fkey
FOREIGN KEY (user_id) REFERENCES auth.users(id) ON DELETE CASCADE;