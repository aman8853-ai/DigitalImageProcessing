Aim

To perform bit plane slicing on a grayscale image and analyze the effect of removing specific bit planes on the visual quality of the image.

⸻

Objectives
	•	To extract individual bit planes (0th to 7th) from a grayscale image.
	•	To study the contribution of each bit plane to image formation.
	•	To observe the effect of removing selected bit planes (0th, 5th, and 7th) from the original image.

⸻

Theory

A grayscale image is typically represented using 8 bits per pixel, where each pixel intensity ranges from 0 to 255.
Every bit position (from Least Significant Bit (LSB) to Most Significant Bit (MSB)) forms a bit plane.

Bit Plane Slicing

Bit plane slicing is a technique used to decompose an image into its binary components.
	•	Lower-order bit planes (0–2) contain fine details and noise.
	•	Higher-order bit planes (6–7) contain the most significant visual information.

Bit Plane Removal

Removing specific bit planes helps in:
	•	Noise reduction (removing lower bits)
	•	Understanding the importance of higher-order bits
	•	Image compression and analysis

⸻

Methodology
	1.	Read the input grayscale image.
	2.	Display the original image.
	3.	Extract all 8 bit planes (0th to 7th) using bitwise operations.
	4.	Display each extracted bit plane separately.
	5.	Remove selected bit planes (0th, 5th, and 7th) from the original image.
	6.	Display the reconstructed images after bit plane removal.

⸻

Observations
	•	0th bit plane mostly contains noise and very fine details.
	•	Middle bit planes (3rd–5th) contribute moderate visual information.
	•	7th bit plane carries maximum structural and intensity information.
	•	Removing the 0th bit plane causes minimal visual change.
	•	Removing the 5th bit plane slightly degrades image quality.
	•	Removing the 7th bit plane results in significant loss of image clarity.

⸻

Result

Bit plane slicing successfully separates the image into its binary components.
The experiment demonstrates that higher-order bit planes play a crucial role in preserving image quality, while lower-order bit planes mainly contribute noise and minor details.

⸻

Conclusion

This experiment confirms that:
	•	Image information is not equally distributed across all bit planes.
	•	Higher-order bit planes dominate human visual perception.
	•	Bit plane manipulation is useful in image compression, enhancement, and noise reduction.
