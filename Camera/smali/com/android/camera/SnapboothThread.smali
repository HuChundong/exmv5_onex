.class public Lcom/android/camera/SnapboothThread;
.super Ljava/lang/Thread;
.source "SnapboothThread.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/SnapboothThread$MainHandler;
    }
.end annotation


# static fields
.field public static final CANCEL_CAPTURE:I = 0xa

.field private static final CAPTURE_STATE_ERROR:I = 0x4

.field private static final CAPTURE_STATE_IDLE:I = 0x0

.field private static final CAPTURE_STATE_TAKING_PICTURE:I = 0x1

.field private static final CAPTURE_STATE_WAITING_CLOSE_CAMERA:I = 0x2

.field private static final CAPTURE_STATE_WAITING_QUIT_THREAD:I = 0x3

.field public static final CLOSE_CAMERA:I = 0x2

.field public static final CREATE_INIT_THUMBNAIL:I = 0x64

.field public static final CREATE_MULTISHOT_BITMAP:I = 0x3

.field public static final DELETE_CURRENT_IMAGE:I = 0x65

.field private static final MULTI_SHOT_INTERVAL:I = 0x3e8

.field public static final QUIT_CAMERA_THREAD:I = 0x5

.field public static final RECHECK_STORAGE_STATE:I = 0x66

.field public static final SETTINGS_RELOAD:I = 0x1

.field public static final SETTINGS_REMAIN:I = 0x0

.field public static final SET_GE_BLOOM:I = 0x24

.field public static final SET_GE_BULGE:I = 0x20

.field public static final SET_GE_CONTRAST:I = 0x23

.field public static final SET_GE_DOTS:I = 0x27

.field public static final SET_GE_MIRROR:I = 0x22

.field public static final SET_GE_NONE:I = 0x1f

.field public static final SET_GE_PUCKER:I = 0x21

.field public static final SET_GE_SEPIA:I = 0x25

.field public static final SET_GE_VINTAGE:I = 0x26

.field public static final START_PREVIEW:I = 0x0

.field public static final STOP_PREVIEW:I = 0x1

.field public static final STORE_JPEG:I = 0x6

.field private static final TAG:Ljava/lang/String; = "SnapboothThread"

.field public static final TAKE_PICTURE:I = 0x4

.field public static final UPDATE_EFFECT_ORIENTATION:I = 0x67

.field public static final mCountDownSec:I = 0x960


# instance fields
.field private Camera_Mode_Height:I

.field private Camera_Mode_Width:I

.field private Camera_Preview_Height:I

.field private Camera_Preview_Width:I

.field private mCamController:Lcom/android/camera/CameraController;

.field private mCameraDevice:Landroid/hardware/Camera;

.field private mCameraToken:Ljava/lang/Object;

.field private mCaptureState:I

.field private mCurrentEffectMessage:I

.field private mCurrentShutterNum:I

.field private mErrorCallback:Landroid/hardware/Camera$ErrorCallback;

.field private mIsCapturing:Z

.field private mIsMultiShutter:Z

.field private mIsShutterSound:Z

.field private mIsTakingPicture:Z

.field private mJPEGQuality:I

