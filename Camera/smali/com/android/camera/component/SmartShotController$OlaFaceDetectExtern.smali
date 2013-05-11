.class Lcom/android/camera/component/SmartShotController$OlaFaceDetectExtern;
.super Ljava/lang/Object;
.source "SmartShotController.java"

# interfaces
.implements Lcom/scalado/app/rewind/AutoSession$FaceDetectExtern;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/component/SmartShotController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OlaFaceDetectExtern"
.end annotation


# instance fields
.field private mFDExternInfo:Lcom/olaworks/datastruct/Ola_FaceDetectExternInfo;

.field final synthetic this$0:Lcom/android/camera/component/SmartShotController;


# direct methods
.method public constructor <init>(Lcom/android/camera/component/SmartShotController;)V
    .locals 2

    iput-object p1, p0, Lcom/android/camera/component/SmartShotController$OlaFaceDetectExtern;->this$0:Lcom/android/camera/component/SmartShotController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/component/SmartShotController$OlaFaceDetectExtern;->mFDExternInfo:Lcom/olaworks/datastruct/Ola_FaceDetectExternInfo;

    #getter for: Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/camera/component/SmartShotController;->access$1200(Lcom/android/camera/component/SmartShotController;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Face Detection create - Start"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/component/SmartShotController$OlaFaceDetectExtern;->mFDExternInfo:Lcom/olaworks/datastruct/Ola_FaceDetectExternInfo;

    if-nez v0, :cond_0

    new-instance v0, Lcom/olaworks/datastruct/Ola_FaceDetectExternInfo;

    invoke-direct {v0}, Lcom/olaworks/datastruct/Ola_FaceDetectExternInfo;-><init>()V

    iput-object v0, p0, Lcom/android/camera/component/SmartShotController$OlaFaceDetectExtern;->mFDExternInfo:Lcom/olaworks/datastruct/Ola_FaceDetectExternInfo;

    :cond_0
    invoke-static {}, Lcom/olaworks/jni/OlaFaceDetectExternJNI;->create()I

    #getter for: Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/camera/component/SmartShotController;->access$1300(Lcom/android/camera/component/SmartShotController;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Face Detection create - End"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/olaworks/jni/OlaFaceDetectExternJNI;->initialize()I

    return-void
.end method

