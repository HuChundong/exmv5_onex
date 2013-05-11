.class Lcom/android/camera/CameraThread$ModeChangeHandle;
.super Lcom/android/camera/SessionHandle;
.source "CameraThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/CameraThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ModeChangeHandle"
.end annotation


# instance fields
.field public final targetMode:Lcom/android/camera/CameraMode;


# direct methods
.method public constructor <init>(Lcom/android/camera/CameraMode;)V
    .locals 1

    const-string v0, "ChangeMode"

    invoke-direct {p0, v0}, Lcom/android/camera/SessionHandle;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/camera/CameraThread$ModeChangeHandle;->targetMode:Lcom/android/camera/CameraMode;

    return-void
.end method
