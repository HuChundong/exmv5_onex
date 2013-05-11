.class public final enum Lcom/android/camera/RecordingState;
.super Ljava/lang/Enum;
.source "RecordingState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/camera/RecordingState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/camera/RecordingState;

.field public static final enum Preparing:Lcom/android/camera/RecordingState;

.field public static final enum Ready:Lcom/android/camera/RecordingState;

.field public static final enum Reviewing:Lcom/android/camera/RecordingState;

.field public static final enum Started:Lcom/android/camera/RecordingState;

.field public static final enum Starting:Lcom/android/camera/RecordingState;

.field public static final enum Stopping:Lcom/android/camera/RecordingState;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/android/camera/RecordingState;

    const-string v1, "Preparing"

    invoke-direct {v0, v1, v3}, Lcom/android/camera/RecordingState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/RecordingState;->Preparing:Lcom/android/camera/RecordingState;

    new-instance v0, Lcom/android/camera/RecordingState;

    const-string v1, "Ready"

    invoke-direct {v0, v1, v4}, Lcom/android/camera/RecordingState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/RecordingState;->Ready:Lcom/android/camera/RecordingState;

    new-instance v0, Lcom/android/camera/RecordingState;

    const-string v1, "Starting"

    invoke-direct {v0, v1, v5}, Lcom/android/camera/RecordingState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/RecordingState;->Starting:Lcom/android/camera/RecordingState;

    new-instance v0, Lcom/android/camera/RecordingState;

    const-string v1, "Started"

    invoke-direct {v0, v1, v6}, Lcom/android/camera/RecordingState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/RecordingState;->Started:Lcom/android/camera/RecordingState;

    new-instance v0, Lcom/android/camera/RecordingState;

    const-string v1, "Stopping"

    invoke-direct {v0, v1, v7}, Lcom/android/camera/RecordingState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/RecordingState;->Stopping:Lcom/android/camera/RecordingState;

    new-instance v0, Lcom/android/camera/RecordingState;

    const-string v1, "Reviewing"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/camera/RecordingState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/RecordingState;->Reviewing:Lcom/android/camera/RecordingState;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/android/camera/RecordingState;

    sget-object v1, Lcom/android/camera/RecordingState;->Preparing:Lcom/android/camera/RecordingState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/camera/RecordingState;->Ready:Lcom/android/camera/RecordingState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/camera/RecordingState;->Starting:Lcom/android/camera/RecordingState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/camera/RecordingState;->Started:Lcom/android/camera/RecordingState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/camera/RecordingState;->Stopping:Lcom/android/camera/RecordingState;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/android/camera/RecordingState;->Reviewing:Lcom/android/camera/RecordingState;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/camera/RecordingState;->$VALUES:[Lcom/android/camera/RecordingState;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/camera/RecordingState;
    .locals 1

    const-class v0, Lcom/android/camera/RecordingState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/camera/RecordingState;

    return-object v0
.end method

.method public static values()[Lcom/android/camera/RecordingState;
    .locals 1

    sget-object v0, Lcom/android/camera/RecordingState;->$VALUES:[Lcom/android/camera/RecordingState;

    invoke-virtual {v0}, [Lcom/android/camera/RecordingState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/camera/RecordingState;

    return-object v0
.end method
