.class public final enum Lcom/android/camera/CameraOpenFailedReason;
.super Ljava/lang/Enum;
.source "CameraOpenFailedReason.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/camera/CameraOpenFailedReason;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/camera/CameraOpenFailedReason;

.field public static final enum CameraHWOpenFail:Lcom/android/camera/CameraOpenFailedReason;

.field public static final enum CameraInNoMem:Lcom/android/camera/CameraOpenFailedReason;

.field public static final enum CameraPolicyDisabled:Lcom/android/camera/CameraOpenFailedReason;

.field public static final enum CameraResourceOccupy:Lcom/android/camera/CameraOpenFailedReason;

.field public static final enum InvalidCamera:Lcom/android/camera/CameraOpenFailedReason;

.field public static final enum LowPower:Lcom/android/camera/CameraOpenFailedReason;

.field public static final enum LowPowerDualModeCalling:Lcom/android/camera/CameraOpenFailedReason;

.field public static final enum LowPowerRestrict3D:Lcom/android/camera/CameraOpenFailedReason;

.field public static final enum NoToken:Lcom/android/camera/CameraOpenFailedReason;

.field public static final enum Unknown:Lcom/android/camera/CameraOpenFailedReason;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/android/camera/CameraOpenFailedReason;

    const-string v1, "Unknown"

    invoke-direct {v0, v1, v3}, Lcom/android/camera/CameraOpenFailedReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/CameraOpenFailedReason;->Unknown:Lcom/android/camera/CameraOpenFailedReason;

    new-instance v0, Lcom/android/camera/CameraOpenFailedReason;

    const-string v1, "NoToken"

    invoke-direct {v0, v1, v4}, Lcom/android/camera/CameraOpenFailedReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/CameraOpenFailedReason;->NoToken:Lcom/android/camera/CameraOpenFailedReason;

    new-instance v0, Lcom/android/camera/CameraOpenFailedReason;

    const-string v1, "InvalidCamera"

    invoke-direct {v0, v1, v5}, Lcom/android/camera/CameraOpenFailedReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/CameraOpenFailedReason;->InvalidCamera:Lcom/android/camera/CameraOpenFailedReason;

    new-instance v0, Lcom/android/camera/CameraOpenFailedReason;

    const-string v1, "LowPower"

    invoke-direct {v0, v1, v6}, Lcom/android/camera/CameraOpenFailedReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/CameraOpenFailedReason;->LowPower:Lcom/android/camera/CameraOpenFailedReason;

    new-instance v0, Lcom/android/camera/CameraOpenFailedReason;

    const-string v1, "LowPowerRestrict3D"

    invoke-direct {v0, v1, v7}, Lcom/android/camera/CameraOpenFailedReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/CameraOpenFailedReason;->LowPowerRestrict3D:Lcom/android/camera/CameraOpenFailedReason;

    new-instance v0, Lcom/android/camera/CameraOpenFailedReason;

    const-string v1, "LowPowerDualModeCalling"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/camera/CameraOpenFailedReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/CameraOpenFailedReason;->LowPowerDualModeCalling:Lcom/android/camera/CameraOpenFailedReason;

    new-instance v0, Lcom/android/camera/CameraOpenFailedReason;

    const-string v1, "CameraResourceOccupy"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/android/camera/CameraOpenFailedReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/CameraOpenFailedReason;->CameraResourceOccupy:Lcom/android/camera/CameraOpenFailedReason;

    new-instance v0, Lcom/android/camera/CameraOpenFailedReason;

    const-string v1, "CameraInNoMem"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/android/camera/CameraOpenFailedReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/CameraOpenFailedReason;->CameraInNoMem:Lcom/android/camera/CameraOpenFailedReason;

    new-instance v0, Lcom/android/camera/CameraOpenFailedReason;

    const-string v1, "CameraHWOpenFail"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/android/camera/CameraOpenFailedReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/CameraOpenFailedReason;->CameraHWOpenFail:Lcom/android/camera/CameraOpenFailedReason;

    new-instance v0, Lcom/android/camera/CameraOpenFailedReason;

    const-string v1, "CameraPolicyDisabled"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/android/camera/CameraOpenFailedReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/CameraOpenFailedReason;->CameraPolicyDisabled:Lcom/android/camera/CameraOpenFailedReason;

    const/16 v0, 0xa

    new-array v0, v0, [Lcom/android/camera/CameraOpenFailedReason;

    sget-object v1, Lcom/android/camera/CameraOpenFailedReason;->Unknown:Lcom/android/camera/CameraOpenFailedReason;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/camera/CameraOpenFailedReason;->NoToken:Lcom/android/camera/CameraOpenFailedReason;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/camera/CameraOpenFailedReason;->InvalidCamera:Lcom/android/camera/CameraOpenFailedReason;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/camera/CameraOpenFailedReason;->LowPower:Lcom/android/camera/CameraOpenFailedReason;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/camera/CameraOpenFailedReason;->LowPowerRestrict3D:Lcom/android/camera/CameraOpenFailedReason;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/android/camera/CameraOpenFailedReason;->LowPowerDualModeCalling:Lcom/android/camera/CameraOpenFailedReason;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/camera/CameraOpenFailedReason;->CameraResourceOccupy:Lcom/android/camera/CameraOpenFailedReason;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/android/camera/CameraOpenFailedReason;->CameraInNoMem:Lcom/android/camera/CameraOpenFailedReason;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/android/camera/CameraOpenFailedReason;->CameraHWOpenFail:Lcom/android/camera/CameraOpenFailedReason;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/android/camera/CameraOpenFailedReason;->CameraPolicyDisabled:Lcom/android/camera/CameraOpenFailedReason;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/camera/CameraOpenFailedReason;->$VALUES:[Lcom/android/camera/CameraOpenFailedReason;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/camera/CameraOpenFailedReason;
    .locals 1

    const-class v0, Lcom/android/camera/CameraOpenFailedReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/camera/CameraOpenFailedReason;

    return-object v0
.end method

.method public static values()[Lcom/android/camera/CameraOpenFailedReason;
    .locals 1

    sget-object v0, Lcom/android/camera/CameraOpenFailedReason;->$VALUES:[Lcom/android/camera/CameraOpenFailedReason;

    invoke-virtual {v0}, [Lcom/android/camera/CameraOpenFailedReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/camera/CameraOpenFailedReason;

    return-object v0
.end method
