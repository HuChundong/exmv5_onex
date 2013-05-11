.class public final enum Lcom/android/camera/imaging/PixelFormat;
.super Ljava/lang/Enum;
.source "PixelFormat.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/camera/imaging/PixelFormat;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/camera/imaging/PixelFormat;

.field public static final enum Argb32:Lcom/android/camera/imaging/PixelFormat;

.field public static final enum Rgb16:Lcom/android/camera/imaging/PixelFormat;

.field public static final enum Unknown:Lcom/android/camera/imaging/PixelFormat;

.field public static final enum Yvu420Sp:Lcom/android/camera/imaging/PixelFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/android/camera/imaging/PixelFormat;

    const-string v1, "Unknown"

    invoke-direct {v0, v1, v2}, Lcom/android/camera/imaging/PixelFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/imaging/PixelFormat;->Unknown:Lcom/android/camera/imaging/PixelFormat;

    new-instance v0, Lcom/android/camera/imaging/PixelFormat;

    const-string v1, "Argb32"

    invoke-direct {v0, v1, v3}, Lcom/android/camera/imaging/PixelFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/imaging/PixelFormat;->Argb32:Lcom/android/camera/imaging/PixelFormat;

    new-instance v0, Lcom/android/camera/imaging/PixelFormat;

    const-string v1, "Rgb16"

    invoke-direct {v0, v1, v4}, Lcom/android/camera/imaging/PixelFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/imaging/PixelFormat;->Rgb16:Lcom/android/camera/imaging/PixelFormat;

    new-instance v0, Lcom/android/camera/imaging/PixelFormat;

    const-string v1, "Yvu420Sp"

    invoke-direct {v0, v1, v5}, Lcom/android/camera/imaging/PixelFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/imaging/PixelFormat;->Yvu420Sp:Lcom/android/camera/imaging/PixelFormat;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/camera/imaging/PixelFormat;

    sget-object v1, Lcom/android/camera/imaging/PixelFormat;->Unknown:Lcom/android/camera/imaging/PixelFormat;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/camera/imaging/PixelFormat;->Argb32:Lcom/android/camera/imaging/PixelFormat;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/camera/imaging/PixelFormat;->Rgb16:Lcom/android/camera/imaging/PixelFormat;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/camera/imaging/PixelFormat;->Yvu420Sp:Lcom/android/camera/imaging/PixelFormat;

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/camera/imaging/PixelFormat;->$VALUES:[Lcom/android/camera/imaging/PixelFormat;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/camera/imaging/PixelFormat;
    .locals 1

    const-class v0, Lcom/android/camera/imaging/PixelFormat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/camera/imaging/PixelFormat;

    return-object v0
.end method

.method public static values()[Lcom/android/camera/imaging/PixelFormat;
    .locals 1

    sget-object v0, Lcom/android/camera/imaging/PixelFormat;->$VALUES:[Lcom/android/camera/imaging/PixelFormat;

    invoke-virtual {v0}, [Lcom/android/camera/imaging/PixelFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/camera/imaging/PixelFormat;

    return-object v0
.end method
