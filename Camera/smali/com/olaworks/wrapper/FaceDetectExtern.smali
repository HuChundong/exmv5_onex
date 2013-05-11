.class public Lcom/olaworks/wrapper/FaceDetectExtern;
.super Ljava/lang/Object;
.source "FaceDetectExtern.java"

# interfaces
.implements Lcom/olaworks/wrapper/FaceDetectExternInterface;


# static fields
.field private static final TAG:Ljava/lang/String; = "FaceDetectExtern"


# instance fields
.field private mFDExternInfo:Lcom/olaworks/datastruct/Ola_FaceDetectExternInfo;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/olaworks/datastruct/Ola_FaceDetectExternInfo;

    invoke-direct {v0}, Lcom/olaworks/datastruct/Ola_FaceDetectExternInfo;-><init>()V

    iput-object v0, p0, Lcom/olaworks/wrapper/FaceDetectExtern;->mFDExternInfo:Lcom/olaworks/datastruct/Ola_FaceDetectExternInfo;

    return-void
.end method


# virtual methods
.method public create()V
    .locals 1

    iget-object v0, p0, Lcom/olaworks/wrapper/FaceDetectExtern;->mFDExternInfo:Lcom/olaworks/datastruct/Ola_FaceDetectExternInfo;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/olaworks/datastruct/Ola_FaceDetectExternInfo;

    invoke-direct {v0}, Lcom/olaworks/datastruct/Ola_FaceDetectExternInfo;-><init>()V

    iput-object v0, p0, Lcom/olaworks/wrapper/FaceDetectExtern;->mFDExternInfo:Lcom/olaworks/datastruct/Ola_FaceDetectExternInfo;

    :cond_0
    invoke-static {}, Lcom/olaworks/jni/OlaFaceDetectExternJNI;->create()I

    invoke-static {}, Lcom/olaworks/jni/OlaFaceDetectExternJNI;->initialize()I

    return-void
.end method

.method public destroy()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/olaworks/wrapper/FaceDetectExtern;->mFDExternInfo:Lcom/olaworks/datastruct/Ola_FaceDetectExternInfo;

    invoke-static {}, Lcom/olaworks/jni/OlaFaceDetectExternJNI;->destroy()I

    return-void
.end method