.field private mJpegData:[B

.field private mJpegPictureCallback:Landroid/hardware/Camera$PictureCallback;

.field private mMultiBitmap:Landroid/graphics/Bitmap;

.field private mMultiBitmapRotation:Lcom/android/camera/rotate/UIRotation;

.field private mPreviewing:Z

.field private mRawPictureCallback:Landroid/hardware/Camera$PictureCallback;

.field private mShutterCallback:Landroid/hardware/Camera$ShutterCallback;

.field private mSnapboothActivity:Lcom/android/camera/HTCSnapbooth;

.field private mSnapboothHandler:Lcom/android/camera/SnapboothThread$MainHandler;

.field private mStorageCheckRunnable:Ljava/lang/Runnable;

.field private mStorageCheckThread:Ljava/lang/Thread;

.field private mStorageState:I

.field private mUIHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/android/camera/HTCSnapbooth;Landroid/os/Handler;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object v1, p0, Lcom/android/camera/SnapboothThread;->mCameraDevice:Landroid/hardware/Camera;

    iput-object v1, p0, Lcom/android/camera/SnapboothThread;->mCamController:Lcom/android/camera/CameraController;

    iput-object v1, p0, Lcom/android/camera/SnapboothThread;->mSnapboothActivity:Lcom/android/camera/HTCSnapbooth;

    iput-object v1, p0, Lcom/android/camera/SnapboothThread;->mUIHandler:Landroid/os/Handler;

    iput-object v1, p0, Lcom/android/camera/SnapboothThread;->mJpegData:[B

    const/16 v0, 0x64

    iput v0, p0, Lcom/android/camera/SnapboothThread;->mJPEGQuality:I

    iput-object v1, p0, Lcom/android/camera/SnapboothThread;->mSnapboothHandler:Lcom/android/camera/SnapboothThread$MainHandler;

    const/16 v0, 0x1f

    iput v0, p0, Lcom/android/camera/SnapboothThread;->mCurrentEffectMessage:I

    iput v2, p0, Lcom/android/camera/SnapboothThread;->mStorageState:I

    iput v2, p0, Lcom/android/camera/SnapboothThread;->mCaptureState:I

    iput-object v1, p0, Lcom/android/camera/SnapboothThread;->mMultiBitmap:Landroid/graphics/Bitmap;

    sget-object v0, Lcom/android/camera/rotate/UIRotation;->SCREEN_ROTATION:Lcom/android/camera/rotate/UIRotation;

    iput-object v0, p0, Lcom/android/camera/SnapboothThread;->mMultiBitmapRotation:Lcom/android/camera/rotate/UIRotation;

    iput v3, p0, Lcom/android/camera/SnapboothThread;->mCurrentShutterNum:I

    iput-boolean v2, p0, Lcom/android/camera/SnapboothThread;->mPreviewing:Z

    iput-boolean v3, p0, Lcom/android/camera/SnapboothThread;->mIsShutterSound:Z

    new-instance v0, Lcom/android/camera/SnapboothThread$1;

    invoke-direct {v0, p0}, Lcom/android/camera/SnapboothThread$1;-><init>(Lcom/android/camera/SnapboothThread;)V

    iput-object v0, p0, Lcom/android/camera/SnapboothThread;->mStorageCheckRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/camera/SnapboothThread$2;

    invoke-direct {v0, p0}, Lcom/android/camera/SnapboothThread$2;-><init>(Lcom/android/camera/SnapboothThread;)V

    iput-object v0, p0, Lcom/android/camera/SnapboothThread;->mErrorCallback:Landroid/hardware/Camera$ErrorCallback;

    new-instance v0, Lcom/android/camera/SnapboothThread$3;

    invoke-direct {v0, p0}, Lcom/android/camera/SnapboothThread$3;-><init>(Lcom/android/camera/SnapboothThread;)V

    iput-object v0, p0, Lcom/android/camera/SnapboothThread;->mShutterCallback:Landroid/hardware/Camera$ShutterCallback;

    new-instance v0, Lcom/android/camera/SnapboothThread$4;

    invoke-direct {v0, p0}, Lcom/android/camera/SnapboothThread$4;-><init>(Lcom/android/camera/SnapboothThread;)V

    iput-object v0, p0, Lcom/android/camera/SnapboothThread;->mRawPictureCallback:Landroid/hardware/Camera$PictureCallback;

    new-instance v0, Lcom/android/camera/SnapboothThread$5;

    invoke-direct {v0, p0}, Lcom/android/camera/SnapboothThread$5;-><init>(Lcom/android/camera/SnapboothThread;)V

    iput-object v0, p0, Lcom/android/camera/SnapboothThread;->mJpegPictureCallback:Landroid/hardware/Camera$PictureCallback;

    iput-object p1, p0, Lcom/android/camera/SnapboothThread;->mSnapboothActivity:Lcom/android/camera/HTCSnapbooth;

    iput-object p2, p0, Lcom/android/camera/SnapboothThread;->mUIHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$002(Lcom/android/camera/SnapboothThread;I)I
    .locals 0

    iput p1, p0, Lcom/android/camera/SnapboothThread;->mStorageState:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/camera/SnapboothThread;)Lcom/android/camera/HTCSnapbooth;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/SnapboothThread;->mSnapboothActivity:Lcom/android/camera/HTCSnapbooth;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/camera/SnapboothThread;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/SnapboothThread;->cancelCapture()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/camera/SnapboothThread;)I
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/SnapboothThread;->endCheckStorageState()I

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/android/camera/SnapboothThread;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/SnapboothThread;->beginCheckStorageState()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/camera/SnapboothThread;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/SnapboothThread;->notifyStorageState()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/camera/SnapboothThread;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/SnapboothThread;->mMultiBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/android/camera/SnapboothThread;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    iput-object p1, p0, Lcom/android/camera/SnapboothThread;->mMultiBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/android/camera/SnapboothThread;)Lcom/android/camera/rotate/UIRotation;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/SnapboothThread;->mMultiBitmapRotation:Lcom/android/camera/rotate/UIRotation;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/android/camera/SnapboothThread;Lcom/android/camera/rotate/UIRotation;)Lcom/android/camera/rotate/UIRotation;
    .locals 0

    iput-object p1, p0, Lcom/android/camera/SnapboothThread;->mMultiBitmapRotation:Lcom/android/camera/rotate/UIRotation;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/android/camera/SnapboothThread;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/SnapboothThread;->capture()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Lcom/android/camera/SnapboothThread;[B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/SnapboothThread;->onFirstPreviewFrameArrived([B)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/camera/SnapboothThread;I)F
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/camera/SnapboothThread;->getMultiDrawLeft(I)F

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Lcom/android/camera/SnapboothThread;I)F
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/camera/SnapboothThread;->getMultiDrawTop(I)F

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/camera/SnapboothThread;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/SnapboothThread;->mIsShutterSound:Z

    return v0
