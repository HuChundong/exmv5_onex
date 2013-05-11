.class public Lcom/olaworks/datastruct/Ola_FaceDetectExternInfo;
.super Lcom/olaworks/datastruct/Ola_FaceDetectorInfo;
.source "Ola_FaceDetectExternInfo.java"


# instance fields
.field private final MAX_FACE_NUM:I

.field public faceId:[I

.field public isSmile:[I

.field public leftBlink:[I

.field public leftEye:[Landroid/graphics/Point;

.field public rightBlink:[I

.field public rightEye:[Landroid/graphics/Point;

.field public score:[I


# direct methods
.method public constructor <init>()V
    .locals 5

    const/16 v4, 0xa

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/olaworks/datastruct/Ola_FaceDetectorInfo;-><init>()V

    iput v4, p0, Lcom/olaworks/datastruct/Ola_FaceDetectExternInfo;->MAX_FACE_NUM:I

    new-array v1, v4, [I

    iput-object v1, p0, Lcom/olaworks/datastruct/Ola_FaceDetectExternInfo;->faceId:[I

    new-array v1, v4, [I

    iput-object v1, p0, Lcom/olaworks/datastruct/Ola_FaceDetectExternInfo;->isSmile:[I

    new-array v1, v4, [I

    iput-object v1, p0, Lcom/olaworks/datastruct/Ola_FaceDetectExternInfo;->score:[I

    new-array v1, v4, [I

    iput-object v1, p0, Lcom/olaworks/datastruct/Ola_FaceDetectExternInfo;->leftBlink:[I

    new-array v1, v4, [I

    iput-object v1, p0, Lcom/olaworks/datastruct/Ola_FaceDetectExternInfo;->rightBlink:[I

    new-array v1, v4, [Landroid/graphics/Point;

    iput-object v1, p0, Lcom/olaworks/datastruct/Ola_FaceDetectExternInfo;->leftEye:[Landroid/graphics/Point;

    new-array v1, v4, [Landroid/graphics/Point;

    iput-object v1, p0, Lcom/olaworks/datastruct/Ola_FaceDetectExternInfo;->rightEye:[Landroid/graphics/Point;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v4, :cond_0

    iget-object v1, p0, Lcom/olaworks/datastruct/Ola_FaceDetectExternInfo;->faceId:[I

    aput v3, v1, v0

    iget-object v1, p0, Lcom/olaworks/datastruct/Ola_FaceDetectExternInfo;->isSmile:[I

    aput v3, v1, v0

    iget-object v1, p0, Lcom/olaworks/datastruct/Ola_FaceDetectExternInfo;->score:[I

    aput v3, v1, v0

    iget-object v1, p0, Lcom/olaworks/datastruct/Ola_FaceDetectExternInfo;->leftBlink:[I

    aput v3, v1, v0

    iget-object v1, p0, Lcom/olaworks/datastruct/Ola_FaceDetectExternInfo;->rightBlink:[I

    aput v3, v1, v0

    iget-object v1, p0, Lcom/olaworks/datastruct/Ola_FaceDetectExternInfo;->leftEye:[Landroid/graphics/Point;

    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    aput-object v2, v1, v0

    iget-object v1, p0, Lcom/olaworks/datastruct/Ola_FaceDetectExternInfo;->rightEye:[Landroid/graphics/Point;

    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    aput-object v2, v1, v0

    iget-object v1, p0, Lcom/olaworks/datastruct/Ola_FaceDetectExternInfo;->leftEye:[Landroid/graphics/Point;

    aget-object v1, v1, v0

    invoke-virtual {v1, v3, v3}, Landroid/graphics/Point;->set(II)V

    iget-object v1, p0, Lcom/olaworks/datastruct/Ola_FaceDetectExternInfo;->rightEye:[Landroid/graphics/Point;

    aget-object v1, v1, v0

    invoke-virtual {v1, v3, v3}, Landroid/graphics/Point;->set(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/olaworks/datastruct/Ola_FaceDetectorInfo;->clear()V

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/olaworks/datastruct/Ola_FaceDetectExternInfo;->faceId:[I

    aput v2, v1, v0

    iget-object v1, p0, Lcom/olaworks/datastruct/Ola_FaceDetectExternInfo;->isSmile:[I

    aput v2, v1, v0

    iget-object v1, p0, Lcom/olaworks/datastruct/Ola_FaceDetectExternInfo;->score:[I

    aput v2, v1, v0

    iget-object v1, p0, Lcom/olaworks/datastruct/Ola_FaceDetectExternInfo;->leftBlink:[I

    aput v2, v1, v0

    iget-object v1, p0, Lcom/olaworks/datastruct/Ola_FaceDetectExternInfo;->rightBlink:[I

    aput v2, v1, v0

    iget-object v1, p0, Lcom/olaworks/datastruct/Ola_FaceDetectExternInfo;->leftEye:[Landroid/graphics/Point;

    aget-object v1, v1, v0

    invoke-virtual {v1, v2, v2}, Landroid/graphics/Point;->set(II)V

    iget-object v1, p0, Lcom/olaworks/datastruct/Ola_FaceDetectExternInfo;->rightEye:[Landroid/graphics/Point;

    aget-object v1, v1, v0

    invoke-virtual {v1, v2, v2}, Landroid/graphics/Point;->set(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
