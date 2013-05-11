.class public Lcom/android/camera/MediaRecorderInfoEventArgs;
.super Lcom/android/camera/event/EventArgs;
.source "MediaRecorderInfoEventArgs.java"


# instance fields
.field public final extra:I

.field public final mediaRecorder:Landroid/media/MediaRecorder;

.field public final what:I


# direct methods
.method public constructor <init>(Landroid/media/MediaRecorder;II)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/event/EventArgs;-><init>()V

    iput-object p1, p0, Lcom/android/camera/MediaRecorderInfoEventArgs;->mediaRecorder:Landroid/media/MediaRecorder;

    iput p2, p0, Lcom/android/camera/MediaRecorderInfoEventArgs;->what:I

    iput p3, p0, Lcom/android/camera/MediaRecorderInfoEventArgs;->extra:I

    return-void
.end method
