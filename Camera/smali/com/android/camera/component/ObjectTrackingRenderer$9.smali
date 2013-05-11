.class synthetic Lcom/android/camera/component/ObjectTrackingRenderer$9;
.super Ljava/lang/Object;
.source "ObjectTrackingRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/component/ObjectTrackingRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$android$camera$ObjectTrackingInfoType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/android/camera/ObjectTrackingInfoType;->values()[Lcom/android/camera/ObjectTrackingInfoType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/camera/component/ObjectTrackingRenderer$9;->$SwitchMap$com$android$camera$ObjectTrackingInfoType:[I

    :try_start_0
    sget-object v0, Lcom/android/camera/component/ObjectTrackingRenderer$9;->$SwitchMap$com$android$camera$ObjectTrackingInfoType:[I

    sget-object v1, Lcom/android/camera/ObjectTrackingInfoType;->Face:Lcom/android/camera/ObjectTrackingInfoType;

    invoke-virtual {v1}, Lcom/android/camera/ObjectTrackingInfoType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
