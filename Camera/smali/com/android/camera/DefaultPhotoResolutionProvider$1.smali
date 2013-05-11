.class synthetic Lcom/android/camera/DefaultPhotoResolutionProvider$1;
.super Ljava/lang/Object;
.source "DefaultPhotoResolutionProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/DefaultPhotoResolutionProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$android$camera$CameraType:[I

.field static final synthetic $SwitchMap$com$android$camera$DisplayDevice$ScreenRatio:[I

.field static final synthetic $SwitchMap$com$android$camera$HTCCameraSensor$Sensor_Type:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/android/camera/DisplayDevice$ScreenRatio;->values()[Lcom/android/camera/DisplayDevice$ScreenRatio;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/camera/DefaultPhotoResolutionProvider$1;->$SwitchMap$com$android$camera$DisplayDevice$ScreenRatio:[I

    :try_start_0
    sget-object v0, Lcom/android/camera/DefaultPhotoResolutionProvider$1;->$SwitchMap$com$android$camera$DisplayDevice$ScreenRatio:[I

    sget-object v1, Lcom/android/camera/DisplayDevice$ScreenRatio;->Ratio_16_9:Lcom/android/camera/DisplayDevice$ScreenRatio;

    invoke-virtual {v1}, Lcom/android/camera/DisplayDevice$ScreenRatio;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_6

    :goto_0
    :try_start_1
    sget-object v0, Lcom/android/camera/DefaultPhotoResolutionProvider$1;->$SwitchMap$com$android$camera$DisplayDevice$ScreenRatio:[I

    sget-object v1, Lcom/android/camera/DisplayDevice$ScreenRatio;->Ratio_5_3:Lcom/android/camera/DisplayDevice$ScreenRatio;

    invoke-virtual {v1}, Lcom/android/camera/DisplayDevice$ScreenRatio;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_5

    :goto_1
    invoke-static {}, Lcom/android/camera/HTCCameraSensor$Sensor_Type;->values()[Lcom/android/camera/HTCCameraSensor$Sensor_Type;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/camera/DefaultPhotoResolutionProvider$1;->$SwitchMap$com$android$camera$HTCCameraSensor$Sensor_Type:[I

    :try_start_2
    sget-object v0, Lcom/android/camera/DefaultPhotoResolutionProvider$1;->$SwitchMap$com$android$camera$HTCCameraSensor$Sensor_Type:[I

    sget-object v1, Lcom/android/camera/HTCCameraSensor$Sensor_Type;->SENSOR_8M:Lcom/android/camera/HTCCameraSensor$Sensor_Type;

    invoke-virtual {v1}, Lcom/android/camera/HTCCameraSensor$Sensor_Type;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_4

    :goto_2
    :try_start_3
    sget-object v0, Lcom/android/camera/DefaultPhotoResolutionProvider$1;->$SwitchMap$com$android$camera$HTCCameraSensor$Sensor_Type:[I

    sget-object v1, Lcom/android/camera/HTCCameraSensor$Sensor_Type;->SENSOR_5M:Lcom/android/camera/HTCCameraSensor$Sensor_Type;

    invoke-virtual {v1}, Lcom/android/camera/HTCCameraSensor$Sensor_Type;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :goto_3
    invoke-static {}, Lcom/android/camera/CameraType;->values()[Lcom/android/camera/CameraType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/camera/DefaultPhotoResolutionProvider$1;->$SwitchMap$com$android$camera$CameraType:[I

    :try_start_4
    sget-object v0, Lcom/android/camera/DefaultPhotoResolutionProvider$1;->$SwitchMap$com$android$camera$CameraType:[I

    sget-object v1, Lcom/android/camera/CameraType;->Main:Lcom/android/camera/CameraType;

    invoke-virtual {v1}, Lcom/android/camera/CameraType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_2

    :goto_4
    :try_start_5
    sget-object v0, Lcom/android/camera/DefaultPhotoResolutionProvider$1;->$SwitchMap$com$android$camera$CameraType:[I

    sget-object v1, Lcom/android/camera/CameraType;->Main3D:Lcom/android/camera/CameraType;

    invoke-virtual {v1}, Lcom/android/camera/CameraType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_1

    :goto_5
    :try_start_6
    sget-object v0, Lcom/android/camera/DefaultPhotoResolutionProvider$1;->$SwitchMap$com$android$camera$CameraType:[I

    sget-object v1, Lcom/android/camera/CameraType;->Front:Lcom/android/camera/CameraType;

    invoke-virtual {v1}, Lcom/android/camera/CameraType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_0

    :goto_6
    return-void

    :catch_0
    move-exception v0

    goto :goto_6

    :catch_1
    move-exception v0

    goto :goto_5

    :catch_2
    move-exception v0

    goto :goto_4

    :catch_3
    move-exception v0

    goto :goto_3

    :catch_4
    move-exception v0

    goto :goto_2

    :catch_5
    move-exception v0

    goto :goto_1

    :catch_6
    move-exception v0

    goto :goto_0
.end method
