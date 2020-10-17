img = imread('image.png');
gray_scale = rgb2gray(img);
subplot(2,2,1);
imshow(img);
title('Original Image', 'FontSize', 16);
subplot(2,2,2);
imshow(gray_scale);
title('GrayScale Image', 'FontSize', 16);
smooth = imgaussfilt(gray_scale, 8);
subplot(2,2,3);
imshow(smooth);
title('Smoothen GrayScale Image', 'FontSize', 16);
sharp = imsharpen(gray_scale, 'Radius',5, 'Amount',2);
subplot(2,2,4);
imshow(sharp);
title('Sharpen GrayScale image', 'FontSize', 16);