.end method

.method static synthetic access$2002(Lcom/android/camera/SnapboothThread;[B)[B
    .locals 0

    iput-object p1, p0, Lcom/android/camera/SnapboothThread;->mJpegData:[B

    return-object p1
.end method

.method static synthetic access$2102(Lcom/android/camera/SnapboothThread;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/SnapboothThread;->mIsCapturing:Z

    return p1
.end method

.method static synthetic access$2200(Lcom/android/camera/SnapboothThread;)I
    .locals 1

    iget v0, p0, Lcom/android/camera/SnapboothThread;->mCurrentEffectMessage:I

    return v0
.end method

.method static synthetic access$2202(Lcom/android/camera/SnapboothThread;I)I
    .locals 0

    iput p1, p0, Lcom/android/camera/SnapboothThread;->mCurrentEffectMessage:I

    return p1
.end method

.method static synthetic access$2300(Lcom/android/camera/SnapboothThread;)Lcom/android/camera/CameraController;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/SnapboothThread;->mCamController:Lcom/android/camera/CameraController;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/SnapboothThread;)Lcom/android/camera/SnapboothThread$MainHandler;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/SnapboothThread;->mSnapboothHandler:Lcom/android/camera/SnapboothThread$MainHandler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/camera/SnapboothThread;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/SnapboothThread;->mUIHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/camera/SnapboothThread;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/SnapboothThread;->mIsTakingPicture:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/camera/SnapboothThread;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/SnapboothThread;->mIsTakingPicture:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/camera/SnapboothThread;)I
    .locals 1

    iget v0, p0, Lcom/android/camera/SnapboothThread;->mCaptureState:I

    return v0
.end method

.method static synthetic access$602(Lcom/android/camera/SnapboothThread;I)I
    .locals 0

    iput p1, p0, Lcom/android/camera/SnapboothThread;->mCaptureState:I

    return p1
.end method

.method static synthetic access$700(Lcom/android/camera/SnapboothThread;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/SnapboothThread;->mIsMultiShutter:Z

    return v0
.end method

.method static synthetic access$702(Lcom/android/camera/SnapboothThread;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/SnapboothThread;->mIsMultiShutter:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/camera/SnapboothThread;)I
    .locals 1

    iget v0, p0, Lcom/android/camera/SnapboothThread;->mCurrentShutterNum:I

    return v0
.end method

.method static synthetic access$802(Lcom/android/camera/SnapboothThread;I)I
    .locals 0

    iput p1, p0, Lcom/android/camera/SnapboothThread;->mCurrentShutterNum:I

    return p1
.end method

.method static synthetic access$804(Lcom/android/camera/SnapboothThread;)I
    .locals 1

    iget v0, p0, Lcom/android/camera/SnapboothThread;->mCurrentShutterNum:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/camera/SnapboothThread;->mCurrentShutterNum:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/camera/SnapboothThread;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/SnapboothThread;->stopPreview()V

    return-void
.end method

.method private beginCheckStorageState()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/SnapboothThread;->mStorageCheckThread:Ljava/lang/Thread;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/SnapboothThread;->mStorageState:I

    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/android/camera/SnapboothThread;->mStorageCheckRunnable:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/camera/SnapboothThread;->mStorageCheckThread:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/android/camera/SnapboothThread;->mStorageCheckThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method

.method private cancelCapture()V
    .locals 3

    const/4 v2, 0x4

    const-string v0, "SnapboothThread"

    const-string v1, "cancelCapture - start"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/SnapboothThread;->mSnapboothHandler:Lcom/android/camera/SnapboothThread$MainHandler;

    const/4 v1, 0x6

    invoke-static {v0, v1}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    iget-object v0, p0, Lcom/android/camera/SnapboothThread;->mSnapboothHandler:Lcom/android/camera/SnapboothThread$MainHandler;

    invoke-static {v0, v2}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    iget-object v0, p0, Lcom/android/camera/SnapboothThread;->mMultiBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/SnapboothThread;->mMultiBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/SnapboothThread;->mMultiBitmap:Landroid/graphics/Bitmap;

    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/camera/SnapboothThread;->mCurrentShutterNum:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/SnapboothThread;->mIsCapturing:Z

    iget-object v0, p0, Lcom/android/camera/SnapboothThread;->mUIHandler:Landroid/os/Handler;

    invoke-static {v0, v2}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    const-string v0, "SnapboothThread"

    const-string v1, "cancelCapture - end"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private capture()Z
    .locals 9

    const/4 v8, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v5, "SnapboothThread"

    const-string v6, "start to capture photo"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/camera/SnapboothThread;->endCheckStorageState()I

    move-result v5

    const/4 v6, 0x2

    if-eq v5, v6, :cond_0

    iget-object v5, p0, Lcom/android/camera/SnapboothThread;->mSnapboothActivity:Lcom/android/camera/HTCSnapbooth;

    invoke-virtual {v5}, Lcom/android/camera/HTCSnapbooth;->isServiceMode()Z

    move-result v5

    if-nez v5, :cond_0

    :goto_0
    return v3

    :cond_0
    iput-boolean v3, p0, Lcom/android/camera/SnapboothThread;->mPreviewing:Z

    iput-boolean v4, p0, Lcom/android/camera/SnapboothThread;->mIsCapturing:Z

    iget-object v5, p0, Lcom/android/camera/SnapboothThread;->mCamController:Lcom/android/camera/CameraController;

    iget v6, p0, Lcom/android/camera/SnapboothThread;->mJPEGQuality:I

    invoke-virtual {v5, v6}, Lcom/android/camera/CameraController;->setJpegQuality(I)V

    iget-object v5, p0, Lcom/android/camera/SnapboothThread;->mSnapboothActivity:Lcom/android/camera/HTCSnapbooth;

    invoke-virtual {v5}, Lcom/android/camera/HTCSnapbooth;->getFreezeOrientation()I

    move-result v5

    invoke-static {v8, v5, v3}, Lcom/android/camera/rotate/UIRotation;->fromDeviceOrientation(Lcom/android/camera/rotate/UIRotation;IZ)Lcom/android/camera/rotate/UIRotation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/rotate/UIRotation;->isLandscape()Z

    move-result v5

    if-eqz v5, :cond_1

    move v0, v3

    :goto_1
    const-string v5, "SnapboothThread"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "set rotation, mCaptureRotation = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/camera/SnapboothThread;->mCamController:Lcom/android/camera/CameraController;

    invoke-virtual {v5, v0}, Lcom/android/camera/CameraController;->setRotation(I)V

    iget-object v5, p0, Lcom/android/camera/SnapboothThread;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v5, v8}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    iget-object v5, p0, Lcom/android/camera/SnapboothThread;->mCamController:Lcom/android/camera/CameraController;

    const-string v6, "img-timestamp"

    const-string v7, "0"

    invoke-virtual {v5, v6, v7}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/camera/SnapboothThread;->mCamController:Lcom/android/camera/CameraController;

    invoke-virtual {v5}, Lcom/android/camera/CameraController;->doSetCameraParameters()V

    const-string v5, "SnapboothThread"

    const-string v6, "Camera - takePicture"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v5, Lcom/android/camera/TIME;->ReadyTakePicture:Lcom/android/camera/TIME$Value;

    invoke-virtual {v5}, Lcom/android/camera/TIME$Value;->End()V

    sget-object v5, Lcom/android/camera/TIME;->ShutterCallback:Lcom/android/camera/TIME$Value;

    invoke-virtual {v5}, Lcom/android/camera/TIME$Value;->Start()V

    const/4 v5, 0x1

    :try_start_0
    iput-boolean v5, p0, Lcom/android/camera/SnapboothThread;->mIsTakingPicture:Z

    iget-object v5, p0, Lcom/android/camera/SnapboothThread;->mCameraDevice:Landroid/hardware/Camera;

    iget-object v6, p0, Lcom/android/camera/SnapboothThread;->mShutterCallback:Landroid/hardware/Camera$ShutterCallback;

    iget-object v7, p0, Lcom/android/camera/SnapboothThread;->mRawPictureCallback:Landroid/hardware/Camera$PictureCallback;

    iget-object v8, p0, Lcom/android/camera/SnapboothThread;->mJpegPictureCallback:Landroid/hardware/Camera$PictureCallback;

    invoke-virtual {v5, v6, v7, v8}, Landroid/hardware/Camera;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v4

    goto :goto_0

    :cond_1
    const/16 v0, 0x5a

    goto :goto_1

    :catch_0
    move-exception v1

    iput-boolean v3, p0, Lcom/android/camera/SnapboothThread;->mIsTakingPicture:Z

    const/4 v4, 0x4

    iput v4, p0, Lcom/android/camera/SnapboothThread;->mCaptureState:I

    const-string v4, "SnapboothThread"

    const-string v5, "take picture exception - mCaptureState = CAPTURE_STATE_ERROR"

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "SnapboothThread"

    const-string v5, "take picture exception. Camera app finished"

    invoke-static {v4, v5, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v4, p0, Lcom/android/camera/SnapboothThread;->mSnapboothActivity:Lcom/android/camera/HTCSnapbooth;

    invoke-virtual {v4}, Lcom/android/camera/HTCSnapbooth;->finish()V

    goto/16 :goto_0
.end method

.method private endCheckStorageState()I
    .locals 1

    :goto_0
    iget-object v0, p0, Lcom/android/camera/SnapboothThread;->mStorageCheckThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/android/camera/SnapboothThread;->mStorageCheckThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/SnapboothThread;->mStorageCheckThread:Ljava/lang/Thread;

    :cond_0
    iget v0, p0, Lcom/android/camera/SnapboothThread;->mStorageState:I

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/camera/SnapboothThread;->notifyStorageState()V

    iget v0, p0, Lcom/android/camera/SnapboothThread;->mStorageState:I

    return v0

    :cond_1
    invoke-direct {p0}, Lcom/android/camera/SnapboothThread;->beginCheckStorageState()V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private getMultiDrawLeft(I)F
    .locals 1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/android/camera/SnapboothThread;->mMultiBitmapRotation:Lcom/android/camera/rotate/UIRotation;

    invoke-virtual {v0}, Lcom/android/camera/rotate/UIRotation;->isPortrait()Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Lcom/android/camera/SnapboothCustomize;->CAPTURE_IMG_WIDTH:I

    int-to-float v0, v0

    :goto_0
    return v0

    :cond_1
    sget v0, Lcom/android/camera/SnapboothCustomize;->CAPTURE_IMG_HEIGHT:I

    int-to-float v0, v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getMultiDrawTop(I)F
    .locals 1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/android/camera/SnapboothThread;->mMultiBitmapRotation:Lcom/android/camera/rotate/UIRotation;

    invoke-virtual {v0}, Lcom/android/camera/rotate/UIRotation;->isPortrait()Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Lcom/android/camera/SnapboothCustomize;->CAPTURE_IMG_HEIGHT:I

    int-to-float v0, v0

    :goto_0
    return v0

    :cond_1
    sget v0, Lcom/android/camera/SnapboothCustomize;->CAPTURE_IMG_WIDTH:I

    int-to-float v0, v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadResolution()V
    .locals 2

    const-string v0, "SnapboothThread"

    const-string v1, "loadResolution() - start"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    sget v0, Lcom/android/camera/SnapboothCustomize;->CAPTURE_IMG_HEIGHT:I

    iput v0, p0, Lcom/android/camera/SnapboothThread;->Camera_Mode_Width:I

    sget v0, Lcom/android/camera/SnapboothCustomize;->CAPTURE_IMG_WIDTH:I

    iput v0, p0, Lcom/android/camera/SnapboothThread;->Camera_Mode_Height:I

    sget v0, Lcom/android/camera/SnapboothCustomize;->PREVIEW_HEIGHT:I

    iput v0, p0, Lcom/android/camera/SnapboothThread;->Camera_Preview_Width:I

    sget v0, Lcom/android/camera/SnapboothCustomize;->PREVIEW_WIDTH:I

    iput v0, p0, Lcom/android/camera/SnapboothThread;->Camera_Preview_Height:I

    const-string v0, "SnapboothThread"

    const-string v1, "loadResolution() - end"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private notifyStorageState()V
    .locals 5

    iget v0, p0, Lcom/android/camera/SnapboothThread;->mStorageState:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/SnapboothThread;->mUIHandler:Landroid/os/Handler;

    const/16 v1, 0x2a

    iget v2, p0, Lcom/android/camera/SnapboothThread;->mStorageState:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private onFirstPreviewFrameArrived([B)V
    .locals 7

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/android/camera/SnapboothThread;->mIsCapturing:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/SnapboothThread;->mSnapboothHandler:Lcom/android/camera/SnapboothThread$MainHandler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/android/camera/SnapboothThread$MainHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/SnapboothThread;->mUIHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    const/4 v4, 0x0

    const-wide/16 v5, 0x3e8

    move v3, v2

    invoke-static/range {v0 .. v6}, Lcom/android/camera/MessageHandler;->sendObtainMessageDelayed(Landroid/os/Handler;IIILjava/lang/Object;J)V

    :cond_0
    iget-object v0, p0, Lcom/android/camera/SnapboothThread;->mUIHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    return-void
.end method

.method private stopPreview()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/camera/SnapboothThread;->mPreviewing:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/camera/SnapboothThread;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    iget-object v0, p0, Lcom/android/camera/SnapboothThread;->mCameraDevice:Landroid/hardware/Camera;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/SnapboothThread;->mPreviewing:Z

    iget-object v0, p0, Lcom/android/camera/SnapboothThread;->mUIHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    const-string v0, "SnapboothThread"

    const-string v1, "stopPreview"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method closeCamera()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/android/camera/SnapboothThread;->mPreviewing:Z

    if-eqz v0, :cond_0

    const-string v0, "SnapboothThread"

    const-string v1, "before stopPreview"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/SnapboothThread;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    iput-boolean v3, p0, Lcom/android/camera/SnapboothThread;->mPreviewing:Z

    iget-object v0, p0, Lcom/android/camera/SnapboothThread;->mUIHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    const-string v0, "SnapboothThread"

    const-string v1, "after stopPreview"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/SnapboothThread;->resetJpegData()V

    iget-object v0, p0, Lcom/android/camera/SnapboothThread;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v0, :cond_1

    const-string v0, "SnapboothThread"

    const-string v1, "before release"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/SnapboothThread;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    const-string v0, "SnapboothThread"

    const-string v1, "after release"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/camera/SnapboothThread;->mCameraDevice:Landroid/hardware/Camera;

    iput-object v2, p0, Lcom/android/camera/SnapboothThread;->mCamController:Lcom/android/camera/CameraController;

    iget-object v0, p0, Lcom/android/camera/SnapboothThread;->mCameraToken:Ljava/lang/Object;

    invoke-static {v0}, Lcom/android/camera/CameraToken;->releaseToken(Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/android/camera/SnapboothThread;->mCameraToken:Ljava/lang/Object;

    iput v3, p0, Lcom/android/camera/SnapboothThread;->mCaptureState:I

    const-string v0, "SnapboothThread"

    const-string v1, "close camera - mCaptureState = CAPTURE_STATE_IDLE"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "SnapboothThread"

    const-string v1, "Release Camera - set CameraThread.mIsLastCameraClosed to true"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    const-string v0, "SnapboothThread"

    const-string v1, "mCameraDevice == null in closeCamera"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getCameraController()Lcom/android/camera/CameraController;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/SnapboothThread;->mCamController:Lcom/android/camera/CameraController;

    return-object v0
.end method

.method public getCurrentStorageState()I
    .locals 1

    iget v0, p0, Lcom/android/camera/SnapboothThread;->mStorageState:I

    return v0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/SnapboothThread;->mSnapboothHandler:Lcom/android/camera/SnapboothThread$MainHandler;

    return-object v0
.end method

.method public getJpegData()[B
    .locals 1

    iget-object v0, p0, Lcom/android/camera/SnapboothThread;->mJpegData:[B

    return-object v0
.end method

.method public releaseSnapboothThread()V
    .locals 0

    return-void
.end method

.method public resetJpegData()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/SnapboothThread;->mJpegData:[B

    return-void
.end method

.method public run()V
    .locals 2

    const-string v0, "SnapboothThread"

    const-string v1, "*************************************** run"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Looper;->prepare()V

    new-instance v0, Lcom/android/camera/SnapboothThread$MainHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/camera/SnapboothThread$MainHandler;-><init>(Lcom/android/camera/SnapboothThread;Lcom/android/camera/SnapboothThread$1;)V

    iput-object v0, p0, Lcom/android/camera/SnapboothThread;->mSnapboothHandler:Lcom/android/camera/SnapboothThread$MainHandler;

    invoke-direct {p0}, Lcom/android/camera/SnapboothThread;->beginCheckStorageState()V

    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void
.end method

.method public startPreview(IZ)V
    .locals 11

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v1, 0x0

    const-string v0, "SnapboothThread"

    const-string v2, "startPreview() - start"

    invoke-static {v0, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/camera/SnapboothThread;->mPreviewing:Z

    if-eqz v0, :cond_0

    const-string v0, "SnapboothThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Camera has been in Prevewing. mPreviewing="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/camera/SnapboothThread;->mPreviewing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/SnapboothThread;->mCameraDevice:Landroid/hardware/Camera;

    if-nez v0, :cond_2

    const-string v0, "SnapboothThread"

    const-string v2, "Open camera while startPreview"

    invoke-static {v0, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/camera/CameraToken;->getToken()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/SnapboothThread;->mCameraToken:Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/camera/SnapboothThread;->mCameraToken:Ljava/lang/Object;

    if-nez v0, :cond_1

    const-string v0, "SnapboothThread"

    const-string v2, "Camera is still open by another instance, open camera later"

    invoke-static {v0, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/SnapboothThread;->mSnapboothHandler:Lcom/android/camera/SnapboothThread$MainHandler;

    const-wide/16 v5, 0x64

    move v2, p1

    move v3, v1

    invoke-static/range {v0 .. v6}, Lcom/android/camera/MessageHandler;->sendObtainMessageDelayed(Landroid/os/Handler;IIILjava/lang/Object;J)V

    const-string v0, "SnapboothThread"

    const-string v1, "startPreview() - end"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    :try_start_0
    sget-object v0, Lcom/android/camera/CameraType;->Front:Lcom/android/camera/CameraType;

    iget v0, v0, Lcom/android/camera/CameraType;->id:I

    invoke-static {v0}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/SnapboothThread;->mCameraDevice:Landroid/hardware/Camera;

    iget-object v0, p0, Lcom/android/camera/SnapboothThread;->mCameraDevice:Landroid/hardware/Camera;

    iget-object v2, p0, Lcom/android/camera/SnapboothThread;->mErrorCallback:Landroid/hardware/Camera$ErrorCallback;

    invoke-virtual {v0, v2}, Landroid/hardware/Camera;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V

    const-string v0, "SnapboothThread"

    const-string v2, "StartPreview - Set CameraThread.mIsLastCameraClosed to false"

    invoke-static {v0, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v0, Lcom/android/camera/CameraController;

    iget-object v2, p0, Lcom/android/camera/SnapboothThread;->mCameraDevice:Landroid/hardware/Camera;

    invoke-direct {v0, v2, v4}, Lcom/android/camera/CameraController;-><init>(Landroid/hardware/Camera;Lcom/android/camera/debug/IOperationTimeoutController;)V

    iput-object v0, p0, Lcom/android/camera/SnapboothThread;->mCamController:Lcom/android/camera/CameraController;

    iget-object v0, p0, Lcom/android/camera/SnapboothThread;->mCamController:Lcom/android/camera/CameraController;

    invoke-virtual {v0}, Lcom/android/camera/CameraController;->setSupportedList()V

    :cond_2
    iget-object v0, p0, Lcom/android/camera/SnapboothThread;->mCamController:Lcom/android/camera/CameraController;

    const-string v2, "touch-aec"

    const-string v3, "off"

    invoke-virtual {v0, v2, v3}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "SnapboothThread"

    const-string v2, "Disable touch aec !!!"

    invoke-static {v0, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/SnapboothThread;->mCamController:Lcom/android/camera/CameraController;

    const-string v2, "enable-caf"

    const-string v3, "off"

    invoke-virtual {v0, v2, v3}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "SnapboothThread"

    const-string v2, "Start preview - disable continue AF !!!"

    invoke-static {v0, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/SnapboothThread;->mCamController:Lcom/android/camera/CameraController;

    const-string v2, "cam-mode"

    invoke-virtual {v0, v2, v1}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/android/camera/SnapboothThread;->mCamController:Lcom/android/camera/CameraController;

    const-string v2, "front-camera-mode"

    const-string v3, "mirror"

    invoke-virtual {v0, v2, v3}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/SnapboothThread;->mCamController:Lcom/android/camera/CameraController;

    const-string v2, "sound-off"

    const-string v3, "true"

    invoke-virtual {v0, v2, v3}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/SnapboothThread;->mCamController:Lcom/android/camera/CameraController;

    invoke-virtual {v0}, Lcom/android/camera/CameraController;->doSetCameraParameters()V

    invoke-direct {p0}, Lcom/android/camera/SnapboothThread;->loadResolution()V

    iget-object v0, p0, Lcom/android/camera/SnapboothThread;->mCamController:Lcom/android/camera/CameraController;

    iget v2, p0, Lcom/android/camera/SnapboothThread;->Camera_Mode_Width:I

    iget v3, p0, Lcom/android/camera/SnapboothThread;->Camera_Mode_Height:I

    invoke-virtual {v0, v2, v3}, Lcom/android/camera/CameraController;->setPictureSizeParameter(II)V

    const-string v0, "SnapboothThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SetPictureSize: CAMERA MODE, Width = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/camera/SnapboothThread;->Camera_Mode_Width:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", Height = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/camera/SnapboothThread;->Camera_Mode_Height:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/SnapboothThread;->mCamController:Lcom/android/camera/CameraController;

    iget v2, p0, Lcom/android/camera/SnapboothThread;->Camera_Preview_Width:I

    iget v3, p0, Lcom/android/camera/SnapboothThread;->Camera_Preview_Height:I

    invoke-virtual {v0, v2, v3}, Lcom/android/camera/CameraController;->setPreviewSizeParameter(II)V

    const-string v0, "SnapboothThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SetPreviewSize: CAMERA MODE, Width = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/camera/SnapboothThread;->Camera_Preview_Width:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", Height = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/camera/SnapboothThread;->Camera_Preview_Height:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/SnapboothThread;->mCamController:Lcom/android/camera/CameraController;

    const-string v2, "taking-picture-zoom"

    invoke-virtual {v0, v2}, Lcom/android/camera/CameraController;->getSettingsInfo(Ljava/lang/String;)Lcom/android/camera/CameraController$SettingInfo;

    move-result-object v10

    iget-object v0, p0, Lcom/android/camera/SnapboothThread;->mCamController:Lcom/android/camera/CameraController;

    const-string v2, "taking-picture-zoom"

    invoke-virtual {v10}, Lcom/android/camera/CameraController$SettingInfo;->getMin()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/android/camera/SnapboothThread;->mCamController:Lcom/android/camera/CameraController;

    invoke-virtual {v0}, Lcom/android/camera/CameraController;->doSetCameraParameters()V

    iget-object v0, p0, Lcom/android/camera/SnapboothThread;->mSnapboothActivity:Lcom/android/camera/HTCSnapbooth;

    invoke-virtual {v0}, Lcom/android/camera/HTCSnapbooth;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object v9

    :try_start_1
    iget-object v0, p0, Lcom/android/camera/SnapboothThread;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0, v9}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    iget-object v0, p0, Lcom/android/camera/SnapboothThread;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    iget-object v0, p0, Lcom/android/camera/SnapboothThread;->mCameraDevice:Landroid/hardware/Camera;

    new-instance v2, Lcom/android/camera/SnapboothThread$6;

    invoke-direct {v2, p0}, Lcom/android/camera/SnapboothThread$6;-><init>(Lcom/android/camera/SnapboothThread;)V

    invoke-virtual {v0, v2}, Landroid/hardware/Camera;->setOneShotPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/SnapboothThread;->mPreviewing:Z

    iget-object v0, p0, Lcom/android/camera/SnapboothThread;->mSnapboothHandler:Lcom/android/camera/SnapboothThread$MainHandler;

    invoke-virtual {v0, v5}, Lcom/android/camera/SnapboothThread$MainHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v2, p0, Lcom/android/camera/SnapboothThread;->mUIHandler:Landroid/os/Handler;

    if-eqz p2, :cond_5

    move v0, v1

    :goto_3
    invoke-static {v2, v5, v0, v1, v4}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    iget v0, p0, Lcom/android/camera/SnapboothThread;->mCurrentEffectMessage:I

    const/16 v1, 0x1f

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/camera/SnapboothThread;->mSnapboothHandler:Lcom/android/camera/SnapboothThread$MainHandler;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/SnapboothThread;->mSnapboothHandler:Lcom/android/camera/SnapboothThread$MainHandler;

    iget-object v1, p0, Lcom/android/camera/SnapboothThread;->mSnapboothHandler:Lcom/android/camera/SnapboothThread$MainHandler;

    iget v2, p0, Lcom/android/camera/SnapboothThread;->mCurrentEffectMessage:I

    invoke-virtual {v1, v2}, Lcom/android/camera/SnapboothThread$MainHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/SnapboothThread$MainHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    :cond_3
    invoke-direct {p0}, Lcom/android/camera/SnapboothThread;->endCheckStorageState()I

    :cond_4
    const-string v0, "SnapboothThread"

    const-string v1, "start_preview() - end"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_0
    move-exception v7

    const-string v0, "SnapboothThread"

    const-string v1, "open camera failed"

    invoke-static {v0, v1, v7}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/android/camera/SnapboothThread;->mCameraToken:Ljava/lang/Object;

    invoke-static {v0}, Lcom/android/camera/CameraToken;->releaseToken(Ljava/lang/Object;)V

    iput-object v4, p0, Lcom/android/camera/SnapboothThread;->mCameraToken:Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/camera/SnapboothThread;->mSnapboothActivity:Lcom/android/camera/HTCSnapbooth;

    invoke-virtual {v0}, Lcom/android/camera/HTCSnapbooth;->finish()V

    goto/16 :goto_0

    :catch_1
    move-exception v8

    const-string v0, "SnapboothThread"

    const-string v2, "mCameraDevice.setPreviewDisplay failed"

    invoke-static {v0, v2, v8}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/android/camera/SnapboothThread;->mSnapboothActivity:Lcom/android/camera/HTCSnapbooth;

    invoke-virtual {v0}, Lcom/android/camera/HTCSnapbooth;->finish()V

    goto :goto_1

    :catch_2
    move-exception v8

    const-string v0, "SnapboothThread"

    const-string v2, "start preview failed"

    invoke-static {v0, v2, v8}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/android/camera/SnapboothThread;->mSnapboothActivity:Lcom/android/camera/HTCSnapbooth;

    invoke-virtual {v0}, Lcom/android/camera/HTCSnapbooth;->finish()V

    goto :goto_2

    :cond_5
    const/4 v0, 0x3

    goto :goto_3
.end method
