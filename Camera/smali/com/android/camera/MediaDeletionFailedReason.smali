.class public final enum Lcom/android/camera/MediaDeletionFailedReason;
.super Ljava/lang/Enum;
.source "MediaDeletionFailedReason.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/camera/MediaDeletionFailedReason;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/camera/MediaDeletionFailedReason;

.field public static final enum Unknown:Lcom/android/camera/MediaDeletionFailedReason;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Lcom/android/camera/MediaDeletionFailedReason;

    const-string v1, "Unknown"

    invoke-direct {v0, v1, v2}, Lcom/android/camera/MediaDeletionFailedReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/MediaDeletionFailedReason;->Unknown:Lcom/android/camera/MediaDeletionFailedReason;

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/android/camera/MediaDeletionFailedReason;

    sget-object v1, Lcom/android/camera/MediaDeletionFailedReason;->Unknown:Lcom/android/camera/MediaDeletionFailedReason;

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/camera/MediaDeletionFailedReason;->$VALUES:[Lcom/android/camera/MediaDeletionFailedReason;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/camera/MediaDeletionFailedReason;
    .locals 1

    const-class v0, Lcom/android/camera/MediaDeletionFailedReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/camera/MediaDeletionFailedReason;

    return-object v0
.end method

.method public static values()[Lcom/android/camera/MediaDeletionFailedReason;
    .locals 1

    sget-object v0, Lcom/android/camera/MediaDeletionFailedReason;->$VALUES:[Lcom/android/camera/MediaDeletionFailedReason;

    invoke-virtual {v0}, [Lcom/android/camera/MediaDeletionFailedReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/camera/MediaDeletionFailedReason;

    return-object v0
.end method
