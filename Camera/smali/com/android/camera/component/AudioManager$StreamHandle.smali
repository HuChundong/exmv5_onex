.class Lcom/android/camera/component/AudioManager$StreamHandle;
.super Lcom/android/camera/Handle;
.source "AudioManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/component/AudioManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StreamHandle"
.end annotation


# instance fields
.field public final audioFocus:Z

.field public final loopCount:I

.field public final sound:Lcom/android/camera/component/AudioManager$SoundHandle;

.field public streamId:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/android/camera/component/AudioManager$SoundHandle;IZ)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/Handle;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/android/camera/component/AudioManager$StreamHandle;->sound:Lcom/android/camera/component/AudioManager$SoundHandle;

    iput p3, p0, Lcom/android/camera/component/AudioManager$StreamHandle;->loopCount:I

    iput-boolean p4, p0, Lcom/android/camera/component/AudioManager$StreamHandle;->audioFocus:Z

    return-void
.end method
