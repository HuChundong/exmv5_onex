.class public final enum Lcom/android/camera/CameraPreviewStartResult;
.super Ljava/lang/Enum;
.source "CameraPreviewStartResult.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/camera/CameraPreviewStartResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/camera/CameraPreviewStartResult;

.field public static final enum CameraHWOpenFail:Lcom/android/camera/CameraPreviewStartResult;

.field public static final enum CameraInNoMem:Lcom/android/camera/CameraPreviewStartResult;

.field public static final enum CameraOpenFailed:Lcom/android/camera/CameraPreviewStartResult;

.field public static final enum CameraPolicyDisabled:Lcom/android/camera/CameraPreviewStartResult;

.field public static final enum CameraResourceOccupy:Lcom/android/camera/CameraPreviewStartResult;

.field public static final enum Canceled:Lcom/android/camera/CameraPreviewStartResult;

.field public static final enum InvalidState:Lcom/android/camera/CameraPreviewStartResult;

.field public static final enum LowPower:Lcom/android/camera/CameraPreviewStartResult;

.field public static final enum LowPowerDualModeCalling:Lcom/android/camera/CameraPreviewStartResult;

.field public static final enum LowPowerRestrict3D:Lcom/android/camera/CameraPreviewStartResult;

.field public static final enum NoCameraToken:Lcom/android/camera/CameraPreviewStartResult;

.field public static final enum Successful:Lcom/android/camera/CameraPreviewStartResult;

