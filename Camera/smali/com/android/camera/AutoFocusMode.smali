.class public final enum Lcom/android/camera/AutoFocusMode;
.super Ljava/lang/Enum;
.source "AutoFocusMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/camera/AutoFocusMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/camera/AutoFocusMode;

.field public static final enum BeforeCapture:Lcom/android/camera/AutoFocusMode;

.field public static final enum Face:Lcom/android/camera/AutoFocusMode;

.field public static final enum LockFocus:Lcom/android/camera/AutoFocusMode;

.field public static final enum Sensor:Lcom/android/camera/AutoFocusMode;

.field public static final enum Touch:Lcom/android/camera/AutoFocusMode;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/android/camera/AutoFocusMode;

    const-string v1, "Touch"

    invoke-direct {v0, v1, v2}, Lcom/android/camera/AutoFocusMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/AutoFocusMode;->Touch:Lcom/android/camera/AutoFocusMode;

    new-instance v0, Lcom/android/camera/AutoFocusMode;

    const-string v1, "Sensor"

    invoke-direct {v0, v1, v3}, Lcom/android/camera/AutoFocusMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/AutoFocusMode;->Sensor:Lcom/android/camera/AutoFocusMode;

    new-instance v0, Lcom/android/camera/AutoFocusMode;

    const-string v1, "Face"

    invoke-direct {v0, v1, v4}, Lcom/android/camera/AutoFocusMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/AutoFocusMode;->Face:Lcom/android/camera/AutoFocusMode;

    new-instance v0, Lcom/android/camera/AutoFocusMode;

    const-string v1, "BeforeCapture"

    invoke-direct {v0, v1, v5}, Lcom/android/camera/AutoFocusMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/AutoFocusMode;->BeforeCapture:Lcom/android/camera/AutoFocusMode;

    new-instance v0, Lcom/android/camera/AutoFocusMode;

    const-string v1, "LockFocus"

    invoke-direct {v0, v1, v6}, Lcom/android/camera/AutoFocusMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/AutoFocusMode;->LockFocus:Lcom/android/camera/AutoFocusMode;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/camera/AutoFocusMode;

    sget-object v1, Lcom/android/camera/AutoFocusMode;->Touch:Lcom/android/camera/AutoFocusMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/camera/AutoFocusMode;->Sensor:Lcom/android/camera/AutoFocusMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/camera/AutoFocusMode;->Face:Lcom/android/camera/AutoFocusMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/camera/AutoFocusMode;->BeforeCapture:Lcom/android/camera/AutoFocusMode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/camera/AutoFocusMode;->LockFocus:Lcom/android/camera/AutoFocusMode;

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/camera/AutoFocusMode;->$VALUES:[Lcom/android/camera/AutoFocusMode;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/camera/AutoFocusMode;
    .locals 1

    const-class v0, Lcom/android/camera/AutoFocusMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/camera/AutoFocusMode;

    return-object v0
.end method

.method public static values()[Lcom/android/camera/AutoFocusMode;
    .locals 1

    sget-object v0, Lcom/android/camera/AutoFocusMode;->$VALUES:[Lcom/android/camera/AutoFocusMode;

    invoke-virtual {v0}, [Lcom/android/camera/AutoFocusMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/camera/AutoFocusMode;

    return-object v0
.end method
