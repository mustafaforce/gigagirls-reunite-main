-- Ensure the item-images bucket is public so images can be displayed
UPDATE storage.buckets 
SET public = true 
WHERE id = 'item-images';

-- Create RLS policy to allow public access to view images
CREATE POLICY "Allow public access to view item images" 
ON storage.objects 
FOR SELECT 
USING (bucket_id = 'item-images');