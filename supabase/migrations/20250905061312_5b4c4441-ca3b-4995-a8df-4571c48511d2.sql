-- Add foreign key relationship between items and profiles
ALTER TABLE public.items 
ADD CONSTRAINT items_user_id_fkey 
FOREIGN KEY (user_id) REFERENCES public.profiles(user_id) ON DELETE CASCADE;

-- Add foreign key relationship between claims and profiles
ALTER TABLE public.claims 
ADD CONSTRAINT claims_claimant_id_fkey 
FOREIGN KEY (claimant_id) REFERENCES public.profiles(user_id) ON DELETE CASCADE;