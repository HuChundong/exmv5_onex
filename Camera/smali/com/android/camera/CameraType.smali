.class public final enum Lcom/android/camera/CameraType;
.super Ljava/lang/Enum;
.source "CameraType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/camera/CameraType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/camera/CameraType;

.field public static final enum Front:Lcom/android/camera/CameraType;

.field public static final enum Front3D:Lcom/android/camera/CameraType;

.field public static final enum Main:Lcom/android/camera/CameraType;

.field public static final enum Main3D:Lcom/android/camera/CameraType;


# instance fields
.field public final id:I

.field public final isSupported:Z

.field public final orientation:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/android/camera/CameraType;

    const-string v1, "Main"

    invoke-direct {v0, v1, v2, v2}, Lcom/android/camera/CameraType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/camera/CameraType;->Main:Lcom/android/camera/CameraType;

    new-instance v0, Lcom/android/camera/CameraType;

    const-string v1, "Main3D"

    invoke-direct {v0, v1, v3, v4}, Lcom/android/camera/CameraType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/camera/CameraType;->Main3D:Lcom/android/camera/CameraType;

    new-instance v0, Lcom/android/camera/CameraType;

    const-string v1, "Front"

    invoke-direct {v0, v1, v4, v3}, Lcom/android/camera/CameraType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/camera/CameraType;->Front:Lcom/android/camera/CameraType;

    new-instance v0, Lcom/android/camera/CameraType;

    const-string v1, "Front3D"

    invoke-direct {v0, v1, v5, v5}, Lcom/android/camera/CameraType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/camera/CameraType;->Front3D:Lcom/android/camera/CameraType;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/camera/CameraType;

    sget-object v1, Lcom/android/camera/CameraType;->Main:Lcom/android/camera/CameraType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/camera/CameraType;->Main3D:Lcom/android/camera/CameraType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/camera/CameraType;->Front:Lcom/android/camera/CameraType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/camera/CameraType;->Front3D:Lcom/android/camera/CameraType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/camera/CameraType;->$VALUES:[Lcom/android/camera/CameraType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v5, -0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v0}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    packed-switch p3, :pswitch_data_0

    iput v5, p0, Lcom/android/camera/CameraType;->id:I

    :goto_0
    iget v3, p0, Lcom/android/camera/CameraType;->id:I

    if-ltz v3, :cond_2

    :goto_1
    iput-boolean v1, p0, Lcom/android/camera/CameraType;->isSupported:Z

    iget-boolean v1, p0, Lcom/android/camera/CameraType;->isSupported:Z

    if-eqz v1, :cond_3

    iget v1, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    iput v1, p0, Lcom/android/camera/CameraType;->orientation:I

    :goto_2
    return-void

    :pswitch_0
    invoke-static {v2, v0}, Lcom/android/camera/CameraType;->findCameraInfo(ILandroid/hardware/Camera$CameraInfo;)I

    move-result v3

    iput v3, p0, Lcom/android/camera/CameraType;->id:I

    goto :goto_0

    :pswitch_1
    invoke-static {v1, v0}, Lcom/android/camera/CameraType;->findCameraInfo(ILandroid/hardware/Camera$CameraInfo;)I

    move-result v3

    iput v3, p0, Lcom/android/camera/CameraType;->id:I

    goto :goto_0

    :pswitch_2
    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0x7c

    if-eq v3, v4, :cond_0

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0x95

    if-eq v3, v4, :cond_0

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0x96

    if-eq v3, v4, :cond_0

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0x97

    if-eq v3, v4, :cond_0

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0xab

    if-eq v3, v4, :cond_0

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0xac

    if-ne v3, v4, :cond_1

    :cond_0
    const/4 v3, 0x2

    iput v3, p0, Lcom/android/camera/CameraType;->id:I

    goto :goto_0

    :cond_1
    iput v5, p0, Lcom/android/camera/CameraType;->id:I

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1

    :cond_3
    iput v2, p0, Lcom/android/camera/CameraType;->orientation:I

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static findCameraInfo(ILandroid/hardware/Camera$CameraInfo;)I
    .locals 4

    const/4 v2, 0x2

    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    :goto_0
    if-ltz v1, :cond_1

    invoke-static {v1, p1}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    iget v2, p1, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v2, p0, :cond_0

    :goto_1
    return v1

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/camera/CameraType;
    .locals 1

    const-class v0, Lcom/android/camera/CameraType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/camera/CameraType;

    return-object v0
.end method

.method public static values()[Lcom/android/camera/CameraType;
    .locals 1

    sget-object v0, Lcom/android/camera/CameraType;->$VALUES:[Lcom/android/camera/CameraType;

    invoke-virtual {v0}, [Lcom/android/camera/CameraType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/camera/CameraType;

    return-object v0
.end method


# virtual methods
.method public is3DCamera()Z
    .locals 1

    sget-object v0, Lcom/android/camera/CameraType;->Main3D:Lcom/android/camera/CameraType;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/camera/CameraType;->Front3D:Lcom/android/camera/CameraType;

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFrontCamera()Z
    .locals 1

    sget-object v0, Lcom/android/camera/CameraType;->Front:Lcom/android/camera/CameraType;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/camera/CameraType;->Front3D:Lcom/android/camera/CameraType;

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMainCamera()Z
    .locals 1

    sget-object v0, Lcom/android/camera/CameraType;->Main:Lcom/android/camera/CameraType;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/camera/CameraType;->Main3D:Lcom/android/camera/CameraType;

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
