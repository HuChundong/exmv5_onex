.class public final enum Lcom/android/camera/RecordingFailedReason;
.super Ljava/lang/Enum;
.source "RecordingFailedReason.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/camera/RecordingFailedReason;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/camera/RecordingFailedReason;

.field public static final enum LowInternalDataSpace:Lcom/android/camera/RecordingFailedReason;

.field public static final enum StorageError:Lcom/android/camera/RecordingFailedReason;

.field public static final enum Unknown:Lcom/android/camera/RecordingFailedReason;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/android/camera/RecordingFailedReason;

    const-string v1, "Unknown"

    invoke-direct {v0, v1, v2}, Lcom/android/camera/RecordingFailedReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/RecordingFailedReason;->Unknown:Lcom/android/camera/RecordingFailedReason;

    new-instance v0, Lcom/android/camera/RecordingFailedReason;

    const-string v1, "StorageError"

    invoke-direct {v0, v1, v3}, Lcom/android/camera/RecordingFailedReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/RecordingFailedReason;->StorageError:Lcom/android/camera/RecordingFailedReason;

    new-instance v0, Lcom/android/camera/RecordingFailedReason;

    const-string v1, "LowInternalDataSpace"

    invoke-direct {v0, v1, v4}, Lcom/android/camera/RecordingFailedReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/RecordingFailedReason;->LowInternalDataSpace:Lcom/android/camera/RecordingFailedReason;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/camera/RecordingFailedReason;

    sget-object v1, Lcom/android/camera/RecordingFailedReason;->Unknown:Lcom/android/camera/RecordingFailedReason;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/camera/RecordingFailedReason;->StorageError:Lcom/android/camera/RecordingFailedReason;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/camera/RecordingFailedReason;->LowInternalDataSpace:Lcom/android/camera/RecordingFailedReason;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/camera/RecordingFailedReason;->$VALUES:[Lcom/android/camera/RecordingFailedReason;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/camera/RecordingFailedReason;
    .locals 1

    const-class v0, Lcom/android/camera/RecordingFailedReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/camera/RecordingFailedReason;

    return-object v0
.end method

.method public static values()[Lcom/android/camera/RecordingFailedReason;
    .locals 1

    sget-object v0, Lcom/android/camera/RecordingFailedReason;->$VALUES:[Lcom/android/camera/RecordingFailedReason;

    invoke-virtual {v0}, [Lcom/android/camera/RecordingFailedReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/camera/RecordingFailedReason;

    return-object v0
.end method
