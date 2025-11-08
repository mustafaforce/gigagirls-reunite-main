-- Add foreign key relationship for comments to profiles
ALTER TABLE public.item_comments 
ADD CONSTRAINT item_comments_user_id_fkey 
FOREIGN KEY (user_id) REFERENCES public.profiles(user_id) ON DELETE CASCADE;

-- Add foreign key relationship for likes to profiles  
ALTER TABLE public.item_likes 
ADD CONSTRAINT item_likes_user_id_fkey 
FOREIGN KEY (user_id) REFERENCES public.profiles(user_id) ON DELETE CASCADE;