.field public static final enum UnknownError:Lcom/android/camera/CameraPreviewStartResult;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/android/camera/CameraPreviewStartResult;

    const-string v1, "Successful"

    invoke-direct {v0, v1, v3}, Lcom/android/camera/CameraPreviewStartResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/CameraPreviewStartResult;->Successful:Lcom/android/camera/CameraPreviewStartResult;

    new-instance v0, Lcom/android/camera/CameraPreviewStartResult;

    const-string v1, "Canceled"

    invoke-direct {v0, v1, v4}, Lcom/android/camera/CameraPreviewStartResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/CameraPreviewStartResult;->Canceled:Lcom/android/camera/CameraPreviewStartResult;

    new-instance v0, Lcom/android/camera/CameraPreviewStartResult;

    const-string v1, "UnknownError"

    invoke-direct {v0, v1, v5}, Lcom/android/camera/CameraPreviewStartResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/CameraPreviewStartResult;->UnknownError:Lcom/android/camera/CameraPreviewStartResult;

    new-instance v0, Lcom/android/camera/CameraPreviewStartResult;

    const-string v1, "NoCameraToken"

    invoke-direct {v0, v1, v6}, Lcom/android/camera/CameraPreviewStartResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/CameraPreviewStartResult;->NoCameraToken:Lcom/android/camera/CameraPreviewStartResult;

    new-instance v0, Lcom/android/camera/CameraPreviewStartResult;

    const-string v1, "InvalidState"

    invoke-direct {v0, v1, v7}, Lcom/android/camera/CameraPreviewStartResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/CameraPreviewStartResult;->InvalidState:Lcom/android/camera/CameraPreviewStartResult;

    new-instance v0, Lcom/android/camera/CameraPreviewStartResult;

    const-string v1, "CameraOpenFailed"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/camera/CameraPreviewStartResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/CameraPreviewStartResult;->CameraOpenFailed:Lcom/android/camera/CameraPreviewStartResult;

    new-instance v0, Lcom/android/camera/CameraPreviewStartResult;

    const-string v1, "LowPower"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/android/camera/CameraPreviewStartResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/CameraPreviewStartResult;->LowPower:Lcom/android/camera/CameraPreviewStartResult;

    new-instance v0, Lcom/android/camera/CameraPreviewStartResult;

    const-string v1, "LowPowerRestrict3D"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/android/camera/CameraPreviewStartResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/CameraPreviewStartResult;->LowPowerRestrict3D:Lcom/android/camera/CameraPreviewStartResult;

    new-instance v0, Lcom/android/camera/CameraPreviewStartResult;

    const-string v1, "LowPowerDualModeCalling"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/android/camera/CameraPreviewStartResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/CameraPreviewStartResult;->LowPowerDualModeCalling:Lcom/android/camera/CameraPreviewStartResult;

    new-instance v0, Lcom/android/camera/CameraPreviewStartResult;

    const-string v1, "CameraResourceOccupy"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/android/camera/CameraPreviewStartResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/CameraPreviewStartResult;->CameraResourceOccupy:Lcom/android/camera/CameraPreviewStartResult;

    new-instance v0, Lcom/android/camera/CameraPreviewStartResult;

    const-string v1, "CameraInNoMem"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/android/camera/CameraPreviewStartResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/CameraPreviewStartResult;->CameraInNoMem:Lcom/android/camera/CameraPreviewStartResult;

    new-instance v0, Lcom/android/camera/CameraPreviewStartResult;

    const-string v1, "CameraHWOpenFail"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/android/camera/CameraPreviewStartResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/CameraPreviewStartResult;->CameraHWOpenFail:Lcom/android/camera/CameraPreviewStartResult;

    new-instance v0, Lcom/android/camera/CameraPreviewStartResult;

    const-string v1, "CameraPolicyDisabled"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/android/camera/CameraPreviewStartResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/CameraPreviewStartResult;->CameraPolicyDisabled:Lcom/android/camera/CameraPreviewStartResult;

    const/16 v0, 0xd

    new-array v0, v0, [Lcom/android/camera/CameraPreviewStartResult;

    sget-object v1, Lcom/android/camera/CameraPreviewStartResult;->Successful:Lcom/android/camera/CameraPreviewStartResult;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/camera/CameraPreviewStartResult;->Canceled:Lcom/android/camera/CameraPreviewStartResult;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/camera/CameraPreviewStartResult;->UnknownError:Lcom/android/camera/CameraPreviewStartResult;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/camera/CameraPreviewStartResult;->NoCameraToken:Lcom/android/camera/CameraPreviewStartResult;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/camera/CameraPreviewStartResult;->InvalidState:Lcom/android/camera/CameraPreviewStartResult;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/android/camera/CameraPreviewStartResult;->CameraOpenFailed:Lcom/android/camera/CameraPreviewStartResult;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/camera/CameraPreviewStartResult;->LowPower:Lcom/android/camera/CameraPreviewStartResult;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/android/camera/CameraPreviewStartResult;->LowPowerRestrict3D:Lcom/android/camera/CameraPreviewStartResult;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/android/camera/CameraPreviewStartResult;->LowPowerDualModeCalling:Lcom/android/camera/CameraPreviewStartResult;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/android/camera/CameraPreviewStartResult;->CameraResourceOccupy:Lcom/android/camera/CameraPreviewStartResult;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/android/camera/CameraPreviewStartResult;->CameraInNoMem:Lcom/android/camera/CameraPreviewStartResult;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/android/camera/CameraPreviewStartResult;->CameraHWOpenFail:Lcom/android/camera/CameraPreviewStartResult;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/android/camera/CameraPreviewStartResult;->CameraPolicyDisabled:Lcom/android/camera/CameraPreviewStartResult;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/camera/CameraPreviewStartResult;->$VALUES:[Lcom/android/camera/CameraPreviewStartResult;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/camera/CameraPreviewStartResult;
    .locals 1

    const-class v0, Lcom/android/camera/CameraPreviewStartResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/camera/CameraPreviewStartResult;

    return-object v0
.end method

.method public static values()[Lcom/android/camera/CameraPreviewStartResult;
    .locals 1

    sget-object v0, Lcom/android/camera/CameraPreviewStartResult;->$VALUES:[Lcom/android/camera/CameraPreviewStartResult;

    invoke-virtual {v0}, [Lcom/android/camera/CameraPreviewStartResult;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/camera/CameraPreviewStartResult;

    return-object v0
.end method