.method private convertRect(Lcom/scalado/base/Rect;Landroid/graphics/Rect;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public finalize()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/component/SmartShotController$OlaFaceDetectExtern;->this$0:Lcom/android/camera/component/SmartShotController;

    #getter for: Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/camera/component/SmartShotController;->access$1400(Lcom/android/camera/component/SmartShotController;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Group FaceDetection finalize() - Start"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/component/SmartShotController$OlaFaceDetectExtern;->mFDExternInfo:Lcom/olaworks/datastruct/Ola_FaceDetectExternInfo;

    invoke-static {}, Lcom/olaworks/jni/OlaFaceDetectExternJNI;->destroy()I

    iget-object v0, p0, Lcom/android/camera/component/SmartShotController$OlaFaceDetectExtern;->this$0:Lcom/android/camera/component/SmartShotController;

    #getter for: Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/camera/component/SmartShotController;->access$1500(Lcom/android/camera/component/SmartShotController;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Group FaceDetection finalize() - End"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getBlinkValue(I)I
    .locals 2

    iget-object v0, p0, Lcom/android/camera/component/SmartShotController$OlaFaceDetectExtern;->mFDExternInfo:Lcom/olaworks/datastruct/Ola_FaceDetectExternInfo;

    iget-object v0, v0, Lcom/olaworks/datastruct/Ola_FaceDetectExternInfo;->leftBlink:[I

    aget v0, v0, p1

    iget-object v1, p0, Lcom/android/camera/component/SmartShotController$OlaFaceDetectExtern;->mFDExternInfo:Lcom/olaworks/datastruct/Ola_FaceDetectExternInfo;

    iget-object v1, v1, Lcom/olaworks/datastruct/Ola_FaceDetectExternInfo;->rightBlink:[I

    aget v1, v1, p1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/SmartShotController$OlaFaceDetectExtern;->mFDExternInfo:Lcom/olaworks/datastruct/Ola_FaceDetectExternInfo;

    iget-object v0, v0, Lcom/olaworks/datastruct/Ola_FaceDetectExternInfo;->leftBlink:[I

    aget v0, v0, p1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/component/SmartShotController$OlaFaceDetectExtern;->mFDExternInfo:Lcom/olaworks/datastruct/Ola_FaceDetectExternInfo;

    iget-object v0, v0, Lcom/olaworks/datastruct/Ola_FaceDetectExternInfo;->rightBlink:[I

    aget v0, v0, p1

    goto :goto_0
.end method

.method public getFaceID(I)I
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/camera/component/SmartShotController$OlaFaceDetectExtern;->mFDExternInfo:Lcom/olaworks/datastruct/Ola_FaceDetectExternInfo;

    iget-object v1, v1, Lcom/olaworks/datastruct/Ola_FaceDetectExternInfo;->leftBlink:[I

    aget v1, v1, p1

    iget-object v2, p0, Lcom/android/camera/component/SmartShotController$OlaFaceDetectExtern;->mFDExternInfo:Lcom/olaworks/datastruct/Ola_FaceDetectExternInfo;

    iget-object v2, v2, Lcom/olaworks/datastruct/Ola_FaceDetectExternInfo;->rightBlink:[I

    aget v2, v2, p1

    if-le v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/camera/component/SmartShotController$OlaFaceDetectExtern;->mFDExternInfo:Lcom/olaworks/datastruct/Ola_FaceDetectExternInfo;

    iget-object v1, v1, Lcom/olaworks/datastruct/Ola_FaceDetectExternInfo;->leftBlink:[I

    aget v0, v1, p1

    :goto_0
    iget-object v1, p0, Lcom/android/camera/component/SmartShotController$OlaFaceDetectExtern;->this$0:Lcom/android/camera/component/SmartShotController;

    #getter for: Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/camera/component/SmartShotController;->access$1900(Lcom/android/camera/component/SmartShotController;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "face_index:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " FaceID:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/component/SmartShotController$OlaFaceDetectExtern;->mFDExternInfo:Lcom/olaworks/datastruct/Ola_FaceDetectExternInfo;

    iget-object v3, v3, Lcom/olaworks/datastruct/Ola_FaceDetectExternInfo;->faceId:[I

    aget v3, v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " SmileValue:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/component/SmartShotController$OlaFaceDetectExtern;->mFDExternInfo:Lcom/olaworks/datastruct/Ola_FaceDetectExternInfo;

    iget-object v3, v3, Lcom/olaworks/datastruct/Ola_FaceDetectExternInfo;->score:[I

    aget v3, v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " FaceRect:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/component/SmartShotController$OlaFaceDetectExtern;->mFDExternInfo:Lcom/olaworks/datastruct/Ola_FaceDetectExternInfo;

    iget-object v3, v3, Lcom/olaworks/datastruct/Ola_FaceDetectorInfo;->detectedFaces:[Landroid/graphics/Rect;

    aget-object v3, v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " BlinkValue:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/camera/component/SmartShotController$OlaFaceDetectExtern;->mFDExternInfo:Lcom/olaworks/datastruct/Ola_FaceDetectExternInfo;

    iget-object v1, v1, Lcom/olaworks/datastruct/Ola_FaceDetectExternInfo;->faceId:[I

    aget v1, v1, p1

    return v1

    :cond_0
    iget-object v1, p0, Lcom/android/camera/component/SmartShotController$OlaFaceDetectExtern;->mFDExternInfo:Lcom/olaworks/datastruct/Ola_FaceDetectExternInfo;

    iget-object v1, v1, Lcom/olaworks/datastruct/Ola_FaceDetectExternInfo;->rightBlink:[I

    aget v0, v1, p1

    goto :goto_0
.end method

.method public getFaceNum()I
    .locals 1

    iget-object v0, p0, Lcom/android/camera/component/SmartShotController$OlaFaceDetectExtern;->mFDExternInfo:Lcom/olaworks/datastruct/Ola_FaceDetectExternInfo;

    iget v0, v0, Lcom/olaworks/datastruct/Ola_FaceDetectorInfo;->numDetectedFaces:I

    return v0
.end method

.method public getFaceRect(I)Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/component/SmartShotController$OlaFaceDetectExtern;->mFDExternInfo:Lcom/olaworks/datastruct/Ola_FaceDetectExternInfo;

    iget-object v0, v0, Lcom/olaworks/datastruct/Ola_FaceDetectorInfo;->detectedFaces:[Landroid/graphics/Rect;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getIsSmile(I)I
    .locals 1

    iget-object v0, p0, Lcom/android/camera/component/SmartShotController$OlaFaceDetectExtern;->mFDExternInfo:Lcom/olaworks/datastruct/Ola_FaceDetectExternInfo;

    iget-object v0, v0, Lcom/olaworks/datastruct/Ola_FaceDetectExternInfo;->isSmile:[I

    aget v0, v0, p1

    return v0
.end method

.method public getLeftBlinkValue(I)I
    .locals 1

    iget-object v0, p0, Lcom/android/camera/component/SmartShotController$OlaFaceDetectExtern;->mFDExternInfo:Lcom/olaworks/datastruct/Ola_FaceDetectExternInfo;

    iget-object v0, v0, Lcom/olaworks/datastruct/Ola_FaceDetectExternInfo;->leftBlink:[I

    aget v0, v0, p1

    return v0
.end method

.method public getLeftEyePoint(I)Landroid/graphics/Point;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/component/SmartShotController$OlaFaceDetectExtern;->mFDExternInfo:Lcom/olaworks/datastruct/Ola_FaceDetectExternInfo;

    iget-object v0, v0, Lcom/olaworks/datastruct/Ola_FaceDetectExternInfo;->leftEye:[Landroid/graphics/Point;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getLeftEyeRect(I)Landroid/graphics/Rect;
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, p1}, Lcom/android/camera/component/SmartShotController$OlaFaceDetectExtern;->getLeftEyePoint(I)Landroid/graphics/Point;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0, p1}, Lcom/android/camera/component/SmartShotController$OlaFaceDetectExtern;->getLeftEyePoint(I)Landroid/graphics/Point;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/android/camera/component/SmartShotController$OlaFaceDetectExtern;->pointToRect(Landroid/graphics/Point;Landroid/graphics/Rect;)V

    :cond_0
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

    iget-object v0, p0, Lcom/android/camera/component/SmartShotController$OlaFaceDetectExtern;->mFDExternInfo:Lcom/olaworks/datastruct/Ola_FaceDetectExternInfo;

    iget-object v0, v0, Lcom/olaworks/datastruct/Ola_FaceDetectExternInfo;->rightBlink:[I

    aget v0, v0, p1

    return v0
.end method

.method public getRightEyePoint(I)Landroid/graphics/Point;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/component/SmartShotController$OlaFaceDetectExtern;->mFDExternInfo:Lcom/olaworks/datastruct/Ola_FaceDetectExternInfo;

    iget-object v0, v0, Lcom/olaworks/datastruct/Ola_FaceDetectExternInfo;->rightEye:[Landroid/graphics/Point;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getRightEyeRect(I)Landroid/graphics/Rect;
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, p1}, Lcom/android/camera/component/SmartShotController$OlaFaceDetectExtern;->getRightEyePoint(I)Landroid/graphics/Point;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0, p1}, Lcom/android/camera/component/SmartShotController$OlaFaceDetectExtern;->getRightEyePoint(I)Landroid/graphics/Point;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/android/camera/component/SmartShotController$OlaFaceDetectExtern;->pointToRect(Landroid/graphics/Point;Landroid/graphics/Rect;)V

    :cond_0
    return-object v0
.end method

.method public getSmileValue(I)I
    .locals 1

    iget-object v0, p0, Lcom/android/camera/component/SmartShotController$OlaFaceDetectExtern;->mFDExternInfo:Lcom/olaworks/datastruct/Ola_FaceDetectExternInfo;

    iget-object v0, v0, Lcom/olaworks/datastruct/Ola_FaceDetectExternInfo;->score:[I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/component/SmartShotController$OlaFaceDetectExtern;->mFDExternInfo:Lcom/olaworks/datastruct/Ola_FaceDetectExternInfo;

    iget-object v0, v0, Lcom/olaworks/datastruct/Ola_FaceDetectExternInfo;->score:[I

    aget v0, v0, p1

    goto :goto_0
.end method

.method pointToRect(Landroid/graphics/Point;Landroid/graphics/Rect;)V
    .locals 4

    iget v0, p1, Landroid/graphics/Point;->x:I

    iget v1, p1, Landroid/graphics/Point;->y:I

    iget v2, p1, Landroid/graphics/Point;->x:I

    iget v3, p1, Landroid/graphics/Point;->y:I

    invoke-virtual {p2, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method rectToRect(Lcom/scalado/base/Rect;Landroid/graphics/Rect;)V
    .locals 0

    return-void
.end method

.method rectToStr(Lcom/scalado/base/Rect;)Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public reset()V
    .locals 0

    return-void
.end method

.method public setImagebuffer(Landroid/graphics/Bitmap;)V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/component/SmartShotController$OlaFaceDetectExtern;->this$0:Lcom/android/camera/component/SmartShotController;

    #getter for: Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/camera/component/SmartShotController;->access$1600(Lcom/android/camera/component/SmartShotController;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setImagebuffer +processImageBitmap Width: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Height: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/olaworks/jni/OlaFaceDetectExternJNI;->processImageBitmap(Landroid/graphics/Bitmap;I)I

    iget-object v0, p0, Lcom/android/camera/component/SmartShotController$OlaFaceDetectExtern;->this$0:Lcom/android/camera/component/SmartShotController;

    #getter for: Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/camera/component/SmartShotController;->access$1700(Lcom/android/camera/component/SmartShotController;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "setImagebuffer -processImageBitmap"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/component/SmartShotController$OlaFaceDetectExtern;->mFDExternInfo:Lcom/olaworks/datastruct/Ola_FaceDetectExternInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/SmartShotController$OlaFaceDetectExtern;->mFDExternInfo:Lcom/olaworks/datastruct/Ola_FaceDetectExternInfo;

    invoke-static {v0}, Lcom/olaworks/jni/OlaFaceDetectExternJNI;->getProcessInfo(Lcom/olaworks/datastruct/Ola_FaceDetectExternInfo;)I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/component/SmartShotController$OlaFaceDetectExtern;->this$0:Lcom/android/camera/component/SmartShotController;

    #getter for: Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/camera/component/SmartShotController;->access$1800(Lcom/android/camera/component/SmartShotController;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "mFDExternInfo == null)"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setImagebuffer(Lcom/scalado/base/Image;)V
    .locals 0

    return-void
.end method