.method public getBlinkValue(I)I
    .locals 2

    iget-object v0, p0, Lcom/olaworks/wrapper/FaceDetectExtern;->mFDExternInfo:Lcom/olaworks/datastruct/Ola_FaceDetectExternInfo;

    iget-object v0, v0, Lcom/olaworks/datastruct/Ola_FaceDetectExternInfo;->leftBlink:[I

    aget v0, v0, p1

    iget-object v1, p0, Lcom/olaworks/wrapper/FaceDetectExtern;->mFDExternInfo:Lcom/olaworks/datastruct/Ola_FaceDetectExternInfo;

    iget-object v1, v1, Lcom/olaworks/datastruct/Ola_FaceDetectExternInfo;->rightBlink:[I

    aget v1, v1, p1

    add-int/2addr v0, v1

    return v0
.end method

.method public getFaceID(I)I
    .locals 1

    iget-object v0, p0, Lcom/olaworks/wrapper/FaceDetectExtern;->mFDExternInfo:Lcom/olaworks/datastruct/Ola_FaceDetectExternInfo;

    iget-object v0, v0, Lcom/olaworks/datastruct/Ola_FaceDetectExternInfo;->faceId:[I

    aget v0, v0, p1

    return v0
.end method

.method public getFaceNum()I
    .locals 1

    iget-object v0, p0, Lcom/olaworks/wrapper/FaceDetectExtern;->mFDExternInfo:Lcom/olaworks/datastruct/Ola_FaceDetectExternInfo;

    iget v0, v0, Lcom/olaworks/datastruct/Ola_FaceDetectorInfo;->numDetectedFaces:I

    return v0
.end method

.method public getFaceRect(I)Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/olaworks/wrapper/FaceDetectExtern;->mFDExternInfo:Lcom/olaworks/datastruct/Ola_FaceDetectExternInfo;

    iget-object v0, v0, Lcom/olaworks/datastruct/Ola_FaceDetectorInfo;->detectedFaces:[Landroid/graphics/Rect;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getIsSmile(I)I
    .locals 1

    iget-object v0, p0, Lcom/olaworks/wrapper/FaceDetectExtern;->mFDExternInfo:Lcom/olaworks/datastruct/Ola_FaceDetectExternInfo;

    iget-object v0, v0, Lcom/olaworks/datastruct/Ola_FaceDetectExternInfo;->isSmile:[I

    aget v0, v0, p1

    return v0
.end method

.method public getLeftBlinkValue(I)I
    .locals 1

    iget-object v0, p0, Lcom/olaworks/wrapper/FaceDetectExtern;->mFDExternInfo:Lcom/olaworks/datastruct/Ola_FaceDetectExternInfo;

    iget-object v0, v0, Lcom/olaworks/datastruct/Ola_FaceDetectExternInfo;->leftBlink:[I

    aget v0, v0, p1

    return v0
.end method

.method public getLeftEyePoint(I)Landroid/graphics/Point;
    .locals 1

    iget-object v0, p0, Lcom/olaworks/wrapper/FaceDetectExtern;->mFDExternInfo:Lcom/olaworks/datastruct/Ola_FaceDetectExternInfo;

    iget-object v0, v0, Lcom/olaworks/datastruct/Ola_FaceDetectExternInfo;->leftEye:[Landroid/graphics/Point;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getMouthRect(I)Landroid/graphics/Rect;
    .locals 2

    const/4 v1, 0x0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method public getNoseRect(I)Landroid/graphics/Rect;
    .locals 2

    const/4 v1, 0x0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method public getRightBlinkValue(I)I
    .locals 1

    iget-object v0, p0, Lcom/olaworks/wrapper/FaceDetectExtern;->mFDExternInfo:Lcom/olaworks/datastruct/Ola_FaceDetectExternInfo;

    iget-object v0, v0, Lcom/olaworks/datastruct/Ola_FaceDetectExternInfo;->rightBlink:[I

    aget v0, v0, p1

    return v0
.end method

.method public getRightEyePoint(I)Landroid/graphics/Point;
    .locals 1

    iget-object v0, p0, Lcom/olaworks/wrapper/FaceDetectExtern;->mFDExternInfo:Lcom/olaworks/datastruct/Ola_FaceDetectExternInfo;

    iget-object v0, v0, Lcom/olaworks/datastruct/Ola_FaceDetectExternInfo;->rightEye:[Landroid/graphics/Point;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getSmileValue(I)I
    .locals 1

    iget-object v0, p0, Lcom/olaworks/wrapper/FaceDetectExtern;->mFDExternInfo:Lcom/olaworks/datastruct/Ola_FaceDetectExternInfo;

    iget-object v0, v0, Lcom/olaworks/datastruct/Ola_FaceDetectExternInfo;->score:[I

    aget v0, v0, p1

    return v0
.end method

.method public setImagebuffer(Landroid/graphics/Bitmap;)V
    .locals 2

    const-string v0, "FaceDetectExtern"

    const-string v1, "Howard processImageBitmap"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/olaworks/jni/OlaFaceDetectExternJNI;->processImageBitmap(Landroid/graphics/Bitmap;I)I

    const-string v0, "FaceDetectExtern"

    const-string v1, "Howard getProcessInfo"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/olaworks/wrapper/FaceDetectExtern;->mFDExternInfo:Lcom/olaworks/datastruct/Ola_FaceDetectExternInfo;

    invoke-static {v0}, Lcom/olaworks/jni/OlaFaceDetectExternJNI;->getProcessInfo(Lcom/olaworks/datastruct/Ola_FaceDetectExternInfo;)I

    return-void
.end method
