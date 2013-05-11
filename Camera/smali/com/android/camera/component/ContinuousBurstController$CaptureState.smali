.class final enum Lcom/android/camera/component/ContinuousBurstController$CaptureState;
.super Ljava/lang/Enum;
.source "ContinuousBurstController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/component/ContinuousBurstController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "CaptureState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/camera/component/ContinuousBurstController$CaptureState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/camera/component/ContinuousBurstController$CaptureState;

.field public static final enum Capturing:Lcom/android/camera/component/ContinuousBurstController$CaptureState;

.field public static final enum Ready:Lcom/android/camera/component/ContinuousBurstController$CaptureState;

.field public static final enum Stopping:Lcom/android/camera/component/ContinuousBurstController$CaptureState;

.field public static final enum Unavailable:Lcom/android/camera/component/ContinuousBurstController$CaptureState;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/android/camera/component/ContinuousBurstController$CaptureState;

    const-string v1, "Unavailable"

    invoke-direct {v0, v1, v2}, Lcom/android/camera/component/ContinuousBurstController$CaptureState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/component/ContinuousBurstController$CaptureState;->Unavailable:Lcom/android/camera/component/ContinuousBurstController$CaptureState;

    new-instance v0, Lcom/android/camera/component/ContinuousBurstController$CaptureState;

    const-string v1, "Ready"

    invoke-direct {v0, v1, v3}, Lcom/android/camera/component/ContinuousBurstController$CaptureState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/component/ContinuousBurstController$CaptureState;->Ready:Lcom/android/camera/component/ContinuousBurstController$CaptureState;

    new-instance v0, Lcom/android/camera/component/ContinuousBurstController$CaptureState;

    const-string v1, "Capturing"

    invoke-direct {v0, v1, v4}, Lcom/android/camera/component/ContinuousBurstController$CaptureState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/component/ContinuousBurstController$CaptureState;->Capturing:Lcom/android/camera/component/ContinuousBurstController$CaptureState;

    new-instance v0, Lcom/android/camera/component/ContinuousBurstController$CaptureState;

    const-string v1, "Stopping"

    invoke-direct {v0, v1, v5}, Lcom/android/camera/component/ContinuousBurstController$CaptureState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/component/ContinuousBurstController$CaptureState;->Stopping:Lcom/android/camera/component/ContinuousBurstController$CaptureState;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/camera/component/ContinuousBurstController$CaptureState;

    sget-object v1, Lcom/android/camera/component/ContinuousBurstController$CaptureState;->Unavailable:Lcom/android/camera/component/ContinuousBurstController$CaptureState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/camera/component/ContinuousBurstController$CaptureState;->Ready:Lcom/android/camera/component/ContinuousBurstController$CaptureState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/camera/component/ContinuousBurstController$CaptureState;->Capturing:Lcom/android/camera/component/ContinuousBurstController$CaptureState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/camera/component/ContinuousBurstController$CaptureState;->Stopping:Lcom/android/camera/component/ContinuousBurstController$CaptureState;

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/camera/component/ContinuousBurstController$CaptureState;->$VALUES:[Lcom/android/camera/component/ContinuousBurstController$CaptureState;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/camera/component/ContinuousBurstController$CaptureState;
    .locals 1

    const-class v0, Lcom/android/camera/component/ContinuousBurstController$CaptureState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/camera/component/ContinuousBurstController$CaptureState;

    return-object v0
.end method

.method public static values()[Lcom/android/camera/component/ContinuousBurstController$CaptureState;
    .locals 1

    sget-object v0, Lcom/android/camera/component/ContinuousBurstController$CaptureState;->$VALUES:[Lcom/android/camera/component/ContinuousBurstController$CaptureState;

    invoke-virtual {v0}, [Lcom/android/camera/component/ContinuousBurstController$CaptureState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/camera/component/ContinuousBurstController$CaptureState;

    return-object v0
.end method
