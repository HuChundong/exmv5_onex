.class public Lcom/android/camera/MediaEventArgs;
.super Lcom/android/camera/event/EventArgs;
.source "MediaEventArgs.java"


# instance fields
.field public final captureHandle:Lcom/android/camera/CaptureHandle;

.field public final contentUri:Landroid/net/Uri;

.field public final deleteFailedReason:Lcom/android/camera/MediaDeletionFailedReason;

.field public final filePath:Lcom/android/camera/io/Path;

.field public final format:Lcom/android/camera/io/FileFormat;

.field public final isLastMedia:Z

.field public final saveFailedReason:Lcom/android/camera/io/MediaSaveFailedReason;

.field public final takenTime:J


# direct methods
.method public constructor <init>(Lcom/android/camera/CaptureHandle;Landroid/net/Uri;Lcom/android/camera/io/Path;Lcom/android/camera/io/FileFormat;JZ)V
    .locals 9

    const/4 v8, 0x0

    check-cast v8, Lcom/android/camera/io/MediaSaveFailedReason;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-wide v5, p5

    move/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lcom/android/camera/MediaEventArgs;-><init>(Lcom/android/camera/CaptureHandle;Landroid/net/Uri;Lcom/android/camera/io/Path;Lcom/android/camera/io/FileFormat;JZLcom/android/camera/io/MediaSaveFailedReason;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/CaptureHandle;Landroid/net/Uri;Lcom/android/camera/io/Path;Lcom/android/camera/io/FileFormat;JZLcom/android/camera/MediaDeletionFailedReason;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/event/EventArgs;-><init>()V

    iput-object p1, p0, Lcom/android/camera/MediaEventArgs;->captureHandle:Lcom/android/camera/CaptureHandle;

    iput-object p2, p0, Lcom/android/camera/MediaEventArgs;->contentUri:Landroid/net/Uri;

    iput-object p8, p0, Lcom/android/camera/MediaEventArgs;->deleteFailedReason:Lcom/android/camera/MediaDeletionFailedReason;

    iput-object p4, p0, Lcom/android/camera/MediaEventArgs;->format:Lcom/android/camera/io/FileFormat;

    iput-object p3, p0, Lcom/android/camera/MediaEventArgs;->filePath:Lcom/android/camera/io/Path;

    iput-boolean p7, p0, Lcom/android/camera/MediaEventArgs;->isLastMedia:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/MediaEventArgs;->saveFailedReason:Lcom/android/camera/io/MediaSaveFailedReason;

    iput-wide p5, p0, Lcom/android/camera/MediaEventArgs;->takenTime:J

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/CaptureHandle;Landroid/net/Uri;Lcom/android/camera/io/Path;Lcom/android/camera/io/FileFormat;JZLcom/android/camera/io/MediaSaveFailedReason;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/event/EventArgs;-><init>()V

    iput-object p1, p0, Lcom/android/camera/MediaEventArgs;->captureHandle:Lcom/android/camera/CaptureHandle;

    iput-object p2, p0, Lcom/android/camera/MediaEventArgs;->contentUri:Landroid/net/Uri;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/MediaEventArgs;->deleteFailedReason:Lcom/android/camera/MediaDeletionFailedReason;

    iput-object p4, p0, Lcom/android/camera/MediaEventArgs;->format:Lcom/android/camera/io/FileFormat;

    iput-object p3, p0, Lcom/android/camera/MediaEventArgs;->filePath:Lcom/android/camera/io/Path;

    iput-boolean p7, p0, Lcom/android/camera/MediaEventArgs;->isLastMedia:Z

    iput-object p8, p0, Lcom/android/camera/MediaEventArgs;->saveFailedReason:Lcom/android/camera/io/MediaSaveFailedReason;

    iput-wide p5, p0, Lcom/android/camera/MediaEventArgs;->takenTime:J

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/CaptureHandle;Landroid/net/Uri;Lcom/android/camera/io/Path;Lcom/android/camera/io/FileFormat;Z)V
    .locals 7

    const/4 v6, 0x0

    check-cast v6, Lcom/android/camera/io/MediaSaveFailedReason;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/MediaEventArgs;-><init>(Lcom/android/camera/CaptureHandle;Landroid/net/Uri;Lcom/android/camera/io/Path;Lcom/android/camera/io/FileFormat;ZLcom/android/camera/io/MediaSaveFailedReason;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/CaptureHandle;Landroid/net/Uri;Lcom/android/camera/io/Path;Lcom/android/camera/io/FileFormat;ZLcom/android/camera/MediaDeletionFailedReason;)V
    .locals 9

    const-wide/16 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v7, p5

    move-object v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/android/camera/MediaEventArgs;-><init>(Lcom/android/camera/CaptureHandle;Landroid/net/Uri;Lcom/android/camera/io/Path;Lcom/android/camera/io/FileFormat;JZLcom/android/camera/MediaDeletionFailedReason;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/CaptureHandle;Landroid/net/Uri;Lcom/android/camera/io/Path;Lcom/android/camera/io/FileFormat;ZLcom/android/camera/io/MediaSaveFailedReason;)V
    .locals 9

    const-wide/16 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v7, p5

    move-object v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/android/camera/MediaEventArgs;-><init>(Lcom/android/camera/CaptureHandle;Landroid/net/Uri;Lcom/android/camera/io/Path;Lcom/android/camera/io/FileFormat;JZLcom/android/camera/io/MediaSaveFailedReason;)V

    return-void
.end method


# virtual methods
.method public final isSuccessful()Z
    .locals 1

    iget-object v0, p0, Lcom/android/camera/MediaEventArgs;->saveFailedReason:Lcom/android/camera/io/MediaSaveFailedReason;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/MediaEventArgs;->deleteFailedReason:Lcom/android/camera/MediaDeletionFailedReason;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
