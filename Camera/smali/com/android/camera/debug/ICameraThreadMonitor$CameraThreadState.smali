.class public final enum Lcom/android/camera/debug/ICameraThreadMonitor$CameraThreadState;
.super Ljava/lang/Enum;
.source "ICameraThreadMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/debug/ICameraThreadMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CameraThreadState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/camera/debug/ICameraThreadMonitor$CameraThreadState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/camera/debug/ICameraThreadMonitor$CameraThreadState;

.field public static final enum BlockedInCameraDriver:Lcom/android/camera/debug/ICameraThreadMonitor$CameraThreadState;

.field public static final enum BlockedInMediaRecorder:Lcom/android/camera/debug/ICameraThreadMonitor$CameraThreadState;

.field public static final enum BlockedInUnknownPosition:Lcom/android/camera/debug/ICameraThreadMonitor$CameraThreadState;

.field public static final enum Running:Lcom/android/camera/debug/ICameraThreadMonitor$CameraThreadState;

.field public static final enum Unknown:Lcom/android/camera/debug/ICameraThreadMonitor$CameraThreadState;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/android/camera/debug/ICameraThreadMonitor$CameraThreadState;

    const-string v1, "Unknown"

    invoke-direct {v0, v1, v2}, Lcom/android/camera/debug/ICameraThreadMonitor$CameraThreadState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/debug/ICameraThreadMonitor$CameraThreadState;->Unknown:Lcom/android/camera/debug/ICameraThreadMonitor$CameraThreadState;

    new-instance v0, Lcom/android/camera/debug/ICameraThreadMonitor$CameraThreadState;

    const-string v1, "Running"

    invoke-direct {v0, v1, v3}, Lcom/android/camera/debug/ICameraThreadMonitor$CameraThreadState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/debug/ICameraThreadMonitor$CameraThreadState;->Running:Lcom/android/camera/debug/ICameraThreadMonitor$CameraThreadState;

    new-instance v0, Lcom/android/camera/debug/ICameraThreadMonitor$CameraThreadState;

    const-string v1, "BlockedInCameraDriver"

    invoke-direct {v0, v1, v4}, Lcom/android/camera/debug/ICameraThreadMonitor$CameraThreadState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/debug/ICameraThreadMonitor$CameraThreadState;->BlockedInCameraDriver:Lcom/android/camera/debug/ICameraThreadMonitor$CameraThreadState;

    new-instance v0, Lcom/android/camera/debug/ICameraThreadMonitor$CameraThreadState;

    const-string v1, "BlockedInMediaRecorder"

    invoke-direct {v0, v1, v5}, Lcom/android/camera/debug/ICameraThreadMonitor$CameraThreadState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/debug/ICameraThreadMonitor$CameraThreadState;->BlockedInMediaRecorder:Lcom/android/camera/debug/ICameraThreadMonitor$CameraThreadState;

    new-instance v0, Lcom/android/camera/debug/ICameraThreadMonitor$CameraThreadState;

    const-string v1, "BlockedInUnknownPosition"

    invoke-direct {v0, v1, v6}, Lcom/android/camera/debug/ICameraThreadMonitor$CameraThreadState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/debug/ICameraThreadMonitor$CameraThreadState;->BlockedInUnknownPosition:Lcom/android/camera/debug/ICameraThreadMonitor$CameraThreadState;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/camera/debug/ICameraThreadMonitor$CameraThreadState;

    sget-object v1, Lcom/android/camera/debug/ICameraThreadMonitor$CameraThreadState;->Unknown:Lcom/android/camera/debug/ICameraThreadMonitor$CameraThreadState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/camera/debug/ICameraThreadMonitor$CameraThreadState;->Running:Lcom/android/camera/debug/ICameraThreadMonitor$CameraThreadState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/camera/debug/ICameraThreadMonitor$CameraThreadState;->BlockedInCameraDriver:Lcom/android/camera/debug/ICameraThreadMonitor$CameraThreadState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/camera/debug/ICameraThreadMonitor$CameraThreadState;->BlockedInMediaRecorder:Lcom/android/camera/debug/ICameraThreadMonitor$CameraThreadState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/camera/debug/ICameraThreadMonitor$CameraThreadState;->BlockedInUnknownPosition:Lcom/android/camera/debug/ICameraThreadMonitor$CameraThreadState;

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/camera/debug/ICameraThreadMonitor$CameraThreadState;->$VALUES:[Lcom/android/camera/debug/ICameraThreadMonitor$CameraThreadState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/camera/debug/ICameraThreadMonitor$CameraThreadState;
    .locals 1

    const-class v0, Lcom/android/camera/debug/ICameraThreadMonitor$CameraThreadState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/camera/debug/ICameraThreadMonitor$CameraThreadState;

    return-object v0
.end method

.method public static values()[Lcom/android/camera/debug/ICameraThreadMonitor$CameraThreadState;
    .locals 1

    sget-object v0, Lcom/android/camera/debug/ICameraThreadMonitor$CameraThreadState;->$VALUES:[Lcom/android/camera/debug/ICameraThreadMonitor$CameraThreadState;

    invoke-virtual {v0}, [Lcom/android/camera/debug/ICameraThreadMonitor$CameraThreadState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/camera/debug/ICameraThreadMonitor$CameraThreadState;

    return-object v0
.end method
