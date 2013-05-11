.class public final enum Lcom/android/camera/DisplayDevice$FrontCameraPosition;
.super Ljava/lang/Enum;
.source "DisplayDevice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/DisplayDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FrontCameraPosition"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/camera/DisplayDevice$FrontCameraPosition;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/camera/DisplayDevice$FrontCameraPosition;

.field public static final enum Left:Lcom/android/camera/DisplayDevice$FrontCameraPosition;

.field public static final enum Right:Lcom/android/camera/DisplayDevice$FrontCameraPosition;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/android/camera/DisplayDevice$FrontCameraPosition;

    const-string v1, "Left"

    invoke-direct {v0, v1, v2}, Lcom/android/camera/DisplayDevice$FrontCameraPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/DisplayDevice$FrontCameraPosition;->Left:Lcom/android/camera/DisplayDevice$FrontCameraPosition;

    new-instance v0, Lcom/android/camera/DisplayDevice$FrontCameraPosition;

    const-string v1, "Right"

    invoke-direct {v0, v1, v3}, Lcom/android/camera/DisplayDevice$FrontCameraPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/DisplayDevice$FrontCameraPosition;->Right:Lcom/android/camera/DisplayDevice$FrontCameraPosition;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/camera/DisplayDevice$FrontCameraPosition;

    sget-object v1, Lcom/android/camera/DisplayDevice$FrontCameraPosition;->Left:Lcom/android/camera/DisplayDevice$FrontCameraPosition;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/camera/DisplayDevice$FrontCameraPosition;->Right:Lcom/android/camera/DisplayDevice$FrontCameraPosition;

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/camera/DisplayDevice$FrontCameraPosition;->$VALUES:[Lcom/android/camera/DisplayDevice$FrontCameraPosition;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/camera/DisplayDevice$FrontCameraPosition;
    .locals 1

    const-class v0, Lcom/android/camera/DisplayDevice$FrontCameraPosition;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/camera/DisplayDevice$FrontCameraPosition;

    return-object v0
.end method

.method public static values()[Lcom/android/camera/DisplayDevice$FrontCameraPosition;
    .locals 1

    sget-object v0, Lcom/android/camera/DisplayDevice$FrontCameraPosition;->$VALUES:[Lcom/android/camera/DisplayDevice$FrontCameraPosition;

    invoke-virtual {v0}, [Lcom/android/camera/DisplayDevice$FrontCameraPosition;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/camera/DisplayDevice$FrontCameraPosition;

    return-object v0
.end method
