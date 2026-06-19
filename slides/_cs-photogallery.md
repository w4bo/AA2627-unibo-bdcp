# Photo Gallery

::::{.columns}
:::{.column width=50%}

![Google photos](img/slides7.png)

:::
:::{.column width=50%}

![Google photos](img/slides8.png)

:::
::::

# Introduction

Managing large photo collections is increasingly challenging.  

Common issues include:

- Difficulty searching and organizing images  
- Loss of contextual information about each photo  
- Time-consuming manual tagging and categorization

# Challenges in Photo Gallery Management

- Thousands of images accumulate over time  
- Manual metadata entry is slow and error-prone  
- Finding images based on content is difficult  
- Metadata inconsistency leads to poor searchability

# Why Metadata Matters

Metadata provides critical information about images:

- File-level info: name, size, creation date  
- Camera info: make, model, GPS, exposure  
- Content info: objects, people, and scenes  

Well-structured metadata enables:

- Fast search and filtering  
- Smarter organization and categorization  
- Enhanced user experience

# Using YOLO for Metadata Extraction

YOLO (You Only Look Once) is a state-of-the-art object detection system.

- Automatically detects objects in images  
- Provides labels, bounding boxes, and confidence scores  
- Converts visual content into structured metadata  

# How YOLO Sees the Image

- Input image is divided into a grid (e.g., 13x13)  
- Each grid cell is responsible for objects **whose center falls in the cell**  
- Each cell predicts **bounding boxes + confidence + class probabilities**

# What Each Cell Predicts

For each bounding box:

- **Coordinates:** (x, y, width, height)  
- **Confidence:** probability an object exists × IoU with ground truth  
- **Class probabilities:** likelihood of each object class

# How Bounding Boxes Are Calculated

- Each cell predicts offsets relative to the cell  
- Uses **anchor boxes** for different object sizes  
- Confidence score = Pr(object) × IOU(predicted box, ground truth)

# YOLO Neural Network

- **CNN backbone** extracts features from the image  
- **Detection layers** predict boxes and class probabilities for all grid cells  
- Outputs a single tensor containing all predictions

# Post-Processing Predictions

1. **Thresholding:** Remove boxes with confidence < threshold  
2. **Non-Maximum Suppression (NMS):** Remove overlapping boxes that predict the same object  

Result: clean set of detected objects with labels, boxes, and confidence

# YOLO Versions

- YOLOv1: Original, fast, less accurate for small objects  
- YOLOv2/v3: Anchor boxes, improved accuracy  
- YOLOv4/v5/v8: Modern improvements, faster, real-time capable

# Why YOLO is Fast

- Single forward pass per image → all objects detected at once  
- No sliding windows or region proposals (unlike R-CNN)  
- Real-time capable: 30–150 FPS depending on model

# How YOLO Works in the Gallery

1. Scan images in the collection  
2. Detect objects (e.g., person, dog, car)  
3. Record bounding boxes and confidence  
4. Generate per-image JSON metadata  

Example JSON snippet:

```json
{
  "filename": "dog.jpg",
  "detections": [{"label": "dog", "conf": 0.87}]
}
```

# MongoDB for Accessible Metadata

MongoDB stores per-image JSON metadata efficiently:

- Flexible schema for diverse metadata  
- Enables querying by labels, confidence, dates, or GPS  
- Scalable for large galleries  
- Integrates easily with web apps or dashboards

# Making Metadata Accessible

Sample queries:

- Find all images containing "dog":

```js
db.images.find({"detections.label": "dog"})
```

* Find images taken after a certain date:

```js
db.images.find({"file_info.created_time": {"$gte": "2025-01-01"}})
```