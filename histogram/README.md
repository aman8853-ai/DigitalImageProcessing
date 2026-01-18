The code reads the input image from the specified file.
	•	The image is converted to grayscale if it is in RGB format.
	•	The size of the grayscale image is obtained to calculate the total number of pixels.
	•	A histogram array is initialized for intensity levels ranging from 0 to 255.
	•	The histogram of pixel intensities is computed by scanning each pixel of the image.
	•	The Probability Density Function (PDF) is calculated by normalizing the histogram values.
	•	The Cumulative Distribution Function (CDF) is obtained from the PDF.
	•	A new intensity mapping function is generated using the CDF.
	•	Each pixel of the original image is mapped to a new intensity value using this mapping.
	•	A histogram-equalized image is created using the transformed intensity values.
	•	The original image is displayed.
	•	The histogram of the original image is displayed.
	•	The histogram-equalized image is displayed.
	•	The histogram of the equalized image is displayed for comparison.
